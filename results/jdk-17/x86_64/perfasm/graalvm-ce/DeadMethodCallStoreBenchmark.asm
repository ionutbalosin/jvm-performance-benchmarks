# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10-jvmci-22.3-b13
# VM invoker: /usr/lib/jvm/graalvm-ce-java17-22.3.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 757 

                0x00007fffdef452f5:   mov    $0x1,%r11d
   0.02%        0x00007fffdef452fb:   mov    $0x5,%r10d
                0x00007fffdef45301:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007fffdef4530c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
            ↗↗  0x00007fffdef45310:   cmp    $0x3e8,%r10d
          ╭ ││  0x00007fffdef45317:   jge    0x00007fffdef4534c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  │ ││  0x00007fffdef4531d:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   5.21%  │ ││  0x00007fffdef45322:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
  71.92%  │ ││  0x00007fffdef45326:   mov    %r11d,%r8d
   0.05%  │ ││  0x00007fffdef45329:   xor    $0x1,%r8d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 100)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
          │ ││  0x00007fffdef4532d:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
          │ ││  0x00007fffdef45331:   test   %r11d,%r11d
          │╭││  0x00007fffdef45334:   jne    0x00007fffdef45343           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 95)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   2.64%  ││││  0x00007fffdef4533a:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   7.97%  ││││  0x00007fffdef4533e:   mov    %r8d,%r11d
   0.00%  ││╰│  0x00007fffdef45341:   jmp    0x00007fffdef45310           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@40 (line 100)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   2.73%  │↘ │  0x00007fffdef45343:   vaddsd %xmm1,%xmm2,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   8.06%  │  │  0x00007fffdef45347:   mov    %r8d,%r11d
   0.00%  │  ╰  0x00007fffdef4534a:   jmp    0x00007fffdef45310           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ↘     0x00007fffdef4534c:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@5 (line 84)
                0x00007fffdef45351:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@12 (line 84)
                0x00007fffdef45355:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@14 (line 84)
   0.02%        0x00007fffdef45359:   mov    0x348(%r15),%rcx
                0x00007fffdef45360:   test   %eax,(%rcx)                  ;   {poll_return}
                0x00007fffdef45362:   ret    
              [Exception Handler]
                0x00007fffdef45363:   call   0x00007fffdea89b00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                0x00007fffdef45368:   nop
              [Deopt Handler Code]
                0x00007fffdef45369:   call   0x00007fffde948620           ;   {runtime_call DeoptimizationBlob}
                0x00007fffdef4536e:   nop
              [Stub Code]
....................................................................................................
  98.63%  <total for region 1>

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 733 

                        #           [sp+0x10]  (sp of caller)
                        0x00007fffdef462c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                        0x00007fffdef462c4:   movabs $0x800000000,%r12
                        0x00007fffdef462ce:   add    %r12,%r10
                        0x00007fffdef462d1:   xor    %r12,%r12
                        0x00007fffdef462d4:   cmp    %r10,%rax
                        0x00007fffdef462d7:   jne    0x00007fffde942d80           ;   {runtime_call ic_miss_stub}
                        0x00007fffdef462dd:   nop
                        0x00007fffdef462de:   xchg   %ax,%ax
                      [Verified Entry Point]
   0.01%                0x00007fffdef462e0:   nopl   0x0(%rax,%rax,1)
                        0x00007fffdef462e5:   mov    $0x5,%r10d
          ╭             0x00007fffdef462eb:   jmp    0x00007fffdef46304           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 72)
          │             0x00007fffdef462f0:   data16 data16 nopw 0x0(%rax,%rax,1)
          │             0x00007fffdef462fb:   data16 data16 xchg %ax,%ax
          │             0x00007fffdef462ff:   nop                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 72)
   4.35%  │↗            0x00007fffdef46300:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 72)
   0.01%  ↘│            0x00007fffdef46304:   cmp    $0x3e8,%r10d
   0.00%   ╰            0x00007fffdef4630b:   jl     0x00007fffdef46300           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 72)
                        0x00007fffdef4630d:   mov    $0x5,%r10d
            ╭           0x00007fffdef46313:   jmp    0x00007fffdef46324           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 73)
            │           0x00007fffdef46318:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 73)
   4.34%    │↗          0x00007fffdef46320:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
            ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 73)
   0.01%    ↘│          0x00007fffdef46324:   cmp    $0x3e8,%r10d
             ╰          0x00007fffdef4632b:   jl     0x00007fffdef46320           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 73)
   0.02%                0x00007fffdef4632d:   mov    $0x5,%r10d
   0.02%      ╭         0x00007fffdef46333:   jmp    0x00007fffdef46344           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 74)
              │         0x00007fffdef46338:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
              │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 74)
   4.57%      │↗        0x00007fffdef46340:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
              ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 74)
   0.02%      ↘│        0x00007fffdef46344:   cmp    $0x3e8,%r10d
   0.00%       ╰        0x00007fffdef4634b:   jl     0x00007fffdef46340           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 74)
   0.01%                0x00007fffdef4634d:   mov    $0x5,%r10d
   0.09%        ╭       0x00007fffdef46353:   jmp    0x00007fffdef46364           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 75)
                │       0x00007fffdef46358:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 75)
   4.37%        │↗      0x00007fffdef46360:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
                ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 75)
                ↘│      0x00007fffdef46364:   cmp    $0x3e8,%r10d
   0.01%         ╰      0x00007fffdef4636b:   jl     0x00007fffdef46360
   0.13%                0x00007fffdef4636d:   vmovsd -0xd5(%rip),%xmm0        # 0x00007fffdef462a0
                                                                                  ;   {section_word}
   0.09%                0x00007fffdef46375:   vmovsd -0xd5(%rip),%xmm1        # 0x00007fffdef462a8
                                                                                  ;   {section_word}
                        0x00007fffdef4637d:   mov    $0x1,%r11d
                        0x00007fffdef46383:   mov    $0x5,%r10d
                        0x00007fffdef46389:   nopl   0x0(%rax)                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%            ↗↗  0x00007fffdef46390:   cmp    $0x3e8,%r10d
                  ╭ ││  0x00007fffdef46397:   jge    0x00007fffdef463cc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
                  │ ││  0x00007fffdef4639d:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   4.31%          │ ││  0x00007fffdef463a2:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
  59.02%          │ ││  0x00007fffdef463a6:   mov    %r11d,%r8d
   0.03%          │ ││  0x00007fffdef463a9:   xor    $0x1,%r8d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 100)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%          │ ││  0x00007fffdef463ad:   lea    0x2(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
                  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
                  │ ││  0x00007fffdef463b1:   test   %r11d,%r11d
   0.00%          │╭││  0x00007fffdef463b4:   jne    0x00007fffdef463c3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 95)
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   2.12%          ││││  0x00007fffdef463ba:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
                  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   6.59%          ││││  0x00007fffdef463be:   mov    %r8d,%r11d
   0.00%          ││╰│  0x00007fffdef463c1:   jmp    0x00007fffdef46390           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@40 (line 100)
                  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   2.25%          │↘ │  0x00007fffdef463c3:   vaddsd %xmm1,%xmm2,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
                  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   6.66%          │  │  0x00007fffdef463c7:   mov    %r8d,%r11d
   0.00%          │  ╰  0x00007fffdef463ca:   jmp    0x00007fffdef46390           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@8 (line 94)
                  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%          ↘     0x00007fffdef463cc:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@21 (line 77)
                        0x00007fffdef463d1:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@28 (line 77)
                        0x00007fffdef463d5:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@30 (line 77)
   0.02%                0x00007fffdef463d9:   mov    0x348(%r15),%rcx
                        0x00007fffdef463e0:   test   %eax,(%rcx)                  ;   {poll_return}
                        0x00007fffdef463e2:   ret    
                      [Exception Handler]
                        0x00007fffdef463e3:   call   0x00007fffdea89f00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                        0x00007fffdef463e8:   nop
                      [Deopt Handler Code]
                        0x00007fffdef463e9:   call   0x00007fffde948620           ;   {runtime_call DeoptimizationBlob}
                        0x00007fffdef463ee:   nop
                      [Stub Code]
....................................................................................................
  99.08%  <total for region 1>