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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.plus_operator
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 795.485 ns/op
# Warmup Iteration   2: 635.087 ns/op
# Warmup Iteration   3: 633.794 ns/op
# Warmup Iteration   4: 634.001 ns/op
# Warmup Iteration   5: 634.344 ns/op
Iteration   1: 634.240 ns/op
Iteration   2: 634.217 ns/op
Iteration   3: 633.886 ns/op
Iteration   4: 634.020 ns/op
Iteration   5: 633.747 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.plus_operator":
  634.022 ±(99.9%) 0.815 ns/op [Average]
  (min, avg, max) = (633.747, 634.022, 634.240), stdev = 0.212
  CI (99.9%): [633.207, 634.837] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.plus_operator:·asm":
PrintAssembly processed: 231095 total address lines.
Perf output processed (skipped 58.739 seconds):
 Column 1: cycles (50689 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 898 

              0x00007fa90f004bbd:   data16 xchg %ax,%ax
              0x00007fa90f004bc0:   jmp    0x00007fa90f005119           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
              0x00007fa90f004bc5:   test   %rax,%rax
              0x00007fa90f004bc8:   je     0x00007fa90f004f3e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
              0x00007fa90f004bce:   cmp    $0x1,%rax
              0x00007fa90f004bd2:   jl     0x00007fa90f004b20
              0x00007fa90f004bd8:   jmp    0x00007fa90f004e1f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.00%      0x00007fa90f004bdd:   mov    %edi,0x10(%rsp)
              0x00007fa90f004be1:   mov    %r11,0x18(%rsp)
   0.06%      0x00007fa90f004be6:   mov    %edx,%edi
              0x00007fa90f004be8:   test   %r9d,%r9d
              0x00007fa90f004beb:   je     0x00007fa90f004f07
   0.00%      0x00007fa90f004bf1:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
              0x00007fa90f004bfb:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
   0.06%      0x00007fa90f004bff:   mov    %rax,%rdx
              0x00007fa90f004c02:   shl    $0x3,%rdx
              0x00007fa90f004c06:   mov    %rax,%r10
              0x00007fa90f004c09:   shl    %r10
   0.05%      0x00007fa90f004c0c:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
              0x00007fa90f004c0f:   mov    %r10,%rdx
              0x00007fa90f004c12:   shl    $0x3,%rdx
              0x00007fa90f004c16:   mov    %r10,%r11
   0.04%      0x00007fa90f004c19:   shl    %r11
              0x00007fa90f004c1c:   add    %rdx,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
              0x00007fa90f004c1f:   nop
              0x00007fa90f004c20:   cmp    $0x1,%r11
              0x00007fa90f004c24:   jl     0x00007fa90f004e40           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.05%      0x00007fa90f004c2a:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
              0x00007fa90f004c2e:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
              0x00007fa90f004c32:   mov    %esi,%ecx
   0.00%      0x00007fa90f004c34:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.04%      0x00007fa90f004c37:   mov    %r8d,%ecx
              0x00007fa90f004c3a:   mov    %rdx,%r8
   0.06%      0x00007fa90f004c3d:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
              0x00007fa90f004c40:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
   0.04%      0x00007fa90f004c43:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
              0x00007fa90f004c45:   idiv   %r8                          ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.56%      0x00007fa90f004c48:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
   0.00%      0x00007fa90f004c4a:   test   %eax,%eax
              0x00007fa90f004c4c:   je     0x00007fa90f004f20           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
              0x00007fa90f004c52:   mov    %rdx,%rcx
   0.07%      0x00007fa90f004c55:   shl    $0x3,%rcx
              0x00007fa90f004c59:   shl    %rdx
              0x00007fa90f004c5c:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
              0x00007fa90f004c5f:   nop
   0.04%      0x00007fa90f004c60:   cmp    %rcx,%r10
              0x00007fa90f004c63:   jg     0x00007fa90f004ee9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
              0x00007fa90f004c69:   mov    %r8,%rdx
              0x00007fa90f004c6c:   shl    $0x3,%rdx
              0x00007fa90f004c70:   mov    %r8,%rbx
   0.05%      0x00007fa90f004c73:   shl    %rbx
              0x00007fa90f004c76:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
              0x00007fa90f004c79:   mov    %rcx,%rdx
              0x00007fa90f004c7c:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
   0.07%      0x00007fa90f004c7f:   nop
              0x00007fa90f004c80:   cmp    %rbx,%rdx
              0x00007fa90f004c83:   jg     0x00007fa90f004ecb           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
   0.00%      0x00007fa90f004c89:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
              0x00007fa90f004c8c:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.06%      0x00007fa90f004c95:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
              0x00007fa90f004c98:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
   0.00%      0x00007fa90f004c9a:   idiv   %r8                          ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   2.47%      0x00007fa90f004c9d:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
              0x00007fa90f004c9f:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
              0x00007fa90f004ca2:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.05%      0x00007fa90f004cab:   mov    %rdx,%rax
   0.00%      0x00007fa90f004cae:   shl    $0x3,%rax
              0x00007fa90f004cb2:   shl    %rdx
              0x00007fa90f004cb5:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.05%      0x00007fa90f004cb8:   mov    %rax,%rdx
   0.01%      0x00007fa90f004cbb:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
              0x00007fa90f004cbe:   cmp    %rbx,%rdx
              0x00007fa90f004cc1:   setg   %dl
   0.07%      0x00007fa90f004cc4:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%      0x00007fa90f004cc7:   cmp    %rax,%r11
              0x00007fa90f004cca:   setg   %r10b
   0.00%      0x00007fa90f004cce:   movzbl %r10b,%r10d                  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.04%      0x00007fa90f004cd2:   mov    $0x2,%esi
   0.01%      0x00007fa90f004cd7:   mov    %r10d,%ecx
              0x00007fa90f004cda:   mov    %edx,%r9d
              0x00007fa90f004cdd:   mov    %r11,%r10
   0.04%      0x00007fa90f004ce0:   mov    %rax,%r11
   0.02%  ╭   0x00007fa90f004ce3:   jmp    0x00007fa90f004d82           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │   0x00007fa90f004ce8:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa90f004cf3:   data16 data16 xchg %ax,%ax
          │   0x00007fa90f004cf7:   nopw   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.09%  │↗  0x00007fa90f004d00:   test   %r9d,%r9d
          ││  0x00007fa90f004d03:   jne    0x00007fa90f004e9f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.77%  ││  0x00007fa90f004d09:   mov    %r10,%rax
   0.07%  ││  0x00007fa90f004d0c:   shl    $0x3,%rax
          ││  0x00007fa90f004d10:   mov    %r10,%rdx
   0.08%  ││  0x00007fa90f004d13:   shl    %rdx
   0.67%  ││  0x00007fa90f004d16:   mov    %rax,%rcx
   0.06%  ││  0x00007fa90f004d19:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%  ││  0x00007fa90f004d1c:   nopl   0x0(%rax)
   0.09%  ││  0x00007fa90f004d20:   cmp    $0x1,%rcx
          ││  0x00007fa90f004d24:   jl     0x00007fa90f004e7b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.76%  ││  0x00007fa90f004d2a:   cmp    %esi,%edi
          ││  0x00007fa90f004d2c:   jbe    0x00007fa90f004fe5           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.07%  ││  0x00007fa90f004d32:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
   0.00%  ││  0x00007fa90f004d35:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.09%  ││  0x00007fa90f004d37:   idiv   %r8                          ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
  33.73%  ││  0x00007fa90f004d3a:   mov    %eax,%r10d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.00%  ││  0x00007fa90f004d3d:   lea    0x30(%r10),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.03%  ││  0x00007fa90f004d41:   mov    %r11w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.72%  ││  0x00007fa90f004d47:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.12%  ││  0x00007fa90f004d49:   mov    %rdx,%r11
   0.00%  ││  0x00007fa90f004d4c:   shl    $0x3,%r11
   0.04%  ││  0x00007fa90f004d50:   shl    %rdx
   0.73%  ││  0x00007fa90f004d53:   add    %rdx,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.17%  ││  0x00007fa90f004d56:   cmp    %r11,%rcx
   0.01%  ││  0x00007fa90f004d59:   setg   %r9b
   0.06%  ││  0x00007fa90f004d5d:   movzbl %r9b,%r9d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.76%  ││  0x00007fa90f004d61:   mov    %r11,%rdx
   0.10%  ││  0x00007fa90f004d64:   add    %rcx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.01%  ││  0x00007fa90f004d67:   cmp    %rbx,%rdx
   0.03%  ││  0x00007fa90f004d6a:   setg   %dl
   0.74%  ││  0x00007fa90f004d6d:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.24%  ││  0x00007fa90f004d70:   mov    0x348(%r15),%rax             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
          ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          ││  0x00007fa90f004d77:   test   %eax,(%rax)                  ;   {poll}
   0.02%  ││  0x00007fa90f004d79:   mov    %rcx,%r10
   0.64%  ││  0x00007fa90f004d7c:   mov    %r9d,%ecx
   0.19%  ││  0x00007fa90f004d7f:   mov    %edx,%r9d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.00%  ↘│  0x00007fa90f004d82:   test   %ecx,%ecx
           ╰  0x00007fa90f004d84:   je     0x00007fa90f004d00           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.00%      0x00007fa90f004d8a:   test   %r11,%r11
              0x00007fa90f004d8d:   je     0x00007fa90f004e5b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.04%      0x00007fa90f004d93:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
   0.03%      0x00007fa90f004d96:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
   0.01%      0x00007fa90f004d99:   mov    %r11,%rax
   0.00%      0x00007fa90f004d9c:   mov    %ecx,%r10d
   0.04%      0x00007fa90f004d9f:   mov    %esi,%ecx
   0.04%      0x00007fa90f004da1:   jmp    0x00007fa90f004ab8           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
              0x00007fa90f004da6:   cmp    $0x39,%r10d
              0x00007fa90f004daa:   jne    0x00007fa90f004b0a           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@63 (line 796)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
              0x00007fa90f004db0:   movl   $0x1,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@73 (line 798)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
              0x00007fa90f004db7:   movw   $0x31,0x10(,%r14,8)          ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@86 (line 799)
....................................................................................................
  46.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 898 

              #           [sp+0x40]  (sp of caller)
              0x00007fa90f004760:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
              0x00007fa90f004764:   movabs $0x800000000,%r12
              0x00007fa90f00476e:   add    %r12,%r10
              0x00007fa90f004771:   xor    %r12,%r12
              0x00007fa90f004774:   cmp    %r10,%rax
              0x00007fa90f004777:   jne    0x00007fa9074ff780           ;   {runtime_call ic_miss_stub}
              0x00007fa90f00477d:   nop
              0x00007fa90f00477e:   xchg   %ax,%ax
            [Verified Entry Point]
   0.12%      0x00007fa90f004780:   mov    %eax,-0x14000(%rsp)
              0x00007fa90f004787:   sub    $0x38,%rsp
   0.07%      0x00007fa90f00478b:   mov    %rbp,0x30(%rsp)
   0.07%      0x00007fa90f004790:   mov    %edx,%r10d
              0x00007fa90f004793:   mov    %rcx,%r11
              0x00007fa90f004796:   lea    0x15(%r10),%ecx              ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
   0.10%      0x00007fa90f00479a:   nopw   0x0(%rax,%rax,1)
   0.07%      0x00007fa90f0047a0:   cmp    $0x54,%ecx
              0x00007fa90f0047a3:   jae    0x00007fa90f00520a           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
              0x00007fa90f0047a9:   movabs $0xfffffffffffff,%rcx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@4 (line 820)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
              0x00007fa90f0047b3:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@7 (line 820)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%      0x00007fa90f0047b6:   movabs $0x3ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.07%      0x00007fa90f0047c0:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
              0x00007fa90f0047c3:   vmovq  %rcx,%xmm0
              0x00007fa90f0047c8:   vsubsd -0x90(%rip),%xmm0,%xmm0        # 0x00007fa90f004740
                                                                        ;   {section_word}
   0.05%      0x00007fa90f0047d0:   vmulsd -0x90(%rip),%xmm0,%xmm0        # 0x00007fa90f004748
                                                                        ;   {section_word}
   0.05%      0x00007fa90f0047d8:   vaddsd -0x90(%rip),%xmm0,%xmm0        # 0x00007fa90f004750
                                                                        ;   {section_word}
              0x00007fa90f0047e0:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.07%      0x00007fa90f0047e5:   vmulsd -0x95(%rip),%xmm1,%xmm1        # 0x00007fa90f004758
                                                                        ;   {section_word}
   0.07%      0x00007fa90f0047ed:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%      0x00007fa90f0047f1:   vmovq  %xmm0,%rcx                   ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Double::doubleToRawLongBits@-3
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
              0x00007fa90f0047f6:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%      0x00007fa90f004800:   test   %rax,%rcx
              0x00007fa90f004803:   je     0x00007fa90f0051e6           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%      0x00007fa90f004809:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%      0x00007fa90f004813:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
              0x00007fa90f004816:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%      0x00007fa90f00481a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%      0x00007fa90f00481c:   nopl   0x0(%rax)
   0.00%      0x00007fa90f004820:   cmp    $0x3ff,%eax
              0x00007fa90f004826:   jae    0x00007fa90f00517a           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
              0x00007fa90f00482c:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%      0x00007fa90f004836:   test   %rax,%rcx
              0x00007fa90f004839:   je     0x00007fa90f00519e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%      0x00007fa90f00483f:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
   0.00%      0x00007fa90f004844:   mov    $0x35,%ecx
   0.00%      0x00007fa90f004849:   mov    %ecx,%edi
   0.07%      0x00007fa90f00484b:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
   0.06%      0x00007fa90f00484d:   cmp    $0x1,%edi
              0x00007fa90f004850:   je     0x00007fa90f00513c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
              0x00007fa90f004856:   mov    %edi,%ecx
   0.00%      0x00007fa90f004858:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
   0.06%      0x00007fa90f00485b:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
   0.07%      0x00007fa90f00485d:   cmp    $0x1,%ecx
              0x00007fa90f004860:   mov    $0x0,%eax
              0x00007fa90f004865:   mov    %ecx,%ebp
   0.03%      0x00007fa90f004867:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::max@2 (line 1562)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
   0.06%      0x00007fa90f00486a:   mov    %ebp,%ecx
              0x00007fa90f00486c:   add    %r10d,%ecx
              0x00007fa90f00486f:   inc    %ecx
   0.06%      0x00007fa90f004871:   mov    %ecx,%eax
   0.05%      0x00007fa90f004873:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
   0.00%      0x00007fa90f004876:   add    %ebx,%ecx
              0x00007fa90f004878:   lea    -0x34(%rcx),%ecx
   0.07%      0x00007fa90f00487b:   cmp    %ebp,%ecx
   0.05%      0x00007fa90f00487d:   mov    %ecx,%edx
   0.00%      0x00007fa90f00487f:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.Math::min@2 (line 1649)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
              0x00007fa90f004882:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.05%      0x00007fa90f004884:   test   %eax,%eax
              0x00007fa90f004886:   jge    0x00007fa90f0050f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.06%      0x00007fa90f00488c:   mov    %r10d,0x14(%rsp)
   0.00%      0x00007fa90f004891:   movabs $0x7ff5b29e0,%r13            ;   {oop([I{0x00000007ff5b29e0})}
              0x00007fa90f00489b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.06%      0x00007fa90f00489f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.05%      0x00007fa90f0048a1:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
   0.00%      0x00007fa90f0048a3:   mov    %ecx,%r10d
              0x00007fa90f0048a6:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
   0.06%      0x00007fa90f0048a9:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.04%      0x00007fa90f0048ac:   cmp    $0x40,%r10d
              0x00007fa90f0048b0:   jge    0x00007fa90f0050a6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
              0x00007fa90f0048b6:   mov    %r8d,0x24(%rsp)
              0x00007fa90f0048bb:   mov    %ebp,%r8d
   0.04%      0x00007fa90f0048be:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.07%      0x00007fa90f0048c1:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
              0x00007fa90f0048c4:   mov    %r8d,%eax
   0.00%      0x00007fa90f0048c7:   add    %r14d,%eax
   0.07%      0x00007fa90f0048ca:   inc    %eax
   0.06%      0x00007fa90f0048cc:   cmp    $0x40,%eax
              0x00007fa90f0048cf:   jge    0x00007fa90f005079           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.00%      0x00007fa90f0048d5:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
                                                                        ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
   0.00%      0x00007fa90f0048d9:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007fa90f00522e
   0.05%      0x00007fa90f0048e1:   cmp    $0x2,%edx
              0x00007fa90f0048e4:   jb     0x00007fa90f005160           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.07%      0x00007fa90f0048ea:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
              0x00007fa90f0048ee:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
              0x00007fa90f0048f2:   cmp    $0x1b,%ebp
              0x00007fa90f0048f5:   jl     0x00007fa90f004b99           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
              0x00007fa90f0048fb:   mov    %rsi,(%rsp)                  ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.06%      0x00007fa90f0048ff:   mov    %ecx,%esi
   0.00%      0x00007fa90f004901:   mov    %r14d,%r13d
   0.07%      0x00007fa90f004904:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
              0x00007fa90f004908:   mov    %ebx,%ecx
   0.08%      0x00007fa90f00490a:   mov    %ebx,0xc(%rsp)
              0x00007fa90f00490e:   mov    %r11,%rbx
   0.07%      0x00007fa90f004911:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.08%      0x00007fa90f004914:   cmp    $0x20,%r10d
              0x00007fa90f004918:   jge    0x00007fa90f004bdd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
   0.06%      0x00007fa90f00491e:   xchg   %ax,%ax
   0.00%      0x00007fa90f004920:   cmp    $0x20,%eax
              0x00007fa90f004923:   jge    0x00007fa90f004fcd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
              0x00007fa90f004929:   test   %r9d,%r9d
              0x00007fa90f00492c:   je     0x00007fa90f0050e0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@554 (line 626)
              0x00007fa90f004932:   mov    %edi,0x10(%rsp)
   0.06%      0x00007fa90f004936:   mov    %r11,0x18(%rsp)
              0x00007fa90f00493b:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
              0x00007fa90f004945:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
              0x00007fa90f004948:   mov    %eax,%r10d
   0.05%      0x00007fa90f00494b:   shl    $0x3,%r10d
              0x00007fa90f00494f:   mov    %eax,%r11d
   0.00%      0x00007fa90f004952:   shl    %r11d
              0x00007fa90f004955:   add    %r11d,%r10d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
   0.05%      0x00007fa90f004958:   mov    %r10d,%r11d
   0.00%      0x00007fa90f00495b:   shl    $0x3,%r11d
              0x00007fa90f00495f:   mov    %r10d,%edi
              0x00007fa90f004962:   shl    %edi
   0.06%      0x00007fa90f004964:   add    %edi,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.01%      0x00007fa90f004967:   cmp    $0x1,%r11d
              0x00007fa90f00496b:   jl     0x00007fa90f004f81           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.00%      0x00007fa90f004971:   mov    %edx,%edi
              0x00007fa90f004973:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
   0.06%      0x00007fa90f004976:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
              0x00007fa90f004978:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
   0.00%      0x00007fa90f00497b:   mov    %esi,%ecx
              0x00007fa90f00497d:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.09%      0x00007fa90f00497f:   mov    %r8d,%ecx
              0x00007fa90f004982:   mov    %edx,%r8d
   0.05%      0x00007fa90f004985:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.00%      0x00007fa90f004988:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.06%      0x00007fa90f004989:   idiv   %r8d                         ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.84%      0x00007fa90f00498c:   test   %eax,%eax
              0x00007fa90f00498e:   je     0x00007fa90f004de6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
   0.02%      0x00007fa90f004994:   mov    %edx,%ecx
   0.02%      0x00007fa90f004996:   shl    $0x3,%ecx
   0.01%      0x00007fa90f004999:   shl    %edx
   0.05%      0x00007fa90f00499b:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.03%      0x00007fa90f00499d:   data16 xchg %ax,%ax
   0.01%      0x00007fa90f0049a0:   cmp    %ecx,%r10d
              0x00007fa90f0049a3:   jg     0x00007fa90f0050c2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.03%      0x00007fa90f0049a9:   mov    %r8d,%edx
   0.02%      0x00007fa90f0049ac:   shl    $0x3,%edx
   0.00%      0x00007fa90f0049af:   mov    %r8d,%ebx
   0.01%      0x00007fa90f0049b2:   shl    %ebx
   0.03%      0x00007fa90f0049b4:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.03%      0x00007fa90f0049b6:   mov    %ecx,%edx
              0x00007fa90f0049b8:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.01%      0x00007fa90f0049bb:   nopl   0x0(%rax,%rax,1)
   0.02%      0x00007fa90f0049c0:   cmp    %ebx,%edx
              0x00007fa90f0049c2:   jg     0x00007fa90f004ead           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.02%      0x00007fa90f0049c8:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.00%      0x00007fa90f0049cb:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
   0.01%      0x00007fa90f0049d4:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
   0.01%      0x00007fa90f0049d6:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.03%      0x00007fa90f0049d7:   idiv   %r8d                         ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.51%      0x00007fa90f0049da:   mov    %edx,%esi
   0.01%      0x00007fa90f0049dc:   shl    $0x3,%esi
   0.04%      0x00007fa90f0049df:   shl    %edx
   0.02%      0x00007fa90f0049e1:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.03%      0x00007fa90f0049e3:   cmp    %esi,%r11d
              0x00007fa90f0049e6:   jg     0x00007fa90f005059           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.05%      0x00007fa90f0049ec:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.01%      0x00007fa90f0049ef:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
              0x00007fa90f0049f8:   mov    %esi,%eax
              0x00007fa90f0049fa:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.07%      0x00007fa90f0049fd:   cmp    %ebx,%eax
   0.01%      0x00007fa90f0049ff:   setg   %al
   0.05%      0x00007fa90f004a02:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.07%      0x00007fa90f004a05:   mov    $0x2,%ecx
              0x00007fa90f004a0a:   mov    %eax,%r9d
              0x00007fa90f004a0d:   mov    %r11d,%r10d
              0x00007fa90f004a10:   mov    %esi,%r11d
   0.04%  ╭   0x00007fa90f004a13:   jmp    0x00007fa90f004a94           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │   0x00007fa90f004a18:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.06%  │↗  0x00007fa90f004a20:   mov    %r10d,%eax
          ││  0x00007fa90f004a23:   shl    $0x3,%eax
   0.24%  ││  0x00007fa90f004a26:   mov    %r10d,%edx
          ││  0x00007fa90f004a29:   shl    %edx
   0.05%  ││  0x00007fa90f004a2b:   mov    %eax,%r9d
          ││  0x00007fa90f004a2e:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.26%  ││  0x00007fa90f004a31:   cmp    $0x1,%r9d
          ││  0x00007fa90f004a35:   jl     0x00007fa90f00503b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          ││  0x00007fa90f004a3b:   nopl   0x0(%rax,%rax,1)
   0.06%  ││  0x00007fa90f004a40:   cmp    %ecx,%edi
          ││  0x00007fa90f004a42:   jbe    0x00007fa90f005016           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          ││  0x00007fa90f004a48:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
   0.24%  ││  0x00007fa90f004a4b:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ││  0x00007fa90f004a4c:   idiv   %r8d                         ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   6.34%  ││  0x00007fa90f004a4f:   mov    %edx,%esi
   0.13%  ││  0x00007fa90f004a51:   shl    $0x3,%esi
   0.08%  ││  0x00007fa90f004a54:   shl    %edx
   0.07%  ││  0x00007fa90f004a56:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.17%  ││  0x00007fa90f004a58:   nopl   0x0(%rax,%rax,1)
   0.05%  ││  0x00007fa90f004a60:   cmp    %esi,%r9d
          ││  0x00007fa90f004a63:   jg     0x00007fa90f00504a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.21%  ││  0x00007fa90f004a69:   lea    0x30(%rax),%edx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.02%  ││  0x00007fa90f004a6c:   mov    %dx,0x10(%r13,%rcx,2)        ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          ││  0x00007fa90f004a72:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.06%  ││  0x00007fa90f004a74:   mov    %esi,%edx
   0.24%  ││  0x00007fa90f004a76:   add    %r9d,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.02%  ││  0x00007fa90f004a79:   cmp    %ebx,%edx
   0.03%  ││  0x00007fa90f004a7b:   setg   %dl
   0.27%  ││  0x00007fa90f004a7e:   movzbl %dl,%edx                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.31%  ││  0x00007fa90f004a81:   mov    0x348(%r15),%r10             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
          ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
          ││  0x00007fa90f004a88:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007fa90f004a8b:   mov    %esi,%r11d
          ││  0x00007fa90f004a8e:   mov    %r9d,%r10d
   0.26%  ││  0x00007fa90f004a91:   mov    %edx,%r9d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ↘│  0x00007fa90f004a94:   test   %r9d,%r9d
           ╰  0x00007fa90f004a97:   je     0x00007fa90f004a20           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.00%      0x00007fa90f004a99:   nopl   0x0(%rax)
              0x00007fa90f004aa0:   test   %r11d,%r11d
              0x00007fa90f004aa3:   je     0x00007fa90f004ff6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@714 (line 649)
   0.08%      0x00007fa90f004aa9:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@704 (line 648)
              0x00007fa90f004aac:   sub    %ebx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@707 (line 648)
   0.00%      0x00007fa90f004aaf:   movslq %r11d,%rax                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@708 (line 648)
              0x00007fa90f004ab2:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
   0.07%      0x00007fa90f004ab8:   nopl   0x0(%rax,%rax,1)
              0x00007fa90f004ac0:   test   %r9d,%r9d
              0x00007fa90f004ac3:   je     0x00007fa90f0051c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.05%      0x00007fa90f004ac9:   mov    (%rsp),%rdx
   0.03%      0x00007fa90f004acd:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.05%      0x00007fa90f004ad4:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.00%      0x00007fa90f004adb:   mov    %ecx,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.05%      0x00007fa90f004ade:   xchg   %ax,%ax
   0.03%      0x00007fa90f004ae0:   test   %r10d,%r10d
              0x00007fa90f004ae3:   jne    0x00007fa90f004bc5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
   0.05%      0x00007fa90f004ae9:   mov    %ecx,%r11d
              0x00007fa90f004aec:   dec    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
              0x00007fa90f004aef:   cmp    %r11d,%edi
              0x00007fa90f004af2:   jbe    0x00007fa90f004fbb
   0.00%      0x00007fa90f004af8:   movzwl 0x10(%r13,%r11,2),%r10d      ;*caload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.06%      0x00007fa90f004afe:   xchg   %ax,%ax
              0x00007fa90f004b00:   cmp    $0x39,%r10d
              0x00007fa90f004b04:   je     0x00007fa90f004b8e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
              0x00007fa90f004b0a:   cmp    %r11d,%edi
              0x00007fa90f004b0d:   jbe    0x00007fa90f004f9f           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.01%      0x00007fa90f004b13:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.07%      0x00007fa90f004b16:   mov    %r10w,0x10(%r13,%r11,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
              0x00007fa90f004b1c:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.05%      0x00007fa90f004b20:   mov    0x30(%rsp),%rbp
              0x00007fa90f004b25:   add    $0x38,%rsp
   0.04%      0x00007fa90f004b29:   mov    0x348(%r15),%rcx
   0.00%      0x00007fa90f004b30:   test   %eax,(%rcx)                  ;   {poll_return}
   0.06%      0x00007fa90f004b32:   ret    
              0x00007fa90f004b33:   nopw   0x0(%rax,%rax,1)
              0x00007fa90f004b3c:   data16 data16 xchg %ax,%ax          ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@28 (line 792)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
              0x00007fa90f004b40:   cmp    $0x1,%r11d
              0x00007fa90f004b44:   jl     0x00007fa90f004da6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@36 (line 792)
                                                                        ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
              0x00007fa90f004b4a:   cmp    %r11d,%edi
              0x00007fa90f004b4d:   jbe    0x00007fa90f004dc7           ;*castore {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  16.30%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 

 <region is too big to display, has 1319 lines, but threshold is 1000>
....................................................................................................
  10.64%  <total for region 3>

....[Hottest Regions]...............................................................................
  46.29%      jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 898 
  16.30%      jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 898 
  10.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   5.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   4.69%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 923 
   4.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   3.58%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.48%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 923 
   1.14%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 941 
   0.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.34%              kernel  [unknown] 
   0.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   0.12%      jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 898 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   1.77%  <...other 435 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.71%      jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 898 
  23.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 925 
   6.17%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 923 
   3.58%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.68%              kernel  [unknown] 
   1.14%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 941 
   0.06%                      <unknown> 
   0.04%        libc-2.31.so  [unknown] 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  G1CollectionSet::update_young_region_prediction 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%           libjvm.so  ThreadLocalAllocBuffer::fill 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  fileStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.37%  <...other 126 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.99%      jvmci, level 4
   4.72%        runtime stub
   1.68%              kernel
   0.38%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.04%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.plus_operator
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 12.50% complete, ETA 00:13:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 794.609 ns/op
# Warmup Iteration   2: 626.102 ns/op
# Warmup Iteration   3: 622.792 ns/op
# Warmup Iteration   4: 622.933 ns/op
# Warmup Iteration   5: 622.513 ns/op
Iteration   1: 622.728 ns/op
Iteration   2: 622.772 ns/op
Iteration   3: 622.514 ns/op
Iteration   4: 622.276 ns/op
Iteration   5: 622.510 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.plus_operator":
  622.560 ±(99.9%) 0.766 ns/op [Average]
  (min, avg, max) = (622.276, 622.560, 622.772), stdev = 0.199
  CI (99.9%): [621.794, 623.326] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.plus_operator:·asm":
PrintAssembly processed: 234332 total address lines.
Perf output processed (skipped 58.623 seconds):
 Column 1: cycles (51066 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 912 

                     #           [sp+0x40]  (sp of caller)
                     0x00007f72170052e0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                     0x00007f72170052e4:   movabs $0x800000000,%r12
                     0x00007f72170052ee:   add    %r12,%r10
                     0x00007f72170052f1:   xor    %r12,%r12
                     0x00007f72170052f4:   cmp    %r10,%rax
                     0x00007f72170052f7:   jne    0x00007f720f4ff780           ;   {runtime_call ic_miss_stub}
                     0x00007f72170052fd:   nop
                     0x00007f72170052fe:   xchg   %ax,%ax
                   [Verified Entry Point]
   0.07%             0x00007f7217005300:   mov    %eax,-0x14000(%rsp)
   0.05%             0x00007f7217005307:   sub    $0x38,%rsp
   0.01%             0x00007f721700530b:   mov    %rbp,0x30(%rsp)
   0.07%             0x00007f7217005310:   mov    %edx,%r10d
                     0x00007f7217005313:   mov    %rcx,%r11
   0.05%             0x00007f7217005316:   lea    0x15(%r10),%ecx              ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
   0.00%             0x00007f721700531a:   nopw   0x0(%rax,%rax,1)
   0.06%             0x00007f7217005320:   cmp    $0x54,%ecx
                     0x00007f7217005323:   jae    0x00007f7217005bbb           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
                     0x00007f7217005329:   movabs $0xfffffffffffff,%rcx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@4 (line 820)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%             0x00007f7217005333:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@7 (line 820)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%             0x00007f7217005336:   movabs $0x3ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%             0x00007f7217005340:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                     0x00007f7217005343:   vmovq  %rcx,%xmm0
   0.04%             0x00007f7217005348:   vsubsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f72170052c0
                                                                               ;   {section_word}
   0.01%             0x00007f7217005350:   vmulsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f72170052c8
                                                                               ;   {section_word}
   0.07%             0x00007f7217005358:   vaddsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f72170052d0
                                                                               ;   {section_word}
                     0x00007f7217005360:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.07%             0x00007f7217005365:   vmulsd -0x95(%rip),%xmm1,%xmm1        # 0x00007f72170052d8
                                                                               ;   {section_word}
   0.07%             0x00007f721700536d:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                     0x00007f7217005371:   vmovq  %xmm0,%rcx                   ;* unwind (locked if synchronized)
                                                                               ; - java.lang.Double::doubleToRawLongBits@-3
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.07%             0x00007f7217005376:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%             0x00007f7217005380:   test   %rax,%rcx
                     0x00007f7217005383:   je     0x00007f7217005b46           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%             0x00007f7217005389:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%             0x00007f7217005393:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.07%             0x00007f7217005396:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%             0x00007f721700539a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%             0x00007f721700539c:   nopl   0x0(%rax)
                     0x00007f72170053a0:   cmp    $0x3ff,%eax
                     0x00007f72170053a6:   jae    0x00007f7217005986           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%             0x00007f72170053ac:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%             0x00007f72170053b6:   test   %rax,%rcx
                     0x00007f72170053b9:   je     0x00007f7217005c05           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%             0x00007f72170053bf:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                               ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
                     0x00007f72170053c4:   mov    $0x35,%ecx
   0.07%             0x00007f72170053c9:   mov    %ecx,%edi
   0.01%             0x00007f72170053cb:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
   0.06%             0x00007f72170053cd:   cmp    $0x1,%edi
                     0x00007f72170053d0:   je     0x00007f7217005c66           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
                     0x00007f72170053d6:   mov    %edi,%ecx
   0.07%             0x00007f72170053d8:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
   0.01%             0x00007f72170053db:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
   0.05%             0x00007f72170053dd:   cmp    $0x1,%ecx
                     0x00007f72170053e0:   mov    $0x0,%eax
   0.05%             0x00007f72170053e5:   mov    %ecx,%ebp
   0.00%             0x00007f72170053e7:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.lang.Math::max@2 (line 1562)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
   0.06%             0x00007f72170053ea:   mov    %ebp,%ecx
                     0x00007f72170053ec:   add    %r10d,%ecx
   0.05%             0x00007f72170053ef:   inc    %ecx
                     0x00007f72170053f1:   mov    %ecx,%eax
   0.05%             0x00007f72170053f3:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
                     0x00007f72170053f6:   add    %ebx,%ecx
   0.06%             0x00007f72170053f8:   lea    -0x34(%rcx),%ecx
   0.01%             0x00007f72170053fb:   cmp    %ebp,%ecx
   0.05%             0x00007f72170053fd:   mov    %ecx,%edx
                     0x00007f72170053ff:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.lang.Math::min@2 (line 1649)
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.08%             0x00007f7217005402:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.00%             0x00007f7217005404:   test   %eax,%eax
                     0x00007f7217005406:   jge    0x00007f7217005c9c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.08%             0x00007f721700540c:   mov    %r10d,0x14(%rsp)
                     0x00007f7217005411:   movabs $0x7ff5b3320,%r13            ;   {oop([I{0x00000007ff5b3320})}
   0.06%             0x00007f721700541b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
                     0x00007f721700541f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.06%             0x00007f7217005421:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
                     0x00007f7217005423:   mov    %ecx,%r10d
   0.07%             0x00007f7217005426:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
   0.01%             0x00007f7217005429:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.07%             0x00007f721700542c:   cmp    $0x40,%r10d
                     0x00007f7217005430:   jge    0x00007f72170059b9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
                     0x00007f7217005436:   mov    %r8d,0x24(%rsp)
   0.05%             0x00007f721700543b:   mov    %ebp,%r8d
   0.00%             0x00007f721700543e:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.05%             0x00007f7217005441:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
                     0x00007f7217005444:   mov    %r8d,%eax
   0.06%             0x00007f7217005447:   add    %r14d,%eax
   0.00%             0x00007f721700544a:   inc    %eax
   0.05%             0x00007f721700544c:   cmp    $0x40,%eax
                     0x00007f721700544f:   jge    0x00007f7217005bdf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
                     0x00007f7217005455:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
                                                                               ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
   0.06%             0x00007f7217005459:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007f7217005d1f
   0.00%             0x00007f7217005461:   cmp    $0x2,%edx
                     0x00007f7217005464:   jb     0x00007f7217005cc0           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.06%             0x00007f721700546a:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
                     0x00007f721700546e:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
   0.05%             0x00007f7217005472:   cmp    $0x1b,%ebp
          ╭          0x00007f7217005475:   jl     0x00007f72170056ae           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
   0.00%  │          0x00007f721700547b:   mov    %rsi,(%rsp)                  ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.05%  │    ↗     0x00007f721700547f:   mov    %ecx,%esi
          │    │     0x00007f7217005481:   mov    %r14d,%r13d
   0.06%  │    │     0x00007f7217005484:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
   0.00%  │    │     0x00007f7217005488:   mov    %ebx,%ecx
   0.05%  │    │     0x00007f721700548a:   mov    %ebx,0x10(%rsp)
          │    │     0x00007f721700548e:   mov    %r11,%rbx
   0.04%  │    │     0x00007f7217005491:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.07%  │    │     0x00007f7217005494:   cmp    $0x20,%r10d
          │╭   │     0x00007f7217005498:   jl     0x00007f72170056d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
          ││   │     0x00007f721700549e:   xchg   %ax,%ax
          ││   │     0x00007f72170054a0:   test   %r9d,%r9d
          ││   │     0x00007f72170054a3:   je     0x00007f7217005c35           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
   0.05%  ││   │     0x00007f72170054a9:   mov    %edi,0xc(%rsp)
          ││   │     0x00007f72170054ad:   mov    %r11,0x18(%rsp)
          ││   │     0x00007f72170054b2:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
          ││   │     0x00007f72170054bc:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
   0.06%  ││   │     0x00007f72170054c0:   mov    %rax,%r10
   0.00%  ││   │     0x00007f72170054c3:   shl    $0x3,%r10
          ││   │     0x00007f72170054c7:   mov    %rax,%r11
   0.00%  ││   │     0x00007f72170054ca:   shl    %r11
   0.05%  ││   │     0x00007f72170054cd:   add    %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
          ││   │     0x00007f72170054d0:   mov    %r10,%r11
          ││   │     0x00007f72170054d3:   shl    $0x3,%r11
          ││   │     0x00007f72170054d7:   mov    %r10,%rdi
   0.07%  ││   │     0x00007f72170054da:   shl    %rdi
          ││   │     0x00007f72170054dd:   add    %rdi,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.00%  ││   │     0x00007f72170054e0:   cmp    $0x1,%r11
          ││   │     0x00007f72170054e4:   jl     0x00007f7217005c29           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          ││   │     0x00007f72170054ea:   mov    %edx,%edi
   0.05%  ││   │     0x00007f72170054ec:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
          ││   │     0x00007f72170054f0:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
          ││   │     0x00007f72170054f4:   mov    %esi,%ecx
          ││   │     0x00007f72170054f6:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.05%  ││   │     0x00007f72170054f9:   mov    %r8d,%ecx
   0.00%  ││   │     0x00007f72170054fc:   mov    %rdx,%r8
   0.05%  ││   │     0x00007f72170054ff:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
          ││   │     0x00007f7217005502:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
   0.06%  ││   │     0x00007f7217005505:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││   │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          ││   │     0x00007f7217005507:   idiv   %r8                          ; implicit exception: deoptimizes
          ││   │                                                               ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.56%  ││   │     0x00007f721700550a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
          ││   │     0x00007f721700550c:   test   %eax,%eax
          ││   │     0x00007f721700550e:   je     0x00007f7217005bf9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          ││   │     0x00007f7217005514:   mov    %rdx,%rcx
   0.08%  ││   │     0x00007f7217005517:   shl    $0x3,%rcx
   0.01%  ││   │     0x00007f721700551b:   shl    %rdx
   0.00%  ││   │     0x00007f721700551e:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          ││   │     0x00007f7217005521:   cmp    %rcx,%r10
          ││   │     0x00007f7217005524:   jg     0x00007f72170059d5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
   0.06%  ││   │     0x00007f721700552a:   mov    %r8,%rdx
   0.00%  ││   │     0x00007f721700552d:   shl    $0x3,%rdx
          ││   │     0x00007f7217005531:   mov    %r8,%rbx
          ││   │     0x00007f7217005534:   shl    %rbx
   0.06%  ││   │     0x00007f7217005537:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
          ││   │     0x00007f721700553a:   mov    %rcx,%rdx
          ││   │     0x00007f721700553d:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
          ││   │     0x00007f7217005540:   cmp    %rbx,%rdx
          ││   │     0x00007f7217005543:   jg     0x00007f7217005aab           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
   0.07%  ││   │     0x00007f7217005549:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
   0.00%  ││   │     0x00007f721700554c:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
          ││   │     0x00007f7217005555:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││   │     0x00007f7217005558:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││   │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
   0.08%  ││   │     0x00007f721700555a:   idiv   %r8                          ; implicit exception: deoptimizes
          ││   │                                                               ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   2.42%  ││   │     0x00007f721700555d:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││   │     0x00007f721700555f:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││   │     0x00007f7217005562:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.05%  ││   │     0x00007f721700556b:   mov    %rdx,%rax
   0.01%  ││   │     0x00007f721700556e:   shl    $0x3,%rax
          ││   │     0x00007f7217005572:   shl    %rdx
          ││   │     0x00007f7217005575:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.05%  ││   │     0x00007f7217005578:   mov    %rax,%rdx
   0.02%  ││   │     0x00007f721700557b:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││   │     0x00007f721700557e:   cmp    %rbx,%rdx
          ││   │     0x00007f7217005581:   setg   %dl
   0.05%  ││   │     0x00007f7217005584:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%  ││   │     0x00007f7217005587:   cmp    %rax,%r11
          ││   │     0x00007f721700558a:   setg   %cl
          ││   │     0x00007f721700558d:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.05%  ││   │     0x00007f7217005590:   mov    $0x2,%esi
   0.02%  ││   │     0x00007f7217005595:   mov    %edx,%r9d
          ││   │     0x00007f7217005598:   mov    %r11,%r10
          ││   │     0x00007f721700559b:   mov    %rax,%r11
   0.03%  ││   │     0x00007f721700559e:   xchg   %ax,%ax
   0.02%  ││╭  │     0x00007f72170055a0:   jmp    0x00007f7217005641           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││  │     0x00007f72170055a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││  │     0x00007f72170055b0:   data16 data16 xchg %ax,%ax
          │││  │     0x00007f72170055b4:   nopl   0x0(%rax,%rax,1)
          │││  │     0x00007f72170055bc:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.08%  │││↗ │     0x00007f72170055c0:   test   %r9d,%r9d
          ││││ │     0x00007f72170055c3:   jne    0x00007f7217005a3c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.60%  ││││ │     0x00007f72170055c9:   mov    %r10,%rax
   0.23%  ││││ │     0x00007f72170055cc:   shl    $0x3,%rax
          ││││ │     0x00007f72170055d0:   mov    %r10,%rdx
   0.09%  ││││ │     0x00007f72170055d3:   shl    %rdx
   0.58%  ││││ │     0x00007f72170055d6:   mov    %rax,%rcx
   0.19%  ││││ │     0x00007f72170055d9:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││││ │     0x00007f72170055dc:   nopl   0x0(%rax)
   0.07%  ││││ │     0x00007f72170055e0:   cmp    $0x1,%rcx
          ││││ │     0x00007f72170055e4:   jl     0x00007f7217005a18           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.65%  ││││ │     0x00007f72170055ea:   cmp    %esi,%edi
          ││││ │     0x00007f72170055ec:   jbe    0x00007f7217005baa           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.22%  ││││ │     0x00007f72170055f2:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││││ │     0x00007f72170055f5:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││ │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.08%  ││││ │     0x00007f72170055f7:   idiv   %r8                          ; implicit exception: deoptimizes
          ││││ │                                                               ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
  34.61%  ││││ │     0x00007f72170055fa:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.00%  ││││ │     0x00007f72170055fc:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.02%  ││││ │     0x00007f7217005600:   mov    %r10w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.85%  ││││ │     0x00007f7217005606:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.07%  ││││ │     0x00007f7217005608:   mov    %rdx,%r10
   0.00%  ││││ │     0x00007f721700560b:   shl    $0x3,%r10
   0.03%  ││││ │     0x00007f721700560f:   shl    %rdx
   0.75%  ││││ │     0x00007f7217005612:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.11%  ││││ │     0x00007f7217005615:   cmp    %r10,%rcx
   0.00%  ││││ │     0x00007f7217005618:   setg   %dl
   0.03%  ││││ │     0x00007f721700561b:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.82%  ││││ │     0x00007f721700561e:   mov    %r10,%r11
   0.09%  ││││ │     0x00007f7217005621:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││││ │     0x00007f7217005624:   cmp    %rbx,%r11
   0.01%  ││││ │     0x00007f7217005627:   setg   %r9b
   0.78%  ││││ │     0x00007f721700562b:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.22%  ││││ │     0x00007f721700562f:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
          ││││ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││││ │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          ││││ │     0x00007f7217005636:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││││ │     0x00007f7217005639:   mov    %r10,%r11
   0.67%  ││││ │     0x00007f721700563c:   mov    %rcx,%r10
   0.24%  ││││ │     0x00007f721700563f:   mov    %edx,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││↘│ │     0x00007f7217005641:   test   %ecx,%ecx
          ││ ╰ │     0x00007f7217005643:   je     0x00007f72170055c0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ││   │     0x00007f7217005649:   test   %r11,%r11
          ││   │     0x00007f721700564c:   je     0x00007f7217005b8a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.04%  ││   │     0x00007f7217005652:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
   0.01%  ││   │     0x00007f7217005655:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
          ││   │     0x00007f7217005658:   nopl   0x0(%rax,%rax,1)
          ││   │     0x00007f7217005660:   test   %r9d,%r9d
          ││   │     0x00007f7217005663:   je     0x00007f7217005b6a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.12%  ││   │     0x00007f7217005669:   mov    (%rsp),%rdx
   0.02%  ││   │     0x00007f721700566d:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.01%  ││   │     0x00007f7217005674:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
          ││   │     0x00007f721700567b:   mov    %esi,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.12%  ││   │     0x00007f721700567e:   xchg   %ax,%ax
   0.02%  ││   │     0x00007f7217005680:   test   %ecx,%ecx
          ││  ╭│     0x00007f7217005682:   je     0x00007f721700586e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
          ││  ││     0x00007f7217005688:   test   %r11,%r11
          ││  ││     0x00007f721700568b:   je     0x00007f7217005c8a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
          ││  ││     0x00007f7217005691:   cmp    $0x1,%r11
          ││  ││     0x00007f7217005695:   jge    0x00007f7217005d0d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.12%  ││  ││  ↗  0x00007f721700569b:   mov    0x30(%rsp),%rbp
   0.01%  ││  ││  │  0x00007f72170056a0:   add    $0x38,%rsp
   0.00%  ││  ││  │  0x00007f72170056a4:   mov    0x348(%r15),%rcx
          ││  ││  │  0x00007f72170056ab:   test   %eax,(%rcx)                  ;   {poll_return}
   0.10%  ││  ││  │  0x00007f72170056ad:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
   0.01%  ↘│  ││  │  0x00007f72170056ae:   cmp    $0x1b,%ebp
           │  ││  │  0x00007f72170056b1:   jae    0x00007f7217005af5           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │  ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
           │  ││  │  0x00007f72170056b7:   mov    %rsi,(%rsp)
           │  ││  │  0x00007f72170056bb:   mov    %edi,%esi
   0.05%   │  ││  │  0x00007f72170056bd:   add    0x10(%r13,%rbp,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │  ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
   0.00%   │  ││  │  0x00007f72170056c2:   cmp    $0x40,%esi
           │  │╰  │  0x00007f72170056c5:   jge    0x00007f721700547f
           │  │   │  0x00007f72170056cb:   jmp    0x00007f7217005cec           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
   0.05%   ↘  │   │  0x00007f72170056d0:   mov    %edi,0xc(%rsp)
   0.00%      │   │  0x00007f72170056d4:   mov    %r11,0x18(%rsp)
   0.00%      │   │  0x00007f72170056d9:   mov    %edx,%edi
              │   │  0x00007f72170056db:   nopl   0x0(%rax,%rax,1)
   0.05%      │   │  0x00007f72170056e0:   cmp    $0x20,%eax
              │   │  0x00007f72170056e3:   jge    0x00007f7217005ae9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
   0.01%      │   │  0x00007f72170056e9:   test   %r9d,%r9d
              │   │  0x00007f72170056ec:   je     0x00007f7217005add
              │   │  0x00007f72170056f2:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
              │   │  0x00007f72170056fc:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
   0.04%      │   │  0x00007f72170056ff:   mov    %eax,%edx
   0.00%      │   │  0x00007f7217005701:   shl    $0x3,%edx
              │   │  0x00007f7217005704:   mov    %eax,%r10d
              │   │  0x00007f7217005707:   shl    %r10d
   0.05%      │   │  0x00007f721700570a:   add    %edx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
   0.01%      │   │  0x00007f721700570d:   mov    %r10d,%edx
              │   │  0x00007f7217005710:   shl    $0x3,%edx
              │   │  0x00007f7217005713:   mov    %r10d,%r11d
   0.06%      │   │  0x00007f7217005716:   shl    %r11d
   0.01%      │   │  0x00007f7217005719:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
              │   │  0x00007f721700571c:   nopl   0x0(%rax)
              │   │  0x00007f7217005720:   cmp    $0x1,%r11d
              │   │  0x00007f7217005724:   jl     0x00007f7217005ad1           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.06%      │   │  0x00007f721700572a:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
   0.00%      │   │  0x00007f721700572d:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
              │   │  0x00007f721700572f:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
   0.00%      │   │  0x00007f7217005732:   mov    %esi,%ecx
   0.05%      │   │  0x00007f7217005734:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
              │   │  0x00007f7217005736:   mov    %r8d,%ecx
   0.06%      │   │  0x00007f7217005739:   mov    %edx,%r8d
   0.00%      │   │  0x00007f721700573c:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.06%      │   │  0x00007f721700573f:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
              │   │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.00%      │   │  0x00007f7217005740:   idiv   %r8d                         ; implicit exception: deoptimizes
              │   │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.85%      │   │  0x00007f7217005743:   test   %eax,%eax
              │   │  0x00007f7217005745:   je     0x00007f7217005ac5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
   0.02%      │   │  0x00007f721700574b:   mov    %edx,%ecx
   0.01%      │   │  0x00007f721700574d:   shl    $0x3,%ecx
   0.02%      │   │  0x00007f7217005750:   shl    %edx
   0.02%      │   │  0x00007f7217005752:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.02%      │   │  0x00007f7217005754:   cmp    %ecx,%r10d
              │   │  0x00007f7217005757:   jg     0x00007f7217005ab7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.06%      │   │  0x00007f721700575d:   mov    %r8d,%edx
   0.01%      │   │  0x00007f7217005760:   shl    $0x3,%edx
              │   │  0x00007f7217005763:   mov    %r8d,%ebx
              │   │  0x00007f7217005766:   shl    %ebx
   0.05%      │   │  0x00007f7217005768:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.01%      │   │  0x00007f721700576a:   mov    %ecx,%edx
              │   │  0x00007f721700576c:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.00%      │   │  0x00007f721700576f:   cmp    %ebx,%edx
              │   │  0x00007f7217005771:   jg     0x00007f7217005a9f           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.07%      │   │  0x00007f7217005777:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.00%      │   │  0x00007f721700577a:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
              │   │  0x00007f7217005783:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
              │   │  0x00007f7217005785:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │   │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.05%      │   │  0x00007f7217005786:   idiv   %r8d                         ; implicit exception: deoptimizes
              │   │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.59%      │   │  0x00007f7217005789:   mov    %edx,%esi
   0.00%      │   │  0x00007f721700578b:   shl    $0x3,%esi
   0.03%      │   │  0x00007f721700578e:   shl    %edx
   0.01%      │   │  0x00007f7217005790:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.03%      │   │  0x00007f7217005792:   cmp    %esi,%r11d
              │   │  0x00007f7217005795:   jg     0x00007f72170059f8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.04%      │   │  0x00007f721700579b:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.01%      │   │  0x00007f721700579e:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
              │   │  0x00007f72170057a7:   mov    %esi,%eax
              │   │  0x00007f72170057a9:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.05%      │   │  0x00007f72170057ac:   cmp    %ebx,%eax
   0.01%      │   │  0x00007f72170057ae:   setg   %al
   0.06%      │   │  0x00007f72170057b1:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.06%      │   │  0x00007f72170057b4:   mov    $0x2,%ecx
              │   │  0x00007f72170057b9:   mov    %eax,%r9d
              │   │  0x00007f72170057bc:   mov    %r11d,%r10d
              │   │  0x00007f72170057bf:   mov    %esi,%r11d
   0.06%      │ ╭ │  0x00007f72170057c2:   jmp    0x00007f7217005860           ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │ │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
              │ │ │  0x00007f72170057c7:   data16 data16 nopw 0x0(%rax,%rax,1)
              │ │ │  0x00007f72170057d2:   data16 data16 xchg %ax,%ax
              │ │ │  0x00007f72170057d6:   data16 nopw 0x0(%rax,%rax,1)        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.06%      │ │↗│  0x00007f72170057e0:   mov    %r10d,%eax
   0.24%      │ │││  0x00007f72170057e3:   shl    $0x3,%eax
              │ │││  0x00007f72170057e6:   mov    %r10d,%edx
              │ │││  0x00007f72170057e9:   shl    %edx
   0.07%      │ │││  0x00007f72170057eb:   mov    %eax,%r9d
   0.25%      │ │││  0x00007f72170057ee:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
              │ │││  0x00007f72170057f1:   cmp    $0x1,%r9d
              │ │││  0x00007f72170057f5:   jl     0x00007f7217005a90           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
              │ │││  0x00007f72170057fb:   nopl   0x0(%rax,%rax,1)
   0.07%      │ │││  0x00007f7217005800:   cmp    %ecx,%edi
              │ │││  0x00007f7217005802:   jbe    0x00007f7217005a6b           ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.23%      │ │││  0x00007f7217005808:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
              │ │││  0x00007f721700580b:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
              │ │││  0x00007f721700580c:   idiv   %r8d                         ; implicit exception: deoptimizes
              │ │││                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   6.25%      │ │││  0x00007f721700580f:   mov    %edx,%esi
   0.12%      │ │││  0x00007f7217005811:   shl    $0x3,%esi
   0.06%      │ │││  0x00007f7217005814:   shl    %edx
   0.11%      │ │││  0x00007f7217005816:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.20%      │ │││  0x00007f7217005818:   nopl   0x0(%rax,%rax,1)
   0.07%      │ │││  0x00007f7217005820:   cmp    %esi,%r9d
              │ │││  0x00007f7217005823:   jg     0x00007f7217005cda           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.22%      │ │││  0x00007f7217005829:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.02%      │ │││  0x00007f721700582d:   mov    %r10w,0x10(%r13,%rcx,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.00%      │ │││  0x00007f7217005833:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.05%      │ │││  0x00007f7217005835:   mov    %esi,%r10d
   0.20%      │ │││  0x00007f7217005838:   add    %r9d,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.02%      │ │││  0x00007f721700583b:   cmp    %ebx,%r10d
   0.02%      │ │││  0x00007f721700583e:   setg   %r10b
   0.27%      │ │││  0x00007f7217005842:   movzbl %r10b,%r10d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.32%      │ │││  0x00007f7217005846:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
              │ │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │ │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
              │ │││  0x00007f721700584d:   test   %eax,(%r11)                  ;   {poll}
              │ │││  0x00007f7217005850:   mov    %esi,%r11d
              │ │││  0x00007f7217005853:   mov    %r9d,0x8(%rsp)
   0.33%      │ │││  0x00007f7217005858:   mov    %r10d,%r9d
              │ │││  0x00007f721700585b:   mov    0x8(%rsp),%r10d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │ │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
              │ ↘││  0x00007f7217005860:   test   %r9d,%r9d
              │  ╰│  0x00007f7217005863:   je     0x00007f72170057e0
              │   │  0x00007f7217005869:   jmp    0x00007f7217005919           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
              ↘   │  0x00007f721700586e:   mov    %esi,%r10d
                  │  0x00007f7217005871:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.07%          │  0x00007f7217005874:   cmp    %r10d,%edi
                  │  0x00007f7217005877:   jbe    0x00007f7217005a4a
   0.00%          │  0x00007f721700587d:   movzwl 0x10(%r13,%r10,2),%r11d      ;*caload {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                  │  0x00007f7217005883:   cmp    $0x39,%r11d
                  │  0x00007f7217005887:   je     0x00007f721700590e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                  │  0x00007f721700588d:   cmp    %r10d,%edi
                  │  0x00007f7217005890:   jbe    0x00007f7217005c4a           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.04%          │  0x00007f7217005896:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.00%          │  0x00007f7217005899:   mov    %r11w,0x10(%r13,%r10,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                  │  0x00007f721700589f:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
                  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                  ╰  0x00007f72170058a3:   jmp    0x00007f721700569b
                     0x00007f72170058a8:   data16 data16 nopw 0x0(%rax,%rax,1)
                     0x00007f72170058b3:   data16 data16 xchg %ax,%ax
....................................................................................................
  63.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  63.58%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 912 
   7.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   5.88%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 937 
   4.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   4.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   2.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   1.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   1.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   1.13%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.09%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   0.81%               kernel  [unknown] 
   0.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   0.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 961 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   0.20%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 912 
   0.13%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   2.23%  <...other 490 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.78%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 912 
  24.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::plus_operator, version 2, compile id 939 
   5.88%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 937 
   2.35%               kernel  [unknown] 
   1.13%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.09%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_plus_operator_jmhTest::plus_operator_avgt_jmhStub, version 5, compile id 961 
   0.10%                       <unknown> 
   0.06%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  HeapRegion::clear_cardtable 
   0.01%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%            libjvm.so  JVMCIRuntime::new_array_common 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.44%  <...other 152 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.65%       jvmci, level 4
   2.35%               kernel
   2.22%         runtime stub
   0.44%            libjvm.so
   0.12%         libc-2.31.so
   0.10%                     
   0.04%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%           ld-2.31.so
   0.02%               [vdso]
   0.01%       hsdis-amd64.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%         libm-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_buffer
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 25.00% complete, ETA 00:11:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 865.595 ns/op
# Warmup Iteration   2: 818.009 ns/op
# Warmup Iteration   3: 809.652 ns/op
# Warmup Iteration   4: 809.580 ns/op
# Warmup Iteration   5: 811.364 ns/op
Iteration   1: 810.147 ns/op
Iteration   2: 809.522 ns/op
Iteration   3: 809.106 ns/op
Iteration   4: 809.420 ns/op
Iteration   5: 809.622 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_buffer":
  809.563 ±(99.9%) 1.461 ns/op [Average]
  (min, avg, max) = (809.106, 809.563, 810.147), stdev = 0.379
  CI (99.9%): [808.102, 811.024] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_buffer:·asm":
PrintAssembly processed: 211180 total address lines.
Perf output processed (skipped 58.608 seconds):
 Column 1: cycles (51110 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 

                        #           [sp+0x40]  (sp of caller)
                        0x00007f85b6ffd560:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                        0x00007f85b6ffd564:   movabs $0x800000000,%r12
                        0x00007f85b6ffd56e:   add    %r12,%r10
                        0x00007f85b6ffd571:   xor    %r12,%r12
                        0x00007f85b6ffd574:   cmp    %r10,%rax
                        0x00007f85b6ffd577:   jne    0x00007f85af4ff780           ;   {runtime_call ic_miss_stub}
                        0x00007f85b6ffd57d:   nop
                        0x00007f85b6ffd57e:   xchg   %ax,%ax
                      [Verified Entry Point]
   0.03%                0x00007f85b6ffd580:   mov    %eax,-0x14000(%rsp)
   0.05%                0x00007f85b6ffd587:   sub    $0x38,%rsp
   0.05%                0x00007f85b6ffd58b:   mov    %rbp,0x30(%rsp)
   0.00%                0x00007f85b6ffd590:   mov    %edx,%r10d
   0.00%                0x00007f85b6ffd593:   mov    %rcx,%r11
   0.05%                0x00007f85b6ffd596:   lea    0x15(%r10),%ecx              ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
   0.04%                0x00007f85b6ffd59a:   nopw   0x0(%rax,%rax,1)
                        0x00007f85b6ffd5a0:   cmp    $0x54,%ecx
                        0x00007f85b6ffd5a3:   jae    0x00007f85b6ffde85           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
   0.00%                0x00007f85b6ffd5a9:   movabs $0xfffffffffffff,%rcx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@4 (line 820)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.07%                0x00007f85b6ffd5b3:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@7 (line 820)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%                0x00007f85b6ffd5b6:   movabs $0x3ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                        0x00007f85b6ffd5c0:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                        0x00007f85b6ffd5c3:   vmovq  %rcx,%xmm0
   0.04%                0x00007f85b6ffd5c8:   vsubsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f85b6ffd540
                                                                                  ;   {section_word}
   0.06%                0x00007f85b6ffd5d0:   vmulsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f85b6ffd548
                                                                                  ;   {section_word}
   0.00%                0x00007f85b6ffd5d8:   vaddsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f85b6ffd550
                                                                                  ;   {section_word}
   0.00%                0x00007f85b6ffd5e0:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.08%                0x00007f85b6ffd5e5:   vmulsd -0x95(%rip),%xmm1,%xmm1        # 0x00007f85b6ffd558
                                                                                  ;   {section_word}
                        0x00007f85b6ffd5ed:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%                0x00007f85b6ffd5f1:   vmovq  %xmm0,%rcx                   ;* unwind (locked if synchronized)
                                                                                  ; - java.lang.Double::doubleToRawLongBits@-3
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%                0x00007f85b6ffd5f6:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%                0x00007f85b6ffd600:   test   %rax,%rcx
                        0x00007f85b6ffd603:   je     0x00007f85b6ffde65           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%                0x00007f85b6ffd609:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%                0x00007f85b6ffd613:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%                0x00007f85b6ffd616:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%                0x00007f85b6ffd61a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                        0x00007f85b6ffd61c:   nopl   0x0(%rax)
                        0x00007f85b6ffd620:   cmp    $0x3ff,%eax
                        0x00007f85b6ffd626:   jae    0x00007f85b6ffde25           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%                0x00007f85b6ffd62c:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%                0x00007f85b6ffd636:   test   %rax,%rcx
                        0x00007f85b6ffd639:   je     0x00007f85b6ffdd97           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                        0x00007f85b6ffd63f:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                                  ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
   0.00%                0x00007f85b6ffd644:   mov    $0x35,%ecx
   0.04%                0x00007f85b6ffd649:   mov    %ecx,%edi
   0.06%                0x00007f85b6ffd64b:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
   0.00%                0x00007f85b6ffd64d:   cmp    $0x1,%edi
                        0x00007f85b6ffd650:   je     0x00007f85b6ffddf4           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
   0.01%                0x00007f85b6ffd656:   mov    %edi,%ecx
   0.05%                0x00007f85b6ffd658:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
   0.04%                0x00007f85b6ffd65b:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
                        0x00007f85b6ffd65d:   cmp    $0x1,%ecx
   0.00%                0x00007f85b6ffd660:   mov    $0x0,%eax
   0.05%                0x00007f85b6ffd665:   mov    %ecx,%ebp
   0.04%                0x00007f85b6ffd667:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.lang.Math::max@2 (line 1562)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
                        0x00007f85b6ffd66a:   mov    %ebp,%ecx
                        0x00007f85b6ffd66c:   add    %r10d,%ecx
   0.04%                0x00007f85b6ffd66f:   inc    %ecx
   0.06%                0x00007f85b6ffd671:   mov    %ecx,%eax
                        0x00007f85b6ffd673:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
                        0x00007f85b6ffd676:   add    %ebx,%ecx
   0.03%                0x00007f85b6ffd678:   lea    -0x34(%rcx),%ecx
   0.04%                0x00007f85b6ffd67b:   cmp    %ebp,%ecx
   0.00%                0x00007f85b6ffd67d:   mov    %ecx,%edx
   0.00%                0x00007f85b6ffd67f:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.lang.Math::min@2 (line 1649)
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.04%                0x00007f85b6ffd682:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.05%                0x00007f85b6ffd684:   test   %eax,%eax
                        0x00007f85b6ffd686:   jge    0x00007f85b6ffddb5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
                        0x00007f85b6ffd68c:   mov    %r10d,0x24(%rsp)
   0.01%                0x00007f85b6ffd691:   movabs $0x7ff5b2a08,%r13            ;   {oop([I{0x00000007ff5b2a08})}
   0.05%                0x00007f85b6ffd69b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.05%                0x00007f85b6ffd69f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.00%                0x00007f85b6ffd6a1:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
   0.00%                0x00007f85b6ffd6a3:   mov    %ecx,%r10d
   0.07%                0x00007f85b6ffd6a6:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
   0.04%                0x00007f85b6ffd6a9:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
                        0x00007f85b6ffd6ac:   cmp    $0x40,%r10d
                        0x00007f85b6ffd6b0:   jge    0x00007f85b6ffdb67           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
   0.00%                0x00007f85b6ffd6b6:   mov    %r8d,0x20(%rsp)
   0.06%                0x00007f85b6ffd6bb:   mov    %ebp,%r8d
   0.04%                0x00007f85b6ffd6be:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.00%                0x00007f85b6ffd6c1:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
                        0x00007f85b6ffd6c4:   mov    %r8d,%eax
   0.04%                0x00007f85b6ffd6c7:   add    %r14d,%eax
   0.06%                0x00007f85b6ffd6ca:   inc    %eax
   0.00%                0x00007f85b6ffd6cc:   cmp    $0x40,%eax
                        0x00007f85b6ffd6cf:   jge    0x00007f85b6ffdd6b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.00%                0x00007f85b6ffd6d5:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
                                                                                  ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
   0.06%                0x00007f85b6ffd6d9:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007f85b6ffdeb6
   0.03%                0x00007f85b6ffd6e1:   cmp    $0x2,%edx
                        0x00007f85b6ffd6e4:   jb     0x00007f85b6ffde45           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
                        0x00007f85b6ffd6ea:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
                        0x00007f85b6ffd6ee:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
   0.04%                0x00007f85b6ffd6f2:   cmp    $0x1b,%ebp
          ╭             0x00007f85b6ffd6f5:   jl     0x00007f85b6ffdb18           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
   0.05%  │             0x00007f85b6ffd6fb:   mov    %rsi,(%rsp)                  ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          │          ↗  0x00007f85b6ffd6ff:   mov    %ecx,%esi
   0.04%  │          │  0x00007f85b6ffd701:   mov    %r14d,%r13d
          │          │  0x00007f85b6ffd704:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
   0.04%  │          │  0x00007f85b6ffd708:   mov    %ebx,%ecx
   0.00%  │          │  0x00007f85b6ffd70a:   mov    %ebx,0x14(%rsp)
   0.04%  │          │  0x00007f85b6ffd70e:   mov    %r11,%rbx
          │          │  0x00007f85b6ffd711:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.09%  │          │  0x00007f85b6ffd714:   cmp    $0x20,%r10d
          │╭         │  0x00007f85b6ffd718:   jl     0x00007f85b6ffd8ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
   0.00%  ││         │  0x00007f85b6ffd71e:   xchg   %ax,%ax
   0.05%  ││         │  0x00007f85b6ffd720:   test   %r9d,%r9d
          ││         │  0x00007f85b6ffd723:   je     0x00007f85b6ffddd3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
          ││         │  0x00007f85b6ffd729:   mov    %edi,0x10(%rsp)
          ││         │  0x00007f85b6ffd72d:   mov    %r11,0x18(%rsp)
          ││         │  0x00007f85b6ffd732:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
   0.04%  ││         │  0x00007f85b6ffd73c:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
          ││         │  0x00007f85b6ffd740:   mov    %rax,%r10
   0.00%  ││         │  0x00007f85b6ffd743:   shl    $0x3,%r10
          ││         │  0x00007f85b6ffd747:   mov    %rax,%r11
   0.04%  ││         │  0x00007f85b6ffd74a:   shl    %r11
   0.00%  ││         │  0x00007f85b6ffd74d:   add    %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
          ││         │  0x00007f85b6ffd750:   mov    %r10,%r11
          ││         │  0x00007f85b6ffd753:   shl    $0x3,%r11
   0.05%  ││         │  0x00007f85b6ffd757:   mov    %r10,%rdi
          ││         │  0x00007f85b6ffd75a:   shl    %rdi
          ││         │  0x00007f85b6ffd75d:   add    %rdi,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││         │  0x00007f85b6ffd760:   cmp    $0x1,%r11
          ││         │  0x00007f85b6ffd764:   jl     0x00007f85b6ffdca9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.05%  ││         │  0x00007f85b6ffd76a:   mov    %edx,%edi
          ││         │  0x00007f85b6ffd76c:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
          ││         │  0x00007f85b6ffd770:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
          ││         │  0x00007f85b6ffd774:   mov    %esi,%ecx
   0.05%  ││         │  0x00007f85b6ffd776:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
          ││         │  0x00007f85b6ffd779:   mov    %r8d,%ecx
   0.03%  ││         │  0x00007f85b6ffd77c:   mov    %rdx,%r8
          ││         │  0x00007f85b6ffd77f:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
   0.03%  ││         │  0x00007f85b6ffd782:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
          ││         │  0x00007f85b6ffd785:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││         │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          ││         │  0x00007f85b6ffd787:   idiv   %r8                          ; implicit exception: deoptimizes
          ││         │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.68%  ││         │  0x00007f85b6ffd78a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
   0.04%  ││         │  0x00007f85b6ffd78c:   test   %eax,%eax
          ││         │  0x00007f85b6ffd78e:   je     0x00007f85b6ffdd8b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          ││         │  0x00007f85b6ffd794:   mov    %rdx,%rcx
          ││         │  0x00007f85b6ffd797:   shl    $0x3,%rcx
          ││         │  0x00007f85b6ffd79b:   shl    %rdx
   0.04%  ││         │  0x00007f85b6ffd79e:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          ││         │  0x00007f85b6ffd7a1:   cmp    %rcx,%r10
          ││         │  0x00007f85b6ffd7a4:   jg     0x00007f85b6ffdb95           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
          ││         │  0x00007f85b6ffd7aa:   mov    %r8,%rdx
          ││         │  0x00007f85b6ffd7ad:   shl    $0x3,%rdx
   0.04%  ││         │  0x00007f85b6ffd7b1:   mov    %r8,%rbx
          ││         │  0x00007f85b6ffd7b4:   shl    %rbx
          ││         │  0x00007f85b6ffd7b7:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
          ││         │  0x00007f85b6ffd7ba:   mov    %rcx,%rdx
   0.04%  ││         │  0x00007f85b6ffd7bd:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
          ││         │  0x00007f85b6ffd7c0:   cmp    %rbx,%rdx
          ││         │  0x00007f85b6ffd7c3:   jg     0x00007f85b6ffdc76           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
          ││         │  0x00007f85b6ffd7c9:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
          ││         │  0x00007f85b6ffd7cc:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.05%  ││         │  0x00007f85b6ffd7d5:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││         │  0x00007f85b6ffd7d8:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││         │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
          ││         │  0x00007f85b6ffd7da:   idiv   %r8                          ; implicit exception: deoptimizes
          ││         │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.76%  ││         │  0x00007f85b6ffd7dd:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.04%  ││         │  0x00007f85b6ffd7df:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││         │  0x00007f85b6ffd7e2:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.02%  ││         │  0x00007f85b6ffd7eb:   mov    %rdx,%rax
   0.00%  ││         │  0x00007f85b6ffd7ee:   shl    $0x3,%rax
   0.02%  ││         │  0x00007f85b6ffd7f2:   shl    %rdx
          ││         │  0x00007f85b6ffd7f5:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.03%  ││         │  0x00007f85b6ffd7f8:   mov    %rax,%rdx
   0.00%  ││         │  0x00007f85b6ffd7fb:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.02%  ││         │  0x00007f85b6ffd7fe:   cmp    %rbx,%rdx
          ││         │  0x00007f85b6ffd801:   setg   %dl
   0.02%  ││         │  0x00007f85b6ffd804:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%  ││         │  0x00007f85b6ffd807:   cmp    %rax,%r11
   0.01%  ││         │  0x00007f85b6ffd80a:   setg   %cl
          ││         │  0x00007f85b6ffd80d:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.01%  ││         │  0x00007f85b6ffd810:   mov    $0x2,%esi
   0.01%  ││         │  0x00007f85b6ffd815:   mov    %edx,%r9d
   0.01%  ││         │  0x00007f85b6ffd818:   mov    %r11,%r10
          ││         │  0x00007f85b6ffd81b:   mov    %rax,%r11
   0.01%  ││         │  0x00007f85b6ffd81e:   xchg   %ax,%ax
   0.02%  ││╭        │  0x00007f85b6ffd820:   jmp    0x00007f85b6ffd8c1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││        │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││        │  0x00007f85b6ffd825:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││        │  0x00007f85b6ffd830:   data16 data16 xchg %ax,%ax
          │││        │  0x00007f85b6ffd834:   nopl   0x0(%rax,%rax,1)
          │││        │  0x00007f85b6ffd83c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││        │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.05%  │││↗       │  0x00007f85b6ffd840:   test   %r9d,%r9d
          ││││       │  0x00007f85b6ffd843:   jne    0x00007f85b6ffdd47           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.50%  ││││       │  0x00007f85b6ffd849:   mov    %r10,%rax
   0.19%  ││││       │  0x00007f85b6ffd84c:   shl    $0x3,%rax
          ││││       │  0x00007f85b6ffd850:   mov    %r10,%rdx
   0.06%  ││││       │  0x00007f85b6ffd853:   shl    %rdx
   0.47%  ││││       │  0x00007f85b6ffd856:   mov    %rax,%rcx
   0.17%  ││││       │  0x00007f85b6ffd859:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││││       │  0x00007f85b6ffd85c:   nopl   0x0(%rax)
   0.07%  ││││       │  0x00007f85b6ffd860:   cmp    $0x1,%rcx
          ││││       │  0x00007f85b6ffd864:   jl     0x00007f85b6ffdea5           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.44%  ││││       │  0x00007f85b6ffd86a:   cmp    %esi,%edi
          ││││       │  0x00007f85b6ffd86c:   jbe    0x00007f85b6ffde12           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.20%  ││││       │  0x00007f85b6ffd872:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
   0.00%  ││││       │  0x00007f85b6ffd875:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││││       │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.05%  ││││       │  0x00007f85b6ffd877:   idiv   %r8                          ; implicit exception: deoptimizes
          ││││       │                                                            ; ImmutableOopMap {r13=Oop [0]=Oop }
  26.84%  ││││       │  0x00007f85b6ffd87a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.00%  ││││       │  0x00007f85b6ffd87c:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.02%  ││││       │  0x00007f85b6ffd880:   mov    %r10w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.62%  ││││       │  0x00007f85b6ffd886:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.06%  ││││       │  0x00007f85b6ffd888:   mov    %rdx,%r10
          ││││       │  0x00007f85b6ffd88b:   shl    $0x3,%r10
   0.02%  ││││       │  0x00007f85b6ffd88f:   shl    %rdx
   0.58%  ││││       │  0x00007f85b6ffd892:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.07%  ││││       │  0x00007f85b6ffd895:   cmp    %r10,%rcx
   0.00%  ││││       │  0x00007f85b6ffd898:   setg   %dl
   0.02%  ││││       │  0x00007f85b6ffd89b:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.62%  ││││       │  0x00007f85b6ffd89e:   mov    %r10,%r11
   0.09%  ││││       │  0x00007f85b6ffd8a1:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││││       │  0x00007f85b6ffd8a4:   cmp    %rbx,%r11
   0.02%  ││││       │  0x00007f85b6ffd8a7:   setg   %r9b
   0.60%  ││││       │  0x00007f85b6ffd8ab:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.17%  ││││       │  0x00007f85b6ffd8af:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          ││││       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││││       │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
   0.00%  ││││       │  0x00007f85b6ffd8b6:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││││       │  0x00007f85b6ffd8b9:   mov    %r10,%r11
   0.52%  ││││       │  0x00007f85b6ffd8bc:   mov    %rcx,%r10
   0.18%  ││││       │  0x00007f85b6ffd8bf:   mov    %edx,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.02%  ││↘│       │  0x00007f85b6ffd8c1:   test   %ecx,%ecx
          ││ ╰       │  0x00007f85b6ffd8c3:   je     0x00007f85b6ffd840
          ││  ╭      │  0x00007f85b6ffd8c9:   jmp    0x00007f85b6ffda6e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │↘  │      │  0x00007f85b6ffd8ce:   mov    %edi,0x10(%rsp)
          │   │      │  0x00007f85b6ffd8d2:   mov    %r11,0x18(%rsp)
   0.00%  │   │      │  0x00007f85b6ffd8d7:   mov    %edx,%edi
   0.04%  │   │      │  0x00007f85b6ffd8d9:   nopl   0x0(%rax)
          │   │      │  0x00007f85b6ffd8e0:   cmp    $0x20,%eax
          │   │      │  0x00007f85b6ffd8e3:   jge    0x00007f85b6ffdd29           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
          │   │      │  0x00007f85b6ffd8e9:   test   %r9d,%r9d
          │   │      │  0x00007f85b6ffd8ec:   je     0x00007f85b6ffdd1d
   0.01%  │   │      │  0x00007f85b6ffd8f2:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
   0.05%  │   │      │  0x00007f85b6ffd8fc:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
          │   │      │  0x00007f85b6ffd8ff:   mov    %eax,%edx
          │   │      │  0x00007f85b6ffd901:   shl    $0x3,%edx
   0.00%  │   │      │  0x00007f85b6ffd904:   mov    %eax,%r10d
   0.06%  │   │      │  0x00007f85b6ffd907:   shl    %r10d
          │   │      │  0x00007f85b6ffd90a:   add    %edx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
          │   │      │  0x00007f85b6ffd90d:   mov    %r10d,%edx
          │   │      │  0x00007f85b6ffd910:   shl    $0x3,%edx
   0.06%  │   │      │  0x00007f85b6ffd913:   mov    %r10d,%r11d
          │   │      │  0x00007f85b6ffd916:   shl    %r11d
          │   │      │  0x00007f85b6ffd919:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.00%  │   │      │  0x00007f85b6ffd91c:   nopl   0x0(%rax)
   0.04%  │   │      │  0x00007f85b6ffd920:   cmp    $0x1,%r11d
          │   │      │  0x00007f85b6ffd924:   jl     0x00007f85b6ffdd11           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │   │      │  0x00007f85b6ffd92a:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
          │   │      │  0x00007f85b6ffd92d:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
          │   │      │  0x00007f85b6ffd92f:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
   0.05%  │   │      │  0x00007f85b6ffd932:   mov    %esi,%ecx
          │   │      │  0x00007f85b6ffd934:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.03%  │   │      │  0x00007f85b6ffd936:   mov    %r8d,%ecx
          │   │      │  0x00007f85b6ffd939:   mov    %edx,%r8d
          │   │      │  0x00007f85b6ffd93c:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.05%  │   │      │  0x00007f85b6ffd93f:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │   │      │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          │   │      │  0x00007f85b6ffd940:   idiv   %r8d                         ; implicit exception: deoptimizes
          │   │      │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.12%  │   │      │  0x00007f85b6ffd943:   test   %eax,%eax
          │   │      │  0x00007f85b6ffd945:   je     0x00007f85b6ffdde8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
          │   │      │  0x00007f85b6ffd94b:   mov    %edx,%ecx
   0.00%  │   │      │  0x00007f85b6ffd94d:   shl    $0x3,%ecx
   0.03%  │   │      │  0x00007f85b6ffd950:   shl    %edx
   0.00%  │   │      │  0x00007f85b6ffd952:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
          │   │      │  0x00007f85b6ffd954:   cmp    %ecx,%r10d
          │   │      │  0x00007f85b6ffd957:   jg     0x00007f85b6ffdce5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.00%  │   │      │  0x00007f85b6ffd95d:   mov    %r8d,%edx
   0.05%  │   │      │  0x00007f85b6ffd960:   shl    $0x3,%edx
          │   │      │  0x00007f85b6ffd963:   mov    %r8d,%ebx
          │   │      │  0x00007f85b6ffd966:   shl    %ebx
          │   │      │  0x00007f85b6ffd968:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.04%  │   │      │  0x00007f85b6ffd96a:   mov    %ecx,%edx
          │   │      │  0x00007f85b6ffd96c:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
          │   │      │  0x00007f85b6ffd96f:   cmp    %ebx,%edx
          │   │      │  0x00007f85b6ffd971:   jg     0x00007f85b6ffdcd5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
          │   │      │  0x00007f85b6ffd977:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.04%  │   │      │  0x00007f85b6ffd97a:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │   │      │  0x00007f85b6ffd983:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │   │      │  0x00007f85b6ffd985:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │   │      │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.01%  │   │      │  0x00007f85b6ffd986:   idiv   %r8d                         ; implicit exception: deoptimizes
          │   │      │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.84%  │   │      │  0x00007f85b6ffd989:   mov    %edx,%esi
          │   │      │  0x00007f85b6ffd98b:   shl    $0x3,%esi
   0.01%  │   │      │  0x00007f85b6ffd98e:   shl    %edx
   0.00%  │   │      │  0x00007f85b6ffd990:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.03%  │   │      │  0x00007f85b6ffd992:   cmp    %esi,%r11d
          │   │      │  0x00007f85b6ffd995:   jg     0x00007f85b6ffdcb5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.03%  │   │      │  0x00007f85b6ffd99b:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.01%  │   │      │  0x00007f85b6ffd99e:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │   │      │  0x00007f85b6ffd9a7:   mov    %esi,%eax
   0.00%  │   │      │  0x00007f85b6ffd9a9:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.04%  │   │      │  0x00007f85b6ffd9ac:   cmp    %ebx,%eax
   0.00%  │   │      │  0x00007f85b6ffd9ae:   setg   %al
   0.04%  │   │      │  0x00007f85b6ffd9b1:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │   │      │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.04%  │   │      │  0x00007f85b6ffd9b4:   mov    $0x2,%ecx
          │   │      │  0x00007f85b6ffd9b9:   mov    %eax,%r9d
          │   │      │  0x00007f85b6ffd9bc:   mov    %r11d,%r10d
          │   │      │  0x00007f85b6ffd9bf:   mov    %esi,%r11d
   0.05%  │   │╭     │  0x00007f85b6ffd9c2:   jmp    0x00007f85b6ffda60           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │   ││     │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │   ││     │  0x00007f85b6ffd9c7:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   ││     │  0x00007f85b6ffd9d2:   data16 data16 xchg %ax,%ax
          │   ││     │  0x00007f85b6ffd9d6:   data16 nopw 0x0(%rax,%rax,1)        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   ││     │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.04%  │   ││↗    │  0x00007f85b6ffd9e0:   mov    %r10d,%eax
   0.21%  │   │││    │  0x00007f85b6ffd9e3:   shl    $0x3,%eax
          │   │││    │  0x00007f85b6ffd9e6:   mov    %r10d,%edx
          │   │││    │  0x00007f85b6ffd9e9:   shl    %edx
   0.06%  │   │││    │  0x00007f85b6ffd9eb:   mov    %eax,%r9d
   0.19%  │   │││    │  0x00007f85b6ffd9ee:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │   │││    │  0x00007f85b6ffd9f1:   cmp    $0x1,%r9d
          │   │││    │  0x00007f85b6ffd9f5:   jl     0x00007f85b6ffdc97           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │   │││    │  0x00007f85b6ffd9fb:   nopl   0x0(%rax,%rax,1)
   0.05%  │   │││    │  0x00007f85b6ffda00:   cmp    %ecx,%edi
          │   │││    │  0x00007f85b6ffda02:   jbe    0x00007f85b6ffdc85           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.18%  │   │││    │  0x00007f85b6ffda08:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │   │││    │  0x00007f85b6ffda0b:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │   │││    │  0x00007f85b6ffda0c:   idiv   %r8d                         ; implicit exception: deoptimizes
          │   │││    │                                                            ; ImmutableOopMap {r13=Oop [0]=Oop }
   5.02%  │   │││    │  0x00007f85b6ffda0f:   mov    %edx,%esi
   0.10%  │   │││    │  0x00007f85b6ffda11:   shl    $0x3,%esi
   0.07%  │   │││    │  0x00007f85b6ffda14:   shl    %edx
   0.07%  │   │││    │  0x00007f85b6ffda16:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.15%  │   │││    │  0x00007f85b6ffda18:   nopl   0x0(%rax,%rax,1)
   0.05%  │   │││    │  0x00007f85b6ffda20:   cmp    %esi,%r9d
          │   │││    │  0x00007f85b6ffda23:   jg     0x00007f85b6ffdbb8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.17%  │   │││    │  0x00007f85b6ffda29:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.03%  │   │││    │  0x00007f85b6ffda2d:   mov    %r10w,0x10(%r13,%rcx,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.00%  │   │││    │  0x00007f85b6ffda33:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.04%  │   │││    │  0x00007f85b6ffda35:   mov    %esi,%r10d
   0.17%  │   │││    │  0x00007f85b6ffda38:   add    %r9d,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.04%  │   │││    │  0x00007f85b6ffda3b:   cmp    %ebx,%r10d
   0.02%  │   │││    │  0x00007f85b6ffda3e:   setg   %r10b
   0.23%  │   │││    │  0x00007f85b6ffda42:   movzbl %r10b,%r10d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.23%  │   │││    │  0x00007f85b6ffda46:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          │   │││    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
          │   │││    │  0x00007f85b6ffda4d:   test   %eax,(%r11)                  ;   {poll}
          │   │││    │  0x00007f85b6ffda50:   mov    %esi,%r11d
          │   │││    │  0x00007f85b6ffda53:   mov    %r9d,0xc(%rsp)
   0.20%  │   │││    │  0x00007f85b6ffda58:   mov    %r10d,%r9d
          │   │││    │  0x00007f85b6ffda5b:   mov    0xc(%rsp),%r10d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │   │││    │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
   0.00%  │   │↘│    │  0x00007f85b6ffda60:   test   %r9d,%r9d
          │   │ ╰    │  0x00007f85b6ffda63:   je     0x00007f85b6ffd9e0
          │   │  ╭   │  0x00007f85b6ffda69:   jmp    0x00007f85b6ffdacf           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   │  │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.04%  │   ↘  │   │  0x00007f85b6ffda6e:   test   %r11,%r11
          │      │   │  0x00007f85b6ffda71:   je     0x00007f85b6ffdc56           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │      │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.00%  │      │   │  0x00007f85b6ffda77:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │      │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
          │      │   │  0x00007f85b6ffda7a:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │      │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
          │      │   │  0x00007f85b6ffda7d:   mov    %ecx,%r10d
   0.04%  │      │   │  0x00007f85b6ffda80:   mov    %esi,%ecx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │      │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
   0.01%  │      │ ↗ │  0x00007f85b6ffda82:   test   %r9d,%r9d
          │      │ │ │  0x00007f85b6ffda85:   je     0x00007f85b6ffdbdd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │      │ │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.05%  │      │ │ │  0x00007f85b6ffda8b:   mov    (%rsp),%rdx
          │      │ │ │  0x00007f85b6ffda8f:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
          │      │ │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.03%  │      │ │ │  0x00007f85b6ffda96:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
          │      │ │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.01%  │      │ │ │  0x00007f85b6ffda9d:   mov    %ecx,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
          │      │ │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.05%  │      │ │ │  0x00007f85b6ffdaa0:   test   %r10d,%r10d
          │      │╭│ │  0x00007f85b6ffdaa3:   je     0x00007f85b6ffdaec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │      │││ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
          │      │││ │  0x00007f85b6ffdaa9:   test   %r11,%r11
          │      │││ │  0x00007f85b6ffdaac:   je     0x00007f85b6ffdc47           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │      │││ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
   0.04%  │      │││ │  0x00007f85b6ffdab2:   cmp    $0x1,%r11
          │      │││ │  0x00007f85b6ffdab6:   jge    0x00007f85b6ffdd35           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │      │││ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.01%  │      │││↗│  0x00007f85b6ffdabc:   mov    0x30(%rsp),%rbp
          │      │││││  0x00007f85b6ffdac1:   add    $0x38,%rsp
   0.05%  │      │││││  0x00007f85b6ffdac5:   mov    0x348(%r15),%rcx
   0.04%  │      │││││  0x00007f85b6ffdacc:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%  │      │││││  0x00007f85b6ffdace:   ret                                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
   0.05%  │      ↘││││  0x00007f85b6ffdacf:   test   %r11d,%r11d
          │       ││││  0x00007f85b6ffdad2:   je     0x00007f85b6ffdcf1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │       ││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@714 (line 649)
          │       ││││  0x00007f85b6ffdad8:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │       ││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@704 (line 648)
          │       ││││  0x00007f85b6ffdadb:   sub    %ebx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │       ││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@707 (line 648)
          │       ││││  0x00007f85b6ffdade:   movslq %r11d,%r10                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │       ││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@708 (line 648)
   0.04%  │       ││││  0x00007f85b6ffdae1:   mov    %r10,%r11
          │       ││││  0x00007f85b6ffdae4:   mov    $0x0,%r10d
          │       │╰││  0x00007f85b6ffdaea:   jmp    0x00007f85b6ffda82           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │       │ ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
          │       ↘ ││  0x00007f85b6ffdaec:   mov    %ecx,%r8d
          │         ││  0x00007f85b6ffdaef:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │         ││  0x00007f85b6ffdaf2:   cmp    %r8d,%edi
          │         ││  0x00007f85b6ffdaf5:   jbe    0x00007f85b6ffdc38           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.05%  │         ││  0x00007f85b6ffdafb:   movzwl 0x10(%r13,%r8,2),%ebx        ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │         ││  0x00007f85b6ffdb01:   cmp    $0x39,%ebx
          │         ││  0x00007f85b6ffdb04:   je     0x00007f85b6ffdbfd           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │         ││  0x00007f85b6ffdb0a:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │         ││  0x00007f85b6ffdb0c:   mov    %bx,0x10(%r13,%r8,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.07%  │         ││  0x00007f85b6ffdb12:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
          │         ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │         ╰│  0x00007f85b6ffdb16:   jmp    0x00007f85b6ffdabc           ;*return {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1508 (line 781)
          ↘          │  0x00007f85b6ffdb18:   nopl   0x0(%rax,%rax,1)
                     │  0x00007f85b6ffdb20:   cmp    $0x1b,%ebp
                     │  0x00007f85b6ffdb23:   jae    0x00007f85b6ffdc1e           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
   0.00%             │  0x00007f85b6ffdb29:   mov    %rsi,(%rsp)
   0.05%             │  0x00007f85b6ffdb2d:   mov    %edi,%esi
                     │  0x00007f85b6ffdb2f:   add    0x10(%r13,%rbp,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
                     │  0x00007f85b6ffdb34:   cmp    $0x40,%esi
                     ╰  0x00007f85b6ffdb37:   jge    0x00007f85b6ffd6ff
                        0x00007f85b6ffdb3d:   mov    $0xffffffed,%r10d
                        0x00007f85b6ffdb43:   mov    %r11,0x18(%rsp)
                        0x00007f85b6ffdb48:   mov    (%rsp),%rdx
                        0x00007f85b6ffdb4c:   mov    $0x610,%r11
                        0x00007f85b6ffdb53:   mov    %r10d,0x370(%r15)            ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
....................................................................................................
  46.85%  <total for region 1>

....[Hottest Regions]...............................................................................
  46.85%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 
   8.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   6.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   5.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   4.38%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 788 
   3.70%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   2.07%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 823 
   2.05%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 823 
   2.00%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 804 
   1.72%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 805 
   1.70%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 804 
   1.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   1.29%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 805 
   1.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   1.24%               kernel  [unknown] 
   1.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   0.90%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 823 
   0.50%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   4.06%  <...other 392 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  46.85%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 
  28.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 806 
   5.28%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 823 
   4.38%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 788 
   4.34%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 804 
   3.70%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.49%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 805 
   2.30%               kernel  [unknown] 
   0.66%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.19%         runtime stub  StubRoutines::jshort_arraycopy 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_string_buffer_jmhTest::string_buffer_avgt_jmhStub, version 5, compile id 826 
   0.07%                       <unknown> 
   0.05%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.40%  <...other 131 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.50%       jvmci, level 4
   4.55%         runtime stub
   2.30%               kernel
   0.40%            libjvm.so
   0.10%         libc-2.31.so
   0.07%                     
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_buffer
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 37.50% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1022.896 ns/op
# Warmup Iteration   2: 928.518 ns/op
# Warmup Iteration   3: 918.715 ns/op
# Warmup Iteration   4: 918.850 ns/op
# Warmup Iteration   5: 918.711 ns/op
Iteration   1: 918.917 ns/op
Iteration   2: 918.879 ns/op
Iteration   3: 918.980 ns/op
Iteration   4: 919.331 ns/op
Iteration   5: 919.006 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_buffer":
  919.023 ±(99.9%) 0.691 ns/op [Average]
  (min, avg, max) = (918.879, 919.023, 919.331), stdev = 0.179
  CI (99.9%): [918.332, 919.714] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_buffer:·asm":
PrintAssembly processed: 216265 total address lines.
Perf output processed (skipped 58.659 seconds):
 Column 1: cycles (50655 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 

                      0x00007f936affda76:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                      0x00007f936affda80:   test   %rax,%rcx
                      0x00007f936affda83:   je     0x00007f936affe1fd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                      0x00007f936affda89:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.11%              0x00007f936affda93:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                      0x00007f936affda96:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%              0x00007f936affda9a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%              0x00007f936affda9c:   nopl   0x0(%rax)
   0.09%              0x00007f936affdaa0:   cmp    $0x3ff,%eax
                      0x00007f936affdaa6:   jae    0x00007f936affe3a7           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                      0x00007f936affdaac:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                      0x00007f936affdab6:   test   %rax,%rcx
                      0x00007f936affdab9:   je     0x00007f936affe285           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%              0x00007f936affdabf:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                                ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
   0.08%              0x00007f936affdac4:   mov    $0x35,%ecx
                      0x00007f936affdac9:   mov    %ecx,%edi
                      0x00007f936affdacb:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
                      0x00007f936affdacd:   cmp    $0x1,%edi
                      0x00007f936affdad0:   je     0x00007f936affe366           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
   0.08%              0x00007f936affdad6:   mov    %edi,%ecx
                      0x00007f936affdad8:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
                      0x00007f936affdadb:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
   0.00%              0x00007f936affdadd:   cmp    $0x1,%ecx
   0.05%              0x00007f936affdae0:   mov    $0x0,%eax
                      0x00007f936affdae5:   mov    %ecx,%ebp
                      0x00007f936affdae7:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Math::max@2 (line 1562)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
   0.00%              0x00007f936affdaea:   mov    %ebp,%ecx
   0.06%              0x00007f936affdaec:   add    %r10d,%ecx
                      0x00007f936affdaef:   inc    %ecx
                      0x00007f936affdaf1:   mov    %ecx,%eax
   0.00%              0x00007f936affdaf3:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
   0.09%              0x00007f936affdaf6:   add    %ebx,%ecx
   0.00%              0x00007f936affdaf8:   lea    -0x34(%rcx),%ecx
                      0x00007f936affdafb:   cmp    %ebp,%ecx
   0.01%              0x00007f936affdafd:   mov    %ecx,%edx
   0.05%              0x00007f936affdaff:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Math::min@2 (line 1649)
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
                      0x00007f936affdb02:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.00%              0x00007f936affdb04:   test   %eax,%eax
                      0x00007f936affdb06:   jge    0x00007f936affe2f1           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.01%              0x00007f936affdb0c:   mov    %r10d,0x14(%rsp)
   0.08%              0x00007f936affdb11:   movabs $0x7ff5b2a08,%r13            ;   {oop([I{0x00000007ff5b2a08})}
                      0x00007f936affdb1b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.00%              0x00007f936affdb1f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.00%              0x00007f936affdb21:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
   0.09%              0x00007f936affdb23:   mov    %ecx,%r10d
                      0x00007f936affdb26:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
                      0x00007f936affdb29:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.00%              0x00007f936affdb2c:   cmp    $0x40,%r10d
                      0x00007f936affdb30:   jge    0x00007f936affe2c5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
   0.08%              0x00007f936affdb36:   mov    %r8d,0x24(%rsp)
                      0x00007f936affdb3b:   mov    %ebp,%r8d
                      0x00007f936affdb3e:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.01%              0x00007f936affdb41:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.08%              0x00007f936affdb44:   mov    %r8d,%eax
   0.00%              0x00007f936affdb47:   add    %r14d,%eax
                      0x00007f936affdb4a:   inc    %eax
   0.00%              0x00007f936affdb4c:   cmp    $0x40,%eax
                      0x00007f936affdb4f:   jge    0x00007f936affe2a9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.08%              0x00007f936affdb55:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
                                                                                ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
                      0x00007f936affdb59:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007f936affe425
   0.00%              0x00007f936affdb61:   cmp    $0x2,%edx
                      0x00007f936affdb64:   jb     0x00007f936affe26e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%              0x00007f936affdb6a:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
   0.10%              0x00007f936affdb6e:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
   0.00%              0x00007f936affdb72:   cmp    $0x1b,%ebp
                      0x00007f936affdb75:   jge    0x00007f936affe032           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
                      0x00007f936affdb7b:   nopl   0x0(%rax,%rax,1)
   0.00%              0x00007f936affdb80:   cmp    $0x1b,%ebp
                      0x00007f936affdb83:   jae    0x00007f936affe38a           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
   0.04%              0x00007f936affdb89:   mov    %rsi,(%rsp)
                      0x00007f936affdb8d:   mov    %edi,%esi
                      0x00007f936affdb8f:   add    0x10(%r13,%rbp,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
   0.00%              0x00007f936affdb94:   cmp    $0x40,%esi
                      0x00007f936affdb97:   jl     0x00007f936affe315           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
   0.08%              0x00007f936affdb9d:   mov    %ecx,%esi
                      0x00007f936affdb9f:   mov    %r14d,%r13d
                      0x00007f936affdba2:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
                      0x00007f936affdba6:   mov    %ebx,%ecx
   0.08%              0x00007f936affdba8:   mov    %ebx,0x10(%rsp)
                      0x00007f936affdbac:   mov    %r11,%rbx
                      0x00007f936affdbaf:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.08%              0x00007f936affdbb2:   cmp    $0x20,%r10d
          ╭           0x00007f936affdbb6:   jl     0x00007f936affdd6e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
          │           0x00007f936affdbbc:   nopl   0x0(%rax)
          │           0x00007f936affdbc0:   test   %r9d,%r9d
          │           0x00007f936affdbc3:   je     0x00007f936affe198           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
   0.05%  │           0x00007f936affdbc9:   mov    %edi,0xc(%rsp)
          │           0x00007f936affdbcd:   mov    %r11,0x18(%rsp)
          │           0x00007f936affdbd2:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
          │           0x00007f936affdbdc:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
   0.04%  │           0x00007f936affdbe0:   mov    %rax,%r10
          │           0x00007f936affdbe3:   shl    $0x3,%r10
          │           0x00007f936affdbe7:   mov    %rax,%r11
          │           0x00007f936affdbea:   shl    %r11
   0.04%  │           0x00007f936affdbed:   add    %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
          │           0x00007f936affdbf0:   mov    %r10,%r11
          │           0x00007f936affdbf3:   shl    $0x3,%r11
          │           0x00007f936affdbf7:   mov    %r10,%rdi
   0.06%  │           0x00007f936affdbfa:   shl    %rdi
          │           0x00007f936affdbfd:   add    %rdi,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │           0x00007f936affdc00:   cmp    $0x1,%r11
          │           0x00007f936affdc04:   jl     0x00007f936affe081           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
          │           0x00007f936affdc0a:   mov    %edx,%edi
   0.04%  │           0x00007f936affdc0c:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
          │           0x00007f936affdc10:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
          │           0x00007f936affdc14:   mov    %esi,%ecx
          │           0x00007f936affdc16:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.04%  │           0x00007f936affdc19:   mov    %r8d,%ecx
          │           0x00007f936affdc1c:   mov    %rdx,%r8
   0.07%  │           0x00007f936affdc1f:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
          │           0x00007f936affdc22:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
   0.04%  │           0x00007f936affdc25:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                     ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          │           0x00007f936affdc27:   idiv   %r8                          ; implicit exception: deoptimizes
          │                                                                     ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.51%  │           0x00007f936affdc2a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
   0.03%  │           0x00007f936affdc2c:   test   %eax,%eax
          │           0x00007f936affdc2e:   je     0x00007f936affe2e5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          │           0x00007f936affdc34:   mov    %rdx,%rcx
          │           0x00007f936affdc37:   shl    $0x3,%rcx
          │           0x00007f936affdc3b:   shl    %rdx
   0.03%  │           0x00007f936affdc3e:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          │           0x00007f936affdc41:   cmp    %rcx,%r10
          │           0x00007f936affdc44:   jg     0x00007f936affe135           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
   0.00%  │           0x00007f936affdc4a:   mov    %r8,%rdx
          │           0x00007f936affdc4d:   shl    $0x3,%rdx
   0.03%  │           0x00007f936affdc51:   mov    %r8,%rbx
          │           0x00007f936affdc54:   shl    %rbx
          │           0x00007f936affdc57:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
          │           0x00007f936affdc5a:   mov    %rcx,%rdx
   0.04%  │           0x00007f936affdc5d:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
          │           0x00007f936affdc60:   cmp    %rbx,%rdx
          │           0x00007f936affdc63:   jg     0x00007f936affe0fa           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
          │           0x00007f936affdc69:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
   0.00%  │           0x00007f936affdc6c:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.04%  │           0x00007f936affdc75:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │           0x00007f936affdc78:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                                                                     ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
          │           0x00007f936affdc7a:   idiv   %r8                          ; implicit exception: deoptimizes
          │                                                                     ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.71%  │           0x00007f936affdc7d:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.02%  │           0x00007f936affdc7f:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │           0x00007f936affdc82:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.05%  │           0x00007f936affdc8b:   mov    %rdx,%rax
   0.01%  │           0x00007f936affdc8e:   shl    $0x3,%rax
   0.01%  │           0x00007f936affdc92:   shl    %rdx
   0.00%  │           0x00007f936affdc95:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.03%  │           0x00007f936affdc98:   mov    %rax,%rdx
   0.01%  │           0x00007f936affdc9b:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.02%  │           0x00007f936affdc9e:   cmp    %rbx,%rdx
          │           0x00007f936affdca1:   setg   %dl
   0.04%  │           0x00007f936affdca4:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.01%  │           0x00007f936affdca7:   cmp    %rax,%r11
   0.02%  │           0x00007f936affdcaa:   setg   %cl
   0.00%  │           0x00007f936affdcad:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.02%  │           0x00007f936affdcb0:   mov    $0x2,%esi
   0.03%  │           0x00007f936affdcb5:   mov    %edx,%r9d
   0.02%  │           0x00007f936affdcb8:   mov    %r11,%r10
          │           0x00007f936affdcbb:   mov    %rax,%r11
   0.01%  │           0x00007f936affdcbe:   xchg   %ax,%ax
   0.01%  │╭          0x00007f936affdcc0:   jmp    0x00007f936affdd61           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││          0x00007f936affdcc5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││          0x00007f936affdcd0:   data16 data16 xchg %ax,%ax
          ││          0x00007f936affdcd4:   nopl   0x0(%rax,%rax,1)
          ││          0x00007f936affdcdc:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.06%  ││↗         0x00007f936affdce0:   test   %r9d,%r9d
          │││         0x00007f936affdce3:   jne    0x00007f936affe260           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.42%  │││         0x00007f936affdce9:   mov    %r10,%rax
   0.14%  │││         0x00007f936affdcec:   shl    $0x3,%rax
          │││         0x00007f936affdcf0:   mov    %r10,%rdx
   0.04%  │││         0x00007f936affdcf3:   shl    %rdx
   0.45%  │││         0x00007f936affdcf6:   mov    %rax,%rcx
   0.13%  │││         0x00007f936affdcf9:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││         0x00007f936affdcfc:   nopl   0x0(%rax)
   0.06%  │││         0x00007f936affdd00:   cmp    $0x1,%rcx
          │││         0x00007f936affdd04:   jl     0x00007f936affe23c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.44%  │││         0x00007f936affdd0a:   cmp    %esi,%edi
          │││         0x00007f936affdd0c:   jbe    0x00007f936affe411           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.13%  │││         0x00007f936affdd12:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││         0x00007f936affdd15:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                   ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.02%  │││         0x00007f936affdd17:   idiv   %r8                          ; implicit exception: deoptimizes
          │││                                                                   ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
  23.91%  │││         0x00007f936affdd1a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.01%  │││         0x00007f936affdd1c:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.02%  │││         0x00007f936affdd20:   mov    %r10w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.53%  │││         0x00007f936affdd26:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.05%  │││         0x00007f936affdd28:   mov    %rdx,%r10
          │││         0x00007f936affdd2b:   shl    $0x3,%r10
   0.02%  │││         0x00007f936affdd2f:   shl    %rdx
   0.50%  │││         0x00007f936affdd32:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.10%  │││         0x00007f936affdd35:   cmp    %r10,%rcx
   0.00%  │││         0x00007f936affdd38:   setg   %dl
   0.03%  │││         0x00007f936affdd3b:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.53%  │││         0x00007f936affdd3e:   mov    %r10,%r11
   0.08%  │││         0x00007f936affdd41:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.00%  │││         0x00007f936affdd44:   cmp    %rbx,%r11
   0.01%  │││         0x00007f936affdd47:   setg   %r9b
   0.59%  │││         0x00007f936affdd4b:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.14%  │││         0x00007f936affdd4f:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
          │││                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││                                                                   ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          │││         0x00007f936affdd56:   test   %eax,(%r11)                  ;   {poll}
   0.00%  │││         0x00007f936affdd59:   mov    %r10,%r11
   0.45%  │││         0x00007f936affdd5c:   mov    %rcx,%r10
   0.13%  │││         0x00007f936affdd5f:   mov    %edx,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.01%  │↘│         0x00007f936affdd61:   test   %ecx,%ecx
          │ ╰         0x00007f936affdd63:   je     0x00007f936affdce0
   0.00%  │  ╭        0x00007f936affdd69:   jmp    0x00007f936affdf0e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ↘  │        0x00007f936affdd6e:   mov    %edi,0xc(%rsp)
   0.00%     │        0x00007f936affdd72:   mov    %r11,0x18(%rsp)
   0.03%     │        0x00007f936affdd77:   mov    %edx,%edi
             │        0x00007f936affdd79:   nopl   0x0(%rax)
             │        0x00007f936affdd80:   cmp    $0x20,%eax
             │        0x00007f936affdd83:   jge    0x00007f936affe230           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
   0.01%     │        0x00007f936affdd89:   test   %r9d,%r9d
             │        0x00007f936affdd8c:   je     0x00007f936affe405
   0.04%     │        0x00007f936affdd92:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
             │        0x00007f936affdd9c:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
             │        0x00007f936affdd9f:   mov    %eax,%edx
   0.01%     │        0x00007f936affdda1:   shl    $0x3,%edx
   0.04%     │        0x00007f936affdda4:   mov    %eax,%r10d
             │        0x00007f936affdda7:   shl    %r10d
             │        0x00007f936affddaa:   add    %edx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
             │        0x00007f936affddad:   mov    %r10d,%edx
   0.03%     │        0x00007f936affddb0:   shl    $0x3,%edx
             │        0x00007f936affddb3:   mov    %r10d,%r11d
             │        0x00007f936affddb6:   shl    %r11d
   0.00%     │        0x00007f936affddb9:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.04%     │        0x00007f936affddbc:   nopl   0x0(%rax)
   0.00%     │        0x00007f936affddc0:   cmp    $0x1,%r11d
             │        0x00007f936affddc4:   jl     0x00007f936affe1f1           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
             │        0x00007f936affddca:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
             │        0x00007f936affddcd:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
   0.05%     │        0x00007f936affddcf:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
             │        0x00007f936affddd2:   mov    %esi,%ecx
             │        0x00007f936affddd4:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.05%     │        0x00007f936affddd6:   mov    %r8d,%ecx
             │        0x00007f936affddd9:   mov    %edx,%r8d
             │        0x00007f936affdddc:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.04%     │        0x00007f936affdddf:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
             │                                                                  ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.00%     │        0x00007f936affdde0:   idiv   %r8d                         ; implicit exception: deoptimizes
             │                                                                  ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.09%     │        0x00007f936affdde3:   test   %eax,%eax
             │        0x00007f936affdde5:   je     0x00007f936affe1e5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
   0.00%     │        0x00007f936affddeb:   mov    %edx,%ecx
   0.04%     │        0x00007f936affdded:   shl    $0x3,%ecx
             │        0x00007f936affddf0:   shl    %edx
             │        0x00007f936affddf2:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.01%     │        0x00007f936affddf4:   cmp    %ecx,%r10d
             │        0x00007f936affddf7:   jg     0x00007f936affe1d9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.03%     │        0x00007f936affddfd:   mov    %r8d,%edx
             │        0x00007f936affde00:   shl    $0x3,%edx
             │        0x00007f936affde03:   mov    %r8d,%ebx
   0.00%     │        0x00007f936affde06:   shl    %ebx
   0.05%     │        0x00007f936affde08:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.00%     │        0x00007f936affde0a:   mov    %ecx,%edx
             │        0x00007f936affde0c:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.00%     │        0x00007f936affde0f:   cmp    %ebx,%edx
             │        0x00007f936affde11:   jg     0x00007f936affe1cd           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.02%     │        0x00007f936affde17:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
             │        0x00007f936affde1a:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
             │        0x00007f936affde23:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
   0.00%     │        0x00007f936affde25:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
             │                                                                  ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.03%     │        0x00007f936affde26:   idiv   %r8d                         ; implicit exception: deoptimizes
             │                                                                  ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.51%     │        0x00007f936affde29:   mov    %edx,%esi
   0.00%     │        0x00007f936affde2b:   shl    $0x3,%esi
   0.04%     │        0x00007f936affde2e:   shl    %edx
   0.01%     │        0x00007f936affde30:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.02%     │        0x00007f936affde32:   cmp    %esi,%r11d
             │        0x00007f936affde35:   jg     0x00007f936affe1ad           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.02%     │        0x00007f936affde3b:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.02%     │        0x00007f936affde3e:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.00%     │        0x00007f936affde47:   mov    %esi,%eax
             │        0x00007f936affde49:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.03%     │        0x00007f936affde4c:   cmp    %ebx,%eax
   0.01%     │        0x00007f936affde4e:   setg   %al
   0.02%     │        0x00007f936affde51:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.03%     │        0x00007f936affde54:   mov    $0x2,%ecx
             │        0x00007f936affde59:   mov    %eax,%r9d
   0.00%     │        0x00007f936affde5c:   mov    %r11d,%r10d
             │        0x00007f936affde5f:   mov    %esi,%r11d
   0.03%     │╭       0x00007f936affde62:   jmp    0x00007f936affdf00           ;*iload {reexecute=0 rethrow=0 return_oop=0}
             ││                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
             ││       0x00007f936affde67:   data16 data16 nopw 0x0(%rax,%rax,1)
             ││       0x00007f936affde72:   data16 data16 xchg %ax,%ax
             ││       0x00007f936affde76:   data16 nopw 0x0(%rax,%rax,1)        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             ││                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.04%     ││↗      0x00007f936affde80:   mov    %r10d,%eax
   0.14%     │││      0x00007f936affde83:   shl    $0x3,%eax
             │││      0x00007f936affde86:   mov    %r10d,%edx
   0.00%     │││      0x00007f936affde89:   shl    %edx
   0.04%     │││      0x00007f936affde8b:   mov    %eax,%r9d
   0.21%     │││      0x00007f936affde8e:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
             │││      0x00007f936affde91:   cmp    $0x1,%r9d
             │││      0x00007f936affde95:   jl     0x00007f936affe166           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
             │││      0x00007f936affde9b:   nopl   0x0(%rax,%rax,1)
   0.04%     │││      0x00007f936affdea0:   cmp    %ecx,%edi
             │││      0x00007f936affdea2:   jbe    0x00007f936affe0a6           ;*castore {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.19%     │││      0x00007f936affdea8:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
             │││      0x00007f936affdeab:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
             │││                                                                ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
             │││      0x00007f936affdeac:   idiv   %r8d                         ; implicit exception: deoptimizes
             │││                                                                ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   4.47%     │││      0x00007f936affdeaf:   mov    %edx,%esi
   0.10%     │││      0x00007f936affdeb1:   shl    $0x3,%esi
   0.07%     │││      0x00007f936affdeb4:   shl    %edx
   0.06%     │││      0x00007f936affdeb6:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.16%     │││      0x00007f936affdeb8:   nopl   0x0(%rax,%rax,1)
   0.07%     │││      0x00007f936affdec0:   cmp    %esi,%r9d
             │││      0x00007f936affdec3:   jg     0x00007f936affe0cb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.15%     │││      0x00007f936affdec9:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.03%     │││      0x00007f936affdecd:   mov    %r10w,0x10(%r13,%rcx,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
             │││      0x00007f936affded3:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.05%     │││      0x00007f936affded5:   mov    %esi,%r10d
   0.15%     │││      0x00007f936affded8:   add    %r9d,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.03%     │││      0x00007f936affdedb:   cmp    %ebx,%r10d
   0.03%     │││      0x00007f936affdede:   setg   %r10b
   0.15%     │││      0x00007f936affdee2:   movzbl %r10b,%r10d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.23%     │││      0x00007f936affdee6:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
             │││                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
             │││                                                                ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
             │││      0x00007f936affdeed:   test   %eax,(%r11)                  ;   {poll}
   0.00%     │││      0x00007f936affdef0:   mov    %esi,%r11d
             │││      0x00007f936affdef3:   mov    %r9d,0x8(%rsp)
   0.16%     │││      0x00007f936affdef8:   mov    %r10d,%r9d
             │││      0x00007f936affdefb:   mov    0x8(%rsp),%r10d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
             │││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
             │↘│      0x00007f936affdf00:   test   %r9d,%r9d
             │ ╰      0x00007f936affdf03:   je     0x00007f936affde80
             │  ╭     0x00007f936affdf09:   jmp    0x00007f936affdf6f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             │  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.04%     ↘  │     0x00007f936affdf0e:   test   %r11,%r11
                │     0x00007f936affdf11:   je     0x00007f936affe178           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.01%        │     0x00007f936affdf17:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
                │     0x00007f936affdf1a:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
                │     0x00007f936affdf1d:   mov    %ecx,%r10d
   0.03%        │     0x00007f936affdf20:   mov    %esi,%ecx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
   0.01%        │ ↗   0x00007f936affdf22:   test   %r9d,%r9d
                │ │   0x00007f936affdf25:   je     0x00007f936affe145           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.05%        │ │   0x00007f936affdf2b:   mov    (%rsp),%rdx
                │ │   0x00007f936affdf2f:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.02%        │ │   0x00007f936affdf36:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.01%        │ │   0x00007f936affdf3d:   mov    %ecx,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.04%        │ │   0x00007f936affdf40:   test   %r10d,%r10d
                │╭│   0x00007f936affdf43:   je     0x00007f936affdf8c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
                │││   0x00007f936affdf49:   test   %r11,%r11
                │││   0x00007f936affdf4c:   je     0x00007f936affe126           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                │││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
   0.02%        │││   0x00007f936affdf52:   cmp    $0x1,%r11
                │││   0x00007f936affdf56:   jge    0x00007f936affe3ef           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.01%        │││↗  0x00007f936affdf5c:   mov    0x30(%rsp),%rbp
   0.05%        ││││  0x00007f936affdf61:   add    $0x38,%rsp
                ││││  0x00007f936affdf65:   mov    0x348(%r15),%rcx
   0.03%        ││││  0x00007f936affdf6c:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%        ││││  0x00007f936affdf6e:   ret                                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
   0.03%        ↘│││  0x00007f936affdf6f:   test   %r11d,%r11d
                 │││  0x00007f936affdf72:   je     0x00007f936affe0da           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@714 (line 649)
                 │││  0x00007f936affdf78:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@704 (line 648)
                 │││  0x00007f936affdf7b:   sub    %ebx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@707 (line 648)
   0.00%         │││  0x00007f936affdf7e:   movslq %r11d,%r10                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@708 (line 648)
   0.04%         │││  0x00007f936affdf81:   mov    %r10,%r11
                 │││  0x00007f936affdf84:   mov    $0x0,%r10d
                 │╰│  0x00007f936affdf8a:   jmp    0x00007f936affdf22           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                 │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
                 ↘ │  0x00007f936affdf8c:   mov    %ecx,%r8d
                   │  0x00007f936affdf8f:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                   │  0x00007f936affdf92:   cmp    %r8d,%edi
                   │  0x00007f936affdf95:   jbe    0x00007f936affe103
   0.05%           │  0x00007f936affdf9b:   movzwl 0x10(%r13,%r8,2),%r10d       ;*caload {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                   │  0x00007f936affdfa1:   cmp    $0x39,%r10d
                   │  0x00007f936affdfa5:   je     0x00007f936affe027           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.00%           │  0x00007f936affdfab:   cmp    %r8d,%edi
                   │  0x00007f936affdfae:   jbe    0x00007f936affe346           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                   │  0x00007f936affdfb4:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.04%           │  0x00007f936affdfb7:   mov    %r10w,0x10(%r13,%r8,2)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                   │  0x00007f936affdfbd:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
                   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                   ╰  0x00007f936affdfc1:   jmp    0x00007f936affdf5c
                      0x00007f936affdfc3:   data16 data16 nopw 0x0(%rax,%rax,1)
                      0x00007f936affdfce:   data16 data16 xchg %ax,%ax
....................................................................................................
  40.97%  <total for region 1>

....[Hottest Regions]...............................................................................
  40.97%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 
   9.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 835 
   7.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 835 
   5.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 835 
   4.86%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 853 
   3.36%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 828 
   3.12%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.10%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 799 
   3.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 835 
   2.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 835 
   2.14%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 809 
   1.92%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 809 
   1.69%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 832 
   1.55%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 817 
   1.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 835 
   1.11%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 832 
   0.77%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 853 
   0.64%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.52%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 832 
   0.51%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 
   4.95%  <...other 491 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  41.48%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 798 
  29.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_buffer, version 2, compile id 835 
   5.63%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 853 
   4.06%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 809 
   3.72%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 799 
   3.51%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 828 
   3.32%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 832 
   3.12%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.32%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 817 
   1.28%               kernel  [unknown] 
   0.64%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.18%         runtime stub  StubRoutines::jshort_arraycopy 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_string_buffer_jmhTest::string_buffer_avgt_jmhStub, version 5, compile id 856 
   0.09%                       <unknown> 
   0.06%         libc-2.31.so  [unknown] 
   0.04%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.65%  <...other 168 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.80%       jvmci, level 4
   3.94%         runtime stub
   1.28%               kernel
   0.63%            libjvm.so
   0.13%         libc-2.31.so
   0.09%                     
   0.04%   libpthread-2.31.so
   0.03%           ld-2.31.so
   0.02%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%       libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_builder
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 50.00% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 777.570 ns/op
# Warmup Iteration   2: 733.548 ns/op
# Warmup Iteration   3: 727.505 ns/op
# Warmup Iteration   4: 727.655 ns/op
# Warmup Iteration   5: 727.350 ns/op
Iteration   1: 727.507 ns/op
Iteration   2: 727.352 ns/op
Iteration   3: 728.532 ns/op
Iteration   4: 727.451 ns/op
Iteration   5: 727.786 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_builder":
  727.725 ±(99.9%) 1.843 ns/op [Average]
  (min, avg, max) = (727.352, 727.725, 728.532), stdev = 0.479
  CI (99.9%): [725.882, 729.569] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_builder:·asm":
PrintAssembly processed: 207734 total address lines.
Perf output processed (skipped 58.566 seconds):
 Column 1: cycles (50710 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 

                 0x00007ff276fd7660:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                 0x00007ff276fd7664:   movabs $0x800000000,%r12
                 0x00007ff276fd766e:   add    %r12,%r10
                 0x00007ff276fd7671:   xor    %r12,%r12
                 0x00007ff276fd7674:   cmp    %r10,%rax
                 0x00007ff276fd7677:   jne    0x00007ff26f4d7780           ;   {runtime_call ic_miss_stub}
                 0x00007ff276fd767d:   nop
                 0x00007ff276fd767e:   xchg   %ax,%ax
               [Verified Entry Point]
                 0x00007ff276fd7680:   mov    %eax,-0x14000(%rsp)
   0.10%         0x00007ff276fd7687:   sub    $0x38,%rsp
   0.00%         0x00007ff276fd768b:   mov    %rbp,0x30(%rsp)
                 0x00007ff276fd7690:   mov    %edx,%r10d
   0.07%         0x00007ff276fd7693:   mov    %rcx,%r11
   0.07%         0x00007ff276fd7696:   lea    0x15(%r10),%ecx              ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
                 0x00007ff276fd769a:   nopw   0x0(%rax,%rax,1)
                 0x00007ff276fd76a0:   cmp    $0x54,%ecx
                 0x00007ff276fd76a3:   jae    0x00007ff276fd7f8d           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
   0.04%         0x00007ff276fd76a9:   movabs $0xfffffffffffff,%rcx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@4 (line 820)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%         0x00007ff276fd76b3:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@7 (line 820)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                 0x00007ff276fd76b6:   movabs $0x3ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                 0x00007ff276fd76c0:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%         0x00007ff276fd76c3:   vmovq  %rcx,%xmm0
   0.07%         0x00007ff276fd76c8:   vsubsd -0x90(%rip),%xmm0,%xmm0        # 0x00007ff276fd7640
                                                                           ;   {section_word}
   0.00%         0x00007ff276fd76d0:   vmulsd -0x90(%rip),%xmm0,%xmm0        # 0x00007ff276fd7648
                                                                           ;   {section_word}
                 0x00007ff276fd76d8:   vaddsd -0x90(%rip),%xmm0,%xmm0        # 0x00007ff276fd7650
                                                                           ;   {section_word}
   0.05%         0x00007ff276fd76e0:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.06%         0x00007ff276fd76e5:   vmulsd -0x95(%rip),%xmm1,%xmm1        # 0x00007ff276fd7658
                                                                           ;   {section_word}
                 0x00007ff276fd76ed:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.07%         0x00007ff276fd76f1:   vmovq  %xmm0,%rcx                   ;* unwind (locked if synchronized)
                                                                           ; - java.lang.Double::doubleToRawLongBits@-3
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%         0x00007ff276fd76f6:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%         0x00007ff276fd7700:   test   %rax,%rcx
                 0x00007ff276fd7703:   je     0x00007ff276fd7f6f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                 0x00007ff276fd7709:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.05%         0x00007ff276fd7713:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%         0x00007ff276fd7716:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%         0x00007ff276fd771a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%         0x00007ff276fd771c:   nopl   0x0(%rax)
   0.05%         0x00007ff276fd7720:   cmp    $0x3ff,%eax
                 0x00007ff276fd7726:   jae    0x00007ff276fd7c38           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%         0x00007ff276fd772c:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%         0x00007ff276fd7736:   test   %rax,%rcx
                 0x00007ff276fd7739:   je     0x00007ff276fd7e97           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%         0x00007ff276fd773f:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                           ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
   0.06%         0x00007ff276fd7744:   mov    $0x35,%ecx
   0.04%         0x00007ff276fd7749:   mov    %ecx,%edi
   0.01%         0x00007ff276fd774b:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
   0.00%         0x00007ff276fd774d:   cmp    $0x1,%edi
                 0x00007ff276fd7750:   je     0x00007ff276fd7ee6           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
   0.06%         0x00007ff276fd7756:   mov    %edi,%ecx
   0.03%         0x00007ff276fd7758:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
   0.01%         0x00007ff276fd775b:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
   0.01%         0x00007ff276fd775d:   cmp    $0x1,%ecx
   0.05%         0x00007ff276fd7760:   mov    $0x0,%eax
   0.04%         0x00007ff276fd7765:   mov    %ecx,%ebp
   0.01%         0x00007ff276fd7767:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.Math::max@2 (line 1562)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
   0.00%         0x00007ff276fd776a:   mov    %ebp,%ecx
   0.05%         0x00007ff276fd776c:   add    %r10d,%ecx
   0.03%         0x00007ff276fd776f:   inc    %ecx
   0.01%         0x00007ff276fd7771:   mov    %ecx,%eax
   0.01%         0x00007ff276fd7773:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
   0.05%         0x00007ff276fd7776:   add    %ebx,%ecx
   0.03%         0x00007ff276fd7778:   lea    -0x34(%rcx),%ecx
   0.01%         0x00007ff276fd777b:   cmp    %ebp,%ecx
   0.01%         0x00007ff276fd777d:   mov    %ecx,%edx
   0.05%         0x00007ff276fd777f:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.Math::min@2 (line 1649)
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.04%         0x00007ff276fd7782:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.01%         0x00007ff276fd7784:   test   %eax,%eax
                 0x00007ff276fd7786:   jge    0x00007ff276fd7f16           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.01%         0x00007ff276fd778c:   mov    %r10d,0x24(%rsp)
   0.04%         0x00007ff276fd7791:   movabs $0x7ff2b2b38,%r13            ;   {oop([I{0x00000007ff2b2b38})}
   0.05%         0x00007ff276fd779b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.01%         0x00007ff276fd779f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.01%         0x00007ff276fd77a1:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
   0.06%         0x00007ff276fd77a3:   mov    %ecx,%r10d
   0.06%         0x00007ff276fd77a6:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
   0.01%         0x00007ff276fd77a9:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.01%         0x00007ff276fd77ac:   cmp    $0x40,%r10d
                 0x00007ff276fd77b0:   jge    0x00007ff276fd7e78           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
   0.05%         0x00007ff276fd77b6:   mov    %r8d,0x20(%rsp)
   0.03%         0x00007ff276fd77bb:   mov    %ebp,%r8d
   0.00%         0x00007ff276fd77be:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.00%         0x00007ff276fd77c1:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.06%         0x00007ff276fd77c4:   mov    %r8d,%eax
   0.04%         0x00007ff276fd77c7:   add    %r14d,%eax
                 0x00007ff276fd77ca:   inc    %eax
   0.01%         0x00007ff276fd77cc:   cmp    $0x40,%eax
                 0x00007ff276fd77cf:   jge    0x00007ff276fd7e58           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.06%         0x00007ff276fd77d5:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
                                                                           ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
   0.04%         0x00007ff276fd77d9:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007ff276fd7fab
   0.01%         0x00007ff276fd77e1:   cmp    $0x2,%edx
                 0x00007ff276fd77e4:   jb     0x00007ff276fd7f34           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%         0x00007ff276fd77ea:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
   0.05%         0x00007ff276fd77ee:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
   0.03%         0x00007ff276fd77f2:   cmp    $0x1b,%ebp
          ╭      0x00007ff276fd77f5:   jl     0x00007ff276fd79ce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
   0.00%  │      0x00007ff276fd77fb:   mov    %rsi,(%rsp)                  ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.01%  │   ↗  0x00007ff276fd77ff:   mov    %ecx,%esi
   0.04%  │   │  0x00007ff276fd7801:   mov    %r14d,%r13d
   0.04%  │   │  0x00007ff276fd7804:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
   0.00%  │   │  0x00007ff276fd7808:   mov    %ebx,%ecx
   0.01%  │   │  0x00007ff276fd780a:   mov    %ebx,0x14(%rsp)
   0.03%  │   │  0x00007ff276fd780e:   mov    %r11,%rbx
   0.04%  │   │  0x00007ff276fd7811:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.07%  │   │  0x00007ff276fd7814:   cmp    $0x20,%r10d
          │╭  │  0x00007ff276fd7818:   jl     0x00007ff276fd79f0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
   0.04%  ││  │  0x00007ff276fd781e:   xchg   %ax,%ax
   0.01%  ││  │  0x00007ff276fd7820:   test   %r9d,%r9d
          ││  │  0x00007ff276fd7823:   je     0x00007ff276fd7ec5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
   0.01%  ││  │  0x00007ff276fd7829:   mov    %edi,0x10(%rsp)
          ││  │  0x00007ff276fd782d:   mov    %r11,0x18(%rsp)
   0.05%  ││  │  0x00007ff276fd7832:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
   0.01%  ││  │  0x00007ff276fd783c:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
   0.01%  ││  │  0x00007ff276fd7840:   mov    %rax,%r10
          ││  │  0x00007ff276fd7843:   shl    $0x3,%r10
   0.03%  ││  │  0x00007ff276fd7847:   mov    %rax,%r11
   0.00%  ││  │  0x00007ff276fd784a:   shl    %r11
   0.02%  ││  │  0x00007ff276fd784d:   add    %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
   0.00%  ││  │  0x00007ff276fd7850:   mov    %r10,%r11
   0.06%  ││  │  0x00007ff276fd7853:   shl    $0x3,%r11
   0.01%  ││  │  0x00007ff276fd7857:   mov    %r10,%rdi
   0.01%  ││  │  0x00007ff276fd785a:   shl    %rdi
          ││  │  0x00007ff276fd785d:   add    %rdi,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.05%  ││  │  0x00007ff276fd7860:   cmp    $0x1,%r11
          ││  │  0x00007ff276fd7864:   jl     0x00007ff276fd7eb5           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.01%  ││  │  0x00007ff276fd786a:   mov    %edx,%edi
   0.01%  ││  │  0x00007ff276fd786c:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
          ││  │  0x00007ff276fd7870:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
   0.03%  ││  │  0x00007ff276fd7874:   mov    %esi,%ecx
   0.01%  ││  │  0x00007ff276fd7876:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.05%  ││  │  0x00007ff276fd7879:   mov    %r8d,%ecx
   0.01%  ││  │  0x00007ff276fd787c:   mov    %rdx,%r8
   0.01%  ││  │  0x00007ff276fd787f:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
   0.03%  ││  │  0x00007ff276fd7882:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
   0.01%  ││  │  0x00007ff276fd7885:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.00%  ││  │  0x00007ff276fd7887:   idiv   %r8                          ; implicit exception: deoptimizes
          ││  │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.90%  ││  │  0x00007ff276fd788a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
          ││  │  0x00007ff276fd788c:   test   %eax,%eax
          ││  │  0x00007ff276fd788e:   je     0x00007ff276fd7d7d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          ││  │  0x00007ff276fd7894:   mov    %rdx,%rcx
   0.07%  ││  │  0x00007ff276fd7897:   shl    $0x3,%rcx
          ││  │  0x00007ff276fd789b:   shl    %rdx
          ││  │  0x00007ff276fd789e:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          ││  │  0x00007ff276fd78a1:   cmp    %rcx,%r10
          ││  │  0x00007ff276fd78a4:   jg     0x00007ff276fd7c66           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
   0.05%  ││  │  0x00007ff276fd78aa:   mov    %r8,%rdx
          ││  │  0x00007ff276fd78ad:   shl    $0x3,%rdx
          ││  │  0x00007ff276fd78b1:   mov    %r8,%rbx
          ││  │  0x00007ff276fd78b4:   shl    %rbx
   0.05%  ││  │  0x00007ff276fd78b7:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
   0.00%  ││  │  0x00007ff276fd78ba:   mov    %rcx,%rdx
          ││  │  0x00007ff276fd78bd:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
          ││  │  0x00007ff276fd78c0:   cmp    %rbx,%rdx
          ││  │  0x00007ff276fd78c3:   jg     0x00007ff276fd7d2d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
   0.05%  ││  │  0x00007ff276fd78c9:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
          ││  │  0x00007ff276fd78cc:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%  ││  │  0x00007ff276fd78d5:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││  │  0x00007ff276fd78d8:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
   0.05%  ││  │  0x00007ff276fd78da:   idiv   %r8                          ; implicit exception: deoptimizes
          ││  │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   2.08%  ││  │  0x00007ff276fd78dd:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          ││  │  0x00007ff276fd78df:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          ││  │  0x00007ff276fd78e2:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.03%  ││  │  0x00007ff276fd78eb:   mov    %rdx,%rax
   0.01%  ││  │  0x00007ff276fd78ee:   shl    $0x3,%rax
          ││  │  0x00007ff276fd78f2:   shl    %rdx
          ││  │  0x00007ff276fd78f5:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.05%  ││  │  0x00007ff276fd78f8:   mov    %rax,%rdx
   0.01%  ││  │  0x00007ff276fd78fb:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││  │  0x00007ff276fd78fe:   cmp    %rbx,%rdx
          ││  │  0x00007ff276fd7901:   setg   %dl
   0.05%  ││  │  0x00007ff276fd7904:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.01%  ││  │  0x00007ff276fd7907:   cmp    %rax,%r11
          ││  │  0x00007ff276fd790a:   setg   %cl
          ││  │  0x00007ff276fd790d:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.05%  ││  │  0x00007ff276fd7910:   mov    $0x2,%esi
   0.02%  ││  │  0x00007ff276fd7915:   mov    %edx,%r9d
          ││  │  0x00007ff276fd7918:   mov    %r11,%r10
          ││  │  0x00007ff276fd791b:   mov    %rax,%r11
   0.02%  ││  │  0x00007ff276fd791e:   xchg   %ax,%ax
   0.00%  ││╭ │  0x00007ff276fd7920:   jmp    0x00007ff276fd79c1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││ │  0x00007ff276fd7925:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││ │  0x00007ff276fd7930:   data16 data16 xchg %ax,%ax
          │││ │  0x00007ff276fd7934:   nopl   0x0(%rax,%rax,1)
          │││ │  0x00007ff276fd793c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.07%  │││↗│  0x00007ff276fd7940:   test   %r9d,%r9d
          │││││  0x00007ff276fd7943:   jne    0x00007ff276fd7e4a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.55%  │││││  0x00007ff276fd7949:   mov    %r10,%rax
   0.21%  │││││  0x00007ff276fd794c:   shl    $0x3,%rax
          │││││  0x00007ff276fd7950:   mov    %r10,%rdx
   0.07%  │││││  0x00007ff276fd7953:   shl    %rdx
   0.53%  │││││  0x00007ff276fd7956:   mov    %rax,%rcx
   0.14%  │││││  0x00007ff276fd7959:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││││  0x00007ff276fd795c:   nopl   0x0(%rax)
   0.04%  │││││  0x00007ff276fd7960:   cmp    $0x1,%rcx
          │││││  0x00007ff276fd7964:   jl     0x00007ff276fd7f05           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.54%  │││││  0x00007ff276fd796a:   cmp    %esi,%edi
          │││││  0x00007ff276fd796c:   jbe    0x00007ff276fd7e26           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.19%  │││││  0x00007ff276fd7972:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││││  0x00007ff276fd7975:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.06%  │││││  0x00007ff276fd7977:   idiv   %r8                          ; implicit exception: deoptimizes
          │││││                                                            ; ImmutableOopMap {r13=Oop [0]=Oop }
  29.61%  │││││  0x00007ff276fd797a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.00%  │││││  0x00007ff276fd797c:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.01%  │││││  0x00007ff276fd7980:   mov    %r10w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.73%  │││││  0x00007ff276fd7986:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.08%  │││││  0x00007ff276fd7988:   mov    %rdx,%r10
   0.00%  │││││  0x00007ff276fd798b:   shl    $0x3,%r10
   0.01%  │││││  0x00007ff276fd798f:   shl    %rdx
   0.65%  │││││  0x00007ff276fd7992:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.08%  │││││  0x00007ff276fd7995:   cmp    %r10,%rcx
          │││││  0x00007ff276fd7998:   setg   %dl
   0.04%  │││││  0x00007ff276fd799b:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.69%  │││││  0x00007ff276fd799e:   mov    %r10,%r11
   0.06%  │││││  0x00007ff276fd79a1:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
   0.00%  │││││  0x00007ff276fd79a4:   cmp    %rbx,%r11
   0.02%  │││││  0x00007ff276fd79a7:   setg   %r9b
   0.63%  │││││  0x00007ff276fd79ab:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.20%  │││││  0x00007ff276fd79af:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          │││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          │││││  0x00007ff276fd79b6:   test   %eax,(%r11)                  ;   {poll}
   0.00%  │││││  0x00007ff276fd79b9:   mov    %r10,%r11
   0.51%  │││││  0x00007ff276fd79bc:   mov    %rcx,%r10
   0.23%  │││││  0x00007ff276fd79bf:   mov    %edx,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││↘││  0x00007ff276fd79c1:   test   %ecx,%ecx
          ││ ╰│  0x00007ff276fd79c3:   je     0x00007ff276fd7940
   0.00%  ││  │  0x00007ff276fd79c9:   jmp    0x00007ff276fd7b8e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          ↘│  │  0x00007ff276fd79ce:   cmp    $0x1b,%ebp
           │  │  0x00007ff276fd79d1:   jae    0x00007ff276fd7dfd           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
           │  │  0x00007ff276fd79d7:   mov    %rsi,(%rsp)
   0.03%   │  │  0x00007ff276fd79db:   mov    %edi,%esi
           │  │  0x00007ff276fd79dd:   add    0x10(%r13,%rbp,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
   0.00%   │  │  0x00007ff276fd79e2:   cmp    $0x40,%esi
           │  ╰  0x00007ff276fd79e5:   jge    0x00007ff276fd77ff
           │     0x00007ff276fd79eb:   jmp    0x00007ff276fd7f54           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
           ↘     0x00007ff276fd79f0:   mov    %edi,0x10(%rsp)
                 0x00007ff276fd79f4:   mov    %r11,0x18(%rsp)
                 0x00007ff276fd79f9:   mov    %edx,%edi
   0.07%         0x00007ff276fd79fb:   nopl   0x0(%rax,%rax,1)
                 0x00007ff276fd7a00:   cmp    $0x20,%eax
                 0x00007ff276fd7a03:   jge    0x00007ff276fd7df1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
                 0x00007ff276fd7a09:   test   %r9d,%r9d
                 0x00007ff276fd7a0c:   je     0x00007ff276fd7de5
                 0x00007ff276fd7a12:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
   0.05%         0x00007ff276fd7a1c:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
   0.00%         0x00007ff276fd7a1f:   mov    %eax,%edx
   0.00%         0x00007ff276fd7a21:   shl    $0x3,%edx
....................................................................................................
  43.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 

                  0x00007ff276fd79f0:   mov    %edi,0x10(%rsp)
                  0x00007ff276fd79f4:   mov    %r11,0x18(%rsp)
                  0x00007ff276fd79f9:   mov    %edx,%edi
   0.07%          0x00007ff276fd79fb:   nopl   0x0(%rax,%rax,1)
                  0x00007ff276fd7a00:   cmp    $0x20,%eax
                  0x00007ff276fd7a03:   jge    0x00007ff276fd7df1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
                  0x00007ff276fd7a09:   test   %r9d,%r9d
                  0x00007ff276fd7a0c:   je     0x00007ff276fd7de5
                  0x00007ff276fd7a12:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
   0.05%          0x00007ff276fd7a1c:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
   0.00%          0x00007ff276fd7a1f:   mov    %eax,%edx
   0.00%          0x00007ff276fd7a21:   shl    $0x3,%edx
                  0x00007ff276fd7a24:   mov    %eax,%r10d
   0.03%          0x00007ff276fd7a27:   shl    %r10d
   0.00%          0x00007ff276fd7a2a:   add    %edx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
                  0x00007ff276fd7a2d:   mov    %r10d,%edx
                  0x00007ff276fd7a30:   shl    $0x3,%edx
   0.06%          0x00007ff276fd7a33:   mov    %r10d,%r11d
                  0x00007ff276fd7a36:   shl    %r11d
                  0x00007ff276fd7a39:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
                  0x00007ff276fd7a3c:   nopl   0x0(%rax)
   0.07%          0x00007ff276fd7a40:   cmp    $0x1,%r11d
                  0x00007ff276fd7a44:   jl     0x00007ff276fd7eda           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.00%          0x00007ff276fd7a4a:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
                  0x00007ff276fd7a4d:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
                  0x00007ff276fd7a4f:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
   0.06%          0x00007ff276fd7a52:   mov    %esi,%ecx
   0.00%          0x00007ff276fd7a54:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.06%          0x00007ff276fd7a56:   mov    %r8d,%ecx
                  0x00007ff276fd7a59:   mov    %edx,%r8d
                  0x00007ff276fd7a5c:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.07%          0x00007ff276fd7a5f:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
                  0x00007ff276fd7a60:   idiv   %r8d                         ; implicit exception: deoptimizes
                                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.87%          0x00007ff276fd7a63:   test   %eax,%eax
                  0x00007ff276fd7a65:   je     0x00007ff276fd7dc5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
   0.08%          0x00007ff276fd7a6b:   mov    %edx,%ecx
   0.01%          0x00007ff276fd7a6d:   shl    $0x3,%ecx
   0.00%          0x00007ff276fd7a70:   shl    %edx
   0.01%          0x00007ff276fd7a72:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.04%          0x00007ff276fd7a74:   cmp    %ecx,%r10d
                  0x00007ff276fd7a77:   jg     0x00007ff276fd7db5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.07%          0x00007ff276fd7a7d:   mov    %r8d,%edx
   0.01%          0x00007ff276fd7a80:   shl    $0x3,%edx
                  0x00007ff276fd7a83:   mov    %r8d,%ebx
   0.01%          0x00007ff276fd7a86:   shl    %ebx
   0.05%          0x00007ff276fd7a88:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.00%          0x00007ff276fd7a8a:   mov    %ecx,%edx
                  0x00007ff276fd7a8c:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.01%          0x00007ff276fd7a8f:   cmp    %ebx,%edx
                  0x00007ff276fd7a91:   jg     0x00007ff276fd7da9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.03%          0x00007ff276fd7a97:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.00%          0x00007ff276fd7a9a:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
                  0x00007ff276fd7aa3:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
   0.01%          0x00007ff276fd7aa5:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.07%          0x00007ff276fd7aa6:   idiv   %r8d                         ; implicit exception: deoptimizes
                                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.36%          0x00007ff276fd7aa9:   mov    %edx,%esi
   0.01%          0x00007ff276fd7aab:   shl    $0x3,%esi
   0.04%          0x00007ff276fd7aae:   shl    %edx
   0.00%          0x00007ff276fd7ab0:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.04%          0x00007ff276fd7ab2:   cmp    %esi,%r11d
                  0x00007ff276fd7ab5:   jg     0x00007ff276fd7d89           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.05%          0x00007ff276fd7abb:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.00%          0x00007ff276fd7abe:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
                  0x00007ff276fd7ac7:   mov    %esi,%eax
                  0x00007ff276fd7ac9:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.04%          0x00007ff276fd7acc:   cmp    %ebx,%eax
   0.00%          0x00007ff276fd7ace:   setg   %al
   0.04%          0x00007ff276fd7ad1:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.05%          0x00007ff276fd7ad4:   mov    $0x2,%ecx
                  0x00007ff276fd7ad9:   mov    %eax,%r9d
                  0x00007ff276fd7adc:   mov    %r11d,%r10d
                  0x00007ff276fd7adf:   mov    %esi,%r11d
   0.04%  ╭       0x00007ff276fd7ae2:   jmp    0x00007ff276fd7b80           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │       0x00007ff276fd7ae7:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       0x00007ff276fd7af2:   data16 data16 xchg %ax,%ax
          │       0x00007ff276fd7af6:   data16 nopw 0x0(%rax,%rax,1)        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.05%  │↗      0x00007ff276fd7b00:   mov    %r10d,%eax
   0.23%  ││      0x00007ff276fd7b03:   shl    $0x3,%eax
          ││      0x00007ff276fd7b06:   mov    %r10d,%edx
          ││      0x00007ff276fd7b09:   shl    %edx
   0.04%  ││      0x00007ff276fd7b0b:   mov    %eax,%r9d
   0.24%  ││      0x00007ff276fd7b0e:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          ││      0x00007ff276fd7b11:   cmp    $0x1,%r9d
          ││      0x00007ff276fd7b15:   jl     0x00007ff276fd7d6b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          ││      0x00007ff276fd7b1b:   nopl   0x0(%rax,%rax,1)
   0.06%  ││      0x00007ff276fd7b20:   cmp    %ecx,%edi
          ││      0x00007ff276fd7b22:   jbe    0x00007ff276fd7c89           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.18%  ││      0x00007ff276fd7b28:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          ││      0x00007ff276fd7b2b:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ││      0x00007ff276fd7b2c:   idiv   %r8d                         ; implicit exception: deoptimizes
          ││                                                                ; ImmutableOopMap {r13=Oop [0]=Oop }
   5.77%  ││      0x00007ff276fd7b2f:   mov    %edx,%esi
   0.12%  ││      0x00007ff276fd7b31:   shl    $0x3,%esi
   0.07%  ││      0x00007ff276fd7b34:   shl    %edx
   0.11%  ││      0x00007ff276fd7b36:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.14%  ││      0x00007ff276fd7b38:   nopl   0x0(%rax,%rax,1)
   0.06%  ││      0x00007ff276fd7b40:   cmp    %esi,%r9d
          ││      0x00007ff276fd7b43:   jg     0x00007ff276fd7d39           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.16%  ││      0x00007ff276fd7b49:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.05%  ││      0x00007ff276fd7b4d:   mov    %r10w,0x10(%r13,%rcx,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          ││      0x00007ff276fd7b53:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.05%  ││      0x00007ff276fd7b55:   mov    %esi,%r10d
   0.14%  ││      0x00007ff276fd7b58:   add    %r9d,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.04%  ││      0x00007ff276fd7b5b:   cmp    %ebx,%r10d
   0.02%  ││      0x00007ff276fd7b5e:   setg   %r10b
   0.19%  ││      0x00007ff276fd7b62:   movzbl %r10b,%r10d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.24%  ││      0x00007ff276fd7b66:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          ││                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
          ││      0x00007ff276fd7b6d:   test   %eax,(%r11)                  ;   {poll}
          ││      0x00007ff276fd7b70:   mov    %esi,%r11d
          ││      0x00007ff276fd7b73:   mov    %r9d,0xc(%rsp)
   0.25%  ││      0x00007ff276fd7b78:   mov    %r10d,%r9d
          ││      0x00007ff276fd7b7b:   mov    0xc(%rsp),%r10d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ↘│      0x00007ff276fd7b80:   test   %r9d,%r9d
           ╰      0x00007ff276fd7b83:   je     0x00007ff276fd7b00
            ╭     0x00007ff276fd7b89:   jmp    0x00007ff276fd7bef           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.05%    │     0x00007ff276fd7b8e:   test   %r11,%r11
            │     0x00007ff276fd7b91:   je     0x00007ff276fd7cae           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.01%    │     0x00007ff276fd7b97:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
            │     0x00007ff276fd7b9a:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
   0.00%    │     0x00007ff276fd7b9d:   mov    %ecx,%r10d
   0.03%    │     0x00007ff276fd7ba0:   mov    %esi,%ecx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
   0.01%    │ ↗   0x00007ff276fd7ba2:   test   %r9d,%r9d
            │ │   0x00007ff276fd7ba5:   je     0x00007ff276fd7d4b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.05%    │ │   0x00007ff276fd7bab:   mov    (%rsp),%rdx
            │ │   0x00007ff276fd7baf:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.04%    │ │   0x00007ff276fd7bb6:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.02%    │ │   0x00007ff276fd7bbd:   mov    %ecx,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.06%    │ │   0x00007ff276fd7bc0:   test   %r10d,%r10d
            │╭│   0x00007ff276fd7bc3:   je     0x00007ff276fd7c0c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
            │││   0x00007ff276fd7bc9:   test   %r11,%r11
            │││   0x00007ff276fd7bcc:   je     0x00007ff276fd7d1e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
   0.04%    │││   0x00007ff276fd7bd2:   cmp    $0x1,%r11
            │││   0x00007ff276fd7bd6:   jge    0x00007ff276fd7dd1           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.01%    │││↗  0x00007ff276fd7bdc:   mov    0x30(%rsp),%rbp
            ││││  0x00007ff276fd7be1:   add    $0x38,%rsp
   0.05%    ││││  0x00007ff276fd7be5:   mov    0x348(%r15),%rcx
   0.06%    ││││  0x00007ff276fd7bec:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%    ││││  0x00007ff276fd7bee:   ret                                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
   0.05%    ↘│││  0x00007ff276fd7bef:   test   %r11d,%r11d
             │││  0x00007ff276fd7bf2:   je     0x00007ff276fd7cce           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@714 (line 649)
             │││  0x00007ff276fd7bf8:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@704 (line 648)
             │││  0x00007ff276fd7bfb:   sub    %ebx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@707 (line 648)
   0.00%     │││  0x00007ff276fd7bfe:   movslq %r11d,%r10                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@708 (line 648)
   0.05%     │││  0x00007ff276fd7c01:   mov    %r10,%r11
             │││  0x00007ff276fd7c04:   mov    $0x0,%r10d
             │╰│  0x00007ff276fd7c0a:   jmp    0x00007ff276fd7ba2           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
             ↘ │  0x00007ff276fd7c0c:   mov    %ecx,%r8d
               │  0x00007ff276fd7c0f:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
               │  0x00007ff276fd7c12:   cmp    %r8d,%edi
               │  0x00007ff276fd7c15:   jbe    0x00007ff276fd7d0f           ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.04%       │  0x00007ff276fd7c1b:   movzwl 0x10(%r13,%r8,2),%ebx        ;*caload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
               │  0x00007ff276fd7c21:   cmp    $0x39,%ebx
               │  0x00007ff276fd7c24:   je     0x00007ff276fd7cee           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
               │  0x00007ff276fd7c2a:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
               │  0x00007ff276fd7c2c:   mov    %bx,0x10(%r13,%r8,2)         ;*castore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.05%       │  0x00007ff276fd7c32:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
               │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
               ╰  0x00007ff276fd7c36:   jmp    0x00007ff276fd7bdc           ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1508 (line 781)
                  0x00007ff276fd7c38:   mov    %r8d,%ecx
                  0x00007ff276fd7c3b:   mov    %r11,%r8
                  0x00007ff276fd7c3e:   mov    %r10d,%ebx
                  0x00007ff276fd7c41:   mov    %rsi,%rdx
....................................................................................................
  12.17%  <total for region 2>

....[Hottest Regions]...............................................................................
  43.45%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 
  12.17%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 
   5.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 806 
   5.23%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.22%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 791 
   4.98%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 821 
   3.95%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 804 
   3.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 806 
   2.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 806 
   1.72%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 805 
   1.38%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 804 
   1.37%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 805 
   1.11%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.81%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 821 
   0.71%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 821 
   0.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 806 
   0.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 806 
   0.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_string_builder_jmhTest::string_builder_avgt_jmhStub, version 5, compile id 824 
   0.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 806 
   0.53%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 805 
   3.33%  <...other 447 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.61%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 785 
  13.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 806 
   6.51%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 821 
   5.32%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 804 
   5.23%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   5.22%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 791 
   4.20%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 805 
   1.44%               kernel  [unknown] 
   1.11%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_string_builder_jmhTest::string_builder_avgt_jmhStub, version 5, compile id 824 
   0.08%                       <unknown> 
   0.06%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  ObjArrayAllocator::initialize 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.50%  <...other 154 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.45%       jvmci, level 4
   6.34%         runtime stub
   1.44%               kernel
   0.45%            libjvm.so
   0.14%         libc-2.31.so
   0.08%                     
   0.04%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%      perf-113999.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_builder
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 62.50% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 908.872 ns/op
# Warmup Iteration   2: 837.543 ns/op
# Warmup Iteration   3: 829.605 ns/op
# Warmup Iteration   4: 829.345 ns/op
# Warmup Iteration   5: 829.310 ns/op
Iteration   1: 829.496 ns/op
Iteration   2: 829.572 ns/op
Iteration   3: 829.359 ns/op
Iteration   4: 829.755 ns/op
Iteration   5: 830.289 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_builder":
  829.694 ±(99.9%) 1.394 ns/op [Average]
  (min, avg, max) = (829.359, 829.694, 830.289), stdev = 0.362
  CI (99.9%): [828.300, 831.088] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_builder:·asm":
PrintAssembly processed: 210224 total address lines.
Perf output processed (skipped 58.468 seconds):
 Column 1: cycles (50606 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 787 

                #           [sp+0x40]  (sp of caller)
                0x00007f29beffd260:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                0x00007f29beffd264:   movabs $0x800000000,%r12
                0x00007f29beffd26e:   add    %r12,%r10
                0x00007f29beffd271:   xor    %r12,%r12
                0x00007f29beffd274:   cmp    %r10,%rax
                0x00007f29beffd277:   jne    0x00007f29b74ff780           ;   {runtime_call ic_miss_stub}
                0x00007f29beffd27d:   nop
                0x00007f29beffd27e:   xchg   %ax,%ax
              [Verified Entry Point]
   0.02%        0x00007f29beffd280:   mov    %eax,-0x14000(%rsp)
   0.08%        0x00007f29beffd287:   sub    $0x38,%rsp
                0x00007f29beffd28b:   mov    %rbp,0x30(%rsp)
   0.02%        0x00007f29beffd290:   mov    %edx,%r10d
                0x00007f29beffd293:   mov    %rcx,%r11
   0.06%        0x00007f29beffd296:   lea    0x15(%r10),%ecx              ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
                0x00007f29beffd29a:   nopw   0x0(%rax,%rax,1)
   0.03%        0x00007f29beffd2a0:   cmp    $0x54,%ecx
                0x00007f29beffd2a3:   jae    0x00007f29beffdc65           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
                0x00007f29beffd2a9:   movabs $0xfffffffffffff,%rcx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@4 (line 820)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.06%        0x00007f29beffd2b3:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@7 (line 820)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                0x00007f29beffd2b6:   movabs $0x3ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%        0x00007f29beffd2c0:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                0x00007f29beffd2c3:   vmovq  %rcx,%xmm0
   0.07%        0x00007f29beffd2c8:   vsubsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f29beffd240
                                                                          ;   {section_word}
                0x00007f29beffd2d0:   vmulsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f29beffd248
                                                                          ;   {section_word}
   0.01%        0x00007f29beffd2d8:   vaddsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f29beffd250
                                                                          ;   {section_word}
                0x00007f29beffd2e0:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.07%        0x00007f29beffd2e5:   vmulsd -0x95(%rip),%xmm1,%xmm1        # 0x00007f29beffd258
                                                                          ;   {section_word}
   0.02%        0x00007f29beffd2ed:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%        0x00007f29beffd2f1:   vmovq  %xmm0,%rcx                   ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Double::doubleToRawLongBits@-3
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.11%        0x00007f29beffd2f6:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                0x00007f29beffd300:   test   %rax,%rcx
                0x00007f29beffd303:   je     0x00007f29beffdaa5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.07%        0x00007f29beffd309:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                0x00007f29beffd313:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.08%        0x00007f29beffd316:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                0x00007f29beffd31a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%        0x00007f29beffd31c:   nopl   0x0(%rax)
                0x00007f29beffd320:   cmp    $0x3ff,%eax
                0x00007f29beffd326:   jae    0x00007f29beffdba9           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.10%        0x00007f29beffd32c:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%        0x00007f29beffd336:   test   %rax,%rcx
                0x00007f29beffd339:   je     0x00007f29beffdb3b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%        0x00007f29beffd33f:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
                0x00007f29beffd344:   mov    $0x35,%ecx
   0.07%        0x00007f29beffd349:   mov    %ecx,%edi
                0x00007f29beffd34b:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
   0.01%        0x00007f29beffd34d:   cmp    $0x1,%edi
                0x00007f29beffd350:   je     0x00007f29beffdbcd           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
   0.00%        0x00007f29beffd356:   mov    %edi,%ecx
   0.07%        0x00007f29beffd358:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
   0.00%        0x00007f29beffd35b:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
   0.02%        0x00007f29beffd35d:   cmp    $0x1,%ecx
                0x00007f29beffd360:   mov    $0x0,%eax
   0.06%        0x00007f29beffd365:   mov    %ecx,%ebp
                0x00007f29beffd367:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.Math::max@2 (line 1562)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
   0.02%        0x00007f29beffd36a:   mov    %ebp,%ecx
   0.00%        0x00007f29beffd36c:   add    %r10d,%ecx
   0.09%        0x00007f29beffd36f:   inc    %ecx
   0.00%        0x00007f29beffd371:   mov    %ecx,%eax
   0.02%        0x00007f29beffd373:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
                0x00007f29beffd376:   add    %ebx,%ecx
   0.07%        0x00007f29beffd378:   lea    -0x34(%rcx),%ecx
                0x00007f29beffd37b:   cmp    %ebp,%ecx
   0.02%        0x00007f29beffd37d:   mov    %ecx,%edx
                0x00007f29beffd37f:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.Math::min@2 (line 1649)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.06%        0x00007f29beffd382:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.00%        0x00007f29beffd384:   test   %eax,%eax
                0x00007f29beffd386:   jge    0x00007f29beffdb85           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.03%        0x00007f29beffd38c:   mov    %r10d,0x14(%rsp)
                0x00007f29beffd391:   movabs $0x7ff5b2a20,%r13            ;   {oop([I{0x00000007ff5b2a20})}
   0.07%        0x00007f29beffd39b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
                0x00007f29beffd39f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.02%        0x00007f29beffd3a1:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
                0x00007f29beffd3a3:   mov    %ecx,%r10d
   0.06%        0x00007f29beffd3a6:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
   0.00%        0x00007f29beffd3a9:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.03%        0x00007f29beffd3ac:   cmp    $0x40,%r10d
                0x00007f29beffd3b0:   jge    0x00007f29beffdc05           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
                0x00007f29beffd3b6:   mov    %r8d,0x24(%rsp)
   0.05%        0x00007f29beffd3bb:   mov    %ebp,%r8d
                0x00007f29beffd3be:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.02%        0x00007f29beffd3c1:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
                0x00007f29beffd3c4:   mov    %r8d,%eax
   0.08%        0x00007f29beffd3c7:   add    %r14d,%eax
   0.00%        0x00007f29beffd3ca:   inc    %eax
   0.03%        0x00007f29beffd3cc:   cmp    $0x40,%eax
                0x00007f29beffd3cf:   jge    0x00007f29beffd9b7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
                0x00007f29beffd3d5:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
                                                                          ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
   0.08%        0x00007f29beffd3d9:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007f29beffdc89
   0.00%        0x00007f29beffd3e1:   cmp    $0x2,%edx
                0x00007f29beffd3e4:   jb     0x00007f29beffdc25           ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.02%        0x00007f29beffd3ea:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
                0x00007f29beffd3ee:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
   0.08%        0x00007f29beffd3f2:   cmp    $0x1b,%ebp
                0x00007f29beffd3f5:   jl     0x00007f29beffd88a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
   0.01%        0x00007f29beffd3fb:   mov    %rsi,(%rsp)                  ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.01%        0x00007f29beffd3ff:   mov    %ecx,%esi
   0.03%        0x00007f29beffd401:   mov    %r14d,%r13d
   0.05%        0x00007f29beffd404:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
   0.02%        0x00007f29beffd408:   mov    %ebx,%ecx
   0.01%        0x00007f29beffd40a:   mov    %ebx,0x10(%rsp)
   0.02%        0x00007f29beffd40e:   mov    %r11,%rbx
   0.04%        0x00007f29beffd411:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.05%        0x00007f29beffd414:   cmp    $0x20,%r10d
                0x00007f29beffd418:   jl     0x00007f29beffd6d9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
   0.04%        0x00007f29beffd41e:   xchg   %ax,%ax
                0x00007f29beffd420:   test   %r9d,%r9d
                0x00007f29beffd423:   je     0x00007f29beffda5d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
                0x00007f29beffd429:   mov    %edi,0xc(%rsp)
   0.00%        0x00007f29beffd42d:   mov    %r11,0x18(%rsp)
   0.04%        0x00007f29beffd432:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
   0.00%        0x00007f29beffd43c:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
   0.00%        0x00007f29beffd440:   mov    %rax,%r10
   0.00%        0x00007f29beffd443:   shl    $0x3,%r10
   0.05%        0x00007f29beffd447:   mov    %rax,%r11
   0.00%        0x00007f29beffd44a:   shl    %r11
   0.01%        0x00007f29beffd44d:   add    %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
                0x00007f29beffd450:   mov    %r10,%r11
   0.03%        0x00007f29beffd453:   shl    $0x3,%r11
   0.00%        0x00007f29beffd457:   mov    %r10,%rdi
   0.01%        0x00007f29beffd45a:   shl    %rdi
                0x00007f29beffd45d:   add    %rdi,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
   0.02%        0x00007f29beffd460:   cmp    $0x1,%r11
                0x00007f29beffd464:   jl     0x00007f29beffda51           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
                0x00007f29beffd46a:   mov    %edx,%edi
   0.00%        0x00007f29beffd46c:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
                0x00007f29beffd470:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
   0.03%        0x00007f29beffd474:   mov    %esi,%ecx
   0.01%        0x00007f29beffd476:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.06%        0x00007f29beffd479:   mov    %r8d,%ecx
                0x00007f29beffd47c:   mov    %rdx,%r8
                0x00007f29beffd47f:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
   0.05%        0x00007f29beffd482:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
   0.01%        0x00007f29beffd485:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
                0x00007f29beffd487:   idiv   %r8                          ; implicit exception: deoptimizes
                                                                          ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.72%        0x00007f29beffd48a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
                0x00007f29beffd48c:   test   %eax,%eax
                0x00007f29beffd48e:   je     0x00007f29beffdb5f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
                0x00007f29beffd494:   mov    %rdx,%rcx
   0.04%        0x00007f29beffd497:   shl    $0x3,%rcx
   0.01%        0x00007f29beffd49b:   shl    %rdx
   0.00%        0x00007f29beffd49e:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
                0x00007f29beffd4a1:   cmp    %rcx,%r10
                0x00007f29beffd4a4:   jg     0x00007f29beffd8eb           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
   0.04%        0x00007f29beffd4aa:   mov    %r8,%rdx
   0.00%        0x00007f29beffd4ad:   shl    $0x3,%rdx
                0x00007f29beffd4b1:   mov    %r8,%rbx
                0x00007f29beffd4b4:   shl    %rbx
   0.05%        0x00007f29beffd4b7:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
                0x00007f29beffd4ba:   mov    %rcx,%rdx
   0.00%        0x00007f29beffd4bd:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
                0x00007f29beffd4c0:   cmp    %rbx,%rdx
                0x00007f29beffd4c3:   jg     0x00007f29beffdb6b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
   0.05%        0x00007f29beffd4c9:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
                0x00007f29beffd4cc:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%        0x00007f29beffd4d5:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
                0x00007f29beffd4d8:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
   0.06%        0x00007f29beffd4da:   idiv   %r8                          ; implicit exception: deoptimizes
                                                                          ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.89%        0x00007f29beffd4dd:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
                0x00007f29beffd4df:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
                0x00007f29beffd4e2:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.02%        0x00007f29beffd4eb:   mov    %rdx,%rax
   0.01%        0x00007f29beffd4ee:   shl    $0x3,%rax
                0x00007f29beffd4f2:   shl    %rdx
                0x00007f29beffd4f5:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.06%        0x00007f29beffd4f8:   mov    %rax,%rdx
   0.01%        0x00007f29beffd4fb:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
                0x00007f29beffd4fe:   cmp    %rbx,%rdx
                0x00007f29beffd501:   setg   %dl
   0.05%        0x00007f29beffd504:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.04%        0x00007f29beffd507:   cmp    %rax,%r11
                0x00007f29beffd50a:   setg   %cl
                0x00007f29beffd50d:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.03%        0x00007f29beffd510:   mov    $0x2,%esi
   0.01%        0x00007f29beffd515:   mov    %edx,%r9d
                0x00007f29beffd518:   mov    %r11,%r10
                0x00007f29beffd51b:   mov    %rax,%r11
   0.02%        0x00007f29beffd51e:   xchg   %ax,%ax
   0.02%  ╭     0x00007f29beffd520:   jmp    0x00007f29beffd5c1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │     0x00007f29beffd525:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007f29beffd530:   data16 data16 xchg %ax,%ax
          │     0x00007f29beffd534:   nopl   0x0(%rax,%rax,1)
          │     0x00007f29beffd53c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.06%  │↗    0x00007f29beffd540:   test   %r9d,%r9d
          ││    0x00007f29beffd543:   jne    0x00007f29beffdb2d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.49%  ││    0x00007f29beffd549:   mov    %r10,%rax
   0.13%  ││    0x00007f29beffd54c:   shl    $0x3,%rax
          ││    0x00007f29beffd550:   mov    %r10,%rdx
   0.04%  ││    0x00007f29beffd553:   shl    %rdx
   0.50%  ││    0x00007f29beffd556:   mov    %rax,%rcx
   0.13%  ││    0x00007f29beffd559:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          ││    0x00007f29beffd55c:   nopl   0x0(%rax)
   0.06%  ││    0x00007f29beffd560:   cmp    $0x1,%rcx
          ││    0x00007f29beffd564:   jl     0x00007f29beffdbf1           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.48%  ││    0x00007f29beffd56a:   cmp    %esi,%edi
          ││    0x00007f29beffd56c:   jbe    0x00007f29beffdb09           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.22%  ││    0x00007f29beffd572:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          ││    0x00007f29beffd575:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.06%  ││    0x00007f29beffd577:   idiv   %r8                          ; implicit exception: deoptimizes
          ││                                                              ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
  26.07%  ││    0x00007f29beffd57a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.00%  ││    0x00007f29beffd57c:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.02%  ││    0x00007f29beffd580:   mov    %r10w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.62%  ││    0x00007f29beffd586:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.06%  ││    0x00007f29beffd588:   mov    %rdx,%r10
          ││    0x00007f29beffd58b:   shl    $0x3,%r10
   0.01%  ││    0x00007f29beffd58f:   shl    %rdx
   0.59%  ││    0x00007f29beffd592:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.07%  ││    0x00007f29beffd595:   cmp    %r10,%rcx
          ││    0x00007f29beffd598:   setg   %dl
   0.03%  ││    0x00007f29beffd59b:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.61%  ││    0x00007f29beffd59e:   mov    %r10,%r11
   0.08%  ││    0x00007f29beffd5a1:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          ││    0x00007f29beffd5a4:   cmp    %rbx,%r11
   0.01%  ││    0x00007f29beffd5a7:   setg   %r9b
   0.57%  ││    0x00007f29beffd5ab:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.19%  ││    0x00007f29beffd5af:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
          ││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          ││    0x00007f29beffd5b6:   test   %eax,(%r11)                  ;   {poll}
   0.01%  ││    0x00007f29beffd5b9:   mov    %r10,%r11
   0.50%  ││    0x00007f29beffd5bc:   mov    %rcx,%r10
   0.18%  ││    0x00007f29beffd5bf:   mov    %edx,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ↘│    0x00007f29beffd5c1:   test   %ecx,%ecx
           ╰    0x00007f29beffd5c3:   je     0x00007f29beffd540           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
                0x00007f29beffd5c9:   test   %r11,%r11
                0x00007f29beffd5cc:   je     0x00007f29beffdae9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.04%        0x00007f29beffd5d2:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
   0.01%        0x00007f29beffd5d5:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
   0.00%        0x00007f29beffd5d8:   nopl   0x0(%rax,%rax,1)
   0.04%        0x00007f29beffd5e0:   test   %r9d,%r9d
                0x00007f29beffd5e3:   je     0x00007f29beffdac9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.03%        0x00007f29beffd5e9:   mov    (%rsp),%rdx
   0.01%        0x00007f29beffd5ed:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.01%        0x00007f29beffd5f4:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.04%        0x00007f29beffd5fb:   mov    %esi,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.05%        0x00007f29beffd5fe:   xchg   %ax,%ax
   0.01%        0x00007f29beffd600:   test   %ecx,%ecx
            ╭   0x00007f29beffd602:   je     0x00007f29beffd62e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
            │   0x00007f29beffd608:   test   %r11,%r11
            │   0x00007f29beffd60b:   je     0x00007f29beffdc51           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
   0.00%    │   0x00007f29beffd611:   cmp    $0x1,%r11
            │   0x00007f29beffd615:   jge    0x00007f29beffdc3f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.04%    │↗  0x00007f29beffd61b:   mov    0x30(%rsp),%rbp
   0.01%    ││  0x00007f29beffd620:   add    $0x38,%rsp
   0.00%    ││  0x00007f29beffd624:   mov    0x348(%r15),%rcx
   0.04%    ││  0x00007f29beffd62b:   test   %eax,(%rcx)                  ;   {poll_return}
   0.06%    ││  0x00007f29beffd62d:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
   0.01%    ↘│  0x00007f29beffd62e:   mov    %esi,%r10d
   0.05%     │  0x00007f29beffd631:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
             │  0x00007f29beffd634:   cmp    %r10d,%edi
             │  0x00007f29beffd637:   jbe    0x00007f29beffda72
             │  0x00007f29beffd63d:   movzwl 0x10(%r13,%r10,2),%r11d      ;*caload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.00%     │  0x00007f29beffd643:   cmp    $0x39,%r11d
             │  0x00007f29beffd647:   je     0x00007f29beffd6ce           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.03%     │  0x00007f29beffd64d:   cmp    %r10d,%edi
             │  0x00007f29beffd650:   jbe    0x00007f29beffd90e           ;*castore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
             │  0x00007f29beffd656:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
             │  0x00007f29beffd659:   mov    %r11w,0x10(%r13,%r10,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.00%     │  0x00007f29beffd65f:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
             │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.03%     ╰  0x00007f29beffd663:   jmp    0x00007f29beffd61b
                0x00007f29beffd665:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f29beffd670:   data16 data16 xchg %ax,%ax
                0x00007f29beffd674:   nopl   0x0(%rax,%rax,1)
                0x00007f29beffd67c:   data16 data16 xchg %ax,%ax          ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@28 (line 792)
                                                                          ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
                0x00007f29beffd680:   cmp    $0x1,%r10d
                0x00007f29beffd684:   jl     0x00007f29beffd8ae           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  39.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 787 

               0x00007f29beffd6c6:   mov    %r10d,%r11d
               0x00007f29beffd6c9:   mov    0x10(%rsp),%r10d             ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@25 (line 792)
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
               0x00007f29beffd6ce:   cmp    $0x39,%r11d
               0x00007f29beffd6d2:   je     0x00007f29beffd680
          ╭    0x00007f29beffd6d4:   jmp    0x00007f29beffd8ae           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@28 (line 792)
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │    0x00007f29beffd6d9:   mov    %edi,0xc(%rsp)
   0.01%  │    0x00007f29beffd6dd:   mov    %r11,0x18(%rsp)
          │    0x00007f29beffd6e2:   mov    %edx,%edi
   0.02%  │    0x00007f29beffd6e4:   cmp    $0x20,%eax
          │    0x00007f29beffd6e7:   jge    0x00007f29beffdb77           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
          │    0x00007f29beffd6ed:   test   %r9d,%r9d
          │    0x00007f29beffd6f0:   je     0x00007f29beffda25
   0.04%  │    0x00007f29beffd6f6:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
          │    0x00007f29beffd700:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
   0.03%  │    0x00007f29beffd703:   mov    %eax,%edx
          │    0x00007f29beffd705:   shl    $0x3,%edx
   0.02%  │    0x00007f29beffd708:   mov    %eax,%r10d
          │    0x00007f29beffd70b:   shl    %r10d
   0.03%  │    0x00007f29beffd70e:   add    %edx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
          │    0x00007f29beffd711:   mov    %r10d,%edx
   0.01%  │    0x00007f29beffd714:   shl    $0x3,%edx
          │    0x00007f29beffd717:   mov    %r10d,%r11d
   0.03%  │    0x00007f29beffd71a:   shl    %r11d
          │    0x00007f29beffd71d:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
   0.02%  │    0x00007f29beffd720:   cmp    $0x1,%r11d
          │    0x00007f29beffd724:   jl     0x00007f29beffda18           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.00%  │    0x00007f29beffd72a:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
   0.04%  │    0x00007f29beffd72d:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
          │    0x00007f29beffd72f:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
   0.01%  │    0x00007f29beffd732:   mov    %esi,%ecx
          │    0x00007f29beffd734:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.03%  │    0x00007f29beffd736:   mov    %r8d,%ecx
          │    0x00007f29beffd739:   mov    %edx,%r8d
   0.03%  │    0x00007f29beffd73c:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.01%  │    0x00007f29beffd73f:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.03%  │    0x00007f29beffd740:   idiv   %r8d                         ; implicit exception: deoptimizes
          │                                                              ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.54%  │    0x00007f29beffd743:   test   %eax,%eax
          │    0x00007f29beffd745:   je     0x00007f29beffda00           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
   0.02%  │    0x00007f29beffd74b:   mov    %edx,%ecx
   0.01%  │    0x00007f29beffd74d:   shl    $0x3,%ecx
   0.03%  │    0x00007f29beffd750:   shl    %edx
   0.02%  │    0x00007f29beffd752:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.02%  │    0x00007f29beffd754:   cmp    %ecx,%r10d
          │    0x00007f29beffd757:   jg     0x00007f29beffd92a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.03%  │    0x00007f29beffd75d:   mov    %r8d,%edx
   0.00%  │    0x00007f29beffd760:   shl    $0x3,%edx
          │    0x00007f29beffd763:   mov    %r8d,%ebx
   0.00%  │    0x00007f29beffd766:   shl    %ebx
   0.04%  │    0x00007f29beffd768:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.00%  │    0x00007f29beffd76a:   mov    %ecx,%edx
          │    0x00007f29beffd76c:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.01%  │    0x00007f29beffd76f:   cmp    %ebx,%edx
          │    0x00007f29beffd771:   jg     0x00007f29beffda0c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.02%  │    0x00007f29beffd777:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.01%  │    0x00007f29beffd77a:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │    0x00007f29beffd783:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
   0.00%  │    0x00007f29beffd785:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.05%  │    0x00007f29beffd786:   idiv   %r8d                         ; implicit exception: deoptimizes
          │                                                              ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.18%  │    0x00007f29beffd789:   mov    %edx,%esi
   0.01%  │    0x00007f29beffd78b:   shl    $0x3,%esi
   0.03%  │    0x00007f29beffd78e:   shl    %edx
   0.00%  │    0x00007f29beffd790:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.04%  │    0x00007f29beffd792:   cmp    %esi,%r11d
          │    0x00007f29beffd795:   jg     0x00007f29beffd9e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.04%  │    0x00007f29beffd79b:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.01%  │    0x00007f29beffd79e:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │    0x00007f29beffd7a7:   mov    %esi,%eax
          │    0x00007f29beffd7a9:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.04%  │    0x00007f29beffd7ac:   cmp    %ebx,%eax
   0.02%  │    0x00007f29beffd7ae:   setg   %al
   0.05%  │    0x00007f29beffd7b1:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.05%  │    0x00007f29beffd7b4:   mov    $0x2,%ecx
          │    0x00007f29beffd7b9:   mov    %eax,%r9d
          │    0x00007f29beffd7bc:   mov    %r11d,%r10d
          │    0x00007f29beffd7bf:   mov    %esi,%r11d
   0.05%  │╭   0x00007f29beffd7c2:   jmp    0x00007f29beffd860           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          ││   0x00007f29beffd7c7:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││   0x00007f29beffd7d2:   data16 data16 xchg %ax,%ax
          ││   0x00007f29beffd7d6:   data16 nopw 0x0(%rax,%rax,1)        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.03%  ││↗  0x00007f29beffd7e0:   mov    %r10d,%eax
   0.19%  │││  0x00007f29beffd7e3:   shl    $0x3,%eax
          │││  0x00007f29beffd7e6:   mov    %r10d,%edx
          │││  0x00007f29beffd7e9:   shl    %edx
   0.04%  │││  0x00007f29beffd7eb:   mov    %eax,%r9d
   0.14%  │││  0x00007f29beffd7ee:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │││  0x00007f29beffd7f1:   cmp    $0x1,%r9d
          │││  0x00007f29beffd7f5:   jl     0x00007f29beffd9a8           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │││  0x00007f29beffd7fb:   nopl   0x0(%rax,%rax,1)
   0.06%  │││  0x00007f29beffd800:   cmp    %ecx,%edi
          │││  0x00007f29beffd802:   jbe    0x00007f29beffd983           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.17%  │││  0x00007f29beffd808:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │││  0x00007f29beffd80b:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │││  0x00007f29beffd80c:   idiv   %r8d                         ; implicit exception: deoptimizes
          │││                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   5.02%  │││  0x00007f29beffd80f:   mov    %edx,%esi
   0.11%  │││  0x00007f29beffd811:   shl    $0x3,%esi
   0.06%  │││  0x00007f29beffd814:   shl    %edx
   0.07%  │││  0x00007f29beffd816:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.16%  │││  0x00007f29beffd818:   nopl   0x0(%rax,%rax,1)
   0.05%  │││  0x00007f29beffd820:   cmp    %esi,%r9d
          │││  0x00007f29beffd823:   jg     0x00007f29beffda93           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.14%  │││  0x00007f29beffd829:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.03%  │││  0x00007f29beffd82d:   mov    %r10w,0x10(%r13,%rcx,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.00%  │││  0x00007f29beffd833:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.07%  │││  0x00007f29beffd835:   mov    %esi,%r10d
   0.17%  │││  0x00007f29beffd838:   add    %r9d,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.04%  │││  0x00007f29beffd83b:   cmp    %ebx,%r10d
   0.02%  │││  0x00007f29beffd83e:   setg   %r10b
   0.16%  │││  0x00007f29beffd842:   movzbl %r10b,%r10d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.21%  │││  0x00007f29beffd846:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
          │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
   0.00%  │││  0x00007f29beffd84d:   test   %eax,(%r11)                  ;   {poll}
   0.00%  │││  0x00007f29beffd850:   mov    %esi,%r11d
          │││  0x00007f29beffd853:   mov    %r9d,0x8(%rsp)
   0.25%  │││  0x00007f29beffd858:   mov    %r10d,%r9d
          │││  0x00007f29beffd85b:   mov    0x8(%rsp),%r10d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │↘│  0x00007f29beffd860:   test   %r9d,%r9d
          │ ╰  0x00007f29beffd863:   je     0x00007f29beffd7e0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │    0x00007f29beffd869:   test   %r11d,%r11d
          │    0x00007f29beffd86c:   je     0x00007f29beffda31           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@714 (line 649)
   0.04%  │    0x00007f29beffd872:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@704 (line 648)
          │    0x00007f29beffd875:   sub    %ebx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@707 (line 648)
   0.00%  │    0x00007f29beffd878:   movslq %r11d,%r10                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@708 (line 648)
   0.00%  │    0x00007f29beffd87b:   mov    %r10,%r11
   0.05%  │    0x00007f29beffd87e:   mov    %ecx,%esi
          │    0x00007f29beffd880:   mov    $0x0,%ecx
          │    0x00007f29beffd885:   jmp    0x00007f29beffd5d8           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
          │    0x00007f29beffd88a:   cmp    $0x1b,%ebp
          │    0x00007f29beffd88d:   jae    0x00007f29beffd966           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
   0.02%  │    0x00007f29beffd893:   mov    %rsi,(%rsp)
          │    0x00007f29beffd897:   mov    %edi,%esi
   0.03%  │    0x00007f29beffd899:   add    0x10(%r13,%rbp,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
   0.00%  │    0x00007f29beffd89e:   xchg   %ax,%ax
   0.03%  │    0x00007f29beffd8a0:   cmp    $0x40,%esi
          │    0x00007f29beffd8a3:   jge    0x00007f29beffd3ff
          │    0x00007f29beffd8a9:   jmp    0x00007f29beffd933           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
          ↘    0x00007f29beffd8ae:   cmp    $0x39,%r11d
               0x00007f29beffd8b2:   jne    0x00007f29beffd64d           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@63 (line 796)
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
               0x00007f29beffd8b8:   movl   $0x1,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@73 (line 798)
                                                                         ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
....................................................................................................
  10.03%  <total for region 2>

....[Hottest Regions]...............................................................................
  39.02%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 787 
  10.03%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 787 
   7.46%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 845 
   4.53%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 820 
   4.50%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 799 
   4.43%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 823 
   3.13%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 795 
   2.99%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 819 
   2.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 823 
   2.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 823 
   2.02%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 805 
   1.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 823 
   1.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 823 
   1.40%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 805 
   1.23%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 795 
   1.07%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 799 
   0.88%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 823 
   0.61%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 819 
   4.53%  <...other 529 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.05%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 787 
  12.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_builder, version 2, compile id 823 
   7.77%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 4, compile id 845 
   5.81%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 799 
   4.64%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 795 
   4.53%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 820 
   4.43%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.72%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 805 
   3.60%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 819 
   1.53%               kernel  [unknown] 
   0.88%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_string_builder_jmhTest::string_builder_avgt_jmhStub, version 5, compile id 848 
   0.12%                       <unknown> 
   0.06%         libc-2.31.so  [unknown] 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.67%  <...other 176 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.16%       jvmci, level 4
   5.31%         runtime stub
   1.53%               kernel
   0.62%            libjvm.so
   0.15%         libc-2.31.so
   0.12%                     
   0.03%   libpthread-2.31.so
   0.03%               [vdso]
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_format
# Parameters: (capacity = 128, coder = LATIN1)

# Run progress: 75.00% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1429.423 ns/op
# Warmup Iteration   2: 1217.786 ns/op
# Warmup Iteration   3: 1215.635 ns/op
# Warmup Iteration   4: 1214.588 ns/op
# Warmup Iteration   5: 1214.361 ns/op
Iteration   1: 1214.985 ns/op
Iteration   2: 1214.922 ns/op
Iteration   3: 1214.304 ns/op
Iteration   4: 1215.105 ns/op
Iteration   5: 1214.520 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_format":
  1214.767 ±(99.9%) 1.308 ns/op [Average]
  (min, avg, max) = (1214.304, 1214.767, 1215.105), stdev = 0.340
  CI (99.9%): [1213.459, 1216.074] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_format:·asm":
PrintAssembly processed: 222717 total address lines.
Perf output processed (skipped 58.617 seconds):
 Column 1: cycles (50703 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 838 

                       #           [sp+0x40]  (sp of caller)
                       0x00007f091f002460:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                       0x00007f091f002464:   movabs $0x800000000,%r12
                       0x00007f091f00246e:   add    %r12,%r10
                       0x00007f091f002471:   xor    %r12,%r12
                       0x00007f091f002474:   cmp    %r10,%rax
                       0x00007f091f002477:   jne    0x00007f09174ff780           ;   {runtime_call ic_miss_stub}
                       0x00007f091f00247d:   nop
                       0x00007f091f00247e:   xchg   %ax,%ax
                     [Verified Entry Point]
   0.02%               0x00007f091f002480:   mov    %eax,-0x14000(%rsp)
   0.05%               0x00007f091f002487:   sub    $0x38,%rsp
   0.01%               0x00007f091f00248b:   mov    %rbp,0x30(%rsp)
   0.00%               0x00007f091f002490:   mov    %edx,%r10d
   0.02%               0x00007f091f002493:   mov    %rcx,%r11
   0.03%               0x00007f091f002496:   lea    0x15(%r10),%ecx              ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
   0.02%               0x00007f091f00249a:   nopw   0x0(%rax,%rax,1)
                       0x00007f091f0024a0:   cmp    $0x54,%ecx
                       0x00007f091f0024a3:   jae    0x00007f091f002d75           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
   0.01%               0x00007f091f0024a9:   movabs $0xfffffffffffff,%rcx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@4 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%               0x00007f091f0024b3:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@7 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f091f0024b6:   movabs $0x3ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%               0x00007f091f0024c0:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%               0x00007f091f0024c3:   vmovq  %rcx,%xmm0
   0.03%               0x00007f091f0024c8:   vsubsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f091f002440
                                                                                 ;   {section_word}
   0.01%               0x00007f091f0024d0:   vmulsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f091f002448
                                                                                 ;   {section_word}
                       0x00007f091f0024d8:   vaddsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f091f002450
                                                                                 ;   {section_word}
   0.01%               0x00007f091f0024e0:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.04%               0x00007f091f0024e5:   vmulsd -0x95(%rip),%xmm1,%xmm1        # 0x00007f091f002458
                                                                                 ;   {section_word}
   0.00%               0x00007f091f0024ed:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%               0x00007f091f0024f1:   vmovq  %xmm0,%rcx                   ;* unwind (locked if synchronized)
                                                                                 ; - java.lang.Double::doubleToRawLongBits@-3
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f091f0024f6:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f091f002500:   test   %rax,%rcx
                       0x00007f091f002503:   je     0x00007f091f002bc7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                       0x00007f091f002509:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%               0x00007f091f002513:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f091f002516:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f091f00251a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                       0x00007f091f00251c:   nopl   0x0(%rax)
   0.01%               0x00007f091f002520:   cmp    $0x3ff,%eax
                       0x00007f091f002526:   jae    0x00007f091f002d57           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%               0x00007f091f00252c:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%               0x00007f091f002536:   test   %rax,%rcx
                       0x00007f091f002539:   je     0x00007f091f002c85           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%               0x00007f091f00253f:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                                 ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
   0.01%               0x00007f091f002544:   mov    $0x35,%ecx
   0.02%               0x00007f091f002549:   mov    %ecx,%edi
   0.01%               0x00007f091f00254b:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
                       0x00007f091f00254d:   cmp    $0x1,%edi
                       0x00007f091f002550:   je     0x00007f091f002cd8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
   0.01%               0x00007f091f002556:   mov    %edi,%ecx
   0.05%               0x00007f091f002558:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
   0.01%               0x00007f091f00255b:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
   0.00%               0x00007f091f00255d:   cmp    $0x1,%ecx
   0.01%               0x00007f091f002560:   mov    $0x0,%eax
   0.03%               0x00007f091f002565:   mov    %ecx,%ebp
   0.02%               0x00007f091f002567:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.lang.Math::max@2 (line 1562)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
   0.00%               0x00007f091f00256a:   mov    %ebp,%ecx
   0.02%               0x00007f091f00256c:   add    %r10d,%ecx
   0.03%               0x00007f091f00256f:   inc    %ecx
   0.02%               0x00007f091f002571:   mov    %ecx,%eax
                       0x00007f091f002573:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
   0.01%               0x00007f091f002576:   add    %ebx,%ecx
   0.04%               0x00007f091f002578:   lea    -0x34(%rcx),%ecx
   0.02%               0x00007f091f00257b:   cmp    %ebp,%ecx
   0.00%               0x00007f091f00257d:   mov    %ecx,%edx
   0.01%               0x00007f091f00257f:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.lang.Math::min@2 (line 1649)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.02%               0x00007f091f002582:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.02%               0x00007f091f002584:   test   %eax,%eax
                       0x00007f091f002586:   jge    0x00007f091f002d07           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.00%               0x00007f091f00258c:   mov    %r10d,0x24(%rsp)
   0.02%               0x00007f091f002591:   movabs $0x7ff5b3320,%r13            ;   {oop([I{0x00000007ff5b3320})}
   0.04%               0x00007f091f00259b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.01%               0x00007f091f00259f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.00%               0x00007f091f0025a1:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
   0.01%               0x00007f091f0025a3:   mov    %ecx,%r10d
   0.02%               0x00007f091f0025a6:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
   0.02%               0x00007f091f0025a9:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
                       0x00007f091f0025ac:   cmp    $0x40,%r10d
          ╭            0x00007f091f0025b0:   jge    0x00007f091f002a2a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
   0.01%  │            0x00007f091f0025b6:   mov    %r8d,0x20(%rsp)
   0.02%  │            0x00007f091f0025bb:   mov    %ebp,%r8d
   0.03%  │            0x00007f091f0025be:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
          │            0x00007f091f0025c1:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.02%  │            0x00007f091f0025c4:   mov    %r8d,%eax
   0.02%  │            0x00007f091f0025c7:   add    %r14d,%eax
   0.02%  │            0x00007f091f0025ca:   inc    %eax
   0.00%  │            0x00007f091f0025cc:   cmp    $0x40,%eax
          │            0x00007f091f0025cf:   jge    0x00007f091f002c58           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.01%  │            0x00007f091f0025d5:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
          │                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
          │                                                                      ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
   0.04%  │            0x00007f091f0025d9:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007f091f002d93
   0.02%  │            0x00007f091f0025e1:   cmp    $0x2,%edx
          │            0x00007f091f0025e4:   jb     0x00007f091f002d25           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%  │            0x00007f091f0025ea:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
   0.02%  │            0x00007f091f0025ee:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
   0.03%  │            0x00007f091f0025f2:   cmp    $0x1b,%ebp
          │╭           0x00007f091f0025f5:   jl     0x00007f091f00285c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
   0.03%  ││           0x00007f091f0025fb:   mov    %rsi,(%rsp)                  ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          ││     ↗     0x00007f091f0025ff:   mov    %ecx,%esi
   0.05%  ││     │     0x00007f091f002601:   mov    %r14d,%r13d
          ││     │     0x00007f091f002604:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
   0.02%  ││     │     0x00007f091f002608:   mov    %ebx,%ecx
          ││     │     0x00007f091f00260a:   mov    %ebx,0x14(%rsp)
   0.04%  ││     │     0x00007f091f00260e:   mov    %r11,%rbx
          ││     │     0x00007f091f002611:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.05%  ││     │     0x00007f091f002614:   cmp    $0x20,%r10d
          ││╭    │     0x00007f091f002618:   jl     0x00007f091f002885           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
          │││    │     0x00007f091f00261e:   xchg   %ax,%ax
   0.02%  │││    │     0x00007f091f002620:   test   %r9d,%r9d
          │││    │     0x00007f091f002623:   je     0x00007f091f002cb1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
          │││    │     0x00007f091f002629:   mov    %edi,0x10(%rsp)
   0.01%  │││    │     0x00007f091f00262d:   mov    %r11,0x18(%rsp)
          │││    │     0x00007f091f002632:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
   0.02%  │││    │     0x00007f091f00263c:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
          │││    │     0x00007f091f002640:   mov    %rax,%r10
   0.00%  │││    │     0x00007f091f002643:   shl    $0x3,%r10
          │││    │     0x00007f091f002647:   mov    %rax,%r11
   0.01%  │││    │     0x00007f091f00264a:   shl    %r11
          │││    │     0x00007f091f00264d:   add    %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
   0.02%  │││    │     0x00007f091f002650:   mov    %r10,%r11
   0.00%  │││    │     0x00007f091f002653:   shl    $0x3,%r11
   0.02%  │││    │     0x00007f091f002657:   mov    %r10,%rdi
          │││    │     0x00007f091f00265a:   shl    %rdi
   0.02%  │││    │     0x00007f091f00265d:   add    %rdi,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││    │     0x00007f091f002660:   cmp    $0x1,%r11
          │││    │     0x00007f091f002664:   jl     0x00007f091f002ca5           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.02%  │││    │     0x00007f091f00266a:   mov    %edx,%edi
          │││    │     0x00007f091f00266c:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
   0.01%  │││    │     0x00007f091f002670:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
          │││    │     0x00007f091f002674:   mov    %esi,%ecx
   0.01%  │││    │     0x00007f091f002676:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
   0.02%  │││    │     0x00007f091f002679:   mov    %r8d,%ecx
   0.01%  │││    │     0x00007f091f00267c:   mov    %rdx,%r8
          │││    │     0x00007f091f00267f:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
   0.03%  │││    │     0x00007f091f002682:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
          │││    │     0x00007f091f002685:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │││    │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.01%  │││    │     0x00007f091f002687:   idiv   %r8                          ; implicit exception: deoptimizes
          │││    │                                                               ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.91%  │││    │     0x00007f091f00268a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
   0.00%  │││    │     0x00007f091f00268c:   test   %eax,%eax
          │││    │     0x00007f091f00268e:   je     0x00007f091f002c78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          │││    │     0x00007f091f002694:   mov    %rdx,%rcx
   0.03%  │││    │     0x00007f091f002697:   shl    $0x3,%rcx
          │││    │     0x00007f091f00269b:   shl    %rdx
          │││    │     0x00007f091f00269e:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
   0.00%  │││    │     0x00007f091f0026a1:   cmp    %rcx,%r10
          │││    │     0x00007f091f0026a4:   jg     0x00007f091f002a58           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
   0.02%  │││    │     0x00007f091f0026aa:   mov    %r8,%rdx
          │││    │     0x00007f091f0026ad:   shl    $0x3,%rdx
          │││    │     0x00007f091f0026b1:   mov    %r8,%rbx
          │││    │     0x00007f091f0026b4:   shl    %rbx
   0.02%  │││    │     0x00007f091f0026b7:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
   0.00%  │││    │     0x00007f091f0026ba:   mov    %rcx,%rdx
          │││    │     0x00007f091f0026bd:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
          │││    │     0x00007f091f0026c0:   cmp    %rbx,%rdx
          │││    │     0x00007f091f0026c3:   jg     0x00007f091f002b12           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
   0.02%  │││    │     0x00007f091f0026c9:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
   0.00%  │││    │     0x00007f091f0026cc:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%  │││    │     0x00007f091f0026d5:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││    │     0x00007f091f0026d8:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││    │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
   0.02%  │││    │     0x00007f091f0026da:   idiv   %r8                          ; implicit exception: deoptimizes
          │││    │                                                               ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.21%  │││    │     0x00007f091f0026dd:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││    │     0x00007f091f0026df:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││    │     0x00007f091f0026e2:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.02%  │││    │     0x00007f091f0026eb:   mov    %rdx,%rax
   0.01%  │││    │     0x00007f091f0026ee:   shl    $0x3,%rax
          │││    │     0x00007f091f0026f2:   shl    %rdx
          │││    │     0x00007f091f0026f5:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.04%  │││    │     0x00007f091f0026f8:   mov    %rax,%rdx
   0.00%  │││    │     0x00007f091f0026fb:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││    │     0x00007f091f0026fe:   cmp    %rbx,%rdx
          │││    │     0x00007f091f002701:   setg   %dl
   0.02%  │││    │     0x00007f091f002704:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%  │││    │     0x00007f091f002707:   cmp    %rax,%r11
          │││    │     0x00007f091f00270a:   setg   %cl
          │││    │     0x00007f091f00270d:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.02%  │││    │     0x00007f091f002710:   mov    $0x2,%esi
   0.02%  │││    │     0x00007f091f002715:   mov    %edx,%r9d
          │││    │     0x00007f091f002718:   mov    %r11,%r10
          │││    │     0x00007f091f00271b:   mov    %rax,%r11
   0.02%  │││    │     0x00007f091f00271e:   xchg   %ax,%ax
   0.01%  │││╭   │     0x00007f091f002720:   jmp    0x00007f091f0027c1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││││   │     0x00007f091f002725:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││   │     0x00007f091f002730:   data16 data16 xchg %ax,%ax
          ││││   │     0x00007f091f002734:   nopl   0x0(%rax,%rax,1)
          ││││   │     0x00007f091f00273c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.04%  ││││↗  │     0x00007f091f002740:   test   %r9d,%r9d
          │││││  │     0x00007f091f002743:   jne    0x00007f091f002c4a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.30%  │││││  │     0x00007f091f002749:   mov    %r10,%rax
   0.11%  │││││  │     0x00007f091f00274c:   shl    $0x3,%rax
          │││││  │     0x00007f091f002750:   mov    %r10,%rdx
   0.05%  │││││  │     0x00007f091f002753:   shl    %rdx
   0.29%  │││││  │     0x00007f091f002756:   mov    %rax,%rcx
   0.12%  │││││  │     0x00007f091f002759:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││││  │     0x00007f091f00275c:   nopl   0x0(%rax)
   0.05%  │││││  │     0x00007f091f002760:   cmp    $0x1,%rcx
          │││││  │     0x00007f091f002764:   jl     0x00007f091f002cf6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.34%  │││││  │     0x00007f091f00276a:   cmp    %esi,%edi
          │││││  │     0x00007f091f00276c:   jbe    0x00007f091f002c26           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.09%  │││││  │     0x00007f091f002772:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││││  │     0x00007f091f002775:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││  │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.04%  │││││  │     0x00007f091f002777:   idiv   %r8                          ; implicit exception: deoptimizes
          │││││  │                                                               ; ImmutableOopMap {r13=Oop [0]=Oop }
  17.78%  │││││  │     0x00007f091f00277a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
   0.01%  │││││  │     0x00007f091f00277c:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.01%  │││││  │     0x00007f091f002780:   mov    %r10w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.44%  │││││  │     0x00007f091f002786:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.05%  │││││  │     0x00007f091f002788:   mov    %rdx,%r10
          │││││  │     0x00007f091f00278b:   shl    $0x3,%r10
   0.01%  │││││  │     0x00007f091f00278f:   shl    %rdx
   0.46%  │││││  │     0x00007f091f002792:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.05%  │││││  │     0x00007f091f002795:   cmp    %r10,%rcx
   0.00%  │││││  │     0x00007f091f002798:   setg   %dl
   0.02%  │││││  │     0x00007f091f00279b:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.41%  │││││  │     0x00007f091f00279e:   mov    %r10,%r11
   0.05%  │││││  │     0x00007f091f0027a1:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││││  │     0x00007f091f0027a4:   cmp    %rbx,%r11
   0.02%  │││││  │     0x00007f091f0027a7:   setg   %r9b
   0.46%  │││││  │     0x00007f091f0027ab:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.13%  │││││  │     0x00007f091f0027af:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          │││││  │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││  │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          │││││  │     0x00007f091f0027b6:   test   %eax,(%r11)                  ;   {poll}
   0.01%  │││││  │     0x00007f091f0027b9:   mov    %r10,%r11
   0.26%  │││││  │     0x00007f091f0027bc:   mov    %rcx,%r10
   0.13%  │││││  │     0x00007f091f0027bf:   mov    %edx,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││↘│  │     0x00007f091f0027c1:   test   %ecx,%ecx
          │││ ╰  │     0x00007f091f0027c3:   je     0x00007f091f002740           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││    │     0x00007f091f0027c9:   test   %r11,%r11
          │││    │     0x00007f091f0027cc:   je     0x00007f091f002c06           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.03%  │││    │     0x00007f091f0027d2:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
   0.01%  │││    │     0x00007f091f0027d5:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
          │││    │  ↗  0x00007f091f0027d8:   nopl   0x0(%rax,%rax,1)
   0.03%  │││    │  │  0x00007f091f0027e0:   test   %r9d,%r9d
          │││    │  │  0x00007f091f0027e3:   je     0x00007f091f002be5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.02%  │││    │  │  0x00007f091f0027e9:   mov    (%rsp),%rdx
   0.00%  │││    │  │  0x00007f091f0027ed:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.00%  │││    │  │  0x00007f091f0027f4:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.02%  │││    │  │  0x00007f091f0027fb:   mov    %esi,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.03%  │││    │  │  0x00007f091f0027fe:   xchg   %ax,%ax
   0.01%  │││    │  │  0x00007f091f002800:   test   %ecx,%ecx
          │││  ╭ │  │  0x00007f091f002802:   je     0x00007f091f00282e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
          │││  │ │  │  0x00007f091f002808:   test   %r11,%r11
          │││  │ │  │  0x00007f091f00280b:   je     0x00007f091f002d45           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
   0.00%  │││  │ │  │  0x00007f091f002811:   cmp    $0x1,%r11
          │││  │ │  │  0x00007f091f002815:   jge    0x00007f091f002cc6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.04%  │││  │↗│  │  0x00007f091f00281b:   mov    0x30(%rsp),%rbp
   0.01%  │││  │││  │  0x00007f091f002820:   add    $0x38,%rsp
          │││  │││  │  0x00007f091f002824:   mov    0x348(%r15),%rcx
   0.00%  │││  │││  │  0x00007f091f00282b:   test   %eax,(%rcx)                  ;   {poll_return}
   0.05%  │││  │││  │  0x00007f091f00282d:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││  │││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
          │││  ↘││  │  0x00007f091f00282e:   mov    %esi,%r10d
   0.03%  │││   ││  │  0x00007f091f002831:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f091f002834:   cmp    %r10d,%edi
          │││   ││  │  0x00007f091f002837:   jbe    0x00007f091f002b97           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f091f00283d:   movzwl 0x10(%r13,%r10,2),%r8d       ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f091f002843:   cmp    $0x39,%r8d
          │││   ││  │  0x00007f091f002847:   je     0x00007f091f002bb8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.02%  │││   ││  │  0x00007f091f00284d:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f091f002850:   mov    %r8w,0x10(%r13,%r10,2)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f091f002856:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.00%  │││   ╰│  │  0x00007f091f00285a:   jmp    0x00007f091f00281b           ;*return {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1508 (line 781)
          │↘│    │  │  0x00007f091f00285c:   nopl   0x0(%rax)
   0.00%  │ │    │  │  0x00007f091f002860:   cmp    $0x1b,%ebp
          │ │    │  │  0x00007f091f002863:   jae    0x00007f091f002b7d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
          │ │    │  │  0x00007f091f002869:   mov    %rsi,(%rsp)
   0.03%  │ │    │  │  0x00007f091f00286d:   mov    %edi,%esi
          │ │    │  │  0x00007f091f00286f:   add    0x10(%r13,%rbp,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
          │ │    │  │  0x00007f091f002874:   cmp    $0x40,%esi
          │ │    ╰  │  0x00007f091f002877:   jge    0x00007f091f0025ff
          │ │       │  0x00007f091f00287d:   data16 xchg %ax,%ax
          │ │       │  0x00007f091f002880:   jmp    0x00007f091f002a7b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
          │ ↘       │  0x00007f091f002885:   mov    %edi,0x10(%rsp)
   0.00%  │         │  0x00007f091f002889:   mov    %r11,0x18(%rsp)
          │         │  0x00007f091f00288e:   mov    %edx,%edi
   0.02%  │         │  0x00007f091f002890:   cmp    $0x20,%eax
          │         │  0x00007f091f002893:   jge    0x00007f091f002b71           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
          │         │  0x00007f091f002899:   nopl   0x0(%rax)
   0.00%  │         │  0x00007f091f0028a0:   test   %r9d,%r9d
          │         │  0x00007f091f0028a3:   je     0x00007f091f002b65
          │         │  0x00007f091f0028a9:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
   0.04%  │         │  0x00007f091f0028b3:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
          │         │  0x00007f091f0028b6:   mov    %eax,%edx
          │         │  0x00007f091f0028b8:   shl    $0x3,%edx
          │         │  0x00007f091f0028bb:   mov    %eax,%r10d
   0.02%  │         │  0x00007f091f0028be:   shl    %r10d
          │         │  0x00007f091f0028c1:   add    %edx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
          │         │  0x00007f091f0028c4:   mov    %r10d,%edx
          │         │  0x00007f091f0028c7:   shl    $0x3,%edx
   0.03%  │         │  0x00007f091f0028ca:   mov    %r10d,%r11d
          │         │  0x00007f091f0028cd:   shl    %r11d
          │         │  0x00007f091f0028d0:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │         │  0x00007f091f0028d3:   cmp    $0x1,%r11d
          │         │  0x00007f091f0028d7:   jl     0x00007f091f002b56           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.01%  │         │  0x00007f091f0028dd:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
          │         │  0x00007f091f0028e0:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
   0.00%  │         │  0x00007f091f0028e2:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
          │         │  0x00007f091f0028e5:   mov    %esi,%ecx
   0.02%  │         │  0x00007f091f0028e7:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.00%  │         │  0x00007f091f0028e9:   mov    %r8d,%ecx
   0.04%  │         │  0x00007f091f0028ec:   mov    %edx,%r8d
          │         │  0x00007f091f0028ef:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.04%  │         │  0x00007f091f0028f2:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          │         │  0x00007f091f0028f3:   idiv   %r8d                         ; implicit exception: deoptimizes
          │         │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.08%  │         │  0x00007f091f0028f6:   test   %eax,%eax
          │         │  0x00007f091f0028f8:   je     0x00007f091f002b4a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
   0.04%  │         │  0x00007f091f0028fe:   mov    %edx,%ecx
          │         │  0x00007f091f002900:   shl    $0x3,%ecx
   0.00%  │         │  0x00007f091f002903:   shl    %edx
          │         │  0x00007f091f002905:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.01%  │         │  0x00007f091f002907:   cmp    %ecx,%r10d
          │         │  0x00007f091f00290a:   jg     0x00007f091f002b1e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.00%  │         │  0x00007f091f002910:   mov    %r8d,%edx
   0.00%  │         │  0x00007f091f002913:   shl    $0x3,%edx
          │         │  0x00007f091f002916:   mov    %r8d,%ebx
   0.03%  │         │  0x00007f091f002919:   shl    %ebx
          │         │  0x00007f091f00291b:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
   0.00%  │         │  0x00007f091f00291d:   mov    %ecx,%edx
          │         │  0x00007f091f00291f:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.02%  │         │  0x00007f091f002922:   cmp    %ebx,%edx
          │         │  0x00007f091f002924:   jg     0x00007f091f002aa6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.00%  │         │  0x00007f091f00292a:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.00%  │         │  0x00007f091f00292d:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │         │  0x00007f091f002936:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
   0.05%  │         │  0x00007f091f002938:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.00%  │         │  0x00007f091f002939:   idiv   %r8d                         ; implicit exception: deoptimizes
          │         │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.73%  │         │  0x00007f091f00293c:   mov    %edx,%esi
   0.00%  │         │  0x00007f091f00293e:   shl    $0x3,%esi
   0.02%  │         │  0x00007f091f002941:   shl    %edx
   0.01%  │         │  0x00007f091f002943:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.01%  │         │  0x00007f091f002945:   cmp    %esi,%r11d
          │         │  0x00007f091f002948:   jg     0x00007f091f002b2a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.03%  │         │  0x00007f091f00294e:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.01%  │         │  0x00007f091f002951:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │         │  0x00007f091f00295a:   mov    %esi,%eax
   0.00%  │         │  0x00007f091f00295c:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.02%  │         │  0x00007f091f00295f:   cmp    %ebx,%eax
   0.00%  │         │  0x00007f091f002961:   setg   %al
   0.04%  │         │  0x00007f091f002964:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.02%  │         │  0x00007f091f002967:   mov    $0x2,%ecx
          │         │  0x00007f091f00296c:   mov    %eax,%r9d
          │         │  0x00007f091f00296f:   mov    %r11d,%r10d
          │         │  0x00007f091f002972:   mov    %esi,%r11d
   0.02%  │       ╭ │  0x00007f091f002975:   jmp    0x00007f091f002a00           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │       │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │       │ │  0x00007f091f00297a:   nopw   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │       │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.04%  │       │↗│  0x00007f091f002980:   mov    %r10d,%eax
   0.13%  │       │││  0x00007f091f002983:   shl    $0x3,%eax
          │       │││  0x00007f091f002986:   mov    %r10d,%edx
          │       │││  0x00007f091f002989:   shl    %edx
   0.02%  │       │││  0x00007f091f00298b:   mov    %eax,%r9d
   0.13%  │       │││  0x00007f091f00298e:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │       │││  0x00007f091f002991:   cmp    $0x1,%r9d
          │       │││  0x00007f091f002995:   jl     0x00007f091f002b03           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │       │││  0x00007f091f00299b:   nopl   0x0(%rax,%rax,1)
   0.02%  │       │││  0x00007f091f0029a0:   cmp    %ecx,%edi
          │       │││  0x00007f091f0029a2:   jbe    0x00007f091f002af4           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.11%  │       │││  0x00007f091f0029a8:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │       │││  0x00007f091f0029ab:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │       │││  0x00007f091f0029ac:   idiv   %r8d                         ; implicit exception: deoptimizes
          │       │││                                                            ; ImmutableOopMap {r13=Oop [0]=Oop }
   3.26%  │       │││  0x00007f091f0029af:   mov    %edx,%esi
   0.09%  │       │││  0x00007f091f0029b1:   shl    $0x3,%esi
   0.04%  │       │││  0x00007f091f0029b4:   shl    %edx
   0.06%  │       │││  0x00007f091f0029b6:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.12%  │       │││  0x00007f091f0029b8:   nopl   0x0(%rax,%rax,1)
   0.06%  │       │││  0x00007f091f0029c0:   cmp    %esi,%r9d
          │       │││  0x00007f091f0029c3:   jg     0x00007f091f002aaf           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.11%  │       │││  0x00007f091f0029c9:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.03%  │       │││  0x00007f091f0029cd:   mov    %r10w,0x10(%r13,%rcx,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │       │││  0x00007f091f0029d3:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.03%  │       │││  0x00007f091f0029d5:   mov    %esi,%r10d
   0.11%  │       │││  0x00007f091f0029d8:   add    %r9d,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.02%  │       │││  0x00007f091f0029db:   cmp    %ebx,%r10d
   0.02%  │       │││  0x00007f091f0029de:   setg   %r10b
   0.13%  │       │││  0x00007f091f0029e2:   movzbl %r10b,%r10d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.17%  │       │││  0x00007f091f0029e6:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          │       │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
          │       │││  0x00007f091f0029ed:   test   %eax,(%r11)                  ;   {poll}
          │       │││  0x00007f091f0029f0:   mov    %esi,%r11d
          │       │││  0x00007f091f0029f3:   mov    %r9d,0xc(%rsp)
   0.18%  │       │││  0x00007f091f0029f8:   mov    %r10d,%r9d
          │       │││  0x00007f091f0029fb:   mov    0xc(%rsp),%r10d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │       ↘││  0x00007f091f002a00:   test   %r9d,%r9d
          │        ╰│  0x00007f091f002a03:   je     0x00007f091f002980           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
          │         │  0x00007f091f002a09:   test   %r11d,%r11d
          │         │  0x00007f091f002a0c:   je     0x00007f091f002ad4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@714 (line 649)
   0.05%  │         │  0x00007f091f002a12:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@704 (line 648)
   0.01%  │         │  0x00007f091f002a15:   sub    %ebx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@707 (line 648)
   0.00%  │         │  0x00007f091f002a18:   movslq %r11d,%r10                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@708 (line 648)
   0.01%  │         │  0x00007f091f002a1b:   mov    %r10,%r11
   0.02%  │         │  0x00007f091f002a1e:   mov    %ecx,%esi
          │         │  0x00007f091f002a20:   mov    $0x0,%ecx
          │         ╰  0x00007f091f002a25:   jmp    0x00007f091f0027d8           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
          ↘            0x00007f091f002a2a:   mov    $0xffffffed,%r10d
                       0x00007f091f002a30:   mov    %r8d,%ecx
                       0x00007f091f002a33:   mov    %r11,%r8
                       0x00007f091f002a36:   mov    0x24(%rsp),%ebx
                       0x00007f091f002a3a:   mov    %rsi,%rdx
                       0x00007f091f002a3d:   mov    $0x1010,%r11
                       0x00007f091f002a44:   mov    %r10d,0x370(%r15)            ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  32.39%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.Formatter::format, version 2, compile id 850 

                 0x00007f091f008964:   je     0x00007f091f009361
   0.60%         0x00007f091f00896a:   cmp    $0x222808,%r11d              ;   {metadata(&apos;java/util/Formattable&apos;)}
                 0x00007f091f008971:   je     0x00007f091f009361
                 0x00007f091f008977:   mov    0x28(%r14),%r11
   0.04%         0x00007f091f00897b:   mov    (%r11),%r13d
   1.16%         0x00007f091f00897e:   mov    $0x0,%r8d
          ╭      0x00007f091f008984:   jmp    0x00007f091f0089be
          │      0x00007f091f008989:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      0x00007f091f008994:   data16 data16 xchg %ax,%ax
          │      0x00007f091f008998:   nopl   0x0(%rax,%rax,1)
   0.20%  │↗     0x00007f091f0089a0:   mov    %r8d,%r10d
   0.17%  ││     0x00007f091f0089a3:   shl    $0x3,%r10d
   0.20%  ││     0x00007f091f0089a7:   lea    0x8(%r10),%r10d
   0.18%  ││     0x00007f091f0089ab:   movslq %r10d,%r10
   0.19%  ││     0x00007f091f0089ae:   mov    (%r11,%r10,1),%r10
   0.21%  ││     0x00007f091f0089b2:   cmp    %r10,%rbp
          ││     0x00007f091f0089b5:   je     0x00007f091f0096e7
   0.21%  ││     0x00007f091f0089bb:   inc    %r8d
   0.20%  ↘│     0x00007f091f0089be:   xchg   %ax,%ax
   0.25%   │     0x00007f091f0089c0:   cmp    %r8d,%r13d
           ╰     0x00007f091f0089c3:   jg     0x00007f091f0089a0           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@1 (line 3045)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.13%         0x00007f091f0089c5:   mov    0x34(%rsp),%esi
   0.03%         0x00007f091f0089c9:   mov    %eax,0x88(%rsp)
   0.01%         0x00007f091f0089d0:   mov    0x30(%rsp),%ebx
   0.02%         0x00007f091f0089d4:   mov    0x1e0(%r14),%r14
   0.13%         0x00007f091f0089db:   mov    0x40(%r14),%r10              ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.13%         0x00007f091f0089df:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter::format@200 (line 2689)
   0.01%         0x00007f091f0089e3:   mov    %ebx,%r11d
   0.01%         0x00007f091f0089e6:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.ArrayList::elementData@5 (line 411)
                                                                           ; - java.util.ArrayList::get@11 (line 428)
                                                                           ; - java.util.Formatter::format@36 (line 2673)
   0.06%         0x00007f091f0089ea:   mov    %r14,%rbx
   0.10%         0x00007f091f0089ed:   mov    %r10,%rax                    ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.02%         0x00007f091f0089f0:   mov    %r11,0x18(%rsp)
   0.17%         0x00007f091f0089f5:   call   *%rax                        ; ImmutableOopMap {[24]=Oop [48]=NarrowOop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                           ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=1}
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.39%         0x00007f091f0089f7:   nop
   0.04%         0x00007f091f0089f8:   mov    0x30(%rsp),%ebx
   0.34%         0x00007f091f0089fc:   nopl   0x0(%rax)
   0.05%         0x00007f091f008a00:   cmpl   $0xffffffff,0x14(,%rbx,8)
   0.56%         0x00007f091f008a08:   jne    0x00007f091f0094ed           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$FormatSpecifier::print@5 (line 3079)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.13%         0x00007f091f008a0e:   cmpl   $0xffffffff,0x10(,%rbx,8)
   0.08%         0x00007f091f008a16:   jne    0x00007f091f0094db
   0.06%         0x00007f091f008a1c:   movabs $0x7fef340d8,%r9             ; ImmutableOopMap {rax=Oop rbx=NarrowOop r9=Oop [24]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                                                                           ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fef340d8})}
   0.05%         0x00007f091f008a26:   mov    0x14(%rax),%r10d             ; implicit exception: dispatches to 0x00007f091f009966
   0.04%         0x00007f091f008a2a:   mov    %r10d,0x30(%rsp)
   0.04%         0x00007f091f008a2f:   movsbl 0x10(%rax),%r11d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::coder@7 (line 4543)
                                                                           ; - java.lang.String::length@6 (line 1479)
                                                                           ; - java.lang.AbstractStringBuilder::append@10 (line 581)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.07%         0x00007f091f008a34:   mov    %r11d,0x84(%rsp)
   0.04%         0x00007f091f008a3c:   mov    0x1c(,%rbx,8),%ecx           ; ImmutableOopMap {rax=Oop rbx=NarrowOop r9=Oop r10=NarrowOop [24]=Oop [48]=NarrowOop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.06%         0x00007f091f008a43:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f091f009986
   0.26%         0x00007f091f008a4a:   mov    0xc(%r9),%edi                ;*getfield flags {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$Flags::valueOf@1 (line 4594)
                                                                           ; - java.util.Formatter$Flags::contains@5 (line 4598)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.00%         0x00007f091f008a4e:   and    %edi,%ecx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$Flags::contains@8 (line 4598)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.14%         0x00007f091f008a50:   cmp    %ecx,%edi
                 0x00007f091f008a52:   je     0x00007f091f0094c9           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$Flags::contains@13 (line 4598)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.19%         0x00007f091f008a58:   mov    0x20(,%rbx,8),%ecx           ; ImmutableOopMap {rax=Oop r10=NarrowOop [24]=Oop [48]=NarrowOop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.02%         0x00007f091f008a5f:   mov    0x10(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f091f0099a6
   0.01%         0x00007f091f008a67:   mov    %r8d,0x34(%rsp)              ; ImmutableOopMap {rax=Oop r8=NarrowOop r10=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.01%         0x00007f091f008a6c:   cmpl   $0xf858,0x8(,%r8,8)          ; implicit exception: dispatches to 0x00007f091f0099c6
                                                                           ;   {metadata(&apos;java/lang/StringBuilder&apos;)}
   0.60%         0x00007f091f008a78:   jne    0x00007f091f009634           ; ImmutableOopMap {rax=Oop r8=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.15%         0x00007f091f008a7e:   mov    0xc(,%r10,8),%ebx            ; implicit exception: dispatches to 0x00007f091f0099e6
   0.00%         0x00007f091f008a86:   mov    0x14(,%r8,8),%edi            ; ImmutableOopMap {rax=Oop rdi=NarrowOop r8=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [64]=Oop [72]=Oop [80]=Oop [88]=Oop }
                                                                           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.03%         0x00007f091f008a8e:   mov    0xc(,%rdi,8),%ebp            ; implicit exception: dispatches to 0x00007f091f009a06
   0.59%         0x00007f091f008a95:   mov    0xc(,%r8,8),%r13d            ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::append@16 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008a9d:   mov    %r11d,%ecx
                 0x00007f091f008aa0:   mov    %ebx,%r14d
   0.02%         0x00007f091f008aa3:   shr    %cl,%r14d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::length@9 (line 1479)
                                                                           ; - java.lang.AbstractStringBuilder::append@10 (line 581)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.16%         0x00007f091f008aa6:   mov    %r14d,%edx
   0.03%         0x00007f091f008aa9:   add    %r13d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::append@20 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.14%         0x00007f091f008aac:   mov    %edx,0x74(%rsp)
                 0x00007f091f008ab0:   movsbl 0x10(,%r8,8),%esi            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@6 (line 226)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008ab9:   mov    %esi,%ecx
   0.04%         0x00007f091f008abb:   mov    %ebp,%r10d
   0.15%         0x00007f091f008abe:   shr    %cl,%r10d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@9 (line 226)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.03%         0x00007f091f008ac1:   mov    %edx,%ecx
   0.13%         0x00007f091f008ac3:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@13 (line 227)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008ac6:   mov    %edi,%r10d
   0.00%         0x00007f091f008ac9:   shl    $0x3,%r10                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 226)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.02%         0x00007f091f008acd:   mov    %r8d,%edi
   0.17%         0x00007f091f008ad0:   shl    $0x3,%rdi                    ;*getfield a {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Formatter$FormatSpecifier::print@54 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.00%         0x00007f091f008ad4:   cmp    $0x1,%ecx
            ╭    0x00007f091f008ad7:   jge    0x00007f091f008bd2           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 227)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 582)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
            │    0x00007f091f008add:   mov    %r14d,0x70(%rsp)
   0.04%    │    0x00007f091f008ae2:   mov    %r13d,0x6c(%rsp)
   0.12%    │    0x00007f091f008ae7:   mov    %ebx,0x68(%rsp)
            │    0x00007f091f008aeb:   mov    %r8d,%r9d
            │    0x00007f091f008aee:   mov    %rax,0x20(%rsp)              ;*return {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@38 (line 231)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 582)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.02%    │    0x00007f091f008af3:   cmp    %r11d,%esi
            │    0x00007f091f008af6:   jne    0x00007f091f009499           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1717)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
            │                                                              ; - java.lang.AbstractStringBuilder::append@30 (line 583)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.13%    │    0x00007f091f008afc:   mov    0x6c(%rsp),%r13d
   0.01%    │    0x00007f091f008b01:   mov    0xc(%r10),%edx               ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.System::arraycopy@-3
            │                                                              ; - java.lang.String::getBytes@27 (line 4477)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
            │                                                              ; - java.lang.AbstractStringBuilder::append@30 (line 583)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.00%    │    0x00007f091f008b05:   mov    %esi,%ecx
   0.05%    │    0x00007f091f008b07:   shl    %cl,%r13d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.lang.String::getBytes@21 (line 4477)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
            │                                                              ; - java.lang.AbstractStringBuilder::append@30 (line 583)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.15%    │    0x00007f091f008b0a:   test   %r13d,%r13d
            │    0x00007f091f008b0d:   jl     0x00007f091f00948a           ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.System::arraycopy@-3
            │                                                              ; - java.lang.String::getBytes@27 (line 4477)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
            │                                                              ; - java.lang.AbstractStringBuilder::append@30 (line 583)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.03%    │    0x00007f091f008b13:   mov    0x70(%rsp),%r14d
   0.15%    │    0x00007f091f008b18:   shl    %cl,%r14d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.lang.String::getBytes@26 (line 4477)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
            │                                                              ; - java.lang.AbstractStringBuilder::append@30 (line 583)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.04%    │    0x00007f091f008b1b:   nopl   0x0(%rax,%rax,1)
   0.16%    │    0x00007f091f008b20:   test   %r14d,%r14d
            │    0x00007f091f008b23:   jl     0x00007f091f00947b
   0.00%    │    0x00007f091f008b29:   mov    0x68(%rsp),%ebx
   0.00%    │    0x00007f091f008b2d:   cmp    %ebx,%r14d
            │    0x00007f091f008b30:   ja     0x00007f091f009455
   0.05%    │    0x00007f091f008b36:   sub    %r14d,%edx
   0.13%    │    0x00007f091f008b39:   nopl   0x0(%rax)
   0.00%    │    0x00007f091f008b40:   cmp    %edx,%r13d
            │    0x00007f091f008b43:   jg     0x00007f091f0094ba           ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.System::arraycopy@-3
            │                                                              ; - java.lang.String::getBytes@27 (line 4477)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
            │                                                              ; - java.lang.AbstractStringBuilder::append@30 (line 583)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.00%    │    0x00007f091f008b49:   mov    0x30(%rsp),%edi
   0.04%    │    0x00007f091f008b4d:   shl    $0x3,%rdi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.lang.String::length@1 (line 1479)
            │                                                              ; - java.lang.AbstractStringBuilder::append@10 (line 581)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.16%    │    0x00007f091f008b51:   mov    %r14d,%r9d
            │    0x00007f091f008b54:   lea    0x10(%rdi),%rdi
            │    0x00007f091f008b58:   lea    0x10(%r10,%r13,1),%rsi       ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.System::arraycopy@-3
            │                                                              ; - java.lang.String::getBytes@27 (line 4477)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@30 (line 1720)
            │                                                              ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1724)
            │                                                              ; - java.lang.AbstractStringBuilder::append@30 (line 583)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.03%    │    0x00007f091f008b5d:   mov    %r9,%rdx
   0.14%    │    0x00007f091f008b60:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (2)}
   0.05%    │    0x00007f091f008b65:   nop
   0.04%    │    0x00007f091f008b66:   mov    0x74(%rsp),%edx
   0.11%    │    0x00007f091f008b6a:   mov    0x34(%rsp),%r8d
   0.05%    │    0x00007f091f008b6f:   mov    %edx,0xc(,%r8,8)             ;*putfield count {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.lang.AbstractStringBuilder::append@40 (line 584)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 179)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.lang.AbstractStringBuilder::append@21 (line 622)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 209)
            │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
            │                                                              ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
            │                                                              ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
            │                                                              ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
            │                                                              ; - java.util.Formatter::format@202 (line 2689)
   0.64%    │    0x00007f091f008b77:   mov    0x8c(%rsp),%r10d
   0.01%    │    0x00007f091f008b7f:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.Formatter::format@275 (line 2672)
   0.01%    │    0x00007f091f008b82:   mov    0x88(%rsp),%r8d
   0.05%    │    0x00007f091f008b8a:   mov    0xa0(%rsp),%edi
   0.14%    │    0x00007f091f008b91:   movabs $0x800222808,%rbp            ;   {metadata(&apos;java/util/Formattable&apos;)}
   0.01%    │    0x00007f091f008b9b:   movabs $0x7fef340e8,%rcx            ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fef340e8})}
   0.05%    │    0x00007f091f008ba5:   mov    0xa4(%rsp),%r9d
   0.04%    │    0x00007f091f008bad:   movabs $0x800222c40,%r11            ;   {metadata(&apos;java/util/Formatter$FormatSpecifier&apos;)}
   0.17%    │    0x00007f091f008bb7:   mov    0x40(%rsp),%rax
   0.02%    │    0x00007f091f008bbc:   mov    0x58(%rsp),%rdx
   0.07%    │    0x00007f091f008bc1:   mov    0x10(%rax),%esi              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.ArrayList::size@1 (line 253)
            │                                                              ; - java.util.Formatter::format@24 (line 2672)
   0.07%    │    0x00007f091f008bc4:   cmp    %r10d,%esi
            │    0x00007f091f008bc7:   jg     0x00007f091f008820
   0.02%    │    0x00007f091f008bcd:   jmp    0x00007f091f00860a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.Formatter::format@29 (line 2672)
            ↘    0x00007f091f008bd2:   mov    %r10,0x10(%rsp)
                 0x00007f091f008bd7:   mov    %esi,%ecx
   0.03%         0x00007f091f008bd9:   mov    %edx,%r10d
                 0x00007f091f008bdc:   shl    %cl,%r10d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@11 (line 255)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.02%         0x00007f091f008bdf:   sub    %ebp,%r10d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@15 (line 256)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008be2:   mov    $0x2,%ecx
                 0x00007f091f008be7:   mov    %ecx,%r11d
                 0x00007f091f008bea:   mov    %esi,%ecx
   0.02%         0x00007f091f008bec:   shl    %cl,%r11d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@27 (line 257)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008bef:   add    %ebp,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@28 (line 257)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.04%         0x00007f091f008bf2:   cmp    %r10d,%r11d
                 0x00007f091f008bf5:   cmovg  %r11d,%r10d                  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.Math::max@2 (line 1562)
                                                                           ; - jdk.internal.util.ArraysSupport::newLength@3 (line 637)
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 257)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008bf9:   add    %ebp,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.util.ArraysSupport::newLength@6 (line 637)
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 257)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008bfc:   mov    %r10d,%ecx
   0.04%         0x00007f091f008bff:   dec    %ecx                         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.util.ArraysSupport::newLength@10 (line 638)
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 257)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008c01:   cmp    $0x7ffffff7,%ecx
                 0x00007f091f008c07:   jae    0x00007f091f009446           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.util.ArraysSupport::newLength@16 (line 638)
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 257)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008c0d:   mov    0x108(%r15),%r11             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::copyOf@1 (line 3537)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 228)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008c14:   mov    %esi,%ecx
   0.02%         0x00007f091f008c16:   sar    %cl,%r10d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::newCapacity@57 (line 261)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.06%         0x00007f091f008c19:   shl    %cl,%r10d                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@31 (line 229)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.01%         0x00007f091f008c1c:   mov    %r10d,%ecx
   0.02%         0x00007f091f008c1f:   lea    0x17(%rcx),%rcx
                 0x00007f091f008c23:   and    $0xfffffffffffffff8,%rcx
                 0x00007f091f008c27:   mov    %rcx,%r8
   0.02%         0x00007f091f008c2a:   add    %r11,%r8
   0.03%         0x00007f091f008c2d:   cmp    0x118(%r15),%r8
                 0x00007f091f008c34:   ja     0x00007f091f008e4d
   0.01%         0x00007f091f008c3a:   mov    %r8,0x108(%r15)
   0.01%         0x00007f091f008c41:   prefetchw 0xc0(%rcx,%r11,1)
   0.07%         0x00007f091f008c4a:   prefetchw 0x100(%rcx,%r11,1)
   0.05%         0x00007f091f008c53:   prefetchw 0x140(%rcx,%r11,1)
   0.02%         0x00007f091f008c5c:   prefetchw 0x180(%rcx,%r11,1)
   0.03%         0x00007f091f008c65:   movq   $0x1,(%r11)
   0.00%         0x00007f091f008c6c:   movl   $0x6848,0x8(%r11)            ;   {metadata({type array byte})}
   0.01%         0x00007f091f008c74:   mov    %r10d,0xc(%r11)
   0.01%         0x00007f091f008c78:   lea    -0x10(%rcx),%r8
   0.00%         0x00007f091f008c7c:   nopl   0x0(%rax)
   0.00%         0x00007f091f008c80:   cmp    $0x800,%r8
                 0x00007f091f008c87:   jae    0x00007f091f008eb4
   0.01%         0x00007f091f008c8d:   mov    $0x10,%r8
   0.00%     ╭   0x00007f091f008c94:   jmp    0x00007f091f008cac
             │   0x00007f091f008c99:   nopl   0x0(%rax)
   0.79%     │↗  0x00007f091f008ca0:   movq   $0x0,(%r11,%r8,1)
   0.50%     ││  0x00007f091f008ca8:   lea    0x8(%r8),%r8
   0.11%     ↘│  0x00007f091f008cac:   cmp    %r8,%rcx
              ╰  0x00007f091f008caf:   ja     0x00007f091f008ca0           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::copyOf@1 (line 3537)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 228)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
                 0x00007f091f008cb1:   cmp    %r10d,%ebp
   0.04%         0x00007f091f008cb4:   mov    %ebp,%r8d
   0.02%         0x00007f091f008cb7:   cmovg  %r10d,%r8d                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.Math::min@2 (line 1649)
                                                                           ; - java.util.Arrays::copyOf@11 (line 3539)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 228)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.00%         0x00007f091f008cbb:   nopl   0x0(%rax,%rax,1)
                 0x00007f091f008cc0:   test   %r8d,%r8d
                 0x00007f091f008cc3:   jl     0x00007f091f0095b1
   0.02%         0x00007f091f008cc9:   cmp    %ebp,%r8d
                 0x00007f091f008ccc:   ja     0x00007f091f0095d7
   0.03%         0x00007f091f008cd2:   cmp    %r10d,%r8d
                 0x00007f091f008cd5:   jg     0x00007f091f0093d6
   0.01%         0x00007f091f008cdb:   mov    %rdi,0x8(%rsp)
   0.02%         0x00007f091f008ce0:   mov    %esi,0x64(%rsp)
   0.06%         0x00007f091f008ce4:   mov    %r14d,0x70(%rsp)
                 0x00007f091f008ce9:   mov    %r13d,0x6c(%rsp)
   0.01%         0x00007f091f008cee:   mov    %ebx,0x68(%rsp)
   0.01%         0x00007f091f008cf2:   mov    %rax,0x20(%rsp)
   0.02%         0x00007f091f008cf7:   mov    0x10(%rsp),%r10
                 0x00007f091f008cfc:   mov    %r11,%r9
   0.00%         0x00007f091f008cff:   mov    %r8d,%r8d
   0.01%         0x00007f091f008d02:   lea    0x10(%r10),%rdi
   0.02%         0x00007f091f008d06:   lea    0x10(%r9),%rsi
                 0x00007f091f008d0a:   mov    %r8,%rdx                     ;* unwind (locked if synchronized)
                                                                           ; - java.lang.System::arraycopy@-3
                                                                           ; - java.util.Arrays::copyOf@14 (line 3538)
                                                                           ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 228)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 582)
                                                                           ; - java.lang.StringBuilder::append@2 (line 179)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                           ; - java.lang.StringBuilder::append@2 (line 209)
                                                                           ; - java.lang.StringBuilder::append@2 (line 91)
                                                                           ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                           ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                           ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                           ; - java.util.Formatter::format@202 (line 2689)
   0.00%         0x00007f091f008d0d:   mov    %r11,0x10(%rsp)
   0.02%         0x00007f091f008d12:   call   Stub::jbyte_disjoint_arraycopy;   {runtime_call StubRoutines (2)}
                 0x00007f091f008d17:   nop
                 0x00007f091f008d18:   nopl   0x0(%rax,%rax,1)
                 0x00007f091f008d20:   cmpb   $0x0,0x38(%r15)
   0.03%         0x00007f091f008d25:   jne    0x00007f091f008dab
   0.00%         0x00007f091f008d2b:   mov    0x10(%rsp),%r11
                 0x00007f091f008d30:   mov    0x34(%rsp),%r9d
   0.03%         0x00007f091f008d35:   mov    %r11,%rsi
   0.00%         0x00007f091f008d38:   shr    $0x3,%rsi
                 0x00007f091f008d3c:   mov    %esi,0x14(,%r9,8)
   0.05%         0x00007f091f008d44:   mov    0x8(%rsp),%rdi
   0.02%         0x00007f091f008d49:   xor    %r11,%rdi
                 0x00007f091f008d4c:   test   $0xffffffffffe00000,%rdi
                 0x00007f091f008d53:   je     0x00007f091f008df7
                 0x00007f091f008d59:   nopl   0x0(%rax)
                 0x00007f091f008d60:   test   %r11,%r11
                 0x00007f091f008d63:   je     0x00007f091f008e10
                 0x00007f091f008d69:   mov    0x8(%rsp),%rdi
                 0x00007f091f008d6e:   mov    0x98(%rsp),%r10
                 0x00007f091f008d76:   mov    %rdi,%rsi
                 0x00007f091f008d79:   shr    $0x9,%rsi
                 0x00007f091f008d7d:   data16 xchg %ax,%ax
....................................................................................................
  12.87%  <total for region 2>

....[Hottest Regions]...............................................................................
  32.39%      jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 838 
  12.87%      jvmci, level 4  java.util.Formatter::format, version 2, compile id 850 
   6.60%      jvmci, level 4  java.util.Formatter::parse, version 2, compile id 849 
   4.81%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 857 
   4.78%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_format, version 2, compile id 868 
   3.19%      jvmci, level 4  java.util.Formatter::format, version 2, compile id 850 
   2.82%      jvmci, level 4  java.lang.Float::toString, version 2, compile id 870 
   2.52%      jvmci, level 4  java.lang.Integer::toString, version 2, compile id 869 
   2.52%      jvmci, level 4  java.util.Formatter::format, version 2, compile id 850 
   2.37%      jvmci, level 4  java.lang.Double::toString, version 2, compile id 872 
   1.89%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 857 
   1.78%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 860 
   1.60%      jvmci, level 4  java.util.Formatter::format, version 2, compile id 850 
   1.60%      jvmci, level 4  java.util.Formatter::format, version 2, compile id 850 
   1.36%      jvmci, level 4  java.util.Formatter::parse, version 2, compile id 849 
   1.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_format, version 2, compile id 868 
   1.12%      jvmci, level 4  java.util.Formatter::format, version 2, compile id 850 
   0.84%      jvmci, level 4  java.util.Formatter::parse, version 2, compile id 849 
   0.81%      jvmci, level 4  java.lang.String::toString, version 2, compile id 836 
   9.23%  <...other 475 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  32.39%      jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 838 
  23.64%      jvmci, level 4  java.util.Formatter::format, version 2, compile id 850 
   9.79%      jvmci, level 4  java.util.Formatter::parse, version 2, compile id 849 
   6.70%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 857 
   5.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_format, version 2, compile id 868 
   4.78%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.52%      jvmci, level 4  java.lang.Float::toString, version 2, compile id 870 
   3.49%      jvmci, level 4  java.lang.Double::toString, version 2, compile id 872 
   2.52%      jvmci, level 4  java.lang.Integer::toString, version 2, compile id 869 
   1.78%      jvmci, level 4  java.lang.Long::toString, version 2, compile id 860 
   1.67%                      <unknown> 
   1.39%              kernel  [unknown] 
   0.81%      jvmci, level 4  java.lang.String::toString, version 2, compile id 836 
   0.77%      jvmci, level 4  java.lang.Boolean::toString, version 2, compile id 874 
   0.57%        runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_string_format_jmhTest::string_format_avgt_jmhStub, version 5, compile id 889 
   0.06%        libc-2.31.so  [unknown] 
   0.04%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.66%  <...other 169 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.79%      jvmci, level 4
   5.35%        runtime stub
   1.67%                    
   1.39%              kernel
   0.58%           libjvm.so
   0.14%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%     perf-114114.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_format
# Parameters: (capacity = 128, coder = UTF16)

# Run progress: 87.50% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1542.825 ns/op
# Warmup Iteration   2: 1308.224 ns/op
# Warmup Iteration   3: 1309.594 ns/op
# Warmup Iteration   4: 1308.618 ns/op
# Warmup Iteration   5: 1308.844 ns/op
Iteration   1: 1308.171 ns/op
Iteration   2: 1308.417 ns/op
Iteration   3: 1307.796 ns/op
Iteration   4: 1308.295 ns/op
Iteration   5: 1308.101 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_format":
  1308.156 ±(99.9%) 0.903 ns/op [Average]
  (min, avg, max) = (1307.796, 1308.156, 1308.417), stdev = 0.235
  CI (99.9%): [1307.253, 1309.060] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark.string_format:·asm":
PrintAssembly processed: 227491 total address lines.
Perf output processed (skipped 58.488 seconds):
 Column 1: cycles (51149 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 844 

                       #           [sp+0x40]  (sp of caller)
                       0x00007f2983001ce0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                       0x00007f2983001ce4:   movabs $0x800000000,%r12
                       0x00007f2983001cee:   add    %r12,%r10
                       0x00007f2983001cf1:   xor    %r12,%r12
                       0x00007f2983001cf4:   cmp    %r10,%rax
                       0x00007f2983001cf7:   jne    0x00007f297b4ff780           ;   {runtime_call ic_miss_stub}
                       0x00007f2983001cfd:   nop
                       0x00007f2983001cfe:   xchg   %ax,%ax
                     [Verified Entry Point]
   0.02%               0x00007f2983001d00:   mov    %eax,-0x14000(%rsp)
   0.02%               0x00007f2983001d07:   sub    $0x38,%rsp
   0.02%               0x00007f2983001d0b:   mov    %rbp,0x30(%rsp)
   0.01%               0x00007f2983001d10:   mov    %edx,%r10d
                       0x00007f2983001d13:   mov    %rcx,%r11
   0.02%               0x00007f2983001d16:   lea    0x15(%r10),%ecx              ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@82 (line 444)
   0.04%               0x00007f2983001d1a:   nopw   0x0(%rax,%rax,1)
                       0x00007f2983001d20:   cmp    $0x54,%ecx
                       0x00007f2983001d23:   jae    0x00007f29830025f5           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@88 (line 444)
   0.00%               0x00007f2983001d29:   movabs $0xfffffffffffff,%rcx        ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@4 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f2983001d33:   and    %r11,%rcx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@7 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f2983001d36:   movabs $0x3ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@0 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%               0x00007f2983001d40:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@8 (line 820)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                       0x00007f2983001d43:   vmovq  %rcx,%xmm0
   0.03%               0x00007f2983001d48:   vsubsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f2983001cc0
                                                                                 ;   {section_word}
   0.01%               0x00007f2983001d50:   vmulsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f2983001cc8
                                                                                 ;   {section_word}
   0.00%               0x00007f2983001d58:   vaddsd -0x90(%rip),%xmm0,%xmm0        # 0x00007f2983001cd0
                                                                                 ;   {section_word}
                       0x00007f2983001d60:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.06%               0x00007f2983001d65:   vmulsd -0x95(%rip),%xmm1,%xmm1        # 0x00007f2983001cd8
                                                                                 ;   {section_word}
   0.00%               0x00007f2983001d6d:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@32 (line 821)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%               0x00007f2983001d71:   vmovq  %xmm0,%rcx                   ;* unwind (locked if synchronized)
                                                                                 ; - java.lang.Double::doubleToRawLongBits@-3
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@37 (line 822)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f2983001d76:   movabs $0x8000000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@60 (line 824)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.03%               0x00007f2983001d80:   test   %rax,%rcx
                       0x00007f2983001d83:   je     0x00007f2983002447           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@66 (line 824)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%               0x00007f2983001d89:   movabs $0x7ff0000000000000,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@44 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
                       0x00007f2983001d93:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@47 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f2983001d96:   shr    $0x34,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@50 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.04%               0x00007f2983001d9a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@51 (line 823)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.00%               0x00007f2983001d9c:   nopl   0x0(%rax)
   0.00%               0x00007f2983001da0:   cmp    $0x3ff,%eax
                       0x00007f2983001da6:   jae    0x00007f29830025d7           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@78 (line 825)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f2983001dac:   movabs $0x7fffffffffffffff,%rax     ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@154 (line 830)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.02%               0x00007f2983001db6:   test   %rax,%rcx
                       0x00007f2983001db9:   je     0x00007f2983002505           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::estimateDecExp@160 (line 830)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@176 (line 515)
   0.01%               0x00007f2983001dbf:   tzcnt  %r11,%rbx                    ;* unwind (locked if synchronized)
                                                                                 ; - java.lang.Long::numberOfTrailingZeros@-3
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@45 (line 431)
   0.01%               0x00007f2983001dc4:   mov    $0x35,%ecx
   0.03%               0x00007f2983001dc9:   mov    %ecx,%edi
   0.03%               0x00007f2983001dcb:   sub    %ebx,%edi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@54 (line 434)
   0.00%               0x00007f2983001dcd:   cmp    $0x1,%edi
                       0x00007f2983001dd0:   je     0x00007f2983002558           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@272 (line 550)
                       0x00007f2983001dd6:   mov    %edi,%ecx
   0.02%               0x00007f2983001dd8:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@71 (line 443)
   0.04%               0x00007f2983001ddb:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@73 (line 443)
   0.00%               0x00007f2983001ddd:   cmp    $0x1,%ecx
   0.01%               0x00007f2983001de0:   mov    $0x0,%eax
   0.03%               0x00007f2983001de5:   mov    %ecx,%ebp
   0.03%               0x00007f2983001de7:   cmovl  %eax,%ebp                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.lang.Math::max@2 (line 1562)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@74 (line 443)
   0.01%               0x00007f2983001dea:   mov    %ebp,%ecx
   0.00%               0x00007f2983001dec:   add    %r10d,%ecx
   0.03%               0x00007f2983001def:   inc    %ecx
   0.01%               0x00007f2983001df1:   mov    %ecx,%eax
   0.01%               0x00007f2983001df3:   sub    %r8d,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@222 (line 527)
   0.00%               0x00007f2983001df6:   add    %ebx,%ecx
   0.03%               0x00007f2983001df8:   lea    -0x34(%rcx),%ecx
   0.04%               0x00007f2983001dfb:   cmp    %ebp,%ecx
                       0x00007f2983001dfd:   mov    %ecx,%edx
   0.00%               0x00007f2983001dff:   cmovg  %ebp,%edx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.lang.Math::min@2 (line 1649)
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@243 (line 539)
   0.03%               0x00007f2983001e02:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@266 (line 542)
   0.02%               0x00007f2983001e04:   test   %eax,%eax
                       0x00007f2983001e06:   jge    0x00007f2983002587           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@280 (line 554)
   0.01%               0x00007f2983001e0c:   mov    %r10d,0x24(%rsp)
                       0x00007f2983001e11:   movabs $0x7ff5b29e0,%r13            ;   {oop([I{0x00000007ff5b29e0})}
   0.03%               0x00007f2983001e1b:   mov    0x14(%r13),%r14d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@322 (line 591)
   0.01%               0x00007f2983001e1f:   sub    %edx,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@252 (line 540)
   0.00%               0x00007f2983001e21:   sub    %eax,%ecx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@287 (line 558)
   0.00%               0x00007f2983001e23:   mov    %ecx,%r10d
   0.04%               0x00007f2983001e26:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@307 (line 591)
   0.03%               0x00007f2983001e29:   add    %r14d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@330 (line 591)
   0.01%               0x00007f2983001e2c:   cmp    $0x40,%r10d
          ╭            0x00007f2983001e30:   jge    0x00007f29830022aa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@372 (line 595)
   0.00%  │            0x00007f2983001e36:   mov    %r8d,0x20(%rsp)
   0.03%  │            0x00007f2983001e3b:   mov    %ebp,%r8d
   0.02%  │            0x00007f2983001e3e:   sub    %edx,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@259 (line 541)
   0.00%  │            0x00007f2983001e41:   sub    %eax,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@294 (line 559)
   0.00%  │            0x00007f2983001e44:   mov    %r8d,%eax
   0.03%  │            0x00007f2983001e47:   add    %r14d,%eax
   0.03%  │            0x00007f2983001e4a:   inc    %eax
   0.00%  │            0x00007f2983001e4c:   cmp    $0x40,%eax
          │            0x00007f2983001e4f:   jge    0x00007f29830024d8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@379 (line 595)
   0.01%  │            0x00007f2983001e55:   mov    0x1c(%rsi),%r14d             ; ImmutableOopMap {rsi=Oop r13=Oop r14=NarrowOop }
          │                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
          │                                                                      ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@0 (line 426)
   0.04%  │            0x00007f2983001e59:   mov    0xc(,%r14,8),%edx            ; implicit exception: dispatches to 0x00007f2983002613
   0.03%  │            0x00007f2983001e61:   cmp    $0x2,%edx
          │            0x00007f2983001e64:   jb     0x00007f29830025a5           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.00%  │            0x00007f2983001e6a:   movb   $0x0,0x1a(%rsi)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@59 (line 439)
   0.00%  │            0x00007f2983001e6e:   movb   $0x0,0x19(%rsi)              ;*putfield exactDecimalConversion {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@64 (line 440)
   0.03%  │            0x00007f2983001e72:   cmp    $0x1b,%ebp
          │╭           0x00007f2983001e75:   jl     0x00007f29830020dc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@97 (line 448)
   0.04%  ││           0x00007f2983001e7b:   mov    %rsi,(%rsp)                  ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                     ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          ││     ↗     0x00007f2983001e7f:   mov    %ecx,%esi
   0.02%  ││     │     0x00007f2983001e81:   mov    %r14d,%r13d
          ││     │     0x00007f2983001e84:   shl    $0x3,%r13                    ;*getfield digits {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@874 (line 672)
   0.02%  ││     │     0x00007f2983001e88:   mov    %ebx,%ecx
          ││     │     0x00007f2983001e8a:   mov    %ebx,0x14(%rsp)
   0.02%  ││     │     0x00007f2983001e8e:   mov    %r11,%rbx
          ││     │     0x00007f2983001e91:   shr    %cl,%rbx                     ;*lushr {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@228 (line 537)
   0.06%  ││     │     0x00007f2983001e94:   cmp    $0x20,%r10d
          ││╭    │     0x00007f2983001e98:   jl     0x00007f2983002105           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@386 (line 596)
          │││    │     0x00007f2983001e9e:   xchg   %ax,%ax
   0.04%  │││    │     0x00007f2983001ea0:   test   %r9d,%r9d
          │││    │     0x00007f2983001ea3:   je     0x00007f2983002531           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@891 (line 680)
          │││    │     0x00007f2983001ea9:   mov    %edi,0x10(%rsp)
   0.00%  │││    │     0x00007f2983001ead:   mov    %r11,0x18(%rsp)
          │││    │     0x00007f2983001eb2:   movabs $0x7ffd3aa28,%rcx            ;   {oop([J{0x00000007ffd3aa28})}
   0.03%  │││    │     0x00007f2983001ebc:   mov    0x18(%rcx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@734 (line 652)
          │││    │     0x00007f2983001ec0:   mov    %rax,%r10
   0.00%  │││    │     0x00007f2983001ec3:   shl    $0x3,%r10
          │││    │     0x00007f2983001ec7:   mov    %rax,%r11
   0.02%  │││    │     0x00007f2983001eca:   shl    %r11
          │││    │     0x00007f2983001ecd:   add    %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@798 (line 664)
          │││    │     0x00007f2983001ed0:   mov    %r10,%r11
          │││    │     0x00007f2983001ed3:   shl    $0x3,%r11
   0.03%  │││    │     0x00007f2983001ed7:   mov    %r10,%rdi
          │││    │     0x00007f2983001eda:   shl    %rdi
   0.00%  │││    │     0x00007f2983001edd:   add    %rdi,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││    │     0x00007f2983001ee0:   cmp    $0x1,%r11
          │││    │     0x00007f2983001ee4:   jl     0x00007f2983002525           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.03%  │││    │     0x00007f2983001eea:   mov    %edx,%edi
          │││    │     0x00007f2983001eec:   mov    0x10(%rcx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@746 (line 653)
   0.00%  │││    │     0x00007f2983001ef0:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@735 (line 652)
          │││    │     0x00007f2983001ef4:   mov    %esi,%ecx
   0.03%  │││    │     0x00007f2983001ef6:   shl    %cl,%rbx                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@738 (line 652)
          │││    │     0x00007f2983001ef9:   mov    %r8d,%ecx
   0.04%  │││    │     0x00007f2983001efc:   mov    %rdx,%r8
          │││    │     0x00007f2983001eff:   shl    %cl,%r8                      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@749 (line 653)
   0.02%  │││    │     0x00007f2983001f02:   mov    %rbx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@778 (line 662)
          │││    │     0x00007f2983001f05:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │││    │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
   0.00%  │││    │     0x00007f2983001f07:   idiv   %r8                          ; implicit exception: deoptimizes
          │││    │                                                               ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.55%  │││    │     0x00007f2983001f0a:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@779 (line 662)
   0.00%  │││    │     0x00007f2983001f0c:   test   %eax,%eax
          │││    │     0x00007f2983001f0e:   je     0x00007f29830024f8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@859 (line 668)
          │││    │     0x00007f2983001f14:   mov    %rdx,%rcx
   0.02%  │││    │     0x00007f2983001f17:   shl    $0x3,%rcx
          │││    │     0x00007f2983001f1b:   shl    %rdx
          │││    │     0x00007f2983001f1e:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@790 (line 663)
          │││    │     0x00007f2983001f21:   cmp    %rcx,%r10
          │││    │     0x00007f2983001f24:   jg     0x00007f29830022d8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@806 (line 665)
   0.03%  │││    │     0x00007f2983001f2a:   mov    %r8,%rdx
          │││    │     0x00007f2983001f2d:   shl    $0x3,%rdx
   0.00%  │││    │     0x00007f2983001f31:   mov    %r8,%rbx
          │││    │     0x00007f2983001f34:   shl    %rbx
   0.03%  │││    │     0x00007f2983001f37:   add    %rdx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@768 (line 655)
          │││    │     0x00007f2983001f3a:   mov    %rcx,%rdx
          │││    │     0x00007f2983001f3d:   add    %r10,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@820 (line 666)
          │││    │     0x00007f2983001f40:   cmp    %rbx,%rdx
          │││    │     0x00007f2983001f43:   jg     0x00007f2983002392           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@824 (line 666)
   0.04%  │││    │     0x00007f2983001f49:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@886 (line 672)
          │││    │     0x00007f2983001f4c:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@888 (line 672)
   0.01%  │││    │     0x00007f2983001f55:   mov    %rcx,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││    │     0x00007f2983001f58:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││    │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@889 (line 680)
   0.04%  │││    │     0x00007f2983001f5a:   idiv   %r8                          ; implicit exception: deoptimizes
          │││    │                                                               ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   1.17%  │││    │     0x00007f2983001f5d:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││    │     0x00007f2983001f5f:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
          │││    │     0x00007f2983001f62:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.02%  │││    │     0x00007f2983001f6b:   mov    %rdx,%rax
   0.02%  │││    │     0x00007f2983001f6e:   shl    $0x3,%rax
          │││    │     0x00007f2983001f72:   shl    %rdx
          │││    │     0x00007f2983001f75:   add    %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.02%  │││    │     0x00007f2983001f78:   mov    %rax,%rdx
   0.00%  │││    │     0x00007f2983001f7b:   add    %r11,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││    │     0x00007f2983001f7e:   cmp    %rbx,%rdx
          │││    │     0x00007f2983001f81:   setg   %dl
   0.03%  │││    │     0x00007f2983001f84:   movzbl %dl,%edx                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.02%  │││    │     0x00007f2983001f87:   cmp    %rax,%r11
          │││    │     0x00007f2983001f8a:   setg   %cl
          │││    │     0x00007f2983001f8d:   movzbl %cl,%ecx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.01%  │││    │     0x00007f2983001f90:   mov    $0x2,%esi
   0.01%  │││    │     0x00007f2983001f95:   mov    %edx,%r9d
          │││    │     0x00007f2983001f98:   mov    %r11,%r10
          │││    │     0x00007f2983001f9b:   mov    %rax,%r11
   0.02%  │││    │     0x00007f2983001f9e:   xchg   %ax,%ax
   0.02%  │││╭   │     0x00007f2983001fa0:   jmp    0x00007f2983002041           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          ││││   │     0x00007f2983001fa5:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││   │     0x00007f2983001fb0:   data16 data16 xchg %ax,%ax
          ││││   │     0x00007f2983001fb4:   nopl   0x0(%rax,%rax,1)
          ││││   │     0x00007f2983001fbc:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││   │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
   0.05%  ││││↗  │     0x00007f2983001fc0:   test   %r9d,%r9d
          │││││  │     0x00007f2983001fc3:   jne    0x00007f29830024ca           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@921 (line 683)
   0.29%  │││││  │     0x00007f2983001fc9:   mov    %r10,%rax
   0.14%  │││││  │     0x00007f2983001fcc:   shl    $0x3,%rax
          │││││  │     0x00007f2983001fd0:   mov    %r10,%rdx
   0.03%  │││││  │     0x00007f2983001fd3:   shl    %rdx
   0.26%  │││││  │     0x00007f2983001fd6:   mov    %rax,%rcx
   0.12%  │││││  │     0x00007f2983001fd9:   add    %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@948 (line 686)
          │││││  │     0x00007f2983001fdc:   nopl   0x0(%rax)
   0.02%  │││││  │     0x00007f2983001fe0:   cmp    $0x1,%rcx
          │││││  │     0x00007f2983001fe4:   jl     0x00007f2983002576           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@978 (line 688)
   0.25%  │││││  │     0x00007f2983001fea:   cmp    %esi,%edi
          │││││  │     0x00007f2983001fec:   jbe    0x00007f29830024a6           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.09%  │││││  │     0x00007f2983001ff2:   mov    %r11,%rax                    ;*ldiv {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@928 (line 684)
          │││││  │     0x00007f2983001ff5:   cqto                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││││  │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
   0.02%  │││││  │     0x00007f2983001ff7:   idiv   %r8                          ; implicit exception: deoptimizes
          │││││  │                                                               ; ImmutableOopMap {r13=Oop [0]=Oop }
  16.55%  │││││  │     0x00007f2983001ffa:   mov    %eax,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@929 (line 684)
          │││││  │     0x00007f2983001ffc:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1036 (line 700)
   0.01%  │││││  │     0x00007f2983002000:   mov    %r10w,0x10(%r13,%rsi,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1038 (line 700)
   0.36%  │││││  │     0x00007f2983002006:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1029 (line 700)
   0.03%  │││││  │     0x00007f2983002008:   mov    %rdx,%r10
          │││││  │     0x00007f298300200b:   shl    $0x3,%r10
   0.01%  │││││  │     0x00007f298300200f:   shl    %rdx
   0.37%  │││││  │     0x00007f2983002012:   add    %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@940 (line 685)
   0.06%  │││││  │     0x00007f2983002015:   cmp    %r10,%rcx
          │││││  │     0x00007f2983002018:   setg   %dl
   0.01%  │││││  │     0x00007f298300201b:   movzbl %dl,%edx                     ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@986 (line 689)
   0.42%  │││││  │     0x00007f298300201e:   mov    %r10,%r11
   0.06%  │││││  │     0x00007f2983002021:   add    %rcx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1000 (line 690)
          │││││  │     0x00007f2983002024:   cmp    %rbx,%r11
   0.01%  │││││  │     0x00007f2983002027:   setg   %r9b
   0.39%  │││││  │     0x00007f298300202b:   movzbl %r9b,%r9d                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1004 (line 690)
   0.11%  │││││  │     0x00007f298300202f:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          │││││  │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││  │                                                               ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1039 (line 700)
          │││││  │     0x00007f2983002036:   test   %eax,(%r11)                  ;   {poll}
   0.01%  │││││  │     0x00007f2983002039:   mov    %r10,%r11
   0.35%  │││││  │     0x00007f298300203c:   mov    %rcx,%r10
   0.11%  │││││  │     0x00007f298300203f:   mov    %edx,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │││││  │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@914 (line 683)
          │││↘│  │     0x00007f2983002041:   test   %ecx,%ecx
          │││ ╰  │     0x00007f2983002043:   je     0x00007f2983001fc0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@916 (line 683)
          │││    │     0x00007f2983002049:   test   %r11,%r11
          │││    │     0x00007f298300204c:   je     0x00007f2983002486           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1056 (line 703)
   0.02%  │││    │     0x00007f2983002052:   shl    %r11                         ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1045 (line 702)
   0.01%  │││    │     0x00007f2983002055:   sub    %rbx,%r11                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                               ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1048 (line 702)
          │││    │  ↗  0x00007f2983002058:   nopl   0x0(%rax,%rax,1)
   0.02%  │││    │  │  0x00007f2983002060:   test   %r9d,%r9d
          │││    │  │  0x00007f2983002063:   je     0x00007f2983002465           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1447 (line 766)
   0.02%  │││    │  │  0x00007f2983002069:   mov    (%rsp),%rdx
   0.01%  │││    │  │  0x00007f298300206d:   movl   $0x0,0xc(%rdx)               ;*putfield decExponent {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1431 (line 760)
   0.00%  │││    │  │  0x00007f2983002074:   movl   $0x0,0x10(%rdx)              ;*putfield firstDigitIndex {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1436 (line 761)
   0.04%  │││    │  │  0x00007f298300207b:   mov    %esi,0x14(%rdx)              ;*putfield nDigits {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1442 (line 762)
   0.03%  │││    │  │  0x00007f298300207e:   xchg   %ax,%ax
          │││    │  │  0x00007f2983002080:   test   %ecx,%ecx
          │││  ╭ │  │  0x00007f2983002082:   je     0x00007f29830020ae           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
          │││  │ │  │  0x00007f2983002088:   test   %r11,%r11
          │││  │ │  │  0x00007f298300208b:   je     0x00007f29830025c5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1459 (line 768)
          │││  │ │  │  0x00007f2983002091:   cmp    $0x1,%r11
          │││  │ │  │  0x00007f2983002095:   jge    0x00007f2983002546           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1494 (line 774)
   0.05%  │││  │↗│  │  0x00007f298300209b:   mov    0x30(%rsp),%rbp
   0.00%  │││  │││  │  0x00007f29830020a0:   add    $0x38,%rsp
          │││  │││  │  0x00007f29830020a4:   mov    0x348(%r15),%rcx
   0.00%  │││  │││  │  0x00007f29830020ab:   test   %eax,(%rcx)                  ;   {poll_return}
   0.05%  │││  │││  │  0x00007f29830020ad:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││  │││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1452 (line 767)
   0.00%  │││  ↘││  │  0x00007f29830020ae:   mov    %esi,%r10d
   0.02%  │││   ││  │  0x00007f29830020b1:   dec    %r10d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@10 (line 789)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f29830020b4:   cmp    %r10d,%edi
          │││   ││  │  0x00007f29830020b7:   jbe    0x00007f2983002417           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f29830020bd:   movzwl 0x10(%r13,%r10,2),%r8d       ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@17 (line 790)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f29830020c3:   cmp    $0x39,%r8d
          │││   ││  │  0x00007f29830020c7:   je     0x00007f2983002438           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@22 (line 791)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.02%  │││   ││  │  0x00007f29830020cd:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@95 (line 804)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f29830020d0:   mov    %r8w,0x10(%r13,%r10,2)       ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@97 (line 804)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
          │││   ││  │  0x00007f29830020d6:   movb   $0x1,0x1a(%rdx)              ;*putfield decimalDigitsRoundedUp {reexecute=0 rethrow=0 return_oop=0}
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::roundup@100 (line 805)
          │││   ││  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1505 (line 778)
   0.00%  │││   ╰│  │  0x00007f29830020da:   jmp    0x00007f298300209b           ;*return {reexecute=0 rethrow=0 return_oop=0}
          │││    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1508 (line 781)
          │↘│    │  │  0x00007f29830020dc:   nopl   0x0(%rax)
   0.00%  │ │    │  │  0x00007f29830020e0:   cmp    $0x1b,%ebp
          │ │    │  │  0x00007f29830020e3:   jae    0x00007f29830023fd           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@107 (line 448)
          │ │    │  │  0x00007f29830020e9:   mov    %rsi,(%rsp)
   0.02%  │ │    │  │  0x00007f29830020ed:   mov    %edi,%esi
          │ │    │  │  0x00007f29830020ef:   add    0x10(%r13,%rbp,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │    │  │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@108 (line 448)
   0.00%  │ │    │  │  0x00007f29830020f4:   cmp    $0x40,%esi
          │ │    ╰  │  0x00007f29830020f7:   jge    0x00007f2983001e7f
          │ │       │  0x00007f29830020fd:   data16 xchg %ax,%ax
          │ │       │  0x00007f2983002100:   jmp    0x00007f29830022fb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │       │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@111 (line 448)
          │ ↘       │  0x00007f2983002105:   mov    %edi,0x10(%rsp)
   0.00%  │         │  0x00007f2983002109:   mov    %r11,0x18(%rsp)
          │         │  0x00007f298300210e:   mov    %edx,%edi
   0.02%  │         │  0x00007f2983002110:   cmp    $0x20,%eax
          │         │  0x00007f2983002113:   jge    0x00007f29830023f1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@393 (line 596)
          │         │  0x00007f2983002119:   nopl   0x0(%rax)
   0.00%  │         │  0x00007f2983002120:   test   %r9d,%r9d
          │         │  0x00007f2983002123:   je     0x00007f29830023e5
          │         │  0x00007f2983002129:   movabs $0x7ffd3a9e0,%rcx            ;   {oop([I{0x00000007ffd3a9e0})}
   0.03%  │         │  0x00007f2983002133:   mov    0x14(%rcx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@403 (line 598)
          │         │  0x00007f2983002136:   mov    %eax,%edx
   0.01%  │         │  0x00007f2983002138:   shl    $0x3,%edx
          │         │  0x00007f298300213b:   mov    %eax,%r10d
   0.02%  │         │  0x00007f298300213e:   shl    %r10d
          │         │  0x00007f2983002141:   add    %edx,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@463 (line 610)
   0.00%  │         │  0x00007f2983002144:   mov    %r10d,%edx
          │         │  0x00007f2983002147:   shl    $0x3,%edx
   0.03%  │         │  0x00007f298300214a:   mov    %r10d,%r11d
          │         │  0x00007f298300214d:   shl    %r11d
   0.00%  │         │  0x00007f2983002150:   add    %edx,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │         │  0x00007f2983002153:   cmp    $0x1,%r11d
          │         │  0x00007f2983002157:   jl     0x00007f29830023d6           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
   0.02%  │         │  0x00007f298300215d:   mov    0x10(%rcx),%edx              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@415 (line 599)
          │         │  0x00007f2983002160:   mov    %ebx,%ecx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@397 (line 598)
   0.00%  │         │  0x00007f2983002162:   imul   %ecx,%eax                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@404 (line 598)
          │         │  0x00007f2983002165:   mov    %esi,%ecx
   0.03%  │         │  0x00007f2983002167:   shl    %cl,%eax                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@407 (line 598)
   0.01%  │         │  0x00007f2983002169:   mov    %r8d,%ecx
   0.03%  │         │  0x00007f298300216c:   mov    %edx,%r8d
          │         │  0x00007f298300216f:   shl    %cl,%r8d                     ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@418 (line 599)
   0.04%  │         │  0x00007f2983002172:   cltd                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@174 (line 515)
          │         │  0x00007f2983002173:   idiv   %r8d                         ; implicit exception: deoptimizes
          │         │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.05%  │         │  0x00007f2983002176:   test   %eax,%eax
          │         │  0x00007f2983002178:   je     0x00007f29830023ca           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@522 (line 614)
   0.03%  │         │  0x00007f298300217e:   mov    %edx,%ecx
          │         │  0x00007f2983002180:   shl    $0x3,%ecx
   0.01%  │         │  0x00007f2983002183:   shl    %edx
   0.00%  │         │  0x00007f2983002185:   add    %edx,%ecx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@456 (line 609)
   0.03%  │         │  0x00007f2983002187:   cmp    %ecx,%r10d
          │         │  0x00007f298300218a:   jg     0x00007f298300239e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@470 (line 611)
   0.01%  │         │  0x00007f2983002190:   mov    %r8d,%edx
          │         │  0x00007f2983002193:   shl    $0x3,%edx
          │         │  0x00007f2983002196:   mov    %r8d,%ebx
   0.01%  │         │  0x00007f2983002199:   shl    %ebx
   0.00%  │         │  0x00007f298300219b:   add    %edx,%ebx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@436 (line 601)
          │         │  0x00007f298300219d:   mov    %ecx,%edx
          │         │  0x00007f298300219f:   add    %r10d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@484 (line 612)
   0.01%  │         │  0x00007f29830021a2:   cmp    %ebx,%edx
          │         │  0x00007f29830021a4:   jg     0x00007f2983002326           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@487 (line 612)
   0.02%  │         │  0x00007f29830021aa:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@549 (line 618)
   0.00%  │         │  0x00007f29830021ad:   mov    %ax,0x10(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@551 (line 618)
          │         │  0x00007f29830021b6:   mov    %ecx,%eax                    ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
   0.01%  │         │  0x00007f29830021b8:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@552 (line 626)
   0.01%  │         │  0x00007f29830021b9:   idiv   %r8d                         ; implicit exception: deoptimizes
          │         │                                                            ; ImmutableOopMap {r13=Oop r14=NarrowOop [0]=Oop }
   0.71%  │         │  0x00007f29830021bc:   mov    %edx,%esi
   0.00%  │         │  0x00007f29830021be:   shl    $0x3,%esi
   0.03%  │         │  0x00007f29830021c1:   shl    %edx
   0.00%  │         │  0x00007f29830021c3:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.02%  │         │  0x00007f29830021c5:   cmp    %esi,%r11d
          │         │  0x00007f29830021c8:   jg     0x00007f29830023aa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.03%  │         │  0x00007f29830021ce:   lea    0x30(%rax),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.01%  │         │  0x00007f29830021d1:   mov    %ax,0x12(,%r14,8)            ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
          │         │  0x00007f29830021da:   mov    %esi,%eax
   0.00%  │         │  0x00007f29830021dc:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.03%  │         │  0x00007f29830021df:   cmp    %ebx,%eax
   0.01%  │         │  0x00007f29830021e1:   setg   %al
   0.02%  │         │  0x00007f29830021e4:   movzbl %al,%eax                     ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.03%  │         │  0x00007f29830021e7:   mov    $0x2,%ecx
          │         │  0x00007f29830021ec:   mov    %eax,%r9d
          │         │  0x00007f29830021ef:   mov    %r11d,%r10d
          │         │  0x00007f29830021f2:   mov    %esi,%r11d
   0.05%  │       ╭ │  0x00007f29830021f5:   jmp    0x00007f2983002280           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │       │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │       │ │  0x00007f29830021fa:   nopw   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │       │ │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.02%  │       │↗│  0x00007f2983002200:   mov    %r10d,%eax
   0.12%  │       │││  0x00007f2983002203:   shl    $0x3,%eax
          │       │││  0x00007f2983002206:   mov    %r10d,%edx
          │       │││  0x00007f2983002209:   shl    %edx
   0.04%  │       │││  0x00007f298300220b:   mov    %eax,%r9d
   0.12%  │       │││  0x00007f298300220e:   add    %edx,%r9d                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@608 (line 632)
          │       │││  0x00007f2983002211:   cmp    $0x1,%r9d
          │       │││  0x00007f2983002215:   jl     0x00007f2983002383           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@639 (line 634)
          │       │││  0x00007f298300221b:   nopl   0x0(%rax,%rax,1)
   0.04%  │       │││  0x00007f2983002220:   cmp    %ecx,%edi
          │       │││  0x00007f2983002222:   jbe    0x00007f2983002374           ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.14%  │       │││  0x00007f2983002228:   mov    %r11d,%eax                   ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@591 (line 630)
          │       │││  0x00007f298300222b:   cltd                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │       │││  0x00007f298300222c:   idiv   %r8d                         ; implicit exception: deoptimizes
          │       │││                                                            ; ImmutableOopMap {r13=Oop [0]=Oop }
   2.98%  │       │││  0x00007f298300222f:   mov    %edx,%esi
   0.07%  │       │││  0x00007f2983002231:   shl    $0x3,%esi
   0.03%  │       │││  0x00007f2983002234:   shl    %edx
   0.04%  │       │││  0x00007f2983002236:   add    %edx,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@601 (line 631)
   0.09%  │       │││  0x00007f2983002238:   nopl   0x0(%rax,%rax,1)
   0.03%  │       │││  0x00007f2983002240:   cmp    %esi,%r9d
          │       │││  0x00007f2983002243:   jg     0x00007f298300232f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@646 (line 635)
   0.07%  │       │││  0x00007f2983002249:   lea    0x30(%rax),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@695 (line 646)
   0.03%  │       │││  0x00007f298300224d:   mov    %r10w,0x10(%r13,%rcx,2)      ;*castore {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@697 (line 646)
   0.00%  │       │││  0x00007f2983002253:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@688 (line 646)
   0.04%  │       │││  0x00007f2983002255:   mov    %esi,%r10d
   0.12%  │       │││  0x00007f2983002258:   add    %r9d,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@660 (line 636)
   0.01%  │       │││  0x00007f298300225b:   cmp    %ebx,%r10d
   0.01%  │       │││  0x00007f298300225e:   setg   %r10b
   0.13%  │       │││  0x00007f2983002262:   movzbl %r10b,%r10d                  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@663 (line 636)
   0.14%  │       │││  0x00007f2983002266:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=Oop }
          │       │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       │││                                                            ; - (reexecute) jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@698 (line 646)
          │       │││  0x00007f298300226d:   test   %eax,(%r11)                  ;   {poll}
          │       │││  0x00007f2983002270:   mov    %esi,%r11d
          │       │││  0x00007f2983002273:   mov    %r9d,0xc(%rsp)
   0.14%  │       │││  0x00007f2983002278:   mov    %r10d,%r9d
          │       │││  0x00007f298300227b:   mov    0xc(%rsp),%r10d              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@577 (line 629)
          │       ↘││  0x00007f2983002280:   test   %r9d,%r9d
          │        ╰│  0x00007f2983002283:   je     0x00007f2983002200           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@584 (line 629)
   0.00%  │         │  0x00007f2983002289:   test   %r11d,%r11d
          │         │  0x00007f298300228c:   je     0x00007f2983002354           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@714 (line 649)
   0.03%  │         │  0x00007f2983002292:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@704 (line 648)
          │         │  0x00007f2983002295:   sub    %ebx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@707 (line 648)
          │         │  0x00007f2983002298:   movslq %r11d,%r10                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@708 (line 648)
   0.00%  │         │  0x00007f298300229b:   mov    %r10,%r11
   0.02%  │         │  0x00007f298300229e:   mov    %ecx,%esi
          │         │  0x00007f29830022a0:   mov    $0x0,%ecx
          │         ╰  0x00007f29830022a5:   jmp    0x00007f2983002058           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa@1426 (line 760)
          ↘            0x00007f29830022aa:   mov    $0xffffffed,%r10d
                       0x00007f29830022b0:   mov    %r8d,%ecx
                       0x00007f29830022b3:   mov    %r11,%r8
                       0x00007f29830022b6:   mov    0x24(%rsp),%ebx
                       0x00007f29830022ba:   mov    %rsi,%rdx
                       0x00007f29830022bd:   mov    $0x1010,%r11
                       0x00007f29830022c4:   mov    %r10d,0x370(%r15)            ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  29.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.Formatter::format, version 2, compile id 860 

                                                                         ; - java.util.Formatter::format@36 (line 2673)
               0x00007f2983009e91:   cmp    $0x0,%ebx
          ╭    0x00007f2983009e94:   je     0x00007f2983009eb4
          │    0x00007f2983009e9a:   cmp    $0xfffffffe,%ebx
          │    0x00007f2983009e9d:   data16 xchg %ax,%ax
          │    0x00007f2983009ea0:   je     0x00007f298300a2dc
          │    0x00007f2983009ea6:   cmp    $0xffffffff,%ebx
          │    0x00007f2983009ea9:   je     0x00007f298300a2dc
          │    0x00007f2983009eaf:   jmp    0x00007f298300a2dc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.Formatter::format@57 (line 2676)
   0.17%  ↘    0x00007f2983009eb4:   mov    %r8d,%ebx
   0.01%       0x00007f2983009eb7:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@152 (line 2685)
               0x00007f2983009eb9:   nopl   0x0(%rax)
               0x00007f2983009ec0:   cmp    %edi,%ebx
               0x00007f2983009ec2:   jg     0x00007f298300a1c0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@169 (line 2687)
   0.16%       0x00007f2983009ec8:   test   %al,%al
               0x00007f2983009eca:   jne    0x00007f298300a1ab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::print@4 (line 2910)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.00%       0x00007f2983009ed0:   cmp    %ebx,%r9d
               0x00007f2983009ed3:   jbe    0x00007f298300a196           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@200 (line 2689)
               0x00007f2983009ed9:   nopl   0x0(%rax)
               0x00007f2983009ee0:   cmp    $0x73,%r11d
               0x00007f2983009ee4:   jne    0x00007f298300a181           ; ImmutableOopMap {rcx=Oop rdx=Oop [44]=NarrowOop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.Formatter::format@20 (line 2672)
   0.31%       0x00007f2983009eea:   mov    0xc(,%r13,8),%esi            ; implicit exception: dispatches to 0x00007f298300a506
   0.01%       0x00007f2983009ef2:   mov    0xc(%rcx),%eax               ;*getfield flags {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$Flags::valueOf@1 (line 4594)
                                                                         ; - java.util.Formatter$Flags::contains@5 (line 4598)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
               0x00007f2983009ef5:   and    %eax,%esi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$Flags::contains@8 (line 4598)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.14%       0x00007f2983009ef7:   cmp    %esi,%eax
               0x00007f2983009ef9:   je     0x00007f298300a15a           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$Flags::contains@13 (line 4598)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@68 (line 3051)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.17%       0x00007f2983009eff:   mov    0x10(%rdx,%rbx,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@200 (line 2689)
               0x00007f2983009f03:   mov    %esi,0x14(%rsp)              ; ImmutableOopMap {rdx=Oop [20]=NarrowOop [44]=NarrowOop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.Formatter::format@20 (line 2672)
               0x00007f2983009f07:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f298300a526
   0.00%       0x00007f2983009f0e:   movabs $0x800000000,%r11
   0.15%       0x00007f2983009f18:   lea    (%r11,%rax,1),%r13           ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.00%       0x00007f2983009f1c:   mov    %r13,0x60(%rsp)
   0.03%       0x00007f2983009f21:   cmp    0x20(%r13),%rbp
               0x00007f2983009f25:   je     0x00007f298300a0d0
   0.68%       0x00007f2983009f2b:   cmp    $0x222808,%eax               ;   {metadata(&apos;java/util/Formattable&apos;)}
               0x00007f2983009f31:   je     0x00007f298300a0d0
   0.01%       0x00007f2983009f37:   mov    0x28(%r13),%rax
   0.04%       0x00007f2983009f3b:   mov    (%rax),%r11d
   1.04%       0x00007f2983009f3e:   mov    $0x0,%r8d
   0.00%   ╭   0x00007f2983009f44:   jmp    0x00007f2983009f7e
           │   0x00007f2983009f49:   data16 data16 nopw 0x0(%rax,%rax,1)
           │   0x00007f2983009f54:   data16 data16 xchg %ax,%ax
           │   0x00007f2983009f58:   nopl   0x0(%rax,%rax,1)
   0.21%   │↗  0x00007f2983009f60:   mov    %r8d,%r10d
   0.13%   ││  0x00007f2983009f63:   shl    $0x3,%r10d
   0.17%   ││  0x00007f2983009f67:   lea    0x8(%r10),%r10d
   0.19%   ││  0x00007f2983009f6b:   movslq %r10d,%r10
   0.15%   ││  0x00007f2983009f6e:   mov    (%rax,%r10,1),%r10
   0.34%   ││  0x00007f2983009f72:   cmp    %r10,%rbp
           ││  0x00007f2983009f75:   je     0x00007f298300a309
   0.20%   ││  0x00007f2983009f7b:   inc    %r8d
   0.19%   ↘│  0x00007f2983009f7e:   xchg   %ax,%ax
   0.16%    │  0x00007f2983009f80:   cmp    %r8d,%r11d
            ╰  0x00007f2983009f83:   jg     0x00007f2983009f60           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@1 (line 3045)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.12%       0x00007f2983009f85:   mov    0x14(%rsp),%esi
   0.05%       0x00007f2983009f89:   mov    %ebx,0x5c(%rsp)
   0.03%       0x00007f2983009f8d:   mov    0x2c(%rsp),%r14d
   0.00%       0x00007f2983009f92:   mov    0x1e0(%r13),%r13
   0.12%       0x00007f2983009f99:   mov    0x40(%r13),%r10              ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.06%       0x00007f2983009f9d:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@200 (line 2689)
   0.02%       0x00007f2983009fa1:   mov    %r14d,%r11d
   0.00%       0x00007f2983009fa4:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::elementData@5 (line 411)
                                                                         ; - java.util.ArrayList::get@11 (line 428)
                                                                         ; - java.util.Formatter::format@36 (line 2673)
   0.10%       0x00007f2983009fa8:   mov    %r13,%rbx
   0.05%       0x00007f2983009fab:   mov    %r10,%rax                    ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.02%       0x00007f2983009fae:   mov    %r11,0x18(%rsp)
   0.05%       0x00007f2983009fb3:   call   *%rax                        ; ImmutableOopMap {[24]=Oop [44]=NarrowOop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@99 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.35%       0x00007f2983009fb5:   nop
   0.05%       0x00007f2983009fb6:   mov    0x2c(%rsp),%r14d
   0.38%       0x00007f2983009fbb:   nopl   0x0(%rax,%rax,1)
   0.05%       0x00007f2983009fc0:   cmpl   $0xffffffff,0x14(,%r14,8)
   0.56%       0x00007f2983009fc9:   jne    0x00007f298300a112           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::print@5 (line 3079)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.09%       0x00007f2983009fcf:   cmpl   $0xffffffff,0x10(,%r14,8)
   0.08%       0x00007f2983009fd8:   jne    0x00007f298300a13c
   0.10%       0x00007f2983009fde:   movabs $0x7fef342f8,%r11            ; ImmutableOopMap {rax=Oop r11=Oop r14=NarrowOop [24]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
                                                                         ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fef342f8})}
   0.03%       0x00007f2983009fe8:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f298300a546
   0.04%       0x00007f2983009fea:   mov    0x1c(,%r14,8),%esi           ; ImmutableOopMap {rax=Oop r11=Oop r14=NarrowOop [24]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.04%       0x00007f2983009ff2:   mov    0xc(,%rsi,8),%esi            ; implicit exception: dispatches to 0x00007f298300a566
   0.32%       0x00007f2983009ff9:   mov    0xc(%r11),%edx               ;*getfield flags {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$Flags::valueOf@1 (line 4594)
                                                                         ; - java.util.Formatter$Flags::contains@5 (line 4598)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.01%       0x00007f2983009ffd:   and    %edx,%esi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$Flags::contains@8 (line 4598)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.14%       0x00007f2983009fff:   nop
   0.04%       0x00007f298300a000:   cmp    %esi,%edx
               0x00007f298300a002:   je     0x00007f298300a1d5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$Flags::contains@13 (line 4598)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@36 (line 3081)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.16%       0x00007f298300a008:   mov    0x20(,%r14,8),%esi           ; ImmutableOopMap {rax=Oop [24]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
               0x00007f298300a010:   mov    0x10(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f298300a586
   0.00%       0x00007f298300a017:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rsi=NarrowOop [24]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.Formatter$FormatSpecifier::printString@102 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.04%       0x00007f298300a020:   cmpl   $0xf858,0x8(,%rsi,8)         ; implicit exception: dispatches to 0x00007f298300a5a6
                                                                         ;   {metadata(&apos;java/lang/StringBuilder&apos;)}
   0.55%       0x00007f298300a02b:   jne    0x00007f298300a22f           ;*invokeinterface append {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.13%       0x00007f298300a031:   shl    $0x3,%rsi                    ;*getfield a {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::print@54 (line 3083)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.03%       0x00007f298300a035:   mov    %rsi,%r10
   0.00%       0x00007f298300a038:   mov    %rax,%rdx                    ;*invokespecial append {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringBuilder::append@2 (line 179)
                                                                         ; - java.lang.StringBuilder::append@2 (line 91)
                                                                         ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                         ; - java.lang.StringBuilder::append@2 (line 209)
                                                                         ; - java.lang.StringBuilder::append@2 (line 91)
                                                                         ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
   0.00%       0x00007f298300a03b:   mov    %rax,0x20(%rsp)
   0.11%       0x00007f298300a040:   mov    %r10,0x8(%rsp)
   0.02%       0x00007f298300a045:   xchg   %ax,%ax
               0x00007f298300a047:   call   0x00007f2983004e60           ; ImmutableOopMap {[8]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop }
                                                                         ;*invokespecial append {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - java.lang.StringBuilder::append@2 (line 179)
                                                                         ; - java.lang.StringBuilder::append@2 (line 91)
                                                                         ; - java.lang.AbstractStringBuilder::append@21 (line 622)
                                                                         ; - java.lang.StringBuilder::append@2 (line 209)
                                                                         ; - java.lang.StringBuilder::append@2 (line 91)
                                                                         ; - java.util.Formatter$FormatSpecifier::appendJustified@10 (line 3093)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@58 (line 3083)
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@103 (line 3056)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
                                                                         ;   {optimized virtual_call}
   0.03%       0x00007f298300a04c:   nop
   0.04%       0x00007f298300a04d:   mov    0x6c(%rsp),%r10d
   0.39%       0x00007f298300a052:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@275 (line 2672)
   0.11%       0x00007f298300a055:   mov    0x5c(%rsp),%r8d
   0.03%       0x00007f298300a05a:   mov    0x70(%rsp),%edi
   0.00%       0x00007f298300a05e:   movabs $0x800222808,%rbp            ;   {metadata(&apos;java/util/Formattable&apos;)}
   0.06%       0x00007f298300a068:   movabs $0x7fef34308,%rcx            ;   {oop(a &apos;java/util/Formatter$Flags&apos;{0x00000007fef34308})}
   0.13%       0x00007f298300a072:   mov    0x74(%rsp),%r9d
   0.02%       0x00007f298300a077:   movabs $0x800222c40,%r11            ;   {metadata(&apos;java/util/Formatter$FormatSpecifier&apos;)}
   0.00%       0x00007f298300a081:   mov    0x38(%rsp),%rax
   0.04%       0x00007f298300a086:   mov    0x50(%rsp),%rdx
   0.15%       0x00007f298300a08b:   mov    0x10(%rax),%esi              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::size@1 (line 253)
                                                                         ; - java.util.Formatter::format@24 (line 2672)
   0.40%       0x00007f298300a08e:   cmp    %r10d,%esi
               0x00007f298300a091:   jg     0x00007f2983009e00
   0.01%       0x00007f298300a097:   jmp    0x00007f2983009cea           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@29 (line 2672)
               0x00007f298300a09c:   mov    $0x0,%rbx
               0x00007f298300a0a3:   jmp    0x00007f2983009e48
               0x00007f298300a0a8:   mov    $0x0,%rsi
               0x00007f298300a0af:   jmp    0x00007f2983009bb5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter::format@41 (line 2673)
               0x00007f298300a0b4:   movl   $0xffffffed,0x370(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.Formatter$FormatSpecifier::printString@4 (line 3045)
                                                                         ; - java.util.Formatter$FormatSpecifier::print@171 (line 2933)
                                                                         ; - java.util.Formatter::format@202 (line 2689)
....................................................................................................
  10.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  29.92%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 844 
  10.02%       jvmci, level 4  java.util.Formatter::format, version 2, compile id 860 
   7.62%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 841 
   5.88%       jvmci, level 4  java.util.Formatter::parse, version 2, compile id 861 
   4.47%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 869 
   3.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_format, version 2, compile id 880 
   2.76%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.38%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 882 
   2.36%       jvmci, level 4  java.lang.Integer::toString, version 2, compile id 881 
   2.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_format, version 2, compile id 880 
   2.14%       jvmci, level 4  java.util.Formatter::format, version 2, compile id 860 
   2.07%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 884 
   1.95%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 869 
   1.83%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 841 
   1.64%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 841 
   1.62%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 870 
   1.19%       jvmci, level 4  java.util.Formatter::parse, version 2, compile id 861 
   1.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_format, version 2, compile id 880 
   1.03%       jvmci, level 4  java.util.Formatter::format, version 2, compile id 860 
   0.96%       jvmci, level 4  java.util.Formatter::parse, version 2, compile id 861 
  13.59%  <...other 582 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  29.92%       jvmci, level 4  jdk.internal.math.FloatingDecimal$BinaryToASCIIBuffer::dtoa, version 2, compile id 844 
  15.19%       jvmci, level 4  java.util.Formatter::format, version 2, compile id 860 
  12.34%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 841 
   8.97%       jvmci, level 4  java.util.Formatter::parse, version 2, compile id 861 
   6.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringConcatenationBenchmark::string_format, version 2, compile id 880 
   6.42%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 869 
   3.30%       jvmci, level 4  java.lang.Double::toString, version 2, compile id 884 
   3.09%       jvmci, level 4  java.lang.Float::toString, version 2, compile id 882 
   2.76%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.36%       jvmci, level 4  java.lang.Integer::toString, version 2, compile id 881 
   2.33%               kernel  [unknown] 
   1.65%                       <unknown> 
   1.62%       jvmci, level 4  java.lang.Long::toString, version 2, compile id 870 
   0.78%       jvmci, level 4  java.lang.String::toString, version 2, compile id 843 
   0.77%       jvmci, level 4  java.lang.Boolean::toString, version 2, compile id 886 
   0.59%         runtime stub  StubRoutines::jshort_disjoint_arraycopy 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.jmh_generated.StringConcatenationBenchmark_string_format_jmhTest::string_format_avgt_jmhStub, version 5, compile id 906 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.84%  <...other 213 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.72%       jvmci, level 4
   3.35%         runtime stub
   2.33%               kernel
   1.65%                     
   0.72%            libjvm.so
   0.07%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.04%  libjvmcicompiler.so
   0.02%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%      perf-114168.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:49

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
StringConcatenationBenchmark.plus_operator               128   LATIN1  avgt    5   634.022 ± 0.815  ns/op
StringConcatenationBenchmark.plus_operator:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.plus_operator               128    UTF16  avgt    5   622.560 ± 0.766  ns/op
StringConcatenationBenchmark.plus_operator:·asm          128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_buffer               128   LATIN1  avgt    5   809.563 ± 1.461  ns/op
StringConcatenationBenchmark.string_buffer:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_buffer               128    UTF16  avgt    5   919.023 ± 0.691  ns/op
StringConcatenationBenchmark.string_buffer:·asm          128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_builder              128   LATIN1  avgt    5   727.725 ± 1.843  ns/op
StringConcatenationBenchmark.string_builder:·asm         128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_builder              128    UTF16  avgt    5   829.694 ± 1.394  ns/op
StringConcatenationBenchmark.string_builder:·asm         128    UTF16  avgt            NaN            ---
StringConcatenationBenchmark.string_format               128   LATIN1  avgt    5  1214.767 ± 1.308  ns/op
StringConcatenationBenchmark.string_format:·asm          128   LATIN1  avgt            NaN            ---
StringConcatenationBenchmark.string_format               128    UTF16  avgt    5  1308.156 ± 0.903  ns/op
StringConcatenationBenchmark.string_format:·asm          128    UTF16  avgt            NaN            ---
