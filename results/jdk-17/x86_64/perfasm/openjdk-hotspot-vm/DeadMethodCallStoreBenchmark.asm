# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /usr/lib/jvm/adoptium-temurin-jdk-17.0.6+10/bin/java

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 496 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@-1 (line 83)
                    0x00007fffe0ee9aec:   mov    $0x5,%r9d
   0.01%            0x00007fffe0ee9af2:   vmovsd -0x5a(%rip),%xmm3        # 0x00007fffe0ee9aa0
                                                                              ;   {section_word}
                    0x00007fffe0ee9afa:   vmovsd -0x5a(%rip),%xmm0        # 0x00007fffe0ee9aa8
                                                                              ;   {section_word}
          ╭         0x00007fffe0ee9b02:   jmp    0x00007fffe0ee9b17
          │         0x00007fffe0ee9b04:   nopl   0x0(%rax,%rax,1)
          │         0x00007fffe0ee9b0c:   data16 data16 xchg %ax,%ax
          │↗        0x00007fffe0ee9b10:   vaddsd %xmm1,%xmm0,%xmm0
   1.65%  ││        0x00007fffe0ee9b14:   mov    %r10d,%r9d                   ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
          ↘│        0x00007fffe0ee9b17:   mov    %r9d,%r11d
   0.03%   │        0x00007fffe0ee9b1a:   add    $0x1e,%r11d
           │        0x00007fffe0ee9b1e:   mov    %r9d,%r8d
   0.46%   │        0x00007fffe0ee9b21:   add    $0x1c,%r8d
           │        0x00007fffe0ee9b25:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.02%   │        0x00007fffe0ee9b2a:   vdivsd %xmm1,%xmm3,%xmm4
   5.98%   │        0x00007fffe0ee9b2e:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.03%   │        0x00007fffe0ee9b33:   vdivsd %xmm1,%xmm3,%xmm5
   1.91%   │        0x00007fffe0ee9b37:   mov    %r9d,%r11d
           │        0x00007fffe0ee9b3a:   add    $0x14,%r11d
           │        0x00007fffe0ee9b3e:   mov    %r9d,%r8d
   0.03%   │        0x00007fffe0ee9b41:   add    $0xc,%r8d
   0.57%   │        0x00007fffe0ee9b45:   vcvtsi2sd %r11d,%xmm1,%xmm1
           │        0x00007fffe0ee9b4a:   vdivsd %xmm1,%xmm3,%xmm6
   1.31%   │        0x00007fffe0ee9b4e:   vcvtsi2sd %r8d,%xmm1,%xmm1
           │        0x00007fffe0ee9b53:   vdivsd %xmm1,%xmm3,%xmm7
   2.35%   │        0x00007fffe0ee9b57:   mov    %r9d,%r11d
   0.02%   │        0x00007fffe0ee9b5a:   add    $0x4,%r11d
           │        0x00007fffe0ee9b5e:   mov    %r9d,%r8d
           │        0x00007fffe0ee9b61:   add    $0x2,%r8d
   0.53%   │        0x00007fffe0ee9b65:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.03%   │        0x00007fffe0ee9b6a:   vdivsd %xmm1,%xmm3,%xmm1
   1.13%   │        0x00007fffe0ee9b6e:   vcvtsi2sd %r8d,%xmm2,%xmm2
   0.05%   │        0x00007fffe0ee9b73:   vdivsd %xmm2,%xmm3,%xmm2
           │        0x00007fffe0ee9b77:   vsubsd %xmm2,%xmm0,%xmm0
   0.41%   │        0x00007fffe0ee9b7b:   vaddsd %xmm0,%xmm1,%xmm0
   1.25%   │        0x00007fffe0ee9b7f:   mov    %r9d,%r11d
   0.02%   │        0x00007fffe0ee9b82:   add    $0x6,%r11d
           │        0x00007fffe0ee9b86:   mov    %r9d,%r8d
           │        0x00007fffe0ee9b89:   add    $0x8,%r8d
   0.46%   │        0x00007fffe0ee9b8d:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.03%   │        0x00007fffe0ee9b92:   vdivsd %xmm1,%xmm3,%xmm1
   5.93%   │        0x00007fffe0ee9b96:   vsubsd %xmm1,%xmm0,%xmm0
   1.79%   │        0x00007fffe0ee9b9a:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.38%   │        0x00007fffe0ee9b9f:   vdivsd %xmm1,%xmm3,%xmm1
   6.12%   │        0x00007fffe0ee9ba3:   vaddsd %xmm1,%xmm0,%xmm0
   1.72%   │        0x00007fffe0ee9ba7:   mov    %r9d,%r11d
   0.03%   │        0x00007fffe0ee9baa:   add    $0xa,%r11d
           │        0x00007fffe0ee9bae:   mov    %r9d,%r8d
           │        0x00007fffe0ee9bb1:   add    $0xe,%r8d
   0.42%   │        0x00007fffe0ee9bb5:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.02%   │        0x00007fffe0ee9bba:   vdivsd %xmm1,%xmm3,%xmm1
   6.19%   │        0x00007fffe0ee9bbe:   vsubsd %xmm1,%xmm0,%xmm0
   1.80%   │        0x00007fffe0ee9bc2:   vaddsd %xmm0,%xmm7,%xmm0
   1.78%   │        0x00007fffe0ee9bc6:   vcvtsi2sd %r8d,%xmm1,%xmm1
           │        0x00007fffe0ee9bcb:   vdivsd %xmm1,%xmm3,%xmm1
   4.78%   │        0x00007fffe0ee9bcf:   vsubsd %xmm1,%xmm0,%xmm0
   1.73%   │        0x00007fffe0ee9bd3:   mov    %r9d,%r10d
           │        0x00007fffe0ee9bd6:   add    $0x10,%r10d
           │        0x00007fffe0ee9bda:   mov    %r9d,%r11d
           │        0x00007fffe0ee9bdd:   add    $0x12,%r11d
   0.49%   │        0x00007fffe0ee9be1:   vcvtsi2sd %r10d,%xmm1,%xmm1
           │        0x00007fffe0ee9be6:   vdivsd %xmm1,%xmm3,%xmm1
   5.76%   │        0x00007fffe0ee9bea:   vaddsd %xmm1,%xmm0,%xmm0
   1.94%   │        0x00007fffe0ee9bee:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.22%   │        0x00007fffe0ee9bf3:   vdivsd %xmm1,%xmm3,%xmm1
   6.11%   │        0x00007fffe0ee9bf7:   vsubsd %xmm1,%xmm0,%xmm0
   1.77%   │        0x00007fffe0ee9bfb:   vaddsd %xmm0,%xmm6,%xmm0
   1.70%   │        0x00007fffe0ee9bff:   mov    %r9d,%r10d
           │        0x00007fffe0ee9c02:   add    $0x16,%r10d
           │        0x00007fffe0ee9c06:   mov    %r9d,%r11d
   0.03%   │        0x00007fffe0ee9c09:   add    $0x18,%r11d
   0.50%   │        0x00007fffe0ee9c0d:   vcvtsi2sd %r10d,%xmm1,%xmm1
           │        0x00007fffe0ee9c12:   vdivsd %xmm1,%xmm3,%xmm1
   4.26%   │        0x00007fffe0ee9c16:   vsubsd %xmm1,%xmm0,%xmm0
   2.00%   │        0x00007fffe0ee9c1a:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.28%   │        0x00007fffe0ee9c1f:   vdivsd %xmm1,%xmm3,%xmm1
   5.91%   │        0x00007fffe0ee9c23:   vaddsd %xmm1,%xmm0,%xmm0
   1.77%   │        0x00007fffe0ee9c27:   mov    %r9d,%r10d
   0.00%   │        0x00007fffe0ee9c2a:   add    $0x1a,%r10d
           │        0x00007fffe0ee9c2e:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.39%   │        0x00007fffe0ee9c33:   vdivsd %xmm1,%xmm3,%xmm1
   6.15%   │        0x00007fffe0ee9c37:   vsubsd %xmm1,%xmm0,%xmm0
   1.78%   │        0x00007fffe0ee9c3b:   vaddsd %xmm5,%xmm0,%xmm0
   1.92%   │        0x00007fffe0ee9c3f:   vsubsd %xmm4,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   1.79%   │        0x00007fffe0ee9c43:   mov    %r9d,%r10d
           │        0x00007fffe0ee9c46:   add    $0x20,%r10d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
           │        0x00007fffe0ee9c4a:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.47%   │        0x00007fffe0ee9c4f:   vdivsd %xmm1,%xmm3,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   2.42%   │        0x00007fffe0ee9c53:   nopw   0x0(%rax,%rax,1)
   0.00%   │        0x00007fffe0ee9c5c:   data16 data16 xchg %ax,%ax
   0.02%   │        0x00007fffe0ee9c60:   cmp    $0x3e2,%r10d
           ╰        0x00007fffe0ee9c67:   jl     0x00007fffe0ee9b10           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
                    0x00007fffe0ee9c6d:   cmp    $0x3e8,%r10d
            ╭       0x00007fffe0ee9c74:   jge    0x00007fffe0ee9cb8
   0.01%    │       0x00007fffe0ee9c7a:   add    $0x20,%r9d
            │       0x00007fffe0ee9c7e:   mov    $0x1,%r11d                   ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
            │   ↗   0x00007fffe0ee9c84:   test   %r11d,%r11d
            │╭  │   0x00007fffe0ee9c87:   je     0x00007fffe0ee9c8f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 95)
            ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
            ││  │   0x00007fffe0ee9c89:   vaddsd %xmm1,%xmm0,%xmm0            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
            ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.04%    ││╭ │   0x00007fffe0ee9c8d:   jmp    0x00007fffe0ee9c93
   0.02%    │↘│ │   0x00007fffe0ee9c8f:   vsubsd %xmm1,%xmm0,%xmm0            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@40 (line 100)
            │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.03%    │ ↘ │   0x00007fffe0ee9c93:   add    $0x2,%r9d                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
            │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
            │   │   0x00007fffe0ee9c97:   nopw   0x0(%rax,%rax,1)
            │   │   0x00007fffe0ee9ca0:   cmp    $0x3e8,%r9d
            │  ╭│   0x00007fffe0ee9ca7:   jge    0x00007fffe0ee9cb8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
            │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%    │  ││   0x00007fffe0ee9ca9:   vcvtsi2sd %r9d,%xmm1,%xmm1
            │  ││   0x00007fffe0ee9cae:   vdivsd %xmm1,%xmm3,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
            │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.20%    │  ││   0x00007fffe0ee9cb2:   xor    $0x1,%r11d                   ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@49 (line 100)
            │  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
            │  │╰   0x00007fffe0ee9cb6:   jmp    0x00007fffe0ee9c84
            ↘  ↘    0x00007fffe0ee9cb8:   vmovsd 0x10(%rsi),%xmm1             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@5 (line 84)
   0.01%            0x00007fffe0ee9cbd:   vmulsd %xmm1,%xmm1,%xmm1
                    0x00007fffe0ee9cc1:   vmulsd %xmm0,%xmm1,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@14 (line 84)
   0.03%            0x00007fffe0ee9cc5:   add    $0x10,%rsp
                    0x00007fffe0ee9cc9:   pop    %rbp
                    0x00007fffe0ee9cca:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                 ╭  0x00007fffe0ee9cd1:   ja     0x00007fffe0ee9cd8
   0.01%         │  0x00007fffe0ee9cd7:   ret    
                 ↘  0x00007fffe0ee9cd8:   movabs $0x7fffe0ee9cca,%r10         ;   {internal_word}
                    0x00007fffe0ee9ce2:   mov    %r10,0x358(%r15)
                    0x00007fffe0ee9ce9:   jmp    0x00007fffe098e700           ;   {runtime_call SafepointBlob}
                    0x00007fffe0ee9cee:   hlt    
                    0x00007fffe0ee9cef:   hlt    
                    0x00007fffe0ee9cf0:   hlt    
                    0x00007fffe0ee9cf1:   hlt    
                    0x00007fffe0ee9cf2:   hlt    
                    0x00007fffe0ee9cf3:   hlt    
                    0x00007fffe0ee9cf4:   hlt    
....................................................................................................
  99.01%  <total for region 1>

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 494 

                  # {method} {0x00007fffc5471868} &apos;method_call_dse&apos; &apos;()D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadMethodCallStoreBenchmark&apos;
                  #           [sp+0x20]  (sp of caller)
                  0x00007fffe0ef1740:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                  0x00007fffe0ef1744:   movabs $0x800000000,%r11
                  0x00007fffe0ef174e:   add    %r11,%r10
                  0x00007fffe0ef1751:   cmp    %r10,%rax
                  0x00007fffe0ef1754:   jne    0x00007fffe0987d80           ;   {runtime_call ic_miss_stub}
                  0x00007fffe0ef175a:   xchg   %ax,%ax
                  0x00007fffe0ef175c:   nopl   0x0(%rax)
                [Verified Entry Point]
   0.02%          0x00007fffe0ef1760:   sub    $0x18,%rsp
                  0x00007fffe0ef1767:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@-1 (line 72)
                  0x00007fffe0ef176c:   mov    $0x5,%ecx
   0.01%          0x00007fffe0ef1771:   mov    $0x5,%r11d
                  0x00007fffe0ef1777:   nopw   0x0(%rax,%rax,1)             ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@15 (line 95)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 72)
   0.44%  ↗       0x00007fffe0ef1780:   add    $0x20,%r11d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 72)
          │       0x00007fffe0ef1784:   cmp    $0x3e2,%r11d
          ╰       0x00007fffe0ef178b:   jl     0x00007fffe0ef1780           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@0 (line 72)
                  0x00007fffe0ef178d:   mov    $0x5,%r10d                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@15 (line 95)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 73)
   0.41%   ↗      0x00007fffe0ef1793:   add    $0x20,%r10d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 73)
   0.02%   │      0x00007fffe0ef1797:   nopw   0x0(%rax,%rax,1)
   0.01%   │      0x00007fffe0ef17a0:   cmp    $0x3e2,%r10d
           ╰      0x00007fffe0ef17a7:   jl     0x00007fffe0ef1793           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@4 (line 73)
                  0x00007fffe0ef17a9:   mov    $0x5,%r11d
   0.02%          0x00007fffe0ef17af:   nop                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@15 (line 95)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 74)
            ↗     0x00007fffe0ef17b0:   add    $0x20,%r11d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 74)
            │     0x00007fffe0ef17b4:   nopl   0x0(%rax,%rax,1)
            │     0x00007fffe0ef17bc:   data16 data16 xchg %ax,%ax
   0.44%    │     0x00007fffe0ef17c0:   cmp    $0x3e2,%r11d
            ╰     0x00007fffe0ef17c7:   jl     0x00007fffe0ef17b0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@8 (line 74)
                  0x00007fffe0ef17c9:   mov    $0x5,%r10d
                  0x00007fffe0ef17cf:   nop                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@15 (line 95)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 75)
             ↗    0x00007fffe0ef17d0:   add    $0x20,%r10d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 75)
   0.46%     │    0x00007fffe0ef17d4:   nopl   0x0(%rax,%rax,1)
             │    0x00007fffe0ef17dc:   data16 data16 xchg %ax,%ax
             │    0x00007fffe0ef17e0:   cmp    $0x3e2,%r10d
             ╰    0x00007fffe0ef17e7:   jl     0x00007fffe0ef17d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@12 (line 75)
                  0x00007fffe0ef17e9:   vmovsd -0xd1(%rip),%xmm2        # 0x00007fffe0ef1720
                                                                            ;   {section_word}
   0.01%          0x00007fffe0ef17f1:   vmovsd -0xd1(%rip),%xmm0        # 0x00007fffe0ef1728
                                                                            ;   {section_word}
              ╭   0x00007fffe0ef17f9:   jmp    0x00007fffe0ef1807
              │   0x00007fffe0ef17fb:   nopl   0x0(%rax,%rax,1)
              │↗  0x00007fffe0ef1800:   vaddsd %xmm1,%xmm0,%xmm0
   1.26%      ││  0x00007fffe0ef1804:   mov    %r10d,%ecx                   ;*dadd {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%      ↘│  0x00007fffe0ef1807:   mov    %ecx,%r11d
               │  0x00007fffe0ef180a:   add    $0x1e,%r11d
   0.02%       │  0x00007fffe0ef180e:   mov    %ecx,%r8d
   0.44%       │  0x00007fffe0ef1811:   add    $0x1a,%r8d
               │  0x00007fffe0ef1815:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.03%       │  0x00007fffe0ef181a:   vdivsd %xmm1,%xmm2,%xmm3
   5.42%       │  0x00007fffe0ef181e:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.00%       │  0x00007fffe0ef1823:   vdivsd %xmm1,%xmm2,%xmm4
   1.76%       │  0x00007fffe0ef1827:   mov    %ecx,%r11d
               │  0x00007fffe0ef182a:   add    $0x1c,%r11d
               │  0x00007fffe0ef182e:   mov    %ecx,%r8d
               │  0x00007fffe0ef1831:   add    $0x18,%r8d
   0.66%       │  0x00007fffe0ef1835:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.00%       │  0x00007fffe0ef183a:   vdivsd %xmm1,%xmm2,%xmm5
   1.39%       │  0x00007fffe0ef183e:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.03%       │  0x00007fffe0ef1843:   vdivsd %xmm1,%xmm2,%xmm6
   1.60%       │  0x00007fffe0ef1847:   mov    %ecx,%r11d
               │  0x00007fffe0ef184a:   add    $0x10,%r11d
   0.01%       │  0x00007fffe0ef184e:   mov    %ecx,%r8d
               │  0x00007fffe0ef1851:   add    $0x8,%r8d
   0.67%       │  0x00007fffe0ef1855:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.02%       │  0x00007fffe0ef185a:   vdivsd %xmm1,%xmm2,%xmm7
   1.35%       │  0x00007fffe0ef185e:   vcvtsi2sd %r8d,%xmm1,%xmm1
   0.00%       │  0x00007fffe0ef1863:   vdivsd %xmm1,%xmm2,%xmm8
   1.73%       │  0x00007fffe0ef1867:   mov    %ecx,%r10d
               │  0x00007fffe0ef186a:   add    $0x2,%r10d
               │  0x00007fffe0ef186e:   mov    %ecx,%r11d
               │  0x00007fffe0ef1871:   add    $0x4,%r11d
   0.63%       │  0x00007fffe0ef1875:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.00%       │  0x00007fffe0ef187a:   vdivsd %xmm1,%xmm2,%xmm1
   1.33%       │  0x00007fffe0ef187e:   vsubsd %xmm1,%xmm0,%xmm0
   1.84%       │  0x00007fffe0ef1882:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.27%       │  0x00007fffe0ef1887:   vdivsd %xmm1,%xmm2,%xmm1
   6.30%       │  0x00007fffe0ef188b:   vaddsd %xmm1,%xmm0,%xmm0
   1.85%       │  0x00007fffe0ef188f:   mov    %ecx,%r10d
               │  0x00007fffe0ef1892:   add    $0x6,%r10d
               │  0x00007fffe0ef1896:   mov    %ecx,%r11d
               │  0x00007fffe0ef1899:   add    $0xa,%r11d
   0.43%       │  0x00007fffe0ef189d:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.00%       │  0x00007fffe0ef18a2:   vdivsd %xmm1,%xmm2,%xmm1
   6.18%       │  0x00007fffe0ef18a6:   vsubsd %xmm1,%xmm0,%xmm0
   1.83%       │  0x00007fffe0ef18aa:   vaddsd %xmm0,%xmm8,%xmm0
   1.88%       │  0x00007fffe0ef18ae:   vcvtsi2sd %r11d,%xmm1,%xmm1
               │  0x00007fffe0ef18b3:   vdivsd %xmm1,%xmm2,%xmm1
   4.91%       │  0x00007fffe0ef18b7:   vsubsd %xmm1,%xmm0,%xmm0
   1.73%       │  0x00007fffe0ef18bb:   mov    %ecx,%r10d
   0.00%       │  0x00007fffe0ef18be:   add    $0xc,%r10d
               │  0x00007fffe0ef18c2:   mov    %ecx,%r11d
               │  0x00007fffe0ef18c5:   add    $0xe,%r11d
   0.46%       │  0x00007fffe0ef18c9:   vcvtsi2sd %r10d,%xmm1,%xmm1
               │  0x00007fffe0ef18ce:   vdivsd %xmm1,%xmm2,%xmm1
   6.21%       │  0x00007fffe0ef18d2:   vaddsd %xmm1,%xmm0,%xmm0
   1.94%       │  0x00007fffe0ef18d6:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.33%       │  0x00007fffe0ef18db:   vdivsd %xmm1,%xmm2,%xmm1
   6.34%       │  0x00007fffe0ef18df:   vsubsd %xmm1,%xmm0,%xmm0
   1.89%       │  0x00007fffe0ef18e3:   vaddsd %xmm0,%xmm7,%xmm0
   2.00%       │  0x00007fffe0ef18e7:   mov    %ecx,%r10d
               │  0x00007fffe0ef18ea:   add    $0x12,%r10d
               │  0x00007fffe0ef18ee:   mov    %ecx,%r11d
               │  0x00007fffe0ef18f1:   add    $0x14,%r11d
   0.42%       │  0x00007fffe0ef18f5:   vcvtsi2sd %r10d,%xmm1,%xmm1
               │  0x00007fffe0ef18fa:   vdivsd %xmm1,%xmm2,%xmm1
   4.38%       │  0x00007fffe0ef18fe:   vsubsd %xmm1,%xmm0,%xmm0
   1.89%       │  0x00007fffe0ef1902:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.18%       │  0x00007fffe0ef1907:   vdivsd %xmm1,%xmm2,%xmm1
   6.36%       │  0x00007fffe0ef190b:   vaddsd %xmm1,%xmm0,%xmm0
   1.80%       │  0x00007fffe0ef190f:   mov    %ecx,%r10d
   0.00%       │  0x00007fffe0ef1912:   add    $0x16,%r10d
               │  0x00007fffe0ef1916:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.42%       │  0x00007fffe0ef191b:   vdivsd %xmm1,%xmm2,%xmm1
   6.23%       │  0x00007fffe0ef191f:   vsubsd %xmm1,%xmm0,%xmm0
   1.77%       │  0x00007fffe0ef1923:   vaddsd %xmm0,%xmm6,%xmm0
   1.87%       │  0x00007fffe0ef1927:   vsubsd %xmm4,%xmm0,%xmm0
   1.86%       │  0x00007fffe0ef192b:   vaddsd %xmm0,%xmm5,%xmm0
   1.85%       │  0x00007fffe0ef192f:   vsubsd %xmm3,%xmm0,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   1.87%       │  0x00007fffe0ef1933:   mov    %ecx,%r10d
   0.00%       │  0x00007fffe0ef1936:   add    $0x20,%r10d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
               │  0x00007fffe0ef193a:   vcvtsi2sd %r10d,%xmm1,%xmm1
   0.67%       │  0x00007fffe0ef193f:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
               │  0x00007fffe0ef1943:   cmp    $0x3e2,%r10d
               ╰  0x00007fffe0ef194a:   jl     0x00007fffe0ef1800           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
                  0x00007fffe0ef1950:   cmp    $0x3e8,%r10d
                  0x00007fffe0ef1957:   jge    0x00007fffe0ef1996
                  0x00007fffe0ef195d:   add    $0x20,%ecx
   0.01%          0x00007fffe0ef1960:   mov    $0x1,%r11d
....................................................................................................
  98.15%  <total for region 1>
