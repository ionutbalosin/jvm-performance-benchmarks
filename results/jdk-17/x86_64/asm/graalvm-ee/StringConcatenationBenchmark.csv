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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 827.182 ns/op
# Warmup Iteration   2: 635.021 ns/op
# Warmup Iteration   3: 634.052 ns/op
# Warmup Iteration   4: 634.903 ns/op
# Warmup Iteration   5: 634.525 ns/op
Iteration   1: 634.021 ns/op
Iteration   2: 633.918 ns/op
Iteration   3: 633.706 ns/op
Iteration   4: 633.924 ns/op
Iteration   5: 633.863 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator":
  633.886 ±(99.9%) 0.446 ns/op [Average]
  (min, avg, max) = (633.706, 633.886, 634.021), stdev = 0.116
  CI (99.9%): [633.440, 634.333] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator:·asm":
PrintAssembly processed: 237905 total address lines.
Perf output processed (skipped 58.591 seconds):
 Column 1: cycles (50722 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::valueOf, version 2, compile id 931 

              0x00007fa46ab3e320:   cmp    %r11d,%r8d
              0x00007fa46ab3e323:   jg     0x00007fa46ab3e260
              0x00007fa46ab3e329:   jmp    0x00007fa46ab3e46e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                        ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                        ; - java.lang.Double::toString@1 (line 312)
                                                                        ; - java.lang.String::valueOf@1 (line 4367)
              0x00007fa46ab3e32e:   mov    %rdx,%rbx
   0.03%      0x00007fa46ab3e331:   mov    0x28(%rsp),%r11d
   0.02%      0x00007fa46ab3e336:   mov    %rax,%rcx
              0x00007fa46ab3e339:   mov    0x40(%rsp),%r8d
   0.00%      0x00007fa46ab3e33e:   mov    %r9,%rdi
   0.04%      0x00007fa46ab3e341:   mov    %r10d,%r9d
   0.03%      0x00007fa46ab3e344:   mov    0x4c(%rsp),%r10d
          ╭   0x00007fa46ab3e349:   jmp    0x00007fa46ab3e45c
          │   0x00007fa46ab3e34e:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa46ab3e359:   data16 data16 xchg %ax,%ax
          │   0x00007fa46ab3e35d:   data16 xchg %ax,%ax                 ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                             ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          │                                                             ; - java.lang.Double::toString@1 (line 312)
          │                                                             ; - java.lang.String::valueOf@1 (line 4367)
   0.01%  │↗  0x00007fa46ab3e360:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.02%  ││  0x00007fa46ab3e363:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.28%  ││  0x00007fa46ab3e365:   idiv   %rsi                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
  15.93%  ││  0x00007fa46ab3e368:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%  ││  0x00007fa46ab3e36b:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.01%  ││  0x00007fa46ab3e36f:   mov    %ax,0x10(%rbp,%r9,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.38%  ││  0x00007fa46ab3e375:   mov    %rdx,%rax
   0.04%  ││  0x00007fa46ab3e378:   shl    $0x3,%rax
   0.00%  ││  0x00007fa46ab3e37c:   shl    %rdx
   0.00%  ││  0x00007fa46ab3e37f:   mov    %rax,%r11
   0.37%  ││  0x00007fa46ab3e382:   add    %rdx,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.04%  ││  0x00007fa46ab3e385:   cmp    %r11,%rbx
          ││  0x00007fa46ab3e388:   setg   %cl
   0.00%  ││  0x00007fa46ab3e38b:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.38%  ││  0x00007fa46ab3e38e:   mov    %r11,%rax
   0.03%  ││  0x00007fa46ab3e391:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007fa46ab3e394:   cmp    %r14,%rax
   0.00%  ││  0x00007fa46ab3e397:   setg   %dil
   0.35%  ││  0x00007fa46ab3e39b:   movzbl %dil,%edi                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.07%  ││  0x00007fa46ab3e39f:   mov    %r9d,%edx
   0.00%  ││  0x00007fa46ab3e3a2:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%  ││  0x00007fa46ab3e3a4:   cmp    %r11,%rbx
          ││  0x00007fa46ab3e3a7:   jg     0x00007fa46ab3ea39           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.34%  ││  0x00007fa46ab3e3ad:   cmp    %r14,%rax
          ││  0x00007fa46ab3e3b0:   jg     0x00007fa46ab3eecd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.05%  ││  0x00007fa46ab3e3b6:   mov    %r10d,0x4c(%rsp)
          ││  0x00007fa46ab3e3bb:   mov    %rbx,%rax
   0.00%  ││  0x00007fa46ab3e3be:   shl    $0x3,%rax
   0.34%  ││  0x00007fa46ab3e3c2:   mov    %rbx,%r10
   0.06%  ││  0x00007fa46ab3e3c5:   shl    %r10
          ││  0x00007fa46ab3e3c8:   add    %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007fa46ab3e3cb:   cmp    $0x1,%r10
          ││  0x00007fa46ab3e3cf:   jl     0x00007fa46ab3eea9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.36%  ││  0x00007fa46ab3e3d5:   mov    %edx,0x40(%rsp)
   0.05%  ││  0x00007fa46ab3e3d9:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007fa46ab3e3dc:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007fa46ab3e3de:   idiv   %rsi                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
  16.66%  ││  0x00007fa46ab3e3e1:   mov    %eax,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%  ││  0x00007fa46ab3e3e4:   lea    0x30(%r11),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007fa46ab3e3e8:   mov    %ax,0x12(%rbp,%r9,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.38%  ││  0x00007fa46ab3e3ee:   mov    %rdx,%rax
   0.04%  ││  0x00007fa46ab3e3f1:   shl    $0x3,%rax
          ││  0x00007fa46ab3e3f5:   shl    %rdx
          ││  0x00007fa46ab3e3f8:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.40%  ││  0x00007fa46ab3e3fb:   cmp    %rax,%r10
   0.03%  ││  0x00007fa46ab3e3fe:   setg   %r9b
   0.01%  ││  0x00007fa46ab3e402:   movzbl %r9b,%r9d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.10%  ││  0x00007fa46ab3e406:   mov    %r10,%rdx
   0.35%  ││  0x00007fa46ab3e409:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.04%  ││  0x00007fa46ab3e40c:   cmp    %r14,%rdx
          ││  0x00007fa46ab3e40f:   setg   %cl
   0.07%  ││  0x00007fa46ab3e412:   movzbl %cl,%ecx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.36%  ││  0x00007fa46ab3e415:   cmp    %rax,%r10
          ││  0x00007fa46ab3e418:   jg     0x00007fa46ab3ea65           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.04%  ││  0x00007fa46ab3e41e:   xchg   %ax,%ax
          ││  0x00007fa46ab3e420:   cmp    %r14,%rdx
          ││  0x00007fa46ab3e423:   jg     0x00007fa46ab3ee7e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.03%  ││  0x00007fa46ab3e429:   mov    %r10,%rdx
   0.29%  ││  0x00007fa46ab3e42c:   shl    $0x3,%rdx
   0.02%  ││  0x00007fa46ab3e430:   mov    %r10,%rdi
          ││  0x00007fa46ab3e433:   shl    %rdi
   0.02%  ││  0x00007fa46ab3e436:   add    %rdi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.32%  ││  0x00007fa46ab3e439:   nopl   0x0(%rax)
   0.03%  ││  0x00007fa46ab3e440:   cmp    $0x1,%rdx
          ││  0x00007fa46ab3e444:   jl     0x00007fa46ab3f27e           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007fa46ab3e44a:   mov    %rdx,%rbx
   0.03%  ││  0x00007fa46ab3e44d:   mov    %r9d,%r11d
   0.31%  ││  0x00007fa46ab3e450:   mov    %r10,%rdi
   0.03%  ││  0x00007fa46ab3e453:   mov    %r13d,%r9d
          ││  0x00007fa46ab3e456:   mov    %ecx,%r10d
   0.02%  ││  0x00007fa46ab3e459:   mov    %rax,%rcx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.27%  ↘│  0x00007fa46ab3e45c:   lea    0x2(%r9),%r13d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                            ; - java.lang.Double::toString@1 (line 312)
           │                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.10%   │  0x00007fa46ab3e460:   cmp    %r9d,%r8d
           ╰  0x00007fa46ab3e463:   jg     0x00007fa46ab3e360
              0x00007fa46ab3e469:   jmp    0x00007fa46ab3e8f3           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
....................................................................................................
  39.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.lang.String::valueOf, version 2, compile id 929 

                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e30:   cmp    $0x1b,%edi
                0x00007fa46ab38e33:   jae    0x00007fa46ab399f9           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e39:   mov    %ebx,%esi
   0.07%        0x00007fa46ab38e3b:   add    0x10(%rax,%rdi,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e3f:   nop
                0x00007fa46ab38e40:   cmp    $0x40,%esi
                0x00007fa46ab38e43:   jge    0x00007fa46ab38c09
                0x00007fa46ab38e49:   jmp    0x00007fa46ab39a28           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.07%        0x00007fa46ab38e4e:   mov    %edi,0x2c(%rsp)
                0x00007fa46ab38e52:   mov    %ebx,0x34(%rsp)
                0x00007fa46ab38e56:   mov    %r9d,0x30(%rsp)
                0x00007fa46ab38e5b:   mov    %edx,%edi
   0.05%        0x00007fa46ab38e5d:   mov    0x4c(%rsp),%edx
                0x00007fa46ab38e61:   cmp    $0x20,%edx
                0x00007fa46ab38e64:   jge    0x00007fa46ab39acf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e6a:   test   %edi,%edi
                0x00007fa46ab38e6c:   je     0x00007fa46ab39fcc           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e72:   mov    0x40(%rsp),%r13d
   0.05%        0x00007fa46ab38e77:   movabs $0x7ffd3adc8,%rcx            ;   {oop([I{0x00000007ffd3adc8})}
                0x00007fa46ab38e81:   mov    0x14(%rcx),%esi              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.00%        0x00007fa46ab38e84:   mov    0x10(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e87:   mov    %r10d,%ecx                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.05%        0x00007fa46ab38e8a:   mov    %ecx,%edx
                0x00007fa46ab38e8c:   imul   %esi,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e8f:   mov    %r13d,%ecx
                0x00007fa46ab38e92:   shl    %cl,%edx                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.06%        0x00007fa46ab38e94:   mov    %r14d,%ecx
   0.00%        0x00007fa46ab38e97:   mov    %eax,%r10d
   0.07%        0x00007fa46ab38e9a:   shl    %cl,%r10d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38e9d:   mov    %edx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@446 (line 608)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.07%        0x00007fa46ab38e9f:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38ea0:   idiv   %r10d                        ; implicit exception: deoptimizes
                                                                          ; ImmutableOopMap {rbp=Oop r8=NarrowOop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
   1.21%        0x00007fa46ab38ea3:   test   %eax,%eax
                0x00007fa46ab38ea5:   je     0x00007fa46ab39a66           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.05%        0x00007fa46ab38eab:   mov    %edx,%ecx
                0x00007fa46ab38ead:   shl    $0x3,%ecx
   0.04%        0x00007fa46ab38eb0:   shl    %edx
   0.03%        0x00007fa46ab38eb2:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.03%        0x00007fa46ab38eb4:   mov    %esi,%edx
                0x00007fa46ab38eb6:   shl    $0x3,%edx
                0x00007fa46ab38eb9:   shl    %esi
   0.01%        0x00007fa46ab38ebb:   add    %esi,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.04%        0x00007fa46ab38ebd:   data16 xchg %ax,%ax
                0x00007fa46ab38ec0:   cmp    %ecx,%edx
                0x00007fa46ab38ec2:   jg     0x00007fa46ab39d8a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38ec8:   mov    %r10d,%esi
   0.02%        0x00007fa46ab38ecb:   shl    $0x3,%esi
   0.05%        0x00007fa46ab38ece:   mov    %r10d,%r11d
                0x00007fa46ab38ed1:   shl    %r11d
                0x00007fa46ab38ed4:   add    %r11d,%esi                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.03%        0x00007fa46ab38ed7:   mov    %ecx,%r11d
   0.03%        0x00007fa46ab38eda:   add    %edx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38edd:   data16 xchg %ax,%ax
                0x00007fa46ab38ee0:   cmp    %esi,%r11d
                0x00007fa46ab38ee3:   jg     0x00007fa46ab39b8f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.02%        0x00007fa46ab38ee9:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.03%        0x00007fa46ab38eec:   mov    %ax,0x10(,%r8,8)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38ef5:   mov    %edx,%eax
                0x00007fa46ab38ef7:   shl    $0x3,%eax
   0.03%        0x00007fa46ab38efa:   mov    %edx,%r11d
   0.05%        0x00007fa46ab38efd:   shl    %r11d
                0x00007fa46ab38f00:   add    %r11d,%eax                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab38f03:   cmp    $0x1,%eax
                0x00007fa46ab38f06:   jl     0x00007fa46ab39eea           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
   0.02%        0x00007fa46ab38f0c:   cmp    $0x3,%edi
   0.05%        0x00007fa46ab38f0f:   mov    $0x2,%r11d
                0x00007fa46ab38f15:   cmovb  %edi,%r11d
                0x00007fa46ab38f19:   mov    %eax,%r14d
   0.02%        0x00007fa46ab38f1c:   mov    %edx,%r13d
   0.05%        0x00007fa46ab38f1f:   mov    %ecx,%ebx
                0x00007fa46ab38f21:   mov    $0x0,%ecx
                0x00007fa46ab38f26:   mov    $0x1,%r9d
   0.02%  ╭     0x00007fa46ab38f2c:   jmp    0x00007fa46ab38f9c           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │                                                               ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          │                                                               ; - java.lang.Float::toString@1 (line 226)
          │                                                               ; - java.lang.String::valueOf@1 (line 4353)
          │     0x00007fa46ab38f31:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007fa46ab38f3c:   data16 data16 xchg %ax,%ax          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │                                                               ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          │                                                               ; - java.lang.Float::toString@1 (line 226)
          │                                                               ; - java.lang.String::valueOf@1 (line 4353)
   0.06%  │↗    0x00007fa46ab38f40:   mov    %ebx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
          ││    0x00007fa46ab38f42:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
          ││    0x00007fa46ab38f43:   idiv   %r10d                        ; implicit exception: deoptimizes
          ││                                                              ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
   1.15%  ││    0x00007fa46ab38f46:   mov    %edx,%r8d
   0.00%  ││    0x00007fa46ab38f49:   shl    $0x3,%r8d
   0.00%  ││    0x00007fa46ab38f4d:   shl    %edx
          ││    0x00007fa46ab38f4f:   add    %edx,%r8d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.06%  ││    0x00007fa46ab38f52:   cmp    %r8d,%r14d
          ││    0x00007fa46ab38f55:   jg     0x00007fa46ab39f98           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.08%  ││    0x00007fa46ab38f5b:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
          ││    0x00007fa46ab38f5e:   mov    %dx,0x10(%rbp,%r9,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
          ││    0x00007fa46ab38f64:   mov    %r8d,%edx
          ││    0x00007fa46ab38f67:   add    %r14d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.05%  ││    0x00007fa46ab38f6a:   cmp    %esi,%edx
          ││    0x00007fa46ab38f6c:   setg   %cl
   0.07%  ││    0x00007fa46ab38f6f:   movzbl %cl,%ecx                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.03%  ││    0x00007fa46ab38f72:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
          ││    0x00007fa46ab38f75:   cmp    %esi,%edx
          ││    0x00007fa46ab38f77:   jg     0x00007fa46ab399cd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.00%  ││    0x00007fa46ab38f7d:   mov    %r14d,%edx
   0.02%  ││    0x00007fa46ab38f80:   shl    $0x3,%edx
   0.04%  ││    0x00007fa46ab38f83:   mov    %r14d,%ebx
          ││    0x00007fa46ab38f86:   shl    %ebx
   0.01%  ││    0x00007fa46ab38f88:   add    %ebx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.01%  ││    0x00007fa46ab38f8a:   cmp    $0x1,%edx
          ││    0x00007fa46ab38f8d:   jl     0x00007fa46ab39d3e           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.03%  ││    0x00007fa46ab38f93:   mov    %r14d,%r13d
          ││    0x00007fa46ab38f96:   mov    %r8d,%ebx
   0.00%  ││    0x00007fa46ab38f99:   mov    %edx,%r14d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
          ││                                                              ; - java.lang.Float::toString@1 (line 226)
          ││                                                              ; - java.lang.String::valueOf@1 (line 4353)
   0.04%  ↘│    0x00007fa46ab38f9c:   nopl   0x0(%rax)
   0.04%   │    0x00007fa46ab38fa0:   cmp    %r9d,%r11d
           ╰    0x00007fa46ab38fa3:   ja     0x00007fa46ab38f40
                0x00007fa46ab38fa5:   mov    %r9d,%r11d
                0x00007fa46ab38fa8:   mov    0x44(%rsp),%r8d
   0.02%        0x00007fa46ab38fad:   mov    %ecx,%r9d
   0.04%        0x00007fa46ab38fb0:   mov    %ebx,%ecx
                0x00007fa46ab38fb2:   mov    %r13d,%ebx
   0.01%        0x00007fa46ab38fb5:   mov    %r14d,%r13d
   0.02%    ╭   0x00007fa46ab38fb8:   jmp    0x00007fa46ab39077
            │   0x00007fa46ab38fbd:   data16 xchg %ax,%ax                 ;*castore {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
            │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            │                                                             ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            │                                                             ; - java.lang.Float::toString@1 (line 226)
            │                                                             ; - java.lang.String::valueOf@1 (line 4353)
   0.06%    │↗  0x00007fa46ab38fc0:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab38fc2:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
            ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.11%    ││  0x00007fa46ab38fc3:   idiv   %r10d                        ; implicit exception: deoptimizes
            ││                                                            ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
   3.67%    ││  0x00007fa46ab38fc6:   mov    %edx,%edi
   0.01%    ││  0x00007fa46ab38fc8:   shl    $0x3,%edi
   0.23%    ││  0x00007fa46ab38fcb:   shl    %edx
   0.03%    ││  0x00007fa46ab38fcd:   add    %edx,%edi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.10%    ││  0x00007fa46ab38fcf:   cmp    %edi,%r13d
            ││  0x00007fa46ab38fd2:   jg     0x00007fa46ab39ccf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.11%    ││  0x00007fa46ab38fd8:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.05%    ││  0x00007fa46ab38fdb:   mov    %dx,0x10(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab38fe1:   mov    %edi,%edx
            ││  0x00007fa46ab38fe3:   add    %r13d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.12%    ││  0x00007fa46ab38fe6:   cmp    %esi,%edx
   0.06%    ││  0x00007fa46ab38fe8:   setg   %r9b
   0.10%    ││  0x00007fa46ab38fec:   movzbl %r9b,%r9d                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.19%    ││  0x00007fa46ab38ff0:   mov    %r11d,%ecx
            ││  0x00007fa46ab38ff3:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab38ff5:   cmp    %esi,%edx
            ││  0x00007fa46ab38ff7:   jg     0x00007fa46ab397a6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.01%    ││  0x00007fa46ab38ffd:   mov    %r13d,%edx
   0.08%    ││  0x00007fa46ab39000:   shl    $0x3,%edx
            ││  0x00007fa46ab39003:   mov    %r13d,%ebx
            ││  0x00007fa46ab39006:   shl    %ebx
   0.01%    ││  0x00007fa46ab39008:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.11%    ││  0x00007fa46ab3900a:   cmp    $0x1,%ebx
            ││  0x00007fa46ab3900d:   jl     0x00007fa46ab39cae           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab39013:   mov    %r9d,0x4c(%rsp)
            ││  0x00007fa46ab39018:   mov    %eax,0x28(%rsp)
   0.01%    ││  0x00007fa46ab3901c:   mov    %edi,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.11%    ││  0x00007fa46ab3901e:   cltd                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
            ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab3901f:   idiv   %r10d                        ; implicit exception: deoptimizes
            ││                                                            ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
   2.62%    ││  0x00007fa46ab39022:   mov    %edx,%r9d
   0.09%    ││  0x00007fa46ab39025:   shl    $0x3,%r9d
   0.01%    ││  0x00007fa46ab39029:   shl    %edx
   0.03%    ││  0x00007fa46ab3902b:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.05%    ││  0x00007fa46ab3902e:   cmp    %r9d,%ebx
            ││  0x00007fa46ab39031:   jg     0x00007fa46ab39c86           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.13%    ││  0x00007fa46ab39037:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.00%    ││  0x00007fa46ab3903a:   mov    %dx,0x12(%rbp,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.00%    ││  0x00007fa46ab39040:   mov    %ebx,%edx
            ││  0x00007fa46ab39042:   add    %r9d,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.13%    ││  0x00007fa46ab39045:   cmp    %esi,%edx
   0.00%    ││  0x00007fa46ab39047:   setg   %r11b
   0.11%    ││  0x00007fa46ab3904b:   movzbl %r11b,%r11d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.10%    ││  0x00007fa46ab3904f:   cmp    %esi,%edx
            ││  0x00007fa46ab39051:   jg     0x00007fa46ab3990a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab39057:   mov    %ebx,%edx
            ││  0x00007fa46ab39059:   shl    $0x3,%edx
            ││  0x00007fa46ab3905c:   mov    %ebx,%edi
   0.12%    ││  0x00007fa46ab3905e:   shl    %edi
            ││  0x00007fa46ab39060:   add    %edi,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab39062:   cmp    $0x1,%edx
            ││  0x00007fa46ab39065:   jl     0x00007fa46ab39eaa           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
            ││  0x00007fa46ab3906b:   mov    %edx,%r13d
   0.15%    ││  0x00007fa46ab3906e:   mov    %r9d,%ecx
            ││  0x00007fa46ab39071:   mov    %r11d,%r9d
            ││  0x00007fa46ab39074:   mov    %r14d,%r11d                  ;*iload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
            ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
            ││                                                            ; - java.lang.Float::toString@1 (line 226)
            ││                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.05%    ↘│  0x00007fa46ab39077:   lea    0x2(%r11),%r14d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
             │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
             │                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
             │                                                            ; - java.lang.Float::toString@1 (line 226)
             │                                                            ; - java.lang.String::valueOf@1 (line 4353)
   0.09%     │  0x00007fa46ab3907b:   nopl   0x0(%rax,%rax,1)
   0.01%     │  0x00007fa46ab39080:   cmp    %r11d,%r8d
             ╰  0x00007fa46ab39083:   jg     0x00007fa46ab38fc0
                0x00007fa46ab39089:   jmp    0x00007fa46ab391ce           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 80)
                                                                          ; - java.lang.Float::toString@1 (line 226)
                                                                          ; - java.lang.String::valueOf@1 (line 4353)
                0x00007fa46ab3908e:   mov    %ecx,%r11d
                0x00007fa46ab39091:   mov    %ebx,%ecx
                0x00007fa46ab39093:   mov    0x38(%rsp),%rsi
....................................................................................................
  12.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  39.21%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
  12.95%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 929 
   8.29%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
   6.19%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 910 
   5.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   4.88%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 929 
   3.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   2.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   2.70%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
   2.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   1.00%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
   0.92%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 929 
   0.76%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
   0.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.70%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 929 
   0.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.56%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 929 
   0.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.51%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
   0.50%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
   4.76%  <...other 503 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.37%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 931 
  20.43%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 929 
  17.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   6.19%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 910 
   1.94%               kernel  [unknown] 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 946 
   0.09%                       <unknown> 
   0.07%     Unknown, level 0  java.lang.invoke.MethodHandle::linkToStatic, version 1, compile id 719 
   0.07%     Unknown, level 0  java.lang.invoke.MethodHandle::linkToStatic, version 1, compile id 724 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.42%  <...other 142 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.25%       jvmci, level 4
   1.94%               kernel
   0.38%            libjvm.so
   0.14%     Unknown, level 0
   0.09%                     
   0.09%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%               [vdso]
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 12.50% complete, ETA 00:13:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 861.964 ns/op
# Warmup Iteration   2: 657.452 ns/op
# Warmup Iteration   3: 656.367 ns/op
# Warmup Iteration   4: 657.482 ns/op
# Warmup Iteration   5: 655.604 ns/op
Iteration   1: 655.634 ns/op
Iteration   2: 655.651 ns/op
Iteration   3: 655.908 ns/op
Iteration   4: 655.889 ns/op
Iteration   5: 655.861 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator":
  655.789 ±(99.9%) 0.518 ns/op [Average]
  (min, avg, max) = (655.634, 655.789, 655.908), stdev = 0.135
  CI (99.9%): [655.271, 656.307] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.plus_operator:·asm":
PrintAssembly processed: 237581 total address lines.
Perf output processed (skipped 58.624 seconds):
 Column 1: cycles (50621 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::valueOf, version 2, compile id 947 

              0x00007f2a2eb3731b:   nopl   0x0(%rax,%rax,1)
              0x00007f2a2eb37320:   cmp    %r11d,%r8d
              0x00007f2a2eb37323:   jg     0x00007f2a2eb37260
              0x00007f2a2eb37329:   jmp    0x00007f2a2eb3746e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                        ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                        ; - java.lang.Double::toString@1 (line 312)
                                                                        ; - java.lang.String::valueOf@1 (line 4367)
   0.01%      0x00007f2a2eb3732e:   mov    %rdx,%rbx
   0.04%      0x00007f2a2eb37331:   mov    0x28(%rsp),%r11d
   0.02%      0x00007f2a2eb37336:   mov    %rax,%rcx
              0x00007f2a2eb37339:   mov    0x40(%rsp),%r8d
   0.01%      0x00007f2a2eb3733e:   mov    %r9,%rdi
   0.03%      0x00007f2a2eb37341:   mov    %r10d,%r9d
   0.01%      0x00007f2a2eb37344:   mov    0x4c(%rsp),%r10d
          ╭   0x00007f2a2eb37349:   jmp    0x00007f2a2eb3745c
          │   0x00007f2a2eb3734e:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f2a2eb37359:   data16 data16 xchg %ax,%ax
          │   0x00007f2a2eb3735d:   data16 xchg %ax,%ax                 ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                             ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          │                                                             ; - java.lang.Double::toString@1 (line 312)
          │                                                             ; - java.lang.String::valueOf@1 (line 4367)
   0.02%  │↗  0x00007f2a2eb37360:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.04%  ││  0x00007f2a2eb37363:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.29%  ││  0x00007f2a2eb37365:   idiv   %rsi                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
  15.74%  ││  0x00007f2a2eb37368:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%  ││  0x00007f2a2eb3736b:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%  ││  0x00007f2a2eb3736f:   mov    %ax,0x10(%rbp,%r9,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.31%  ││  0x00007f2a2eb37375:   mov    %rdx,%rax
   0.05%  ││  0x00007f2a2eb37378:   shl    $0x3,%rax
          ││  0x00007f2a2eb3737c:   shl    %rdx
   0.00%  ││  0x00007f2a2eb3737f:   mov    %rax,%r11
   0.38%  ││  0x00007f2a2eb37382:   add    %rdx,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.06%  ││  0x00007f2a2eb37385:   cmp    %r11,%rbx
          ││  0x00007f2a2eb37388:   setg   %cl
   0.00%  ││  0x00007f2a2eb3738b:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.38%  ││  0x00007f2a2eb3738e:   mov    %r11,%rax
   0.05%  ││  0x00007f2a2eb37391:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007f2a2eb37394:   cmp    %r14,%rax
   0.00%  ││  0x00007f2a2eb37397:   setg   %dil
   0.35%  ││  0x00007f2a2eb3739b:   movzbl %dil,%edi                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.07%  ││  0x00007f2a2eb3739f:   mov    %r9d,%edx
          ││  0x00007f2a2eb373a2:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%  ││  0x00007f2a2eb373a4:   cmp    %r11,%rbx
          ││  0x00007f2a2eb373a7:   jg     0x00007f2a2eb37a39           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.37%  ││  0x00007f2a2eb373ad:   cmp    %r14,%rax
          ││  0x00007f2a2eb373b0:   jg     0x00007f2a2eb37ecd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.05%  ││  0x00007f2a2eb373b6:   mov    %r10d,0x4c(%rsp)
          ││  0x00007f2a2eb373bb:   mov    %rbx,%rax
          ││  0x00007f2a2eb373be:   shl    $0x3,%rax
   0.35%  ││  0x00007f2a2eb373c2:   mov    %rbx,%r10
   0.07%  ││  0x00007f2a2eb373c5:   shl    %r10
          ││  0x00007f2a2eb373c8:   add    %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%  ││  0x00007f2a2eb373cb:   cmp    $0x1,%r10
          ││  0x00007f2a2eb373cf:   jl     0x00007f2a2eb37ea9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.31%  ││  0x00007f2a2eb373d5:   mov    %edx,0x40(%rsp)
   0.07%  ││  0x00007f2a2eb373d9:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007f2a2eb373dc:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007f2a2eb373de:   idiv   %rsi                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
  16.22%  ││  0x00007f2a2eb373e1:   mov    %eax,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007f2a2eb373e4:   lea    0x30(%r11),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.01%  ││  0x00007f2a2eb373e8:   mov    %ax,0x12(%rbp,%r9,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.37%  ││  0x00007f2a2eb373ee:   mov    %rdx,%rax
   0.02%  ││  0x00007f2a2eb373f1:   shl    $0x3,%rax
          ││  0x00007f2a2eb373f5:   shl    %rdx
   0.00%  ││  0x00007f2a2eb373f8:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.40%  ││  0x00007f2a2eb373fb:   cmp    %rax,%r10
   0.05%  ││  0x00007f2a2eb373fe:   setg   %r9b
   0.00%  ││  0x00007f2a2eb37402:   movzbl %r9b,%r9d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.09%  ││  0x00007f2a2eb37406:   mov    %r10,%rdx
   0.27%  ││  0x00007f2a2eb37409:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.04%  ││  0x00007f2a2eb3740c:   cmp    %r14,%rdx
   0.00%  ││  0x00007f2a2eb3740f:   setg   %cl
   0.08%  ││  0x00007f2a2eb37412:   movzbl %cl,%ecx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.35%  ││  0x00007f2a2eb37415:   cmp    %rax,%r10
          ││  0x00007f2a2eb37418:   jg     0x00007f2a2eb37a65           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.02%  ││  0x00007f2a2eb3741e:   xchg   %ax,%ax
          ││  0x00007f2a2eb37420:   cmp    %r14,%rdx
          ││  0x00007f2a2eb37423:   jg     0x00007f2a2eb37e7e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.05%  ││  0x00007f2a2eb37429:   mov    %r10,%rdx
   0.25%  ││  0x00007f2a2eb3742c:   shl    $0x3,%rdx
   0.02%  ││  0x00007f2a2eb37430:   mov    %r10,%rdi
          ││  0x00007f2a2eb37433:   shl    %rdi
   0.03%  ││  0x00007f2a2eb37436:   add    %rdi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.27%  ││  0x00007f2a2eb37439:   nopl   0x0(%rax)
   0.03%  ││  0x00007f2a2eb37440:   cmp    $0x1,%rdx
          ││  0x00007f2a2eb37444:   jl     0x00007f2a2eb3827e           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
          ││  0x00007f2a2eb3744a:   mov    %rdx,%rbx
   0.03%  ││  0x00007f2a2eb3744d:   mov    %r9d,%r11d
   0.28%  ││  0x00007f2a2eb37450:   mov    %r10,%rdi
   0.03%  ││  0x00007f2a2eb37453:   mov    %r13d,%r9d
          ││  0x00007f2a2eb37456:   mov    %ecx,%r10d
   0.02%  ││  0x00007f2a2eb37459:   mov    %rax,%rcx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.25%  ↘│  0x00007f2a2eb3745c:   lea    0x2(%r9),%r13d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                            ; - java.lang.Double::toString@1 (line 312)
           │                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.07%   │  0x00007f2a2eb37460:   cmp    %r9d,%r8d
           ╰  0x00007f2a2eb37463:   jg     0x00007f2a2eb37360
              0x00007f2a2eb37469:   jmp    0x00007f2a2eb378f3           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
....................................................................................................
  38.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 933 

                 0x00007f2a2eb3d355:   mov    %ebx,%ecx
                 0x00007f2a2eb3d357:   mov    %esi,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
                                                                           ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                 0x00007f2a2eb3d359:   nopl   0x0(%rax)
                 0x00007f2a2eb3d360:   cmp    %r8d,%r11d
          ╭      0x00007f2a2eb3d363:   jbe    0x00007f2a2eb3d5dc
          │      0x00007f2a2eb3d369:   jmp    0x00007f2a2eb3d2e0           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │      0x00007f2a2eb3d36e:   cmp    $0x1b,%edi
          │      0x00007f2a2eb3d371:   jae    0x00007f2a2eb3da6e           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d377:   mov    %ebx,%esi
          │      0x00007f2a2eb3d379:   add    0x10(%rax,%rdi,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d37d:   data16 xchg %ax,%ax
   0.06%  │      0x00007f2a2eb3d380:   cmp    $0x40,%esi
          │      0x00007f2a2eb3d383:   jge    0x00007f2a2eb3d149
          │      0x00007f2a2eb3d389:   jmp    0x00007f2a2eb3dd37           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d38e:   mov    0x3c(%rsp),%ecx
          │      0x00007f2a2eb3d392:   mov    %edi,0x3c(%rsp)
          │      0x00007f2a2eb3d396:   mov    %ebx,0x2c(%rsp)
   0.05%  │      0x00007f2a2eb3d39a:   mov    %r11,0x20(%rsp)
          │      0x00007f2a2eb3d39f:   nop
          │      0x00007f2a2eb3d3a0:   cmp    $0x20,%ecx
          │      0x00007f2a2eb3d3a3:   jge    0x00007f2a2eb3db72           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d3a9:   test   %r14d,%r14d
          │      0x00007f2a2eb3d3ac:   je     0x00007f2a2eb3dd25           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │      0x00007f2a2eb3d3b2:   mov    0x34(%rsp),%ecx
          │      0x00007f2a2eb3d3b6:   movabs $0x7ffd3adc8,%rax            ;   {oop([I{0x00000007ffd3adc8})}
          │      0x00007f2a2eb3d3c0:   mov    0x14(%rax),%r10d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d3c4:   mov    0x10(%rax),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │      0x00007f2a2eb3d3c7:   mov    %r9d,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d3ca:   imul   %r10d,%r11d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d3ce:   shl    %cl,%r11d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f2a2eb3d3d1:   mov    %edx,%ecx
          │      0x00007f2a2eb3d3d3:   mov    %eax,%r9d
          │      0x00007f2a2eb3d3d6:   shl    %cl,%r9d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │      0x00007f2a2eb3d3d9:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@446 (line 608)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d3dc:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f2a2eb3d3dd:   idiv   %r9d                         ; implicit exception: deoptimizes
          │                                                                ; ImmutableOopMap {r8=NarrowOop r13=Oop [12]=NarrowOop [16]=Oop }
   1.22%  │      0x00007f2a2eb3d3e0:   test   %eax,%eax
          │      0x00007f2a2eb3d3e2:   je     0x00007f2a2eb3dd12           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │      0x00007f2a2eb3d3e8:   mov    %edx,%r11d
   0.01%  │      0x00007f2a2eb3d3eb:   shl    $0x3,%r11d
   0.01%  │      0x00007f2a2eb3d3ef:   shl    %edx
   0.02%  │      0x00007f2a2eb3d3f1:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │      0x00007f2a2eb3d3f4:   mov    %r10d,%edx
   0.00%  │      0x00007f2a2eb3d3f7:   shl    $0x3,%edx
          │      0x00007f2a2eb3d3fa:   shl    %r10d
   0.02%  │      0x00007f2a2eb3d3fd:   add    %r10d,%edx                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │      0x00007f2a2eb3d400:   cmp    %r11d,%edx
          │      0x00007f2a2eb3d403:   jg     0x00007f2a2eb3dd00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d409:   mov    %r9d,%r10d
          │      0x00007f2a2eb3d40c:   shl    $0x3,%r10d
   0.02%  │      0x00007f2a2eb3d410:   mov    %r9d,%ecx
   0.04%  │      0x00007f2a2eb3d413:   shl    %ecx
   0.00%  │      0x00007f2a2eb3d415:   add    %ecx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d418:   mov    %r11d,%ecx
   0.02%  │      0x00007f2a2eb3d41b:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f2a2eb3d41d:   data16 xchg %ax,%ax
          │      0x00007f2a2eb3d420:   cmp    %r10d,%ecx
          │      0x00007f2a2eb3d423:   jg     0x00007f2a2eb3dcee           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d429:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │      0x00007f2a2eb3d42c:   mov    %ax,0x10(,%r8,8)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f2a2eb3d435:   mov    %edx,%eax
          │      0x00007f2a2eb3d437:   shl    $0x3,%eax
          │      0x00007f2a2eb3d43a:   mov    %edx,%r8d
   0.01%  │      0x00007f2a2eb3d43d:   shl    %r8d
   0.04%  │      0x00007f2a2eb3d440:   add    %r8d,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │      0x00007f2a2eb3d443:   cmp    $0x1,%eax
          │      0x00007f2a2eb3d446:   jl     0x00007f2a2eb3dcd2           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f2a2eb3d44c:   cmp    $0x3,%r14d
   0.01%  │      0x00007f2a2eb3d450:   mov    $0x2,%r8d
   0.04%  │      0x00007f2a2eb3d456:   cmovb  %r14d,%r8d
   0.00%  │      0x00007f2a2eb3d45a:   mov    %eax,%esi
          │      0x00007f2a2eb3d45c:   mov    %edx,%edi
   0.02%  │      0x00007f2a2eb3d45e:   mov    %r11d,%ebx
   0.05%  │      0x00007f2a2eb3d461:   mov    $0x0,%ecx
          │      0x00007f2a2eb3d466:   mov    $0x1,%r11d
          │╭     0x00007f2a2eb3d46c:   jmp    0x00007f2a2eb3d4d9           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ││                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││     0x00007f2a2eb3d471:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││     0x00007f2a2eb3d47c:   data16 data16 xchg %ax,%ax          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          ││                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.07%  ││↗    0x00007f2a2eb3d480:   mov    %ebx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f2a2eb3d482:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f2a2eb3d483:   idiv   %r9d                         ; implicit exception: deoptimizes
          │││                                                              ; ImmutableOopMap {r13=Oop [12]=NarrowOop [16]=Oop }
   1.18%  │││    0x00007f2a2eb3d486:   mov    %edx,%r14d
   0.01%  │││    0x00007f2a2eb3d489:   shl    $0x3,%r14d
   0.03%  │││    0x00007f2a2eb3d48d:   shl    %edx
   0.01%  │││    0x00007f2a2eb3d48f:   add    %edx,%r14d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.02%  │││    0x00007f2a2eb3d492:   cmp    %r14d,%esi
          │││    0x00007f2a2eb3d495:   jg     0x00007f2a2eb3deed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │││    0x00007f2a2eb3d49b:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │││    0x00007f2a2eb3d49e:   mov    %dx,0x10(%r13,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f2a2eb3d4a4:   mov    %r14d,%edx
   0.00%  │││    0x00007f2a2eb3d4a7:   add    %esi,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │││    0x00007f2a2eb3d4a9:   cmp    %r10d,%edx
   0.01%  │││    0x00007f2a2eb3d4ac:   setg   %cl
   0.05%  │││    0x00007f2a2eb3d4af:   movzbl %cl,%ecx                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │││    0x00007f2a2eb3d4b2:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f2a2eb3d4b5:   cmp    %r10d,%edx
          │││    0x00007f2a2eb3d4b8:   jg     0x00007f2a2eb3da2c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f2a2eb3d4be:   mov    %esi,%edx
          │││    0x00007f2a2eb3d4c0:   shl    $0x3,%edx
   0.04%  │││    0x00007f2a2eb3d4c3:   mov    %esi,%ebx
          │││    0x00007f2a2eb3d4c5:   shl    %ebx
          │││    0x00007f2a2eb3d4c7:   add    %ebx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f2a2eb3d4c9:   cmp    $0x1,%edx
          │││    0x00007f2a2eb3d4cc:   jl     0x00007f2a2eb3de3d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │││    0x00007f2a2eb3d4d2:   mov    %esi,%edi
          │││    0x00007f2a2eb3d4d4:   mov    %r14d,%ebx
          │││    0x00007f2a2eb3d4d7:   mov    %edx,%esi                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │↘│    0x00007f2a2eb3d4d9:   cmp    %r11d,%r8d
          │ ╰    0x00007f2a2eb3d4dc:   ja     0x00007f2a2eb3d480
   0.04%  │      0x00007f2a2eb3d4de:   mov    %ecx,%r8d
          │      0x00007f2a2eb3d4e1:   mov    %ebx,%ecx
          │      0x00007f2a2eb3d4e3:   mov    %edi,%ebx
          │      0x00007f2a2eb3d4e5:   mov    %esi,%edi
   0.06%  │  ╭   0x00007f2a2eb3d4e7:   jmp    0x00007f2a2eb3d5ca
          │  │   0x00007f2a2eb3d4ec:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  │   0x00007f2a2eb3d4f7:   data16 data16 xchg %ax,%ax
          │  │   0x00007f2a2eb3d4fb:   nopl   0x0(%rax,%rax,1)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │  │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │  │↗  0x00007f2a2eb3d500:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d502:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │  ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d503:   idiv   %r9d                         ; implicit exception: deoptimizes
          │  ││                                                            ; ImmutableOopMap {r13=Oop [12]=NarrowOop [16]=Oop }
   3.66%  │  ││  0x00007f2a2eb3d506:   mov    %eax,%r14d                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │  ││  0x00007f2a2eb3d509:   mov    %edx,%eax
   0.01%  │  ││  0x00007f2a2eb3d50b:   shl    $0x3,%eax
   0.09%  │  ││  0x00007f2a2eb3d50e:   shl    %edx
   0.09%  │  ││  0x00007f2a2eb3d510:   add    %edx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.08%  │  ││  0x00007f2a2eb3d512:   cmp    %eax,%edi
          │  ││  0x00007f2a2eb3d514:   jg     0x00007f2a2eb3dc65           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.18%  │  ││  0x00007f2a2eb3d51a:   lea    0x30(%r14),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │  ││  0x00007f2a2eb3d51e:   mov    %dx,0x10(%r13,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d524:   mov    %eax,%edx
          │  ││  0x00007f2a2eb3d526:   add    %edi,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.16%  │  ││  0x00007f2a2eb3d528:   cmp    %r10d,%edx
   0.08%  │  ││  0x00007f2a2eb3d52b:   setg   %r8b
   0.19%  │  ││  0x00007f2a2eb3d52f:   movzbl %r8b,%r8d                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.17%  │  ││  0x00007f2a2eb3d533:   mov    %r11d,%ecx
          │  ││  0x00007f2a2eb3d536:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d538:   nopl   0x0(%rax,%rax,1)
          │  ││  0x00007f2a2eb3d540:   cmp    %r10d,%edx
          │  ││  0x00007f2a2eb3d543:   jg     0x00007f2a2eb3d934           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.12%  │  ││  0x00007f2a2eb3d549:   mov    %edi,%edx
          │  ││  0x00007f2a2eb3d54b:   shl    $0x3,%edx
          │  ││  0x00007f2a2eb3d54e:   mov    %edi,%ebx
          │  ││  0x00007f2a2eb3d550:   shl    %ebx
   0.13%  │  ││  0x00007f2a2eb3d552:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d554:   cmp    $0x1,%ebx
          │  ││  0x00007f2a2eb3d557:   jl     0x00007f2a2eb3dc46           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d55d:   mov    %r8d,0x1c(%rsp)
   0.00%  │  ││  0x00007f2a2eb3d562:   mov    %r14d,0x18(%rsp)
   0.10%  │  ││  0x00007f2a2eb3d567:   mov    %eax,%r14d
          │  ││  0x00007f2a2eb3d56a:   cltd                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d56b:   idiv   %r9d                         ; implicit exception: deoptimizes
          │  ││                                                            ; ImmutableOopMap {r13=Oop [12]=NarrowOop [16]=Oop }
   2.51%  │  ││  0x00007f2a2eb3d56e:   mov    %edx,%r8d
   0.09%  │  ││  0x00007f2a2eb3d571:   shl    $0x3,%r8d
   0.02%  │  ││  0x00007f2a2eb3d575:   shl    %edx
   0.02%  │  ││  0x00007f2a2eb3d577:   add    %edx,%r8d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │  ││  0x00007f2a2eb3d57a:   nopw   0x0(%rax,%rax,1)
   0.04%  │  ││  0x00007f2a2eb3d580:   cmp    %r8d,%ebx
          │  ││  0x00007f2a2eb3d583:   jg     0x00007f2a2eb3dc1a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.07%  │  ││  0x00007f2a2eb3d589:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │  ││  0x00007f2a2eb3d58c:   mov    %dx,0x12(%r13,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │  ││  0x00007f2a2eb3d592:   mov    %ebx,%edx
   0.05%  │  ││  0x00007f2a2eb3d594:   add    %r8d,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.08%  │  ││  0x00007f2a2eb3d597:   cmp    %r10d,%edx
   0.02%  │  ││  0x00007f2a2eb3d59a:   setg   %r11b
   0.12%  │  ││  0x00007f2a2eb3d59e:   movzbl %r11b,%r11d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.11%  │  ││  0x00007f2a2eb3d5a2:   cmp    %r10d,%edx
          │  ││  0x00007f2a2eb3d5a5:   jg     0x00007f2a2eb3d9b5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d5ab:   mov    %ebx,%edx
          │  ││  0x00007f2a2eb3d5ad:   shl    $0x3,%edx
   0.00%  │  ││  0x00007f2a2eb3d5b0:   mov    %ebx,%ecx
   0.10%  │  ││  0x00007f2a2eb3d5b2:   shl    %ecx
          │  ││  0x00007f2a2eb3d5b4:   add    %ecx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f2a2eb3d5b6:   cmp    $0x1,%edx
          │  ││  0x00007f2a2eb3d5b9:   jl     0x00007f2a2eb3de0f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │  ││  0x00007f2a2eb3d5bf:   mov    %edx,%edi
   0.10%  │  ││  0x00007f2a2eb3d5c1:   mov    %r8d,%ecx
          │  ││  0x00007f2a2eb3d5c4:   mov    %r11d,%r8d
   0.00%  │  ││  0x00007f2a2eb3d5c7:   mov    %esi,%r11d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ↘│  0x00007f2a2eb3d5ca:   lea    0x2(%r11),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
          │   │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.12%  │   │  0x00007f2a2eb3d5ce:   cmp    %r11d,%ebp
          │   ╰  0x00007f2a2eb3d5d1:   jg     0x00007f2a2eb3d500
          │      0x00007f2a2eb3d5d7:   jmp    0x00007f2a2eb3d705           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ↘      0x00007f2a2eb3d5dc:   mov    %rdx,%rsi
                 0x00007f2a2eb3d5df:   mov    %rax,%r11
                 0x00007f2a2eb3d5e2:   mov    0x20(%rsp),%r10
                 0x00007f2a2eb3d5e7:   mov    %ebx,0x44(%rsp)
....................................................................................................
  12.55%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.lang.String::valueOf, version 2, compile id 947 

                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36ce0:   movabs $0x10000000000000,%r10       ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@140 (line 1778)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.08%        0x00007f2a2eb36cea:   mov    %rsi,%r8
                0x00007f2a2eb36ced:   or     %r10,%r8                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@143 (line 1778)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36cf0:   tzcnt  %r8,%r9                      ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36cf5:   mov    $0x35,%esi
   0.05%        0x00007f2a2eb36cfa:   mov    %esi,%ebx
                0x00007f2a2eb36cfc:   sub    %r9d,%ebx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36cff:   nop
                0x00007f2a2eb36d00:   cmp    $0x1,%ebx
                0x00007f2a2eb36d03:   je     0x00007f2a2eb37eeb           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.06%        0x00007f2a2eb36d09:   mov    %ebx,%esi
                0x00007f2a2eb36d0b:   sub    %r11d,%esi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d0e:   mov    %esi,%r10d
                0x00007f2a2eb36d11:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.05%        0x00007f2a2eb36d14:   cmp    $0x2,%esi
                0x00007f2a2eb36d17:   mov    $0x0,%esi
                0x00007f2a2eb36d1c:   mov    %r10d,%edi
                0x00007f2a2eb36d1f:   cmovl  %esi,%edi                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.Math::max@2 (line 1562)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.07%        0x00007f2a2eb36d22:   mov    %edi,%esi
                0x00007f2a2eb36d24:   add    %r11d,%esi
                0x00007f2a2eb36d27:   lea    -0x34(%rsi),%r10d            ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.01%        0x00007f2a2eb36d2b:   inc    %esi
   0.05%        0x00007f2a2eb36d2d:   add    %r9d,%esi
                0x00007f2a2eb36d30:   lea    -0x34(%rsi),%esi
                0x00007f2a2eb36d33:   cmp    %edi,%esi
                0x00007f2a2eb36d35:   mov    %esi,%ebp
   0.06%        0x00007f2a2eb36d37:   cmovg  %edi,%ebp                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.Math::min@2 (line 1649)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d3a:   nopw   0x0(%rax,%rax,1)
                0x00007f2a2eb36d40:   cmp    %r10d,%ebp
                0x00007f2a2eb36d43:   jle    0x00007f2a2eb37fa6
                0x00007f2a2eb36d49:   movabs $0x7ff5ad1f0,%rcx            ;   {oop([I{0x00000007ff5ad1f0})}
   0.05%        0x00007f2a2eb36d53:   mov    0x14(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d56:   sub    %ebp,%esi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d58:   sub    %ebp,%r10d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.00%        0x00007f2a2eb36d5b:   mov    %esi,%r13d
   0.06%        0x00007f2a2eb36d5e:   sub    %r10d,%r13d                  ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d61:   mov    %r13d,%esi
                0x00007f2a2eb36d64:   add    %ebx,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d66:   mov    %esi,%r14d
   0.06%        0x00007f2a2eb36d69:   add    %edx,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d6c:   cmp    $0x40,%r14d
                0x00007f2a2eb36d70:   jge    0x00007f2a2eb38166           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d76:   mov    %edi,%esi
                0x00007f2a2eb36d78:   sub    %ebp,%esi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.07%        0x00007f2a2eb36d7a:   sub    %r10d,%esi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d7d:   mov    %esi,%r10d
                0x00007f2a2eb36d80:   add    %edx,%r10d
                0x00007f2a2eb36d83:   mov    %r10d,%edx
   0.06%        0x00007f2a2eb36d86:   inc    %edx
                0x00007f2a2eb36d88:   cmp    $0x40,%edx
                0x00007f2a2eb36d8b:   jge    0x00007f2a2eb38114           ; ImmutableOopMap {rax=NarrowOop rcx=Oop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.lang.String::valueOf@0 (line 4367)
                0x00007f2a2eb36d91:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f2a2eb382c6
                0x00007f2a2eb36d99:   mov    %r10d,%ebp
   0.08%        0x00007f2a2eb36d9c:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@10 (line 434)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36d9e:   and    $0xac7babf1,%ebp             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@11 (line 434)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36da4:   cmp    %ebp,%r10d
                0x00007f2a2eb36da7:   jbe    0x00007f2a2eb380dd           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@18 (line 435)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.00%        0x00007f2a2eb36dad:   shl    $0x3,%rax                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@5 (line 434)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.08%        0x00007f2a2eb36db1:   mov    0x10(%rax,%rbp,4),%r10d      ; ImmutableOopMap {rcx=Oop r10=NarrowOop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.lang.String::valueOf@0 (line 4367)
   0.00%        0x00007f2a2eb36db6:   mov    0x1c(,%r10,8),%eax           ; implicit exception: dispatches to 0x00007f2a2eb382e6
                0x00007f2a2eb36dbe:   xchg   %ax,%ax
                0x00007f2a2eb36dc0:   test   %eax,%eax
                0x00007f2a2eb36dc2:   je     0x00007f2a2eb37a7b
   0.06%        0x00007f2a2eb36dc8:   mov    %r11d,0x4c(%rsp)
                0x00007f2a2eb36dcd:   mov    0x8(,%rax,8),%ebp
   0.10%        0x00007f2a2eb36dd4:   movabs $0x800000000,%r11
                0x00007f2a2eb36dde:   lea    (%r11,%rbp,1),%rbp
   0.05%        0x00007f2a2eb36de2:   test   %eax,%eax
          ╭     0x00007f2a2eb36de4:   je     0x00007f2a2eb36dfd
          │     0x00007f2a2eb36dea:   movabs $0x8002a2490,%r11            ;   {metadata(&apos;jdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer&apos;)}
          │     0x00007f2a2eb36df4:   cmp    %rbp,%r11
          │     0x00007f2a2eb36df7:   jne    0x00007f2a2eb3806d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@6 (line 986)
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                               ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          │                                                               ; - java.lang.Double::toString@1 (line 312)
          │                                                               ; - java.lang.String::valueOf@1 (line 4367)
   0.04%  ↘     0x00007f2a2eb36dfd:   mov    %edx,0x48(%rsp)              ; ImmutableOopMap {rax=NarrowOop rcx=Oop r10=NarrowOop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.lang.String::valueOf@0 (line 4367)
   0.00%        0x00007f2a2eb36e01:   mov    0x1c(,%rax,8),%r11d          ; implicit exception: dispatches to 0x00007f2a2eb38306
                0x00007f2a2eb36e09:   mov    %r11d,0x1c(%rsp)
                0x00007f2a2eb36e0e:   mov    0x20(,%rax,8),%ebp           ; ImmutableOopMap {rax=NarrowOop rcx=Oop rbp=NarrowOop r10=NarrowOop r11=NarrowOop [28]=NarrowOop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.lang.String::valueOf@0 (line 4367)
   0.04%        0x00007f2a2eb36e15:   mov    0xc(,%r11,8),%edx            ; implicit exception: dispatches to 0x00007f2a2eb38326
   0.12%        0x00007f2a2eb36e1d:   mov    %edx,0x44(%rsp)
   0.11%        0x00007f2a2eb36e21:   mov    0xc(,%r10,8),%r10d
                0x00007f2a2eb36e29:   cmpb   $0x0,0x38(%r15)
                0x00007f2a2eb36e2e:   jne    0x00007f2a2eb37a8c           ;* unwind (locked if synchronized)
                                                                          ; - java.lang.ref.Reference::refersTo0@-3
                                                                          ; - java.lang.ref.Reference::refersToImpl@2 (line 375)
                                                                          ; - java.lang.ref.Reference::refersTo@2 (line 366)
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@26 (line 436)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36e34:   mov    %ebp,0x18(%rsp)
   0.06%        0x00007f2a2eb36e38:   mov    %r14d,0x40(%rsp)
                0x00007f2a2eb36e3d:   mov    %r13d,0x3c(%rsp)
                0x00007f2a2eb36e42:   mov    %r8,0x30(%rsp)
                0x00007f2a2eb36e47:   vmovsd %xmm0,0x50(%rsp)
   0.05%        0x00007f2a2eb36e4d:   mov    %r10d,%r8d
                0x00007f2a2eb36e50:   mov    %esi,%r14d
                0x00007f2a2eb36e53:   cmp    $0xffeb5a72,%r8d             ;   {oop(a &apos;jdk/internal/math/FloatingDecimal$1&apos;{0x00000007ff5ad390})}
                0x00007f2a2eb36e5a:   jne    0x00007f2a2eb3800a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@29 (line 436)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36e60:   mov    %r12b,0x18(,%rax,8)          ;*putfield isNegative {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::setSign@2 (line 349)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@165 (line 1783)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.08%        0x00007f2a2eb36e68:   mov    %r12b,0x1a(,%rax,8)          ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36e70:   mov    %r12b,0x19(,%rax,8)          ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
                0x00007f2a2eb36e78:   mov    %eax,%r10d
                0x00007f2a2eb36e7b:   shl    $0x3,%r10                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal::get@25 (line 168)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                          ; - java.lang.Double::toString@1 (line 312)
                                                                          ; - java.lang.String::valueOf@1 (line 4367)
   0.05%        0x00007f2a2eb36e7f:   nop
                0x00007f2a2eb36e80:   cmp    $0x1b,%edi
           ╭    0x00007f2a2eb36e83:   jl     0x00007f2a2eb370b5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36e89:   mov    %r10,0x10(%rsp)
   0.01%   │    0x00007f2a2eb36e8e:   mov    0x40(%rsp),%esi
   0.04%   │    0x00007f2a2eb36e92:   lea    -0x2(%rdx),%r8d
           │    0x00007f2a2eb36e96:   mov    %r8d,0x40(%rsp)
           │    0x00007f2a2eb36e9b:   mov    %r11d,%ebp
   0.00%   │    0x00007f2a2eb36e9e:   shl    $0x3,%rbp                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.04%   │    0x00007f2a2eb36ea2:   mov    %r9d,%ecx
           │    0x00007f2a2eb36ea5:   mov    0x30(%rsp),%r10
           │    0x00007f2a2eb36eaa:   shr    %cl,%r10                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.06%   │    0x00007f2a2eb36ead:   cmp    $0x20,%esi
           │    0x00007f2a2eb36eb0:   jl     0x00007f2a2eb370d2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36eb6:   mov    %edi,0x24(%rsp)
           │    0x00007f2a2eb36eba:   mov    %ebx,0x2c(%rsp)
   0.05%   │    0x00007f2a2eb36ebe:   mov    %r9d,0x28(%rsp)
           │    0x00007f2a2eb36ec3:   movabs $0x7ffd3ae10,%rcx            ;   {oop([J{0x00000007ffd3ae10})}
           │    0x00007f2a2eb36ecd:   mov    0x18(%rcx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.01%   │    0x00007f2a2eb36ed1:   mov    %rsi,%r9
   0.06%   │    0x00007f2a2eb36ed4:   shl    $0x3,%r9
           │    0x00007f2a2eb36ed8:   mov    %rsi,%rbx
           │    0x00007f2a2eb36edb:   shl    %rbx
   0.00%   │    0x00007f2a2eb36ede:   add    %rbx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.06%   │    0x00007f2a2eb36ee1:   mov    %r9,%rbx
           │    0x00007f2a2eb36ee4:   shl    $0x3,%rbx
           │    0x00007f2a2eb36ee8:   mov    %r9,%rdi
   0.00%   │    0x00007f2a2eb36eeb:   shl    %rdi
   0.06%   │    0x00007f2a2eb36eee:   add    %rdi,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36ef1:   cmp    $0x1,%rbx
           │    0x00007f2a2eb36ef5:   jl     0x00007f2a2eb38226           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36efb:   nopl   0x0(%rax,%rax,1)
           │    0x00007f2a2eb36f00:   cmp    $0x2,%edx
           │    0x00007f2a2eb36f03:   jb     0x00007f2a2eb38138           ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.06%   │    0x00007f2a2eb36f09:   mov    %edx,%edi
           │    0x00007f2a2eb36f0b:   mov    %eax,0xc(%rsp)
           │    0x00007f2a2eb36f0f:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.00%   │    0x00007f2a2eb36f13:   imul   %rsi,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.05%   │    0x00007f2a2eb36f17:   mov    0x3c(%rsp),%ecx
           │    0x00007f2a2eb36f1b:   shl    %cl,%r10                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.05%   │    0x00007f2a2eb36f1e:   mov    %r14d,%ecx
           │    0x00007f2a2eb36f21:   mov    %rdx,%rsi
   0.00%   │    0x00007f2a2eb36f24:   shl    %cl,%rsi                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.07%   │    0x00007f2a2eb36f27:   mov    %r10,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f2a:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f2c:   idiv   %rsi                         ; implicit exception: deoptimizes
           │                                                              ; ImmutableOopMap {rbp=Oop r11=NarrowOop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
   2.29%   │    0x00007f2a2eb36f2f:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f31:   test   %eax,%eax
           │    0x00007f2a2eb36f33:   je     0x00007f2a2eb3828a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f39:   mov    %rdx,%r10
   0.06%   │    0x00007f2a2eb36f3c:   shl    $0x3,%r10
           │    0x00007f2a2eb36f40:   shl    %rdx
           │    0x00007f2a2eb36f43:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f46:   cmp    %r10,%r9
           │    0x00007f2a2eb36f49:   jg     0x00007f2a2eb37ed9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.05%   │    0x00007f2a2eb36f4f:   mov    %rsi,%rdx
           │    0x00007f2a2eb36f52:   shl    $0x3,%rdx
   0.00%   │    0x00007f2a2eb36f56:   mov    %rsi,%r14
           │    0x00007f2a2eb36f59:   shl    %r14
   0.06%   │    0x00007f2a2eb36f5c:   add    %rdx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f5f:   mov    %r10,%rdx
           │    0x00007f2a2eb36f62:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f65:   cmp    %r14,%rdx
           │    0x00007f2a2eb36f68:   jg     0x00007f2a2eb381f4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.04%   │    0x00007f2a2eb36f6e:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f71:   mov    %ax,0x10(,%r11,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f7a:   mov    %r10,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f7d:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.06%   │    0x00007f2a2eb36f7f:   idiv   %rsi                         ; implicit exception: deoptimizes
           │                                                              ; ImmutableOopMap {rbp=Oop r11=NarrowOop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
   2.25%   │    0x00007f2a2eb36f82:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f85:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36f89:   mov    %ax,0x12(,%r11,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.04%   │    0x00007f2a2eb36f92:   mov    %rdx,%rax
   0.01%   │    0x00007f2a2eb36f95:   shl    $0x3,%rax
           │    0x00007f2a2eb36f99:   shl    %rdx
           │    0x00007f2a2eb36f9c:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.06%   │    0x00007f2a2eb36f9f:   cmp    %rax,%rbx
   0.01%   │    0x00007f2a2eb36fa2:   setg   %r9b
   0.00%   │    0x00007f2a2eb36fa6:   movzbl %r9b,%r9d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.00%   │    0x00007f2a2eb36faa:   mov    %rax,%rdx
   0.05%   │    0x00007f2a2eb36fad:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.01%   │    0x00007f2a2eb36fb0:   cmp    %r14,%rdx
           │    0x00007f2a2eb36fb3:   mov    %r10d,0x4c(%rsp)
           │    0x00007f2a2eb36fb8:   setg   %r10b
   0.03%   │    0x00007f2a2eb36fbc:   movzbl %r10b,%r10d                  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.01%   │    0x00007f2a2eb36fc0:   cmp    %rax,%rbx
           │    0x00007f2a2eb36fc3:   jg     0x00007f2a2eb37bdd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           │    0x00007f2a2eb36fc9:   cmp    %r14,%rdx
           │    0x00007f2a2eb36fcc:   jg     0x00007f2a2eb381e8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.02%   │    0x00007f2a2eb36fd2:   mov    %rbx,%rdx
   0.03%   │    0x00007f2a2eb36fd5:   shl    $0x3,%rdx
   0.01%   │    0x00007f2a2eb36fd9:   mov    %rbx,%r13
           │    0x00007f2a2eb36fdc:   shl    %r13
   0.01%   │    0x00007f2a2eb36fdf:   add    %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.02%   │    0x00007f2a2eb36fe2:   cmp    $0x1,%rdx
           │    0x00007f2a2eb36fe6:   jl     0x00007f2a2eb3809d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
   0.01%   │    0x00007f2a2eb36fec:   cmp    $0x4,%edi
           │    0x00007f2a2eb36fef:   mov    $0x3,%r13d
   0.03%   │    0x00007f2a2eb36ff5:   cmovb  %edi,%r13d
   0.03%   │    0x00007f2a2eb36ff9:   mov    %r10d,0x4c(%rsp)
   0.01%   │    0x00007f2a2eb36ffe:   mov    %r9d,0x28(%rsp)
           │    0x00007f2a2eb37003:   mov    $0x2,%r10d
   0.02%   │╭   0x00007f2a2eb37009:   jmp    0x00007f2a2eb370a4           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           ││                                                             ; - java.lang.Double::toString@1 (line 312)
           ││                                                             ; - java.lang.String::valueOf@1 (line 4367)
           ││   0x00007f2a2eb3700e:   data16 data16 nopw 0x0(%rax,%rax,1)
           ││   0x00007f2a2eb37019:   data16 data16 xchg %ax,%ax
           ││   0x00007f2a2eb3701d:   data16 xchg %ax,%ax                 ;*castore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           ││                                                             ; - java.lang.Double::toString@1 (line 312)
           ││                                                             ; - java.lang.String::valueOf@1 (line 4367)
   0.05%   ││↗  0x00007f2a2eb37020:   mov    %rax,%rbx
           │││  0x00007f2a2eb37023:   mov    %rbx,0x30(%rsp)
   0.01%   │││  0x00007f2a2eb37028:   mov    %rdx,%rbx
           │││  0x00007f2a2eb3702b:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.05%   │││  0x00007f2a2eb3702d:   idiv   %rsi                         ; implicit exception: deoptimizes
           │││                                                            ; ImmutableOopMap {rbp=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop }
   2.11%   │││  0x00007f2a2eb37030:   mov    %eax,%r9d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%   │││  0x00007f2a2eb37033:   lea    0x30(%r9),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
           │││  0x00007f2a2eb37037:   mov    %ax,0x10(%rbp,%r10,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.06%   │││  0x00007f2a2eb3703d:   mov    %rdx,%rax
   0.00%   │││  0x00007f2a2eb37040:   shl    $0x3,%rax
           │││  0x00007f2a2eb37044:   shl    %rdx
           │││  0x00007f2a2eb37047:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.03%   │││  0x00007f2a2eb3704a:   cmp    %rax,%rbx
   0.01%   │││  0x00007f2a2eb3704d:   setg   %dl
           │││  0x00007f2a2eb37050:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.00%   │││  0x00007f2a2eb37053:   mov    %r9d,0x2c(%rsp)
   0.04%   │││  0x00007f2a2eb37058:   mov    %rax,%r9
   0.00%   │││  0x00007f2a2eb3705b:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
           │││  0x00007f2a2eb3705e:   cmp    %r14,%r9
   0.01%   │││  0x00007f2a2eb37061:   setg   %r8b
   0.04%   │││  0x00007f2a2eb37065:   movzbl %r8b,%r8d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.01%   │││  0x00007f2a2eb37069:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
           │││  0x00007f2a2eb3706c:   cmp    %rax,%rbx
           │││  0x00007f2a2eb3706f:   jg     0x00007f2a2eb37c90           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.01%   │││  0x00007f2a2eb37075:   cmp    %r14,%r9
           │││  0x00007f2a2eb37078:   jg     0x00007f2a2eb3812c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.05%   │││  0x00007f2a2eb3707e:   mov    %rbx,%r9
   0.02%   │││  0x00007f2a2eb37081:   shl    $0x3,%r9
           │││  0x00007f2a2eb37085:   mov    %rbx,%r11
   0.01%   │││  0x00007f2a2eb37088:   shl    %r11
   0.04%   │││  0x00007f2a2eb3708b:   add    %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.01%   │││  0x00007f2a2eb3708e:   cmp    $0x1,%r9
           │││  0x00007f2a2eb37092:   jl     0x00007f2a2eb37f05           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
           │││  0x00007f2a2eb37098:   mov    %r8d,0x4c(%rsp)
   0.01%   │││  0x00007f2a2eb3709d:   mov    %edx,0x28(%rsp)
   0.05%   │││  0x00007f2a2eb370a1:   mov    %r9,%rdx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │││                                                            ; - java.lang.Double::toString@1 (line 312)
           │││                                                            ; - java.lang.String::valueOf@1 (line 4367)
   0.03%   │↘│  0x00007f2a2eb370a4:   mov    %rbx,%r9
   0.01%   │ │  0x00007f2a2eb370a7:   cmp    %r10d,%r13d
           │ │  0x00007f2a2eb370aa:   jbe    0x00007f2a2eb3732e
           │ ╰  0x00007f2a2eb370b0:   jmp    0x00007f2a2eb37020           ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                              ; - java.lang.Double::toString@1 (line 312)
           │                                                              ; - java.lang.String::valueOf@1 (line 4367)
           ↘    0x00007f2a2eb370b5:   cmp    $0x1b,%edi
                0x00007f2a2eb370b8:   jae    0x00007f2a2eb37ca5           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  10.13%  <total for region 3>

....[Hottest Regions]...............................................................................
  38.34%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 947 
  12.55%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 933 
  10.13%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 947 
   5.30%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 927 
   4.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 943 
   4.64%       jvmci, level 4  java.lang.StringUTF16::getChars, version 2, compile id 922 
   3.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 943 
   2.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 943 
   1.62%       jvmci, level 4  java.lang.StringConcatHelper::prepend, version 2, compile id 936 
   1.59%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 933 
   1.29%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 933 
   1.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 943 
   1.04%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::toJavaFormatString, version 2, compile id 931 
   0.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 943 
   0.91%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 947 
   0.88%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 947 
   0.83%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 947 
   0.73%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::toJavaFormatString, version 2, compile id 931 
   0.69%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 933 
   0.58%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 947 
   6.16%  <...other 407 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.61%       jvmci, level 4  java.lang.String::valueOf, version 2, compile id 947 
  16.73%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 933 
  13.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::plus_operator, version 2, compile id 943 
   5.30%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 927 
   4.64%       jvmci, level 4  java.lang.StringUTF16::getChars, version 2, compile id 922 
   2.73%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::toJavaFormatString, version 2, compile id 931 
   1.62%       jvmci, level 4  java.lang.StringConcatHelper::prepend, version 2, compile id 936 
   1.32%               kernel  [unknown] 
   0.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 961 
   0.05%                       <unknown> 
   0.05%         libc-2.31.so  [unknown] 
   0.04%     Unknown, level 0  java.lang.invoke.MethodHandle::linkToStatic, version 1, compile id 727 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.40%  <...other 132 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.98%       jvmci, level 4
   1.32%               kernel
   0.41%            libjvm.so
   0.12%         libc-2.31.so
   0.05%                     
   0.04%     Unknown, level 0
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 25.00% complete, ETA 00:11:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 776.170 ns/op
# Warmup Iteration   2: 683.078 ns/op
# Warmup Iteration   3: 680.017 ns/op
# Warmup Iteration   4: 680.030 ns/op
# Warmup Iteration   5: 679.900 ns/op
Iteration   1: 680.001 ns/op
Iteration   2: 680.069 ns/op
Iteration   3: 680.071 ns/op
Iteration   4: 679.994 ns/op
Iteration   5: 679.896 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer":
  680.006 ±(99.9%) 0.276 ns/op [Average]
  (min, avg, max) = (679.896, 680.006, 680.071), stdev = 0.072
  CI (99.9%): [679.730, 680.282] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer:·asm":
PrintAssembly processed: 222310 total address lines.
Perf output processed (skipped 58.825 seconds):
 Column 1: cycles (50516 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 807 

                                                                         ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                         ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
               0x00007f361eb42cbb:   nopl   0x0(%rax,%rax,1)
               0x00007f361eb42cc0:   cmp    %r11d,%ecx
               0x00007f361eb42cc3:   jg     0x00007f361eb42c00
          ╭    0x00007f361eb42cc9:   jmp    0x00007f361eb42e0e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │    0x00007f361eb42cce:   mov    %rdx,%r8
   0.03%  │    0x00007f361eb42cd1:   mov    %r10d,%r11d
   0.02%  │    0x00007f361eb42cd4:   mov    0x6c(%rsp),%ebp
          │    0x00007f361eb42cd8:   mov    %rax,%r10
   0.00%  │    0x00007f361eb42cdb:   mov    %rbx,%rsi
   0.04%  │    0x00007f361eb42cde:   mov    0x3c(%rsp),%ecx
   0.01%  │    0x00007f361eb42ce2:   mov    0x40(%rsp),%edi
   0.00%  │╭   0x00007f361eb42ce6:   jmp    0x00007f361eb42df8
          ││   0x00007f361eb42ceb:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f361eb42cf6:   data16 data16 xchg %ax,%ax
          ││   0x00007f361eb42cfa:   nopw   0x0(%rax,%rax,1)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.29%  ││↗  0x00007f361eb42d00:   mov    %r10,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f361eb42d03:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.03%  │││  0x00007f361eb42d05:   idiv   %r14                         ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {r9=Oop [20]=NarrowOop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop }
  15.06%  │││  0x00007f361eb42d08:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f361eb42d0b:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%  │││  0x00007f361eb42d0f:   mov    %ax,0x10(%r9,%r11,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.28%  │││  0x00007f361eb42d15:   mov    %rdx,%rax
   0.06%  │││  0x00007f361eb42d18:   shl    $0x3,%rax
   0.00%  │││  0x00007f361eb42d1c:   shl    %rdx
   0.03%  │││  0x00007f361eb42d1f:   mov    %rax,%rdi
   0.30%  │││  0x00007f361eb42d22:   add    %rdx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%  │││  0x00007f361eb42d25:   cmp    %rdi,%r8
          │││  0x00007f361eb42d28:   setg   %sil
   0.02%  │││  0x00007f361eb42d2c:   movzbl %sil,%esi                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.31%  │││  0x00007f361eb42d30:   mov    %rdi,%rax
   0.05%  │││  0x00007f361eb42d33:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
          │││  0x00007f361eb42d36:   cmp    %r13,%rax
   0.02%  │││  0x00007f361eb42d39:   setg   %bpl
   0.30%  │││  0x00007f361eb42d3d:   movzbl %bpl,%ebp                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.09%  │││  0x00007f361eb42d41:   mov    %r11d,%edx
          │││  0x00007f361eb42d44:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │││  0x00007f361eb42d46:   cmp    %rdi,%r8
          │││  0x00007f361eb42d49:   jg     0x00007f361eb43605           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.29%  │││  0x00007f361eb42d4f:   cmp    %r13,%rax
          │││  0x00007f361eb42d52:   jg     0x00007f361eb43fe8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.08%  │││  0x00007f361eb42d58:   mov    %r10d,0x40(%rsp)
          │││  0x00007f361eb42d5d:   mov    %r8,%rax
   0.03%  │││  0x00007f361eb42d60:   shl    $0x3,%rax
   0.28%  │││  0x00007f361eb42d64:   mov    %r8,%r10
   0.10%  │││  0x00007f361eb42d67:   shl    %r10
          │││  0x00007f361eb42d6a:   add    %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f361eb42d6d:   cmp    $0x1,%r10
          │││  0x00007f361eb42d71:   jl     0x00007f361eb43d4e           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.33%  │││  0x00007f361eb42d77:   mov    %edx,0x3c(%rsp)
   0.09%  │││  0x00007f361eb42d7b:   mov    %rdi,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │││  0x00007f361eb42d7e:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f361eb42d80:   idiv   %r14                         ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {r9=Oop [20]=NarrowOop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop }
  15.24%  │││  0x00007f361eb42d83:   mov    %eax,%r8d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f361eb42d86:   lea    0x30(%r8),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │││  0x00007f361eb42d8a:   mov    %ax,0x12(%r9,%r11,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.34%  │││  0x00007f361eb42d90:   mov    %rdx,%rax
   0.05%  │││  0x00007f361eb42d93:   shl    $0x3,%rax
          │││  0x00007f361eb42d97:   shl    %rdx
   0.01%  │││  0x00007f361eb42d9a:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.33%  │││  0x00007f361eb42d9d:   cmp    %rax,%r10
   0.05%  │││  0x00007f361eb42da0:   setg   %dil
          │││  0x00007f361eb42da4:   movzbl %dil,%edi                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%  │││  0x00007f361eb42da8:   mov    %r10,%rdx
   0.25%  │││  0x00007f361eb42dab:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%  │││  0x00007f361eb42dae:   cmp    %r13,%rdx
   0.00%  │││  0x00007f361eb42db1:   setg   %bpl
   0.06%  │││  0x00007f361eb42db5:   movzbl %bpl,%ebp                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.30%  │││  0x00007f361eb42db9:   nopl   0x0(%rax)
   0.03%  │││  0x00007f361eb42dc0:   cmp    %rax,%r10
          │││  0x00007f361eb42dc3:   jg     0x00007f361eb43628           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f361eb42dc9:   cmp    %r13,%rdx
          │││  0x00007f361eb42dcc:   jg     0x00007f361eb43d06           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%  │││  0x00007f361eb42dd2:   mov    %r10,%rdx
   0.26%  │││  0x00007f361eb42dd5:   shl    $0x3,%rdx
   0.02%  │││  0x00007f361eb42dd9:   mov    %r10,%rsi
          │││  0x00007f361eb42ddc:   shl    %rsi
   0.04%  │││  0x00007f361eb42ddf:   add    %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.25%  │││  0x00007f361eb42de2:   cmp    $0x1,%rdx
          │││  0x00007f361eb42de6:   jl     0x00007f361eb44137           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f361eb42dec:   mov    %rdx,%r8
          │││  0x00007f361eb42def:   mov    %ebx,%r11d
   0.03%  │││  0x00007f361eb42df2:   mov    %r10,%rsi
   0.25%  │││  0x00007f361eb42df5:   mov    %rax,%r10                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │↘│  0x00007f361eb42df8:   lea    0x2(%r11),%ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │ │  0x00007f361eb42dfc:   nopl   0x0(%rax)
   0.06%  │ │  0x00007f361eb42e00:   cmp    %r11d,%ecx
          │ ╰  0x00007f361eb42e03:   jg     0x00007f361eb42d00
          │    0x00007f361eb42e09:   jmp    0x00007f361eb433bb           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
          ↘    0x00007f361eb42e0e:   sub    $0x2,%r14d
               0x00007f361eb42e12:   mov    %ebp,%edi
               0x00007f361eb42e14:   mov    %r14d,%r11d
               0x00007f361eb42e17:   mov    0x64(%rsp),%ecx
....................................................................................................
  36.14%  <total for region 1>

....[Hottest Regions]...............................................................................
  36.14%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 807 
   9.95%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 807 
   8.37%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 804 
   7.93%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 809 
   6.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   5.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   4.58%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 807 
   3.29%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 804 
   2.75%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 804 
   1.96%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 804 
   1.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   1.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   1.37%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 809 
   1.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   0.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   0.58%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 804 
   0.51%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 804 
   0.36%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 807 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   0.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
   3.80%  <...other 401 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.46%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 807 
  19.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 794 
  17.86%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 804 
   9.30%       jvmci, level 4  java.lang.StringBuffer::append, version 1, compile id 809 
   1.24%               kernel  [unknown] 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_buffer_jmhTest::string_buffer_avgt_jmhStub, version 5, compile id 822 
   0.07%                       <unknown> 
   0.04%         libc-2.31.so  [unknown] 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%   libpthread-2.31.so  __pthread_mutex_lock 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.38%  <...other 125 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%       jvmci, level 4
   1.24%               kernel
   0.46%            libjvm.so
   0.09%         libc-2.31.so
   0.07%                     
   0.03%           ld-2.31.so
   0.03%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 37.50% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 858.539 ns/op
# Warmup Iteration   2: 740.966 ns/op
# Warmup Iteration   3: 740.261 ns/op
# Warmup Iteration   4: 740.769 ns/op
# Warmup Iteration   5: 739.748 ns/op
Iteration   1: 740.103 ns/op
Iteration   2: 740.445 ns/op
Iteration   3: 739.286 ns/op
Iteration   4: 740.416 ns/op
Iteration   5: 740.493 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer":
  740.149 ±(99.9%) 1.948 ns/op [Average]
  (min, avg, max) = (739.286, 740.149, 740.493), stdev = 0.506
  CI (99.9%): [738.201, 742.096] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_buffer:·asm":
PrintAssembly processed: 222879 total address lines.
Perf output processed (skipped 58.718 seconds):
 Column 1: cycles (50639 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 829 

                                                                         ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                         ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
               0x00007f02eab4a23b:   nopl   0x0(%rax,%rax,1)
               0x00007f02eab4a240:   cmp    %r11d,%ecx
               0x00007f02eab4a243:   jg     0x00007f02eab4a180
          ╭    0x00007f02eab4a249:   jmp    0x00007f02eab4a38e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │    0x00007f02eab4a24e:   mov    %rdx,%r8
   0.04%  │    0x00007f02eab4a251:   mov    %r10d,%r11d
   0.02%  │    0x00007f02eab4a254:   mov    0x64(%rsp),%ebp
          │    0x00007f02eab4a258:   mov    %rax,%r10
   0.01%  │    0x00007f02eab4a25b:   mov    %rbx,%rsi
   0.03%  │    0x00007f02eab4a25e:   mov    0x3c(%rsp),%ecx
   0.01%  │    0x00007f02eab4a262:   mov    0x40(%rsp),%edi
   0.00%  │╭   0x00007f02eab4a266:   jmp    0x00007f02eab4a378
          ││   0x00007f02eab4a26b:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f02eab4a276:   data16 data16 xchg %ax,%ax
          ││   0x00007f02eab4a27a:   nopw   0x0(%rax,%rax,1)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.24%  ││↗  0x00007f02eab4a280:   mov    %r10,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f02eab4a283:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f02eab4a285:   idiv   %r14                         ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {r9=Oop [20]=NarrowOop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop }
  13.78%  │││  0x00007f02eab4a288:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f02eab4a28b:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f02eab4a28f:   mov    %ax,0x10(%r9,%r11,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.27%  │││  0x00007f02eab4a295:   mov    %rdx,%rax
   0.05%  │││  0x00007f02eab4a298:   shl    $0x3,%rax
          │││  0x00007f02eab4a29c:   shl    %rdx
   0.03%  │││  0x00007f02eab4a29f:   mov    %rax,%rdi
   0.24%  │││  0x00007f02eab4a2a2:   add    %rdx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%  │││  0x00007f02eab4a2a5:   cmp    %rdi,%r8
          │││  0x00007f02eab4a2a8:   setg   %sil
   0.02%  │││  0x00007f02eab4a2ac:   movzbl %sil,%esi                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.26%  │││  0x00007f02eab4a2b0:   mov    %rdi,%rax
   0.06%  │││  0x00007f02eab4a2b3:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f02eab4a2b6:   cmp    %r13,%rax
   0.03%  │││  0x00007f02eab4a2b9:   setg   %bpl
   0.31%  │││  0x00007f02eab4a2bd:   movzbl %bpl,%ebp                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.09%  │││  0x00007f02eab4a2c1:   mov    %r11d,%edx
          │││  0x00007f02eab4a2c4:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f02eab4a2c6:   cmp    %rdi,%r8
          │││  0x00007f02eab4a2c9:   jg     0x00007f02eab4ac1b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.28%  │││  0x00007f02eab4a2cf:   cmp    %r13,%rax
          │││  0x00007f02eab4a2d2:   jg     0x00007f02eab4b54c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%  │││  0x00007f02eab4a2d8:   mov    %r10d,0x40(%rsp)
          │││  0x00007f02eab4a2dd:   mov    %r8,%rax
   0.02%  │││  0x00007f02eab4a2e0:   shl    $0x3,%rax
   0.29%  │││  0x00007f02eab4a2e4:   mov    %r8,%r10
   0.09%  │││  0x00007f02eab4a2e7:   shl    %r10
   0.00%  │││  0x00007f02eab4a2ea:   add    %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f02eab4a2ed:   cmp    $0x1,%r10
          │││  0x00007f02eab4a2f1:   jl     0x00007f02eab4b4ff           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.28%  │││  0x00007f02eab4a2f7:   mov    %edx,0x3c(%rsp)
   0.08%  │││  0x00007f02eab4a2fb:   mov    %rdi,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f02eab4a2fe:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f02eab4a300:   idiv   %r14                         ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {r9=Oop [20]=NarrowOop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop }
  14.07%  │││  0x00007f02eab4a303:   mov    %eax,%r8d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f02eab4a306:   lea    0x30(%r8),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f02eab4a30a:   mov    %ax,0x12(%r9,%r11,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.30%  │││  0x00007f02eab4a310:   mov    %rdx,%rax
   0.04%  │││  0x00007f02eab4a313:   shl    $0x3,%rax
   0.00%  │││  0x00007f02eab4a317:   shl    %rdx
   0.01%  │││  0x00007f02eab4a31a:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.30%  │││  0x00007f02eab4a31d:   cmp    %rax,%r10
   0.05%  │││  0x00007f02eab4a320:   setg   %dil
   0.01%  │││  0x00007f02eab4a324:   movzbl %dil,%edi                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.08%  │││  0x00007f02eab4a328:   mov    %r10,%rdx
   0.25%  │││  0x00007f02eab4a32b:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.03%  │││  0x00007f02eab4a32e:   cmp    %r13,%rdx
   0.00%  │││  0x00007f02eab4a331:   setg   %bpl
   0.06%  │││  0x00007f02eab4a335:   movzbl %bpl,%ebp                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.30%  │││  0x00007f02eab4a339:   nopl   0x0(%rax)
   0.02%  │││  0x00007f02eab4a340:   cmp    %rax,%r10
          │││  0x00007f02eab4a343:   jg     0x00007f02eab4ac3e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f02eab4a349:   cmp    %r13,%rdx
          │││  0x00007f02eab4a34c:   jg     0x00007f02eab4b4b7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%  │││  0x00007f02eab4a352:   mov    %r10,%rdx
   0.22%  │││  0x00007f02eab4a355:   shl    $0x3,%rdx
   0.03%  │││  0x00007f02eab4a359:   mov    %r10,%rsi
   0.00%  │││  0x00007f02eab4a35c:   shl    %rsi
   0.02%  │││  0x00007f02eab4a35f:   add    %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.23%  │││  0x00007f02eab4a362:   cmp    $0x1,%rdx
          │││  0x00007f02eab4a366:   jl     0x00007f02eab4b67d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f02eab4a36c:   mov    %rdx,%r8
          │││  0x00007f02eab4a36f:   mov    %ebx,%r11d
   0.02%  │││  0x00007f02eab4a372:   mov    %r10,%rsi
   0.25%  │││  0x00007f02eab4a375:   mov    %rax,%r10                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%  │↘│  0x00007f02eab4a378:   lea    0x2(%r11),%ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%  │ │  0x00007f02eab4a37c:   nopl   0x0(%rax)
   0.04%  │ │  0x00007f02eab4a380:   cmp    %r11d,%ecx
          │ ╰  0x00007f02eab4a383:   jg     0x00007f02eab4a280
          │    0x00007f02eab4a389:   jmp    0x00007f02eab4a90b           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
          ↘    0x00007f02eab4a38e:   sub    $0x2,%r14d
               0x00007f02eab4a392:   mov    %ebp,%edi
               0x00007f02eab4a394:   mov    %r14d,%r11d
               0x00007f02eab4a397:   mov    0x5c(%rsp),%ecx
....................................................................................................
  33.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  33.26%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 829 
   9.37%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 829 
   7.59%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 831 
   7.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   6.50%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 832 
   4.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   3.86%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 831 
   3.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   2.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   2.30%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 831 
   2.27%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 831 
   2.27%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 829 
   1.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   1.22%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 832 
   1.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   0.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   0.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   0.78%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 821 
   0.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
   0.59%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 831 
   7.87%  <...other 523 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  46.27%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 1, compile id 829 
  24.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_buffer, version 2, compile id 819 
  17.48%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 831 
   8.53%       jvmci, level 4  java.lang.StringBuffer::append, version 2, compile id 832 
   1.30%               kernel  [unknown] 
   0.78%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 821 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_buffer_jmhTest::string_buffer_avgt_jmhStub, version 5, compile id 844 
   0.10%                       <unknown> 
   0.07%         libc-2.31.so  [unknown] 
   0.04%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%            libjvm.so  ObjArrayAllocator::initialize 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%            libjvm.so  AbsSeq::dsd 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.64%  <...other 168 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   1.30%               kernel
   0.74%            libjvm.so
   0.15%         libc-2.31.so
   0.10%                     
   0.06%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 50.00% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 695.676 ns/op
# Warmup Iteration   2: 641.212 ns/op
# Warmup Iteration   3: 634.616 ns/op
# Warmup Iteration   4: 634.076 ns/op
# Warmup Iteration   5: 634.146 ns/op
Iteration   1: 634.253 ns/op
Iteration   2: 634.263 ns/op
Iteration   3: 634.790 ns/op
Iteration   4: 634.249 ns/op
Iteration   5: 634.219 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder":
  634.355 ±(99.9%) 0.939 ns/op [Average]
  (min, avg, max) = (634.219, 634.355, 634.790), stdev = 0.244
  CI (99.9%): [633.416, 635.294] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder:·asm":
PrintAssembly processed: 211862 total address lines.
Perf output processed (skipped 58.705 seconds):
 Column 1: cycles (50946 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal::appendTo, version 2, compile id 802 

                                                                         ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                         ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
               0x00007f486ab3659b:   nopl   0x0(%rax,%rax,1)
               0x00007f486ab365a0:   cmp    %r11d,%ecx
               0x00007f486ab365a3:   jg     0x00007f486ab364e0
          ╭    0x00007f486ab365a9:   jmp    0x00007f486ab366ee           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │    0x00007f486ab365ae:   mov    %ebp,%r8d
   0.03%  │    0x00007f486ab365b1:   mov    0x38(%rsp),%r11d
   0.02%  │    0x00007f486ab365b6:   mov    0x5c(%rsp),%ebp
   0.00%  │    0x00007f486ab365ba:   mov    %r9,%rsi
   0.01%  │    0x00007f486ab365bd:   mov    0x34(%rsp),%ecx
   0.03%  │    0x00007f486ab365c1:   mov    %rdx,%r9
   0.01%  │    0x00007f486ab365c4:   mov    %rax,%rdi
          │╭   0x00007f486ab365c7:   jmp    0x00007f486ab366db
          ││   0x00007f486ab365cc:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f486ab365d7:   data16 data16 xchg %ax,%ax
          ││   0x00007f486ab365db:   nopl   0x0(%rax,%rax,1)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                             ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.03%  ││↗  0x00007f486ab365e0:   mov    %rdi,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
          │││  0x00007f486ab365e3:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.09%  │││  0x00007f486ab365e5:   idiv   %r14                         ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {r10=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
  15.88%  │││  0x00007f486ab365e8:   mov    %eax,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f486ab365eb:   lea    0x30(%r11),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f486ab365ef:   mov    %ax,0x10(%r10,%r8,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.34%  │││  0x00007f486ab365f5:   mov    %rdx,%rax
   0.05%  │││  0x00007f486ab365f8:   shl    $0x3,%rax
   0.00%  │││  0x00007f486ab365fc:   shl    %rdx
   0.02%  │││  0x00007f486ab365ff:   mov    %rax,%rdi
   0.35%  │││  0x00007f486ab36602:   add    %rdx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.07%  │││  0x00007f486ab36605:   cmp    %rdi,%r9
   0.00%  │││  0x00007f486ab36608:   setg   %sil
   0.02%  │││  0x00007f486ab3660c:   movzbl %sil,%esi                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.35%  │││  0x00007f486ab36610:   mov    %rdi,%rax
   0.03%  │││  0x00007f486ab36613:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
          │││  0x00007f486ab36616:   cmp    %r13,%rax
   0.01%  │││  0x00007f486ab36619:   setg   %bpl
   0.36%  │││  0x00007f486ab3661d:   movzbl %bpl,%ebp                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.09%  │││  0x00007f486ab36621:   mov    %r8d,%edx
   0.00%  │││  0x00007f486ab36624:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │││  0x00007f486ab36626:   cmp    %rdi,%r9
          │││  0x00007f486ab36629:   jg     0x00007f486ab36ea5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.27%  │││  0x00007f486ab3662f:   cmp    %r13,%rax
          │││  0x00007f486ab36632:   jg     0x00007f486ab374dc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.09%  │││  0x00007f486ab36638:   mov    %r11d,0x34(%rsp)
   0.00%  │││  0x00007f486ab3663d:   mov    %r9,%rax
   0.01%  │││  0x00007f486ab36640:   shl    $0x3,%rax
   0.32%  │││  0x00007f486ab36644:   mov    %r9,%r11
   0.08%  │││  0x00007f486ab36647:   shl    %r11
   0.00%  │││  0x00007f486ab3664a:   add    %rax,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │││  0x00007f486ab3664d:   cmp    $0x1,%r11
          │││  0x00007f486ab36651:   jl     0x00007f486ab374b3           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.30%  │││  0x00007f486ab36657:   mov    %edx,0x5c(%rsp)
   0.12%  │││  0x00007f486ab3665b:   mov    %rdi,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f486ab3665e:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │││  0x00007f486ab36660:   idiv   %r14                         ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {r10=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
  16.22%  │││  0x00007f486ab36663:   mov    %eax,%r9d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │││  0x00007f486ab36666:   lea    0x30(%r9),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f486ab3666a:   mov    %ax,0x12(%r10,%r8,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.40%  │││  0x00007f486ab36670:   mov    %rdx,%rax
   0.04%  │││  0x00007f486ab36673:   shl    $0x3,%rax
   0.00%  │││  0x00007f486ab36677:   shl    %rdx
   0.03%  │││  0x00007f486ab3667a:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.37%  │││  0x00007f486ab3667d:   cmp    %rax,%r11
   0.03%  │││  0x00007f486ab36680:   setg   %r8b
   0.01%  │││  0x00007f486ab36684:   movzbl %r8b,%r8d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.08%  │││  0x00007f486ab36688:   mov    %r11,%rdx
   0.31%  │││  0x00007f486ab3668b:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%  │││  0x00007f486ab3668e:   cmp    %r13,%rdx
   0.00%  │││  0x00007f486ab36691:   setg   %bpl
   0.09%  │││  0x00007f486ab36695:   movzbl %bpl,%ebp                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.34%  │││  0x00007f486ab36699:   nopl   0x0(%rax)
   0.03%  │││  0x00007f486ab366a0:   cmp    %rax,%r11
          │││  0x00007f486ab366a3:   jg     0x00007f486ab36ed4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%  │││  0x00007f486ab366a9:   cmp    %r13,%rdx
          │││  0x00007f486ab366ac:   jg     0x00007f486ab3746b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.03%  │││  0x00007f486ab366b2:   mov    %r11,%rdx
   0.33%  │││  0x00007f486ab366b5:   shl    $0x3,%rdx
   0.02%  │││  0x00007f486ab366b9:   mov    %r11,%rsi
          │││  0x00007f486ab366bc:   shl    %rsi
   0.03%  │││  0x00007f486ab366bf:   add    %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.31%  │││  0x00007f486ab366c2:   cmp    $0x1,%rdx
          │││  0x00007f486ab366c6:   jl     0x00007f486ab3779e           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%  │││  0x00007f486ab366cc:   mov    %rdx,%r9
          │││  0x00007f486ab366cf:   mov    %rax,%rdi
   0.04%  │││  0x00007f486ab366d2:   mov    %r11,%rsi
   0.30%  │││  0x00007f486ab366d5:   mov    %r8d,%r11d
   0.02%  │││  0x00007f486ab366d8:   mov    %ebx,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%  │↘│  0x00007f486ab366db:   lea    0x2(%r8),%ebx                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │ │                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.09%  │ │  0x00007f486ab366df:   nop
   0.29%  │ │  0x00007f486ab366e0:   cmp    %r8d,%ecx
          │ ╰  0x00007f486ab366e3:   jg     0x00007f486ab365e0
          │    0x00007f486ab366e9:   jmp    0x00007f486ab36c3e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
          ↘    0x00007f486ab366ee:   sub    $0x2,%r14d
               0x00007f486ab366f2:   mov    %r13d,%edi
               0x00007f486ab366f5:   mov    %ebx,%ecx
               0x00007f486ab366f7:   mov    %r14d,%r11d
....................................................................................................
  38.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 788 

                 0x00007f486ab3b7d5:   mov    %ebx,%ecx
                 0x00007f486ab3b7d7:   mov    %esi,%ebx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
                                                                           ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
                 0x00007f486ab3b7d9:   nopl   0x0(%rax)
                 0x00007f486ab3b7e0:   cmp    %r8d,%r11d
          ╭      0x00007f486ab3b7e3:   jbe    0x00007f486ab3ba5c
          │      0x00007f486ab3b7e9:   jmp    0x00007f486ab3b760           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f486ab3b7ee:   cmp    $0x1b,%edi
          │      0x00007f486ab3b7f1:   jae    0x00007f486ab3beee           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b7f7:   mov    %ebx,%esi
          │      0x00007f486ab3b7f9:   add    0x10(%rax,%rdi,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │      0x00007f486ab3b7fd:   data16 xchg %ax,%ax
   0.05%  │      0x00007f486ab3b800:   cmp    $0x40,%esi
          │      0x00007f486ab3b803:   jge    0x00007f486ab3b5c9
          │      0x00007f486ab3b809:   jmp    0x00007f486ab3c1b7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b80e:   mov    0x3c(%rsp),%ecx
          │      0x00007f486ab3b812:   mov    %edi,0x3c(%rsp)
   0.00%  │      0x00007f486ab3b816:   mov    %ebx,0x2c(%rsp)
   0.05%  │      0x00007f486ab3b81a:   mov    %r11,0x20(%rsp)
          │      0x00007f486ab3b81f:   nop
          │      0x00007f486ab3b820:   cmp    $0x20,%ecx
          │      0x00007f486ab3b823:   jge    0x00007f486ab3bff2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │      0x00007f486ab3b829:   test   %r14d,%r14d
          │      0x00007f486ab3b82c:   je     0x00007f486ab3c1a5           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f486ab3b832:   mov    0x34(%rsp),%ecx
          │      0x00007f486ab3b836:   movabs $0x7ffd3adc8,%rax            ;   {oop([I{0x00000007ffd3adc8})}
          │      0x00007f486ab3b840:   mov    0x14(%rax),%r10d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │      0x00007f486ab3b844:   mov    0x10(%rax),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │      0x00007f486ab3b847:   mov    %r9d,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b84a:   imul   %r10d,%r11d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b84e:   shl    %cl,%r11d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │      0x00007f486ab3b851:   mov    %edx,%ecx
          │      0x00007f486ab3b853:   mov    %eax,%r9d
   0.00%  │      0x00007f486ab3b856:   shl    %cl,%r9d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.07%  │      0x00007f486ab3b859:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@446 (line 608)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │      0x00007f486ab3b85c:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │      0x00007f486ab3b85d:   idiv   %r9d                         ; implicit exception: deoptimizes
          │                                                                ; ImmutableOopMap {r8=NarrowOop r13=Oop [12]=NarrowOop [16]=Oop }
   1.00%  │      0x00007f486ab3b860:   test   %eax,%eax
          │      0x00007f486ab3b862:   je     0x00007f486ab3c192           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f486ab3b868:   mov    %edx,%r11d
   0.00%  │      0x00007f486ab3b86b:   shl    $0x3,%r11d
          │      0x00007f486ab3b86f:   shl    %edx
   0.03%  │      0x00007f486ab3b871:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │      0x00007f486ab3b874:   mov    %r10d,%edx
          │      0x00007f486ab3b877:   shl    $0x3,%edx
          │      0x00007f486ab3b87a:   shl    %r10d
   0.01%  │      0x00007f486ab3b87d:   add    %r10d,%edx                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f486ab3b880:   cmp    %r11d,%edx
          │      0x00007f486ab3b883:   jg     0x00007f486ab3c180           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b889:   mov    %r9d,%r10d
          │      0x00007f486ab3b88c:   shl    $0x3,%r10d
   0.01%  │      0x00007f486ab3b890:   mov    %r9d,%ecx
   0.04%  │      0x00007f486ab3b893:   shl    %ecx
          │      0x00007f486ab3b895:   add    %ecx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b898:   mov    %r11d,%ecx
   0.01%  │      0x00007f486ab3b89b:   add    %edx,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.05%  │      0x00007f486ab3b89d:   data16 xchg %ax,%ax
          │      0x00007f486ab3b8a0:   cmp    %r10d,%ecx
          │      0x00007f486ab3b8a3:   jg     0x00007f486ab3c16e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b8a9:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.02%  │      0x00007f486ab3b8ac:   mov    %ax,0x10(,%r8,8)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │      0x00007f486ab3b8b5:   mov    %edx,%eax
          │      0x00007f486ab3b8b7:   shl    $0x3,%eax
          │      0x00007f486ab3b8ba:   mov    %edx,%r8d
   0.01%  │      0x00007f486ab3b8bd:   shl    %r8d
   0.04%  │      0x00007f486ab3b8c0:   add    %r8d,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │      0x00007f486ab3b8c3:   cmp    $0x1,%eax
          │      0x00007f486ab3b8c6:   jl     0x00007f486ab3c152           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │      0x00007f486ab3b8cc:   cmp    $0x3,%r14d
   0.01%  │      0x00007f486ab3b8d0:   mov    $0x2,%r8d
   0.03%  │      0x00007f486ab3b8d6:   cmovb  %r14d,%r8d
          │      0x00007f486ab3b8da:   mov    %eax,%esi
          │      0x00007f486ab3b8dc:   mov    %edx,%edi
   0.01%  │      0x00007f486ab3b8de:   mov    %r11d,%ebx
   0.05%  │      0x00007f486ab3b8e1:   mov    $0x0,%ecx
   0.00%  │      0x00007f486ab3b8e6:   mov    $0x1,%r11d
          │╭     0x00007f486ab3b8ec:   jmp    0x00007f486ab3b959           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ││                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ││     0x00007f486ab3b8f1:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││     0x00007f486ab3b8fc:   data16 data16 xchg %ax,%ax          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          ││                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  ││↗    0x00007f486ab3b900:   mov    %ebx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f486ab3b902:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f486ab3b903:   idiv   %r9d                         ; implicit exception: deoptimizes
          │││                                                              ; ImmutableOopMap {r13=Oop [12]=NarrowOop [16]=Oop }
   1.28%  │││    0x00007f486ab3b906:   mov    %edx,%r14d
   0.02%  │││    0x00007f486ab3b909:   shl    $0x3,%r14d
   0.01%  │││    0x00007f486ab3b90d:   shl    %edx
   0.01%  │││    0x00007f486ab3b90f:   add    %edx,%r14d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │││    0x00007f486ab3b912:   cmp    %r14d,%esi
          │││    0x00007f486ab3b915:   jg     0x00007f486ab3c36d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │││    0x00007f486ab3b91b:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │││    0x00007f486ab3b91e:   mov    %dx,0x10(%r13,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f486ab3b924:   mov    %r14d,%edx
   0.00%  │││    0x00007f486ab3b927:   add    %esi,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │││    0x00007f486ab3b929:   cmp    %r10d,%edx
          │││    0x00007f486ab3b92c:   setg   %cl
   0.06%  │││    0x00007f486ab3b92f:   movzbl %cl,%ecx                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.04%  │││    0x00007f486ab3b932:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f486ab3b935:   cmp    %r10d,%edx
          │││    0x00007f486ab3b938:   jg     0x00007f486ab3beac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │││    0x00007f486ab3b93e:   mov    %esi,%edx
   0.01%  │││    0x00007f486ab3b940:   shl    $0x3,%edx
   0.05%  │││    0x00007f486ab3b943:   mov    %esi,%ebx
          │││    0x00007f486ab3b945:   shl    %ebx
          │││    0x00007f486ab3b947:   add    %ebx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │││    0x00007f486ab3b949:   cmp    $0x1,%edx
          │││    0x00007f486ab3b94c:   jl     0x00007f486ab3c2bd           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.06%  │││    0x00007f486ab3b952:   mov    %esi,%edi
          │││    0x00007f486ab3b954:   mov    %r14d,%ebx
          │││    0x00007f486ab3b957:   mov    %edx,%esi                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │││                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │↘│    0x00007f486ab3b959:   cmp    %r11d,%r8d
          │ ╰    0x00007f486ab3b95c:   ja     0x00007f486ab3b900
   0.06%  │      0x00007f486ab3b95e:   mov    %ecx,%r8d
          │      0x00007f486ab3b961:   mov    %ebx,%ecx
          │      0x00007f486ab3b963:   mov    %edi,%ebx
   0.01%  │      0x00007f486ab3b965:   mov    %esi,%edi
   0.06%  │  ╭   0x00007f486ab3b967:   jmp    0x00007f486ab3ba4a
          │  │   0x00007f486ab3b96c:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  │   0x00007f486ab3b977:   data16 data16 xchg %ax,%ax
          │  │   0x00007f486ab3b97b:   nopl   0x0(%rax,%rax,1)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │  │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.07%  │  │↗  0x00007f486ab3b980:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3b982:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │  ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3b983:   idiv   %r9d                         ; implicit exception: deoptimizes
          │  ││                                                            ; ImmutableOopMap {r13=Oop [12]=NarrowOop [16]=Oop }
   3.92%  │  ││  0x00007f486ab3b986:   mov    %eax,%r14d                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │  ││  0x00007f486ab3b989:   mov    %edx,%eax
   0.01%  │  ││  0x00007f486ab3b98b:   shl    $0x3,%eax
   0.10%  │  ││  0x00007f486ab3b98e:   shl    %edx
   0.13%  │  ││  0x00007f486ab3b990:   add    %edx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.07%  │  ││  0x00007f486ab3b992:   cmp    %eax,%edi
          │  ││  0x00007f486ab3b994:   jg     0x00007f486ab3c0e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.15%  │  ││  0x00007f486ab3b99a:   lea    0x30(%r14),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.02%  │  ││  0x00007f486ab3b99e:   mov    %dx,0x10(%r13,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3b9a4:   mov    %eax,%edx
          │  ││  0x00007f486ab3b9a6:   add    %edi,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.19%  │  ││  0x00007f486ab3b9a8:   cmp    %r10d,%edx
   0.06%  │  ││  0x00007f486ab3b9ab:   setg   %r8b
   0.16%  │  ││  0x00007f486ab3b9af:   movzbl %r8b,%r8d                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.19%  │  ││  0x00007f486ab3b9b3:   mov    %r11d,%ecx
          │  ││  0x00007f486ab3b9b6:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3b9b8:   nopl   0x0(%rax,%rax,1)
   0.00%  │  ││  0x00007f486ab3b9c0:   cmp    %r10d,%edx
          │  ││  0x00007f486ab3b9c3:   jg     0x00007f486ab3bdb4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.13%  │  ││  0x00007f486ab3b9c9:   mov    %edi,%edx
          │  ││  0x00007f486ab3b9cb:   shl    $0x3,%edx
          │  ││  0x00007f486ab3b9ce:   mov    %edi,%ebx
          │  ││  0x00007f486ab3b9d0:   shl    %ebx
   0.15%  │  ││  0x00007f486ab3b9d2:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3b9d4:   cmp    $0x1,%ebx
          │  ││  0x00007f486ab3b9d7:   jl     0x00007f486ab3c0c6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3b9dd:   mov    %r8d,0x1c(%rsp)
   0.00%  │  ││  0x00007f486ab3b9e2:   mov    %r14d,0x18(%rsp)
   0.11%  │  ││  0x00007f486ab3b9e7:   mov    %eax,%r14d
          │  ││  0x00007f486ab3b9ea:   cltd                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3b9eb:   idiv   %r9d                         ; implicit exception: deoptimizes
          │  ││                                                            ; ImmutableOopMap {r13=Oop [12]=NarrowOop [16]=Oop }
   2.58%  │  ││  0x00007f486ab3b9ee:   mov    %edx,%r8d
   0.04%  │  ││  0x00007f486ab3b9f1:   shl    $0x3,%r8d
   0.03%  │  ││  0x00007f486ab3b9f5:   shl    %edx
   0.02%  │  ││  0x00007f486ab3b9f7:   add    %edx,%r8d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.10%  │  ││  0x00007f486ab3b9fa:   nopw   0x0(%rax,%rax,1)
   0.02%  │  ││  0x00007f486ab3ba00:   cmp    %r8d,%ebx
          │  ││  0x00007f486ab3ba03:   jg     0x00007f486ab3c09a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.11%  │  ││  0x00007f486ab3ba09:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.01%  │  ││  0x00007f486ab3ba0c:   mov    %dx,0x12(%r13,%r11,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3ba12:   mov    %ebx,%edx
   0.02%  │  ││  0x00007f486ab3ba14:   add    %r8d,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.11%  │  ││  0x00007f486ab3ba17:   cmp    %r10d,%edx
   0.02%  │  ││  0x00007f486ab3ba1a:   setg   %r11b
   0.13%  │  ││  0x00007f486ab3ba1e:   movzbl %r11b,%r11d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.12%  │  ││  0x00007f486ab3ba22:   cmp    %r10d,%edx
          │  ││  0x00007f486ab3ba25:   jg     0x00007f486ab3be35           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.00%  │  ││  0x00007f486ab3ba2b:   mov    %ebx,%edx
          │  ││  0x00007f486ab3ba2d:   shl    $0x3,%edx
          │  ││  0x00007f486ab3ba30:   mov    %ebx,%ecx
   0.11%  │  ││  0x00007f486ab3ba32:   shl    %ecx
          │  ││  0x00007f486ab3ba34:   add    %ecx,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3ba36:   cmp    $0x1,%edx
          │  ││  0x00007f486ab3ba39:   jl     0x00007f486ab3c28f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ││  0x00007f486ab3ba3f:   mov    %edx,%edi
   0.12%  │  ││  0x00007f486ab3ba41:   mov    %r8d,%ecx
   0.00%  │  ││  0x00007f486ab3ba44:   mov    %r11d,%r8d
          │  ││  0x00007f486ab3ba47:   mov    %esi,%r11d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │  ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          │  ↘│  0x00007f486ab3ba4a:   lea    0x2(%r11),%esi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
          │   │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
   0.12%  │   │  0x00007f486ab3ba4e:   cmp    %r11d,%ebp
          │   ╰  0x00007f486ab3ba51:   jg     0x00007f486ab3b980
          │      0x00007f486ab3ba57:   jmp    0x00007f486ab3bb85           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │                                                                ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@157 (line 1825)
          ↘      0x00007f486ab3ba5c:   mov    %rdx,%rsi
                 0x00007f486ab3ba5f:   mov    %rax,%r11
                 0x00007f486ab3ba62:   mov    0x20(%rsp),%r10
                 0x00007f486ab3ba67:   mov    %ebx,0x44(%rsp)
....................................................................................................
  13.02%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal::appendTo, version 2, compile id 802 

                0x00007f486ab35e34:   0xf4f4f4f4                              
                0x00007f486ab35e38:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                0x00007f486ab35e3c:   0xf4f4f4f4                              
              --------------------------------------------------------------------------------
              [Verified Entry Point]
                # {method} {0x000000080019d858} &apos;appendTo&apos; &apos;(DLjava/lang/Appendable;)V&apos; in &apos;jdk/internal/math/FloatingDecimal&apos;
                # parm0:    xmm0:xmm0   = double
                # parm1:    rsi:rsi   = &apos;java/lang/Appendable&apos;
                #           [sp+0x80]  (sp of caller)
                0x00007f486ab35e40:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   0.05%        0x00007f486ab35e47:   sub    $0x78,%rsp
   0.00%        0x00007f486ab35e4b:   mov    %rbp,0x70(%rsp)
   0.00%        0x00007f486ab35e50:   mov    %rsi,%r11
   0.04%        0x00007f486ab35e53:   vmovq  %xmm0,%rsi                   ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Double::doubleToRawLongBits@-3
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@1 (line 1750)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35e58:   movabs $0x8000000000000000,%r10     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@6 (line 1751)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35e62:   test   %r10,%rsi
                0x00007f486ab35e65:   jne    0x00007f486ab37818           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@12 (line 1751)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35e6b:   movabs $0x7ff0000000000000,%rbp     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@30 (line 1753)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%        0x00007f486ab35e75:   mov    %rsi,%rcx
   0.00%        0x00007f486ab35e78:   and    %rbp,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@33 (line 1753)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35e7b:   shr    $0x34,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@36 (line 1753)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35e7f:   mov    %ecx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@37 (line 1753)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.07%        0x00007f486ab35e81:   cmp    $0x7ff,%ecx
                0x00007f486ab35e87:   je     0x00007f486ab3768f           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@45 (line 1755)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35e8d:   test   %ecx,%ecx
                0x00007f486ab35e8f:   je     0x00007f486ab376aa           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@76 (line 1767)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35e95:   mov    0x280(%r15),%rax
                0x00007f486ab35e9c:   mov    (%rax),%rax                  ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Thread::currentThread@-3
                                                                          ; - java.lang.ThreadLocal::get@0 (line 162)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%        0x00007f486ab35e9f:   mov    0x44(%rax),%eax              ; ImmutableOopMap {r11=Oop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal::appendTo@0 (line 89)
                0x00007f486ab35ea2:   mov    0x14(,%rax,8),%eax           ; implicit exception: dispatches to 0x00007f486ab37920
   0.00%        0x00007f486ab35ea9:   cmp    $0x43e,%ecx
                0x00007f486ab35eaf:   jae    0x00007f486ab37323           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35eb5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.07%        0x00007f486ab35ec0:   cmp    $0x3ea,%ecx
                0x00007f486ab35ec6:   jb     0x00007f486ab37266           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35ecc:   movabs $0xfffffffffffff,%rdx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@23 (line 1752)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35ed6:   and    %rdx,%rsi                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@26 (line 1752)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35ed9:   movabs $0x3ff0000000000000,%rdx     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.07%        0x00007f486ab35ee3:   or     %rsi,%rdx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35ee6:   vmovq  %rdx,%xmm1
                0x00007f486ab35eeb:   vsubsd -0xeb(%rip),%xmm1,%xmm1        # 0x00007f486ab35e08
                                                                          ;   {section_word}
   0.00%        0x00007f486ab35ef3:   vmulsd -0xeb(%rip),%xmm1,%xmm1        # 0x00007f486ab35e10
                                                                          ;   {section_word}
   0.05%        0x00007f486ab35efb:   vaddsd -0xeb(%rip),%xmm1,%xmm1        # 0x00007f486ab35e18
                                                                          ;   {section_word}
   0.00%        0x00007f486ab35f03:   lea    -0x3ff(%rcx),%r8d            ;*wide {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@150 (line 1781)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f0a:   vxorpd %xmm2,%xmm2,%xmm2
                0x00007f486ab35f0e:   vcvtsi2sd %r8d,%xmm2,%xmm2
   0.05%        0x00007f486ab35f13:   vmulsd -0xfb(%rip),%xmm2,%xmm2        # 0x00007f486ab35e20
                                                                          ;   {section_word}
   0.00%        0x00007f486ab35f1b:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35f1f:   vmovq  %xmm1,%rcx                   ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Double::doubleToRawLongBits@-3
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%        0x00007f486ab35f24:   test   %r10,%rcx
                0x00007f486ab35f27:   je     0x00007f486ab378cf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35f2d:   mov    %rcx,%r10
                0x00007f486ab35f30:   and    %rbp,%r10                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f33:   shr    $0x34,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%        0x00007f486ab35f37:   mov    %r10d,%r10d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f3a:   nopw   0x0(%rax,%rax,1)
                0x00007f486ab35f40:   cmp    $0x3ff,%r10d
                0x00007f486ab35f47:   jae    0x00007f486ab376e5           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f4d:   movabs $0x7fffffffffffffff,%r10     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%        0x00007f486ab35f57:   test   %r10,%rcx
                0x00007f486ab35f5a:   je     0x00007f486ab37833           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f60:   movabs $0x10000000000000,%r10       ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@140 (line 1778)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f6a:   mov    %rsi,%r9
                0x00007f486ab35f6d:   or     %r10,%r9                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@143 (line 1778)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%        0x00007f486ab35f70:   tzcnt  %r9,%rbx                     ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f75:   mov    $0x35,%esi
                0x00007f486ab35f7a:   mov    %esi,%edi
                0x00007f486ab35f7c:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%        0x00007f486ab35f7e:   xchg   %ax,%ax
                0x00007f486ab35f80:   cmp    $0x1,%edi
                0x00007f486ab35f83:   je     0x00007f486ab3764b           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35f89:   mov    %edi,%esi
   0.00%        0x00007f486ab35f8b:   sub    %r8d,%esi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%        0x00007f486ab35f8e:   mov    %esi,%r10d
                0x00007f486ab35f91:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35f94:   cmp    $0x2,%esi
                0x00007f486ab35f97:   mov    $0x0,%esi
   0.05%        0x00007f486ab35f9c:   mov    %r10d,%r13d
                0x00007f486ab35f9f:   cmovl  %esi,%r13d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.Math::max@2 (line 1562)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35fa3:   mov    %r13d,%esi
                0x00007f486ab35fa6:   add    %r8d,%esi
   0.08%        0x00007f486ab35fa9:   lea    -0x34(%rsi),%r10d            ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35fad:   inc    %esi
                0x00007f486ab35faf:   add    %ebx,%esi
   0.00%        0x00007f486ab35fb1:   lea    -0x34(%rsi),%esi
   0.05%        0x00007f486ab35fb4:   cmp    %r13d,%esi
                0x00007f486ab35fb7:   mov    %esi,%ebp
                0x00007f486ab35fb9:   cmovg  %r13d,%ebp                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.Math::min@2 (line 1649)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35fbd:   data16 xchg %ax,%ax
   0.05%        0x00007f486ab35fc0:   cmp    %r10d,%ebp
                0x00007f486ab35fc3:   jle    0x00007f486ab377aa
                0x00007f486ab35fc9:   movabs $0x7f1c317c0,%rcx            ;   {oop([I{0x00000007f1c317c0})}
                0x00007f486ab35fd3:   mov    0x14(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35fd6:   sub    %ebp,%esi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%        0x00007f486ab35fd8:   sub    %ebp,%r10d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35fdb:   mov    %esi,%r14d
                0x00007f486ab35fde:   sub    %r10d,%r14d                  ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35fe1:   mov    %r14d,%esi
   0.06%        0x00007f486ab35fe4:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35fe6:   add    %edx,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35fe8:   cmp    $0x40,%esi
                0x00007f486ab35feb:   jge    0x00007f486ab375ca           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab35ff1:   mov    %r8d,0x5c(%rsp)
   0.06%        0x00007f486ab35ff6:   mov    %r13d,%r8d
                0x00007f486ab35ff9:   sub    %ebp,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35ffc:   sub    %r10d,%r8d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab35fff:   mov    %r8d,%r10d
   0.04%        0x00007f486ab36002:   add    %edx,%r10d
                0x00007f486ab36005:   mov    %r10d,%edx
   0.00%        0x00007f486ab36008:   inc    %edx
                0x00007f486ab3600a:   cmp    $0x40,%edx
                0x00007f486ab3600d:   jge    0x00007f486ab37771           ; ImmutableOopMap {rax=NarrowOop rcx=Oop r11=Oop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal::appendTo@0 (line 89)
   0.06%        0x00007f486ab36013:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f486ab3793c
   0.00%        0x00007f486ab3601b:   mov    %r10d,%ebp
                0x00007f486ab3601e:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@10 (line 434)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab36020:   and    $0xac7babf1,%ebp             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@11 (line 434)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%        0x00007f486ab36026:   cmp    %ebp,%r10d
                0x00007f486ab36029:   jbe    0x00007f486ab3774a           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@18 (line 435)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab3602f:   shl    $0x3,%rax                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@5 (line 434)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab36033:   mov    0x10(%rax,%rbp,4),%r10d      ; ImmutableOopMap {rcx=Oop r10=NarrowOop r11=Oop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal::appendTo@0 (line 89)
                0x00007f486ab36038:   mov    0x1c(,%r10,8),%eax           ; implicit exception: dispatches to 0x00007f486ab37958
   0.06%        0x00007f486ab36040:   test   %eax,%eax
                0x00007f486ab36042:   je     0x00007f486ab36ef0
                0x00007f486ab36048:   mov    %r11,0x20(%rsp)
   0.00%        0x00007f486ab3604d:   mov    0x8(,%rax,8),%ebp
   0.01%        0x00007f486ab36054:   movabs $0x800000000,%r11
   0.06%        0x00007f486ab3605e:   lea    (%r11,%rbp,1),%rbp
   0.02%        0x00007f486ab36062:   test   %eax,%eax
          ╭     0x00007f486ab36064:   je     0x00007f486ab3607d
          │     0x00007f486ab3606a:   movabs $0x8002a2490,%r11            ;   {metadata(&apos;jdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer&apos;)}
          │     0x00007f486ab36074:   cmp    %rbp,%r11
          │     0x00007f486ab36077:   jne    0x00007f486ab376c5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@6 (line 986)
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
          │                                                               ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                               ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%  ↘     0x00007f486ab3607d:   mov    %edx,0x58(%rsp)              ; ImmutableOopMap {rax=NarrowOop rcx=Oop r10=NarrowOop [32]=Oop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal::appendTo@0 (line 89)
   0.00%        0x00007f486ab36081:   mov    0x1c(,%rax,8),%r11d          ; implicit exception: dispatches to 0x00007f486ab37974
                0x00007f486ab36089:   mov    %r11d,0x1c(%rsp)
                0x00007f486ab3608e:   mov    0x20(,%rax,8),%ebp           ; ImmutableOopMap {rax=NarrowOop rcx=Oop rbp=NarrowOop r10=NarrowOop r11=NarrowOop [28]=NarrowOop [32]=Oop }
                                                                          ;*dload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal::appendTo@0 (line 89)
   0.07%        0x00007f486ab36095:   mov    0xc(,%r11,8),%edx            ; implicit exception: dispatches to 0x00007f486ab37990
   0.06%        0x00007f486ab3609d:   mov    %edx,0x54(%rsp)
   0.08%        0x00007f486ab360a1:   mov    0xc(,%r10,8),%r10d
   0.00%        0x00007f486ab360a9:   cmpb   $0x0,0x38(%r15)
   0.00%        0x00007f486ab360ae:   jne    0x00007f486ab36f05           ;* unwind (locked if synchronized)
                                                                          ; - java.lang.ref.Reference::refersTo0@-3
                                                                          ; - java.lang.ref.Reference::refersToImpl@2 (line 375)
                                                                          ; - java.lang.ref.Reference::refersTo@2 (line 366)
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@26 (line 436)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab360b4:   mov    %ebp,0x18(%rsp)
   0.05%        0x00007f486ab360b8:   mov    %r8d,0x50(%rsp)
                0x00007f486ab360bd:   mov    %r14d,0x4c(%rsp)
   0.00%        0x00007f486ab360c2:   mov    %r9,0x40(%rsp)
                0x00007f486ab360c7:   vmovsd %xmm0,0x60(%rsp)
   0.05%        0x00007f486ab360cd:   mov    %r10d,%r9d
                0x00007f486ab360d0:   mov    %esi,%r14d
   0.00%        0x00007f486ab360d3:   cmp    $0xfe3862f6,%r9d             ;   {oop(a &apos;jdk/internal/math/FloatingDecimal$1&apos;{0x00000007f1c317b0})}
                0x00007f486ab360da:   jne    0x00007f486ab37290           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal$ThreadLocalMap::getEntry@29 (line 436)
                                                                          ; - java.lang.ThreadLocal::get@16 (line 165)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab360e0:   mov    %r12b,0x18(,%rax,8)          ;*putfield isNegative {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::setSign@2 (line 349)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@165 (line 1783)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%        0x00007f486ab360e8:   mov    %r12b,0x1a(,%rax,8)          ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
                0x00007f486ab360f0:   mov    %r12b,0x19(,%rax,8)          ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%        0x00007f486ab360f8:   mov    %eax,%r9d
   0.00%        0x00007f486ab360fb:   shl    $0x3,%r9                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.ThreadLocal::get@25 (line 168)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIBuffer@3 (line 986)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@156 (line 1782)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%        0x00007f486ab360ff:   nop
                0x00007f486ab36100:   cmp    $0x1b,%r13d
           ╭    0x00007f486ab36104:   jl     0x00007f486ab36333           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │    0x00007f486ab3610a:   lea    -0x2(%rdx),%esi
           │    0x00007f486ab3610d:   mov    %esi,0x34(%rsp)
   0.05%   │    0x00007f486ab36111:   mov    %r11d,%r10d
           │    0x00007f486ab36114:   shl    $0x3,%r10                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │    0x00007f486ab36118:   mov    %ebx,%ecx
           │    0x00007f486ab3611a:   mov    0x40(%rsp),%rbp
   0.07%   │    0x00007f486ab3611f:   shr    %cl,%rbp                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │    0x00007f486ab36122:   cmp    $0x20,%r14d
           │    0x00007f486ab36126:   jl     0x00007f486ab36352           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%   │    0x00007f486ab3612c:   mov    %r9,0x10(%rsp)
   0.00%   │    0x00007f486ab36131:   mov    %edi,0x3c(%rsp)
   0.00%   │    0x00007f486ab36135:   mov    %ebx,0x38(%rsp)
           │    0x00007f486ab36139:   movabs $0x7ffd3ae10,%rcx            ;   {oop([J{0x00000007ffd3ae10})}
   0.04%   │    0x00007f486ab36143:   mov    0x18(%rcx),%r14              ;*laload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │    0x00007f486ab36147:   mov    %r14,%r9
           │    0x00007f486ab3614a:   shl    $0x3,%r9
           │    0x00007f486ab3614e:   mov    %r14,%rbx
   0.05%   │    0x00007f486ab36151:   shl    %rbx
           │    0x00007f486ab36154:   add    %rbx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │    0x00007f486ab36157:   mov    %r9,%rbx
           │    0x00007f486ab3615a:   shl    $0x3,%rbx
   0.07%   │    0x00007f486ab3615e:   mov    %r9,%rdi
           │    0x00007f486ab36161:   shl    %rdi
   0.00%   │    0x00007f486ab36164:   add    %rdi,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab36167:   cmp    $0x1,%rbx
           │    0x00007f486ab3616b:   jl     0x00007f486ab375b3           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%   │    0x00007f486ab36171:   cmp    $0x2,%edx
           │    0x00007f486ab36174:   jb     0x00007f486ab37876           ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab3617a:   mov    %edx,%edi
   0.00%   │    0x00007f486ab3617c:   mov    %eax,0xc(%rsp)
           │    0x00007f486ab36180:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%   │    0x00007f486ab36184:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab36188:   mov    0x4c(%rsp),%ecx
   0.00%   │    0x00007f486ab3618c:   shl    %cl,%rbp                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%   │    0x00007f486ab3618f:   mov    0x50(%rsp),%ecx
   0.01%   │    0x00007f486ab36193:   mov    %rdx,%r14
           │    0x00007f486ab36196:   shl    %cl,%r14                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%   │    0x00007f486ab36199:   mov    %rbp,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab3619c:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.05%   │    0x00007f486ab3619e:   idiv   %r14                         ; implicit exception: deoptimizes
           │                                                              ; ImmutableOopMap {r10=Oop r11=NarrowOop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
   2.50%   │    0x00007f486ab361a1:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab361a3:   test   %eax,%eax
           │    0x00007f486ab361a5:   je     0x00007f486ab37529           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab361ab:   mov    %rdx,%rbp
   0.04%   │    0x00007f486ab361ae:   shl    $0x3,%rbp
   0.01%   │    0x00007f486ab361b2:   shl    %rdx
           │    0x00007f486ab361b5:   add    %rdx,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab361b8:   nopl   0x0(%rax,%rax,1)
   0.05%   │    0x00007f486ab361c0:   cmp    %rbp,%r9
           │    0x00007f486ab361c3:   jg     0x00007f486ab374ed           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │    0x00007f486ab361c9:   mov    %r13d,0x30(%rsp)
           │    0x00007f486ab361ce:   mov    %r14,%rdx
           │    0x00007f486ab361d1:   shl    $0x3,%rdx
   0.07%   │    0x00007f486ab361d5:   mov    %r14,%r13
   0.02%   │    0x00007f486ab361d8:   shl    %r13
           │    0x00007f486ab361db:   add    %rdx,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab361de:   mov    %rbp,%rdx
   0.05%   │    0x00007f486ab361e1:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │    0x00007f486ab361e4:   cmp    %r13,%rdx
           │    0x00007f486ab361e7:   jg     0x00007f486ab3785a           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab361ed:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab361f0:   mov    %ax,0x10(,%r11,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%   │    0x00007f486ab361f9:   mov    %rbp,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%   │    0x00007f486ab361fc:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab361fe:   idiv   %r14                         ; implicit exception: deoptimizes
           │                                                              ; ImmutableOopMap {r10=Oop r11=NarrowOop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
   2.37%   │    0x00007f486ab36201:   mov    %eax,%r9d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab36204:   lea    0x30(%r9),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab36208:   mov    %ax,0x12(,%r11,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%   │    0x00007f486ab36211:   mov    %rdx,%rax
   0.01%   │    0x00007f486ab36214:   shl    $0x3,%rax
           │    0x00007f486ab36218:   shl    %rdx
           │    0x00007f486ab3621b:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%   │    0x00007f486ab3621e:   cmp    %rax,%rbx
   0.01%   │    0x00007f486ab36221:   setg   %dl
           │    0x00007f486ab36224:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │    0x00007f486ab36227:   mov    %rax,%rbp
   0.04%   │    0x00007f486ab3622a:   add    %rbx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%   │    0x00007f486ab3622d:   cmp    %r13,%rbp
           │    0x00007f486ab36230:   mov    %r9d,0x5c(%rsp)
   0.00%   │    0x00007f486ab36235:   setg   %r9b
   0.05%   │    0x00007f486ab36239:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │    0x00007f486ab3623d:   data16 xchg %ax,%ax
           │    0x00007f486ab36240:   cmp    %rax,%rbx
           │    0x00007f486ab36243:   jg     0x00007f486ab37065           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │    0x00007f486ab36249:   cmp    %r13,%rbp
           │    0x00007f486ab3624c:   jg     0x00007f486ab3784e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.06%   │    0x00007f486ab36252:   mov    %rbx,%rbp
   0.01%   │    0x00007f486ab36255:   shl    $0x3,%rbp
           │    0x00007f486ab36259:   mov    %rbx,%r8
           │    0x00007f486ab3625c:   shl    %r8
   0.04%   │    0x00007f486ab3625f:   add    %r8,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │    0x00007f486ab36262:   cmp    $0x1,%rbp
           │    0x00007f486ab36266:   jl     0x00007f486ab37700           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │    0x00007f486ab3626c:   cmp    $0x4,%edi
   0.00%   │    0x00007f486ab3626f:   mov    $0x3,%r8d
   0.03%   │    0x00007f486ab36275:   cmovb  %edi,%r8d
   0.02%   │    0x00007f486ab36279:   mov    %r9d,0x5c(%rsp)
           │    0x00007f486ab3627e:   mov    %edx,0x38(%rsp)
           │    0x00007f486ab36282:   mov    %rbx,%r9
   0.05%   │    0x00007f486ab36285:   mov    %rbp,%rdx
   0.01%   │    0x00007f486ab36288:   mov    $0x2,%ebp
           │╭   0x00007f486ab3628d:   jmp    0x00007f486ab36325           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           ││   0x00007f486ab36292:   data16 nopw 0x0(%rax,%rax,1)
           ││   0x00007f486ab3629c:   data16 data16 xchg %ax,%ax          ;*castore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           ││                                                             ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   ││↗  0x00007f486ab362a0:   mov    %rax,%rbx
           │││  0x00007f486ab362a3:   mov    %rbx,0x40(%rsp)
           │││  0x00007f486ab362a8:   mov    %rdx,%rbx
   0.05%   │││  0x00007f486ab362ab:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │││  0x00007f486ab362ad:   idiv   %r14                         ; implicit exception: deoptimizes
           │││                                                            ; ImmutableOopMap {r10=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
   2.21%   │││  0x00007f486ab362b0:   mov    %eax,%r9d                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │││  0x00007f486ab362b3:   lea    0x30(%r9),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │││  0x00007f486ab362b7:   mov    %ax,0x10(%r10,%rbp,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%   │││  0x00007f486ab362bd:   mov    %rdx,%rax
   0.01%   │││  0x00007f486ab362c0:   shl    $0x3,%rax
           │││  0x00007f486ab362c4:   shl    %rdx
   0.01%   │││  0x00007f486ab362c7:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.04%   │││  0x00007f486ab362ca:   cmp    %rax,%rbx
   0.00%   │││  0x00007f486ab362cd:   setg   %dl
           │││  0x00007f486ab362d0:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │││  0x00007f486ab362d3:   mov    %r9d,0x3c(%rsp)
   0.03%   │││  0x00007f486ab362d8:   mov    %rax,%r9
   0.01%   │││  0x00007f486ab362db:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │││  0x00007f486ab362de:   cmp    %r13,%r9
   0.01%   │││  0x00007f486ab362e1:   setg   %sil
   0.04%   │││  0x00007f486ab362e5:   movzbl %sil,%esi                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%   │││  0x00007f486ab362e9:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │││  0x00007f486ab362eb:   cmp    %rax,%rbx
           │││  0x00007f486ab362ee:   jg     0x00007f486ab371b5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.02%   │││  0x00007f486ab362f4:   cmp    %r13,%r9
           │││  0x00007f486ab362f7:   jg     0x00007f486ab372a4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.03%   │││  0x00007f486ab362fd:   mov    %rbx,%r9
   0.01%   │││  0x00007f486ab36300:   shl    $0x3,%r9
           │││  0x00007f486ab36304:   mov    %rbx,%r11
   0.02%   │││  0x00007f486ab36307:   shl    %r11
   0.04%   │││  0x00007f486ab3630a:   add    %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.01%   │││  0x00007f486ab3630d:   cmp    $0x1,%r9
           │││  0x00007f486ab36311:   jl     0x00007f486ab37908           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           │││  0x00007f486ab36317:   mov    %esi,0x5c(%rsp)
   0.02%   │││  0x00007f486ab3631b:   mov    %edx,0x38(%rsp)
   0.03%   │││  0x00007f486ab3631f:   mov    %r9,%rdx
   0.00%   │││  0x00007f486ab36322:   mov    %rbx,%r9                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │││                                                            ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
   0.00%   │↘│  0x00007f486ab36325:   cmp    %ebp,%r8d
           │ │  0x00007f486ab36328:   jbe    0x00007f486ab365ae
   0.03%   │ ╰  0x00007f486ab3632e:   jmp    0x00007f486ab362a0           ;*castore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                              ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                              ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
           ↘    0x00007f486ab36333:   cmp    $0x1b,%r13d
                0x00007f486ab36337:   jae    0x00007f486ab37200           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                          ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                          ; - jdk.internal.math.FloatingDecimal::appendTo@1 (line 89)
....................................................................................................
  11.08%  <total for region 3>

....[Hottest Regions]...............................................................................
  38.57%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 2, compile id 802 
  13.02%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 788 
  11.08%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 2, compile id 802 
   5.22%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 789 
   3.48%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 2, compile id 802 
   3.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   2.88%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 788 
   2.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   2.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   2.16%       jvmci, level 4  java.lang.Long::getChars, version 2, compile id 778 
   1.98%       jvmci, level 4  java.lang.Long::getChars, version 2, compile id 778 
   1.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   1.41%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 785 
   1.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   1.02%               kernel  [unknown] 
   0.78%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 785 
   0.75%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 785 
   0.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   0.45%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 789 
   0.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   4.60%  <...other 410 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.49%       jvmci, level 4  jdk.internal.math.FloatingDecimal::appendTo, version 2, compile id 802 
  16.39%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 788 
  14.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 796 
   5.66%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 789 
   4.33%       jvmci, level 4  java.lang.Long::getChars, version 2, compile id 778 
   3.12%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 785 
   1.93%               kernel  [unknown] 
   0.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_builder_jmhTest::string_builder_avgt_jmhStub, version 5, compile id 814 
   0.07%                       <unknown> 
   0.05%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  defaultStream::write 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.44%  <...other 146 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.36%       jvmci, level 4
   1.93%               kernel
   0.44%            libjvm.so
   0.12%         libc-2.31.so
   0.07%                     
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%          c1, level 3
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 62.50% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 799.837 ns/op
# Warmup Iteration   2: 718.845 ns/op
# Warmup Iteration   3: 724.757 ns/op
# Warmup Iteration   4: 722.549 ns/op
# Warmup Iteration   5: 721.478 ns/op
Iteration   1: 721.942 ns/op
Iteration   2: 721.568 ns/op
Iteration   3: 722.180 ns/op
Iteration   4: 721.716 ns/op
Iteration   5: 721.947 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder":
  721.871 ±(99.9%) 0.907 ns/op [Average]
  (min, avg, max) = (721.568, 721.871, 722.180), stdev = 0.235
  CI (99.9%): [720.964, 722.777] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_builder:·asm":
PrintAssembly processed: 218532 total address lines.
Perf output processed (skipped 58.650 seconds):
 Column 1: cycles (50752 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 

               0x00007f875ab1e190:   mov    %r8d,%r9d
               0x00007f875ab1e193:   mov    %r14d,%r8d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
               0x00007f875ab1e196:   lea    0x2(%r8),%r14d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
               0x00007f875ab1e19a:   nopw   0x0(%rax,%rax,1)
               0x00007f875ab1e1a0:   cmp    %r8d,%r13d
               0x00007f875ab1e1a3:   jg     0x00007f875ab1e0e0
          ╭    0x00007f875ab1e1a9:   jmp    0x00007f875ab1e2e5           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.05%  │    0x00007f875ab1e1ae:   mov    0x2c(%rsp),%ecx
   0.02%  │    0x00007f875ab1e1b2:   mov    0x24(%rsp),%r9d
          │    0x00007f875ab1e1b7:   mov    %rax,%r10
   0.01%  │    0x00007f875ab1e1ba:   mov    0x28(%rsp),%r13d
   0.03%  │    0x00007f875ab1e1bf:   mov    %rdx,%rbp
   0.01%  │    0x00007f875ab1e1c2:   mov    %rsi,0x30(%rsp)
          │    0x00007f875ab1e1c7:   mov    %r11d,%esi
   0.01%  │    0x00007f875ab1e1ca:   mov    0x30(%rsp),%r11
   0.04%  │╭   0x00007f875ab1e1cf:   jmp    0x00007f875ab1e2d3
          ││   0x00007f875ab1e1d4:   nopl   0x0(%rax,%rax,1)
          ││   0x00007f875ab1e1dc:   data16 data16 xchg %ax,%ax          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.09%  ││↗  0x00007f875ab1e1e0:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
   0.24%  │││  0x00007f875ab1e1e3:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.04%  │││  0x00007f875ab1e1e5:   idiv   %r8                          ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {rdi=Oop [8]=Oop [20]=NarrowOop }
  14.20%  │││  0x00007f875ab1e1e8:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.00%  │││  0x00007f875ab1e1eb:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.03%  │││  0x00007f875ab1e1ef:   mov    %ax,0x10(%rdi,%rsi,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.29%  │││  0x00007f875ab1e1f4:   mov    %rdx,%rax
   0.04%  │││  0x00007f875ab1e1f7:   shl    $0x3,%rax
          │││  0x00007f875ab1e1fb:   shl    %rdx
   0.03%  │││  0x00007f875ab1e1fe:   mov    %rax,%r11
   0.29%  │││  0x00007f875ab1e201:   add    %rdx,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.05%  │││  0x00007f875ab1e204:   cmp    %r11,%rbp
          │││  0x00007f875ab1e207:   setg   %r9b
   0.05%  │││  0x00007f875ab1e20b:   movzbl %r9b,%r9d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.28%  │││  0x00007f875ab1e20f:   mov    %r11,%rax
   0.06%  │││  0x00007f875ab1e212:   add    %rbp,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.01%  │││  0x00007f875ab1e215:   cmp    %rbx,%rax
   0.03%  │││  0x00007f875ab1e218:   setg   %cl
   0.28%  │││  0x00007f875ab1e21b:   movzbl %cl,%ecx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.08%  │││  0x00007f875ab1e21e:   mov    %esi,%edx
          │││  0x00007f875ab1e220:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.02%  │││  0x00007f875ab1e222:   cmp    %r11,%rbp
          │││  0x00007f875ab1e225:   jg     0x00007f875ab1e565           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.23%  │││  0x00007f875ab1e22b:   cmp    %rbx,%rax
          │││  0x00007f875ab1e22e:   jg     0x00007f875ab1e7ad           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.10%  │││  0x00007f875ab1e234:   mov    %r10d,0x28(%rsp)
   0.00%  │││  0x00007f875ab1e239:   mov    %rbp,%rax
   0.03%  │││  0x00007f875ab1e23c:   shl    $0x3,%rax
   0.26%  │││  0x00007f875ab1e240:   mov    %rbp,%r10
   0.10%  │││  0x00007f875ab1e243:   shl    %r10
   0.00%  │││  0x00007f875ab1e246:   add    %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.02%  │││  0x00007f875ab1e249:   cmp    $0x1,%r10
          │││  0x00007f875ab1e24d:   jl     0x00007f875ab1e9b4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.24%  │││  0x00007f875ab1e253:   mov    %edx,0x24(%rsp)
   0.08%  │││  0x00007f875ab1e257:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
   0.01%  │││  0x00007f875ab1e25a:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
   0.02%  │││  0x00007f875ab1e25c:   idiv   %r8                          ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {rdi=Oop [8]=Oop [20]=NarrowOop }
  14.43%  │││  0x00007f875ab1e25f:   mov    %eax,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││  0x00007f875ab1e262:   lea    0x30(%r11),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.01%  │││  0x00007f875ab1e266:   mov    %ax,0x12(%rdi,%rsi,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.30%  │││  0x00007f875ab1e26b:   mov    %rdx,%rax
   0.03%  │││  0x00007f875ab1e26e:   shl    $0x3,%rax
          │││  0x00007f875ab1e272:   shl    %rdx
   0.00%  │││  0x00007f875ab1e275:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.32%  │││  0x00007f875ab1e278:   cmp    %rax,%r10
   0.04%  │││  0x00007f875ab1e27b:   setg   %cl
   0.00%  │││  0x00007f875ab1e27e:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.05%  │││  0x00007f875ab1e281:   mov    %r10,%rdx
   0.23%  │││  0x00007f875ab1e284:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.03%  │││  0x00007f875ab1e287:   cmp    %rbx,%rdx
   0.00%  │││  0x00007f875ab1e28a:   setg   %r9b
   0.05%  │││  0x00007f875ab1e28e:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.30%  │││  0x00007f875ab1e292:   cmp    %rax,%r10
          │││  0x00007f875ab1e295:   jg     0x00007f875ab1e587           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.02%  │││  0x00007f875ab1e29b:   nopl   0x0(%rax,%rax,1)
          │││  0x00007f875ab1e2a0:   cmp    %rbx,%rdx
          │││  0x00007f875ab1e2a3:   jg     0x00007f875ab1e74f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.03%  │││  0x00007f875ab1e2a9:   mov    %r10,%rdx
   0.23%  │││  0x00007f875ab1e2ac:   shl    $0x3,%rdx
   0.04%  │││  0x00007f875ab1e2b0:   mov    %r10,%rsi
          │││  0x00007f875ab1e2b3:   shl    %rsi
   0.03%  │││  0x00007f875ab1e2b6:   add    %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.25%  │││  0x00007f875ab1e2b9:   nopl   0x0(%rax)
   0.04%  │││  0x00007f875ab1e2c0:   cmp    $0x1,%rdx
          │││  0x00007f875ab1e2c4:   jl     0x00007f875ab1e7d4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │││  0x00007f875ab1e2ca:   mov    %rdx,%rbp
   0.03%  │││  0x00007f875ab1e2cd:   mov    %r14d,%esi
   0.25%  │││  0x00007f875ab1e2d0:   mov    %rax,%r11                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.06%  │↘│  0x00007f875ab1e2d3:   lea    0x2(%rsi),%r14d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.00%  │ │  0x00007f875ab1e2d7:   cmp    %esi,%r13d
          │ ╰  0x00007f875ab1e2da:   jg     0x00007f875ab1e1e0
          │    0x00007f875ab1e2e0:   jmp    0x00007f875ab1e45a           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ↘    0x00007f875ab1e2e5:   sub    $0x2,%r14d
               0x00007f875ab1e2e9:   mov    %esi,%ebp
               0x00007f875ab1e2eb:   mov    %r14d,%r8d
               0x00007f875ab1e2ee:   mov    0x3c(%rsp),%esi
               0x00007f875ab1e2f2:   jmp    0x00007f875ab1e35b
               0x00007f875ab1e2f7:   nopw   0x0(%rax,%rax,1)             ;*castore {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  34.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  34.13%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 
   8.04%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 831 
   7.63%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 
   6.45%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 831 
   5.76%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 836 
   4.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   3.74%       jvmci, level 4  java.lang.StringUTF16::getChars, version 2, compile id 832 
   3.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   2.52%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 812 
   1.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   1.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   1.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   1.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   1.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   1.05%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 
   0.94%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 807 
   0.90%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 815 
   0.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   0.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
   0.82%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 816 
  10.05%  <...other 526 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.16%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 
  21.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_builder, version 2, compile id 829 
  14.82%       jvmci, level 4  jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter, version 2, compile id 831 
   5.76%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 836 
   3.97%       jvmci, level 4  java.lang.StringUTF16::getChars, version 2, compile id 832 
   3.10%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 812 
   2.28%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::appendTo, version 2, compile id 815 
   1.52%               kernel  [unknown] 
   1.45%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 807 
   0.88%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::getChars, version 2, compile id 816 
   0.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_builder_jmhTest::string_builder_avgt_jmhStub, version 5, compile id 851 
   0.19%                       <unknown> 
   0.04%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.73%  <...other 196 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.32%       jvmci, level 4
   1.52%               kernel
   0.75%            libjvm.so
   0.19%                     
   0.05%   libpthread-2.31.so
   0.05%         libc-2.31.so
   0.03%       hsdis-amd64.so
   0.03%           ld-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%          interpreter
   0.02%               [vdso]
   0.00%      perf-116777.map
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 75.00% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1122.849 ns/op
# Warmup Iteration   2: 917.059 ns/op
# Warmup Iteration   3: 910.551 ns/op
# Warmup Iteration   4: 909.530 ns/op
# Warmup Iteration   5: 909.592 ns/op
Iteration   1: 909.526 ns/op
Iteration   2: 909.735 ns/op
Iteration   3: 909.589 ns/op
Iteration   4: 909.506 ns/op
Iteration   5: 909.682 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format":
  909.608 ±(99.9%) 0.381 ns/op [Average]
  (min, avg, max) = (909.506, 909.608, 909.735), stdev = 0.099
  CI (99.9%): [909.227, 909.989] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format:·asm":
PrintAssembly processed: 235057 total address lines.
Perf output processed (skipped 58.530 seconds):
 Column 1: cycles (50776 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.Double::toString, version 2, compile id 849 

              0x00007f820ab4e73b:   nopl   0x0(%rax,%rax,1)
              0x00007f820ab4e740:   cmp    %r11d,%ecx
              0x00007f820ab4e743:   jg     0x00007f820ab4e680
              0x00007f820ab4e749:   jmp    0x00007f820ab4e88e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                        ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                        ; - java.lang.Double::toString@1 (line 312)
                                                                        ; - java.lang.Double::toString@4 (line 769)
   0.00%      0x00007f820ab4e74e:   mov    %r10d,%r8d
   0.02%      0x00007f820ab4e751:   mov    0x38(%rsp),%r11d
   0.00%      0x00007f820ab4e756:   mov    0x64(%rsp),%r10d
              0x00007f820ab4e75b:   mov    %rbx,%rsi
   0.00%      0x00007f820ab4e75e:   mov    0x34(%rsp),%ecx
   0.04%      0x00007f820ab4e762:   mov    %rdx,%rbx
   0.02%      0x00007f820ab4e765:   mov    %rax,%rdi
          ╭   0x00007f820ab4e768:   jmp    0x00007f820ab4e87c
          │   0x00007f820ab4e76d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f820ab4e778:   data16 data16 xchg %ax,%ax
          │   0x00007f820ab4e77c:   nopl   0x0(%rax)                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                             ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          │                                                             ; - java.lang.Double::toString@1 (line 312)
          │                                                             ; - java.lang.Double::toString@4 (line 769)
   0.04%  │↗  0x00007f820ab4e780:   mov    %rdi,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f820ab4e783:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.03%  ││  0x00007f820ab4e785:   idiv   %r14                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {r9=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
  11.09%  ││  0x00007f820ab4e788:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.00%  ││  0x00007f820ab4e78b:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f820ab4e78f:   mov    %ax,0x10(%r9,%r8,2)          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.21%  ││  0x00007f820ab4e795:   mov    %rdx,%rax
   0.03%  ││  0x00007f820ab4e798:   shl    $0x3,%rax
          ││  0x00007f820ab4e79c:   shl    %rdx
   0.01%  ││  0x00007f820ab4e79f:   mov    %rax,%r11
   0.31%  ││  0x00007f820ab4e7a2:   add    %rdx,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.04%  ││  0x00007f820ab4e7a5:   cmp    %r11,%rbx
   0.00%  ││  0x00007f820ab4e7a8:   setg   %dil
   0.02%  ││  0x00007f820ab4e7ac:   movzbl %dil,%edi                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.28%  ││  0x00007f820ab4e7b0:   mov    %r11,%rax
   0.05%  ││  0x00007f820ab4e7b3:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
          ││  0x00007f820ab4e7b6:   cmp    %r13,%rax
   0.01%  ││  0x00007f820ab4e7b9:   setg   %sil
   0.25%  ││  0x00007f820ab4e7bd:   movzbl %sil,%esi                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.07%  ││  0x00007f820ab4e7c1:   mov    %r8d,%edx
   0.00%  ││  0x00007f820ab4e7c4:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f820ab4e7c6:   cmp    %r11,%rbx
          ││  0x00007f820ab4e7c9:   jg     0x00007f820ab4ee2e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.23%  ││  0x00007f820ab4e7cf:   cmp    %r13,%rax
          ││  0x00007f820ab4e7d2:   jg     0x00007f820ab4f2bc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.06%  ││  0x00007f820ab4e7d8:   mov    %r10d,0x34(%rsp)
          ││  0x00007f820ab4e7dd:   mov    %rbx,%rax
   0.01%  ││  0x00007f820ab4e7e0:   shl    $0x3,%rax
   0.21%  ││  0x00007f820ab4e7e4:   mov    %rbx,%r10
   0.07%  ││  0x00007f820ab4e7e7:   shl    %r10
          ││  0x00007f820ab4e7ea:   add    %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.00%  ││  0x00007f820ab4e7ed:   cmp    $0x1,%r10
          ││  0x00007f820ab4e7f1:   jl     0x00007f820ab4f298           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.24%  ││  0x00007f820ab4e7f7:   mov    %edx,0x64(%rsp)
   0.05%  ││  0x00007f820ab4e7fb:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.00%  ││  0x00007f820ab4e7fe:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f820ab4e800:   idiv   %r14                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {r9=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
  11.44%  ││  0x00007f820ab4e803:   mov    %eax,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.00%  ││  0x00007f820ab4e806:   lea    0x30(%r11),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f820ab4e80a:   mov    %ax,0x12(%r9,%r8,2)          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.31%  ││  0x00007f820ab4e810:   mov    %rdx,%rax
   0.03%  ││  0x00007f820ab4e813:   shl    $0x3,%rax
          ││  0x00007f820ab4e817:   shl    %rdx
   0.00%  ││  0x00007f820ab4e81a:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.27%  ││  0x00007f820ab4e81d:   cmp    %rax,%r10
   0.02%  ││  0x00007f820ab4e820:   setg   %r8b
   0.00%  ││  0x00007f820ab4e824:   movzbl %r8b,%r8d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.04%  ││  0x00007f820ab4e828:   mov    %r10,%rdx
   0.21%  ││  0x00007f820ab4e82b:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.03%  ││  0x00007f820ab4e82e:   cmp    %r13,%rdx
          ││  0x00007f820ab4e831:   setg   %bl
   0.06%  ││  0x00007f820ab4e834:   movzbl %bl,%ebx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.20%  ││  0x00007f820ab4e837:   cmp    %rax,%r10
          ││  0x00007f820ab4e83a:   jg     0x00007f820ab4ee55           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.02%  ││  0x00007f820ab4e840:   cmp    %r13,%rdx
          ││  0x00007f820ab4e843:   jg     0x00007f820ab4f26d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f820ab4e849:   mov    %r10,%rdx
   0.02%  ││  0x00007f820ab4e84c:   shl    $0x3,%rdx
   0.20%  ││  0x00007f820ab4e850:   mov    %r10,%rsi
   0.02%  ││  0x00007f820ab4e853:   shl    %rsi
   0.01%  ││  0x00007f820ab4e856:   add    %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.03%  ││  0x00007f820ab4e859:   nopl   0x0(%rax)
   0.19%  ││  0x00007f820ab4e860:   cmp    $0x1,%rdx
          ││  0x00007f820ab4e864:   jl     0x00007f820ab4f674           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.02%  ││  0x00007f820ab4e86a:   mov    %r8d,%r11d
   0.01%  ││  0x00007f820ab4e86d:   mov    %rax,%rdi
   0.03%  ││  0x00007f820ab4e870:   mov    %r10,%rsi
   0.19%  ││  0x00007f820ab4e873:   mov    %ebp,%r8d
   0.03%  ││  0x00007f820ab4e876:   mov    %ebx,%r10d
   0.01%  ││  0x00007f820ab4e879:   mov    %rdx,%rbx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.02%  ↘│  0x00007f820ab4e87c:   lea    0x2(%r8),%ebp                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                            ; - java.lang.Double::toString@1 (line 312)
           │                                                            ; - java.lang.Double::toString@4 (line 769)
   0.18%   │  0x00007f820ab4e880:   cmp    %r8d,%ecx
           ╰  0x00007f820ab4e883:   jg     0x00007f820ab4e780
              0x00007f820ab4e889:   jmp    0x00007f820ab4ecf3           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
....................................................................................................
  27.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 

                0x00007f820ab3fc90:   je     0x00007f820ab3fcaf
                0x00007f820ab3fc96:   cmp    $0xfffffffe,%r9d
                0x00007f820ab3fc9a:   je     0x00007f820ab44a37
                0x00007f820ab3fca0:   cmp    $0xffffffff,%r9d
                0x00007f820ab3fca4:   je     0x00007f820ab44a37
                0x00007f820ab3fcaa:   jmp    0x00007f820ab44a37           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter::format@57 (line 2676)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.04%        0x00007f820ab3fcaf:   test   %cl,%cl
                0x00007f820ab3fcb1:   jne    0x00007f820ab44c3e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::print@4 (line 2910)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.05%        0x00007f820ab3fcb7:   cmp    $0x73,%ebx
                0x00007f820ab3fcba:   jne    0x00007f820ab44754           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::print@18 (line 2914)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.05%        0x00007f820ab3fcc0:   movslq %r10d,%rbx
   0.14%        0x00007f820ab3fcc3:   mov    0x14(%rsi,%rbx,4),%r9d       ; ImmutableOopMap {rsi=Oop rdi=NarrowOop r8=NarrowOop r9=NarrowOop r13=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter::format@20 (line 2672)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.03%        0x00007f820ab3fcc8:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f820ab44d21
   0.32%        0x00007f820ab3fcd0:   movabs $0x800000000,%rcx
   0.04%        0x00007f820ab3fcda:   lea    (%rcx,%rbx,1),%rdx           ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.21%        0x00007f820ab3fcde:   mov    %rdx,0x108(%rsp)
   0.32%        0x00007f820ab3fce6:   cmp    0x20(%rdx),%r14
                0x00007f820ab3fcea:   je     0x00007f820ab44709
   0.78%        0x00007f820ab3fcf0:   cmp    $0x2233a0,%ebx               ;   {metadata(&apos;java/util/Formattable&apos;)}
                0x00007f820ab3fcf6:   je     0x00007f820ab44818
   0.01%        0x00007f820ab3fcfc:   mov    0x28(%rdx),%rbx
   0.07%        0x00007f820ab3fd00:   mov    (%rbx),%ecx
   0.88%        0x00007f820ab3fd02:   mov    $0x0,%edx
   0.04%  ╭     0x00007f820ab3fd07:   jmp    0x00007f820ab3fd3a
          │     0x00007f820ab3fd0c:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007f820ab3fd17:   data16 data16 xchg %ax,%ax
          │     0x00007f820ab3fd1b:   nopl   0x0(%rax,%rax,1)
   0.96%  │↗    0x00007f820ab3fd20:   mov    %edx,%esi
   0.00%  ││    0x00007f820ab3fd22:   shl    $0x3,%esi
   0.16%  ││    0x00007f820ab3fd25:   lea    0x8(%rsi),%esi
   0.00%  ││    0x00007f820ab3fd28:   movslq %esi,%rsi
   1.05%  ││    0x00007f820ab3fd2b:   mov    (%rbx,%rsi,1),%rsi
   0.12%  ││    0x00007f820ab3fd2f:   cmp    %rsi,%r14
          ││    0x00007f820ab3fd32:   je     0x00007f820ab44aee
   0.31%  ││    0x00007f820ab3fd38:   inc    %edx                         ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.Formatter$FormatSpecifier::printString@1 (line 3045)
          ││                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
          ││                                                              ; - java.util.Formatter::format@202 (line 2689)
          ││                                                              ; - java.util.Formatter::format@7 (line 2625)
          ││                                                              ; - java.lang.String::format@9 (line 4143)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.03%  ↘│    0x00007f820ab3fd3a:   cmp    %edx,%ecx
           ╰    0x00007f820ab3fd3c:   jg     0x00007f820ab3fd20           ; ImmutableOopMap {r8=NarrowOop r9=NarrowOop r13=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter::format@20 (line 2672)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.19%        0x00007f820ab3fd3e:   mov    0xc(,%rdi,8),%ecx            ; implicit exception: dispatches to 0x00007f820ab44d3d
   0.01%        0x00007f820ab3fd45:   mov    0xc(%r13),%esi               ;*getfield flags {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$Flags::valueOf@1 (line 4594)
                                                                          ; - java.util.Formatter$Flags::contains@5 (line 4598)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.08%        0x00007f820ab3fd49:   mov    %ecx,%ebx
                0x00007f820ab3fd4b:   and    %esi,%ebx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$Flags::contains@8 (line 4598)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.19%        0x00007f820ab3fd4d:   cmp    %ebx,%esi
                0x00007f820ab3fd4f:   je     0x00007f820ab44b8d           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$Flags::contains@13 (line 4598)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
                0x00007f820ab3fd55:   mov    0x8(,%r9,8),%esi             ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.10%        0x00007f820ab3fd5d:   mov    %r8d,%edi
                0x00007f820ab3fd60:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::elementData@5 (line 411)
                                                                          ; - java.util.ArrayList::get@11 (line 428)
                                                                          ; - java.util.Formatter::format@36 (line 2673)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.23%        0x00007f820ab3fd64:   mov    %r11d,%edx
   0.02%        0x00007f820ab3fd67:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter::format@275 (line 2672)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.08%        0x00007f820ab3fd69:   mov    %r10d,%ebx
   0.00%        0x00007f820ab3fd6c:   inc    %ebx
   0.20%        0x00007f820ab3fd6e:   cmp    $0x484c8,%esi                ;   {metadata(&apos;java/lang/Long&apos;)}
                0x00007f820ab3fd74:   je     0x00007f820ab3ffd8
   0.01%        0x00007f820ab3fd7a:   nopw   0x0(%rax,%rax,1)
   0.07%        0x00007f820ab3fd80:   cmp    $0x337f0,%esi                ;   {metadata(&apos;java/lang/Boolean&apos;)}
                0x00007f820ab3fd86:   je     0x00007f820ab4067a           ;*invokevirtual contains {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.02%        0x00007f820ab3fd8c:   mov    %ebx,0xd0(%rsp)
   0.09%        0x00007f820ab3fd93:   mov    %edx,0xcc(%rsp)
   0.01%        0x00007f820ab3fd9a:   mov    %rdi,0x28(%rsp)
   0.05%        0x00007f820ab3fd9f:   mov    0x108(%rsp),%rdx
   0.03%        0x00007f820ab3fda7:   mov    %r8d,0x34(%rsp)
   0.11%        0x00007f820ab3fdac:   mov    %r11d,0x104(%rsp)
   0.01%        0x00007f820ab3fdb4:   mov    0x1e0(%rdx),%rdx
   0.08%        0x00007f820ab3fdbb:   mov    0x40(%rdx),%r10              ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.04%        0x00007f820ab3fdbf:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter::format@200 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.08%        0x00007f820ab3fdc3:   mov    %r9,%rsi
   0.01%        0x00007f820ab3fdc6:   mov    %rdx,%rbx                    ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.06%        0x00007f820ab3fdc9:   mov    %r10,%rax
   0.01%        0x00007f820ab3fdcc:   call   *%rax                        ; ImmutableOopMap {[40]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=1}
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.04%        0x00007f820ab3fdce:   nop
   0.01%        0x00007f820ab3fdcf:   mov    %rax,%r11                    ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.06%        0x00007f820ab3fdd2:   mov    0x34(%rsp),%r8d
   0.31%        0x00007f820ab3fdd7:   nopw   0x0(%rax,%rax,1)
                0x00007f820ab3fde0:   cmpl   $0xffffffff,0x14(,%r8,8)
   0.44%        0x00007f820ab3fde9:   jne    0x00007f820ab44b2b           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::print@5 (line 3079)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.11%        0x00007f820ab3fdef:   cmpl   $0xffffffff,0x10(,%r8,8)
   0.05%        0x00007f820ab3fdf8:   jne    0x00007f820ab44a7d
   0.07%        0x00007f820ab3fdfe:   movabs $0x7f171cdd8,%rbx            ; ImmutableOopMap {rbx=Oop r8=NarrowOop r11=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
                                                                          ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007f171cdd8})}
   0.06%        0x00007f820ab3fe08:   mov    0x14(%r11),%eax              ; implicit exception: dispatches to 0x00007f820ab44d59
                0x00007f820ab3fe0c:   movsbl 0x10(%r11),%edx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::coder@7 (line 4543)
                                                                          ; - java.lang.String::length@6 (line 1479)
                                                                          ; - java.lang.AbstractStringBuilder::append@10 (line 581)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.05%        0x00007f820ab3fe11:   mov    0x1c(,%r8,8),%ecx            ; ImmutableOopMap {rax=NarrowOop rbx=Oop r8=NarrowOop r11=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.05%        0x00007f820ab3fe19:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f820ab44d75
   0.22%        0x00007f820ab3fe20:   mov    0xc(%rbx),%edi               ;*getfield flags {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$Flags::valueOf@1 (line 4594)
                                                                          ; - java.util.Formatter$Flags::contains@5 (line 4598)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
                0x00007f820ab3fe23:   and    %edi,%ecx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$Flags::contains@8 (line 4598)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.13%        0x00007f820ab3fe25:   cmp    %ecx,%edi
                0x00007f820ab3fe27:   je     0x00007f820ab449ed           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$Flags::contains@13 (line 4598)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.08%        0x00007f820ab3fe2d:   mov    0x20(,%r8,8),%ecx            ; ImmutableOopMap {rax=NarrowOop r11=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.04%        0x00007f820ab3fe35:   mov    0x10(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f820ab44d91
   0.00%        0x00007f820ab3fe3d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=NarrowOop r8=NarrowOop r11=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.05%        0x00007f820ab3fe40:   cmpl   $0xf858,0x8(,%r8,8)          ; implicit exception: dispatches to 0x00007f820ab44dad
                                                                          ;   {metadata(&apos;java/lang/StringBuilder&apos;)}
   0.43%        0x00007f820ab3fe4c:   jne    0x00007f820ab44a99           ;*invokeinterface append {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.09%        0x00007f820ab3fe52:   mov    %r11,0x18(%rsp)              ; ImmutableOopMap {rax=NarrowOop r8=NarrowOop [24]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.06%        0x00007f820ab3fe57:   mov    0xc(,%rax,8),%r9d            ; implicit exception: dispatches to 0x00007f820ab44dc9
   0.01%        0x00007f820ab3fe5f:   mov    0x14(,%r8,8),%edi            ; ImmutableOopMap {rax=NarrowOop rdi=NarrowOop r8=NarrowOop [24]=Oop [40]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [96]=Oop }
                                                                          ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.03%        0x00007f820ab3fe67:   mov    0xc(,%rdi,8),%r10d           ; implicit exception: dispatches to 0x00007f820ab44de6
   0.36%        0x00007f820ab3fe6f:   mov    0xc(,%r8,8),%esi             ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::append@16 (line 582)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.06%        0x00007f820ab3fe77:   movsbl 0x10(,%r8,8),%ebp            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@6 (line 226)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.00%        0x00007f820ab3fe80:   mov    %ebp,%ecx
   0.04%        0x00007f820ab3fe82:   mov    %r9d,%r13d
   0.08%        0x00007f820ab3fe85:   shr    %cl,%r13d
   0.08%        0x00007f820ab3fe88:   mov    %esi,%r14d
   0.09%        0x00007f820ab3fe8b:   add    %r13d,%r14d                  ;*putfield count {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::append@40 (line 584)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.06%        0x00007f820ab3fe8e:   mov    %r14d,0x114(%rsp)
   0.00%        0x00007f820ab3fe96:   shl    %cl,%r13d
   0.16%        0x00007f820ab3fe99:   mov    %r13d,%ecx
   0.01%        0x00007f820ab3fe9c:   mov    %rcx,%r11
   0.03%        0x00007f820ab3fe9f:   dec    %r11
   0.08%        0x00007f820ab3fea2:   lea    -0x4(%rcx),%r14
   0.03%        0x00007f820ab3fea6:   mov    %r8d,0x34(%rsp)
                0x00007f820ab3feab:   lea    -0x8(%rcx),%r8
   0.04%        0x00007f820ab3feaf:   mov    %r11,0x108(%rsp)
   0.07%        0x00007f820ab3feb7:   lea    -0x10(%rcx),%r11
   0.06%        0x00007f820ab3febb:   lea    -0x20(%rcx),%rcx             ;* unwind (locked if synchronized)
                                                                          ; - java.lang.System::arraycopy@-3
                                                                          ; - java.lang.String::getBytes@27 (line 4477)
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
                                                                          ; - java.lang.AbstractStringBuilder::append@30 (line 583)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
                0x00007f820ab3febf:   mov    %r14,0x88(%rsp)
   0.04%        0x00007f820ab3fec7:   mov    %rcx,%r14
   0.08%        0x00007f820ab3feca:   mov    %edx,%ecx
   0.06%        0x00007f820ab3fecc:   mov    %r8,0xd8(%rsp)
   0.00%        0x00007f820ab3fed4:   mov    %r9d,%r8d
   0.03%        0x00007f820ab3fed7:   shr    %cl,%r8d                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::length@9 (line 1479)
                                                                          ; - java.lang.AbstractStringBuilder::append@10 (line 581)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.13%        0x00007f820ab3feda:   mov    %ebp,%ecx
   0.03%        0x00007f820ab3fedc:   mov    %r11,0x98(%rsp)
   0.08%        0x00007f820ab3fee4:   mov    %r8d,%r11d
   0.03%        0x00007f820ab3fee7:   shl    %cl,%r11d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::getBytes@26 (line 4477)
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
                                                                          ; - java.lang.AbstractStringBuilder::append@30 (line 583)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.13%        0x00007f820ab3feea:   mov    %r11d,0xb8(%rsp)
   0.04%        0x00007f820ab3fef2:   mov    %esi,%r11d
   0.00%        0x00007f820ab3fef5:   shl    %cl,%r11d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::getBytes@21 (line 4477)
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
                                                                          ; - java.lang.AbstractStringBuilder::append@30 (line 583)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.17%        0x00007f820ab3fef8:   add    %r8d,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::append@20 (line 582)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.00%        0x00007f820ab3fefb:   mov    %r8d,0xc0(%rsp)
   0.02%        0x00007f820ab3ff03:   mov    %r10d,%r8d
   0.06%        0x00007f820ab3ff06:   shr    %cl,%r8d                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@9 (line 226)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.10%        0x00007f820ab3ff09:   mov    %esi,%ecx
   0.09%        0x00007f820ab3ff0b:   sub    %r8d,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@13 (line 227)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.04%        0x00007f820ab3ff0e:   mov    %edi,%r8d
   0.00%        0x00007f820ab3ff11:   shl    $0x3,%r8                     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 226)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.02%        0x00007f820ab3ff15:   mov    %eax,%ebx
   0.09%        0x00007f820ab3ff17:   shl    $0x3,%rbx                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::length@1 (line 1479)
                                                                          ; - java.lang.AbstractStringBuilder::append@10 (line 581)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.05%        0x00007f820ab3ff1b:   nopl   0x0(%rax,%rax,1)
                0x00007f820ab3ff20:   cmp    $0x1,%ecx
                0x00007f820ab3ff23:   jge    0x00007f820ab4055c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 227)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
   0.04%        0x00007f820ab3ff29:   cmp    %edx,%ebp
                0x00007f820ab3ff2b:   jne    0x00007f820ab44b14           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1717)
                                                                          ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
                                                                          ; - java.lang.AbstractStringBuilder::append@30 (line 583)
                                                                          ; - java.lang.StringBuilder::append@2 (line 179)
                                                                          ; - java.lang.StringBuilder::append@-3
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                          ; - java.lang.StringBuilder::append@2 (line 209)
                                                                          ; - java.lang.StringBuilder::append@2 (line 91)
                                                                          ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                          ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                          ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                          ; - java.util.Formatter::format@202 (line 2689)
                                                                          ; - java.util.Formatter::format@7 (line 2625)
                                                                          ; - java.lang.String::format@9 (line 4143)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format@72 (line 135)
                0x00007f820ab3ff31:   test   %r11d,%r11d
                0x00007f820ab3ff34:   jl     0x00007f820ab447ef
   0.05%        0x00007f820ab3ff3a:   nopw   0x0(%rax,%rax,1)
   0.00%        0x00007f820ab3ff40:   test   %r13d,%r13d
                0x00007f820ab3ff43:   jl     0x00007f820ab448ed
   0.02%        0x00007f820ab3ff49:   cmp    %r9d,%r13d
                0x00007f820ab3ff4c:   ja     0x00007f820ab44bdb
   0.00%        0x00007f820ab3ff52:   sub    %r13d,%r10d
   0.05%        0x00007f820ab3ff55:   cmp    %r10d,%r11d
                0x00007f820ab3ff58:   jg     0x00007f820ab44a20
                0x00007f820ab3ff5e:   xchg   %ax,%ax
   0.03%        0x00007f820ab3ff60:   cmp    %eax,%edi
                0x00007f820ab3ff62:   je     0x00007f820ab40540
                0x00007f820ab3ff68:   movabs $0xf21f494c589c0001,%rdx
   0.05%        0x00007f820ab3ff72:   vpxor  %xmm2,%xmm2,%xmm2
   0.00%        0x00007f820ab3ff76:   cmp    %eax,%edi
            ╭   0x00007f820ab3ff78:   jne    0x00007f820ab3ff89
            │   0x00007f820ab3ff7e:   xchg   %ax,%ax
            │   0x00007f820ab3ff80:   test   %r11d,%r11d
            │   0x00007f820ab3ff83:   jne    0x00007f820ab444f4
   0.04%    ↘   0x00007f820ab3ff89:   test   %r13d,%r13d
                0x00007f820ab3ff8c:   je     0x00007f820ab40cfe
   0.01%        0x00007f820ab3ff92:   lea    0x10(%r8,%r11,1),%rdi
   0.06%        0x00007f820ab3ff97:   lea    0x10(%rbx),%rsi
   0.00%        0x00007f820ab3ff9b:   nopl   0x0(%rax,%rax,1)
   0.05%        0x00007f820ab3ffa0:   cmp    $0x20,%r13d
                0x00007f820ab3ffa4:   jb     0x00007f820ab40946
                0x00007f820ab3ffaa:   mov    $0x0,%rcx
                0x00007f820ab3ffb1:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f820ab3ffbc:   data16 data16 xchg %ax,%ax
             ↗  0x00007f820ab3ffc0:   vmovdqu (%rsi,%rcx,1),%ymm0
             │  0x00007f820ab3ffc5:   vmovdqu %ymm0,(%rdi,%rcx,1)
             │  0x00007f820ab3ffca:   lea    0x20(%rcx),%rcx
             │  0x00007f820ab3ffce:   cmp    %r14,%rcx
             ╰  0x00007f820ab3ffd1:   jle    0x00007f820ab3ffc0
                0x00007f820ab3ffd3:   jmp    0x00007f820ab40438           ;* unwind (locked if synchronized)
....................................................................................................
  12.73%  <total for region 2>

....[Hottest Regions]...............................................................................
  27.02%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 849 
  12.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   9.24%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 847 
   8.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   8.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   7.87%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 849 
   2.62%       jvmci, level 4  java.lang.Integer::toString, version 2, compile id 846 
   2.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   2.31%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 847 
   1.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   1.30%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 849 
   1.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   1.03%       jvmci, level 4  java.lang.Integer::toString, version 2, compile id 846 
   1.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   0.98%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 847 
   0.93%       jvmci, level 4  java.lang.String::toString, version 2, compile id 811 
   0.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   0.69%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 847 
   0.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
   0.61%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 849 
   7.41%  <...other 463 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  40.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 845 
  38.06%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 849 
  14.32%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 847 
   3.65%       jvmci, level 4  java.lang.Integer::toString, version 2, compile id 846 
   1.50%               kernel  [unknown] 
   0.93%       jvmci, level 4  java.lang.String::toString, version 2, compile id 811 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_format_jmhTest::string_format_avgt_jmhStub, version 5, compile id 871 
   0.10%                       <unknown> 
   0.07%         libc-2.31.so  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.53%  <...other 164 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.56%       jvmci, level 4
   1.50%               kernel
   0.56%            libjvm.so
   0.15%         libc-2.31.so
   0.10%                     
   0.05%           ld-2.31.so
   0.03%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 87.50% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1384.088 ns/op
# Warmup Iteration   2: 1092.817 ns/op
# Warmup Iteration   3: 1089.467 ns/op
# Warmup Iteration   4: 1088.602 ns/op
# Warmup Iteration   5: 1088.884 ns/op
Iteration   1: 1089.358 ns/op
Iteration   2: 1089.720 ns/op
Iteration   3: 1090.979 ns/op
Iteration   4: 1089.403 ns/op
Iteration   5: 1088.913 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format":
  1089.675 ±(99.9%) 3.017 ns/op [Average]
  (min, avg, max) = (1088.913, 1089.675, 1090.979), stdev = 0.783
  CI (99.9%): [1086.658, 1092.692] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark.string_format:·asm":
PrintAssembly processed: 245194 total address lines.
Perf output processed (skipped 58.676 seconds):
 Column 1: cycles (50837 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.Double::toString, version 2, compile id 887 

              0x00007f26aeb4dc3b:   nopl   0x0(%rax,%rax,1)
              0x00007f26aeb4dc40:   cmp    %r11d,%ecx
              0x00007f26aeb4dc43:   jg     0x00007f26aeb4db80
              0x00007f26aeb4dc49:   jmp    0x00007f26aeb4dd8e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
                                                                        ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
                                                                        ; - java.lang.Double::toString@1 (line 312)
                                                                        ; - java.lang.Double::toString@4 (line 769)
   0.01%      0x00007f26aeb4dc4e:   mov    %r10d,%r8d
   0.03%      0x00007f26aeb4dc51:   mov    0x38(%rsp),%r11d
   0.02%      0x00007f26aeb4dc56:   mov    0x64(%rsp),%r10d
              0x00007f26aeb4dc5b:   mov    %rbx,%rsi
   0.00%      0x00007f26aeb4dc5e:   mov    0x34(%rsp),%ecx
   0.02%      0x00007f26aeb4dc62:   mov    %rdx,%rbx
   0.01%      0x00007f26aeb4dc65:   mov    %rax,%rdi
          ╭   0x00007f26aeb4dc68:   jmp    0x00007f26aeb4dd7c
          │   0x00007f26aeb4dc6d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f26aeb4dc78:   data16 data16 xchg %ax,%ax
          │   0x00007f26aeb4dc7c:   nopl   0x0(%rax)                    ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          │                                                             ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          │                                                             ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          │                                                             ; - java.lang.Double::toString@1 (line 312)
          │                                                             ; - java.lang.Double::toString@4 (line 769)
   0.04%  │↗  0x00007f26aeb4dc80:   mov    %rdi,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dc83:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.03%  ││  0x00007f26aeb4dc85:   idiv   %r14                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {r9=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
   9.53%  ││  0x00007f26aeb4dc88:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
          ││  0x00007f26aeb4dc8b:   lea    0x30(%r10),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dc8f:   mov    %ax,0x10(%r9,%r8,2)          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.19%  ││  0x00007f26aeb4dc95:   mov    %rdx,%rax
   0.03%  ││  0x00007f26aeb4dc98:   shl    $0x3,%rax
          ││  0x00007f26aeb4dc9c:   shl    %rdx
   0.01%  ││  0x00007f26aeb4dc9f:   mov    %rax,%r11
   0.22%  ││  0x00007f26aeb4dca2:   add    %rdx,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.03%  ││  0x00007f26aeb4dca5:   cmp    %r11,%rbx
          ││  0x00007f26aeb4dca8:   setg   %dil
   0.01%  ││  0x00007f26aeb4dcac:   movzbl %dil,%edi                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.20%  ││  0x00007f26aeb4dcb0:   mov    %r11,%rax
   0.03%  ││  0x00007f26aeb4dcb3:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
          ││  0x00007f26aeb4dcb6:   cmp    %r13,%rax
   0.01%  ││  0x00007f26aeb4dcb9:   setg   %sil
   0.19%  ││  0x00007f26aeb4dcbd:   movzbl %sil,%esi                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.05%  ││  0x00007f26aeb4dcc1:   mov    %r8d,%edx
   0.00%  ││  0x00007f26aeb4dcc4:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dcc6:   cmp    %r11,%rbx
          ││  0x00007f26aeb4dcc9:   jg     0x00007f26aeb4e32d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.24%  ││  0x00007f26aeb4dccf:   cmp    %r13,%rax
          ││  0x00007f26aeb4dcd2:   jg     0x00007f26aeb4e7bc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.05%  ││  0x00007f26aeb4dcd8:   mov    %r10d,0x34(%rsp)
   0.00%  ││  0x00007f26aeb4dcdd:   mov    %rbx,%rax
   0.01%  ││  0x00007f26aeb4dce0:   shl    $0x3,%rax
   0.15%  ││  0x00007f26aeb4dce4:   mov    %rbx,%r10
   0.06%  ││  0x00007f26aeb4dce7:   shl    %r10
          ││  0x00007f26aeb4dcea:   add    %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.00%  ││  0x00007f26aeb4dced:   cmp    $0x1,%r10
          ││  0x00007f26aeb4dcf1:   jl     0x00007f26aeb4e798           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.17%  ││  0x00007f26aeb4dcf7:   mov    %edx,0x64(%rsp)
   0.05%  ││  0x00007f26aeb4dcfb:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.00%  ││  0x00007f26aeb4dcfe:   cqto                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dd00:   idiv   %r14                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {r9=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [28]=NarrowOop [32]=Oop }
   9.52%  ││  0x00007f26aeb4dd03:   mov    %eax,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.00%  ││  0x00007f26aeb4dd06:   lea    0x30(%r11),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dd0a:   mov    %ax,0x12(%r9,%r8,2)          ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.21%  ││  0x00007f26aeb4dd10:   mov    %rdx,%rax
   0.02%  ││  0x00007f26aeb4dd13:   shl    $0x3,%rax
          ││  0x00007f26aeb4dd17:   shl    %rdx
   0.01%  ││  0x00007f26aeb4dd1a:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.25%  ││  0x00007f26aeb4dd1d:   cmp    %rax,%r10
   0.02%  ││  0x00007f26aeb4dd20:   setg   %r8b
          ││  0x00007f26aeb4dd24:   movzbl %r8b,%r8d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.06%  ││  0x00007f26aeb4dd28:   mov    %r10,%rdx
   0.18%  ││  0x00007f26aeb4dd2b:   add    %rax,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.04%  ││  0x00007f26aeb4dd2e:   cmp    %r13,%rdx
          ││  0x00007f26aeb4dd31:   setg   %bl
   0.05%  ││  0x00007f26aeb4dd34:   movzbl %bl,%ebx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.20%  ││  0x00007f26aeb4dd37:   cmp    %rax,%r10
          ││  0x00007f26aeb4dd3a:   jg     0x00007f26aeb4e354           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dd40:   cmp    %r13,%rdx
          ││  0x00007f26aeb4dd43:   jg     0x00007f26aeb4e76d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dd49:   mov    %r10,%rdx
   0.02%  ││  0x00007f26aeb4dd4c:   shl    $0x3,%rdx
   0.17%  ││  0x00007f26aeb4dd50:   mov    %r10,%rsi
   0.02%  ││  0x00007f26aeb4dd53:   shl    %rsi
   0.00%  ││  0x00007f26aeb4dd56:   add    %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.03%  ││  0x00007f26aeb4dd59:   nopl   0x0(%rax)
   0.15%  ││  0x00007f26aeb4dd60:   cmp    $0x1,%rdx
          ││  0x00007f26aeb4dd64:   jl     0x00007f26aeb4eb87           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.01%  ││  0x00007f26aeb4dd6a:   mov    %r8d,%r11d
   0.01%  ││  0x00007f26aeb4dd6d:   mov    %rax,%rdi
   0.02%  ││  0x00007f26aeb4dd70:   mov    %r10,%rsi
   0.16%  ││  0x00007f26aeb4dd73:   mov    %ebp,%r8d
   0.01%  ││  0x00007f26aeb4dd76:   mov    %ebx,%r10d
   0.01%  ││  0x00007f26aeb4dd79:   mov    %rdx,%rbx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
          ││                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
          ││                                                            ; - java.lang.Double::toString@1 (line 312)
          ││                                                            ; - java.lang.Double::toString@4 (line 769)
   0.02%  ↘│  0x00007f26aeb4dd7c:   lea    0x2(%r8),%ebp                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
           │                                                            ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@2 (line 1738)
           │                                                            ; - jdk.internal.math.FloatingDecimal::toJavaFormatString@1 (line 70)
           │                                                            ; - java.lang.Double::toString@1 (line 312)
           │                                                            ; - java.lang.Double::toString@4 (line 769)
   0.18%   │  0x00007f26aeb4dd80:   cmp    %r8d,%ecx
           ╰  0x00007f26aeb4dd83:   jg     0x00007f26aeb4dc80
              0x00007f26aeb4dd89:   jmp    0x00007f26aeb4e1f3           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
                                                                        ; - jdk.internal.math.FloatingDecimal::getBinaryToASCIIConverter@177 (line 1785)
....................................................................................................
  22.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  22.82%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 887 
   9.63%       jvmci, level 4  java.util.Formatter::parse, version 2, compile id 863 
   8.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   7.47%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 885 
   6.62%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 887 
   6.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   4.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   2.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   2.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   2.00%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 885 
   1.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   1.48%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 840 
   1.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   1.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   1.26%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 887 
   1.06%       jvmci, level 4  java.lang.Boolean::toString, version 2, compile id 889 
   0.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   0.91%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 885 
   0.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
   0.78%                       <unknown> 
  16.34%  <...other 563 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  36.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringConcatenationBenchmark::string_format, version 2, compile id 883 
  32.20%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 887 
  11.90%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 885 
  10.96%       jvmci, level 4  java.util.Formatter::parse, version 2, compile id 863 
   2.15%                       <unknown> 
   1.82%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 840 
   1.63%               kernel  [unknown] 
   1.06%       jvmci, level 4  java.lang.Boolean::toString, version 2, compile id 889 
   0.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringConcatenationBenchmark_string_format_jmhTest::string_format_avgt_jmhStub, version 5, compile id 908 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  JVMCIRuntime::new_array_common 
   0.02%         libc-2.31.so  re_search_stub 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  HeapRegion::clear_cardtable 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.68%  <...other 175 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.30%       jvmci, level 4
   2.15%                     
   1.63%               kernel
   0.67%            libjvm.so
   0.08%         libc-2.31.so
   0.07%   libpthread-2.31.so
   0.03%           ld-2.31.so
   0.02%               [vdso]
   0.02%  libjvmcicompiler.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:51

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
StringConcatenationBenchmark.plus_operator               128   LATIN1  avgt    5   633.886 ± 0.446  ns/op
StringConcatenationBenchmark.plus_operator:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.plus_operator               128    UTF16  avgt    5   655.789 ± 0.518  ns/op
StringConcatenationBenchmark.plus_operator:·asm          128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_buffer               128   LATIN1  avgt    5   680.006 ± 0.276  ns/op
StringConcatenationBenchmark.string_buffer:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_buffer               128    UTF16  avgt    5   740.149 ± 1.948  ns/op
StringConcatenationBenchmark.string_buffer:·asm          128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_builder              128   LATIN1  avgt    5   634.355 ± 0.939  ns/op
StringConcatenationBenchmark.string_builder:·asm         128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_builder              128    UTF16  avgt    5   721.871 ± 0.907  ns/op
StringConcatenationBenchmark.string_builder:·asm         128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_format               128   LATIN1  avgt    5   909.608 ± 0.381  ns/op
StringConcatenationBenchmark.string_format:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_format               128    UTF16  avgt    5  1089.675 ± 3.017  ns/op
StringConcatenationBenchmark.string_format:·asm          128    UTF16  avgt            NaN            ---
