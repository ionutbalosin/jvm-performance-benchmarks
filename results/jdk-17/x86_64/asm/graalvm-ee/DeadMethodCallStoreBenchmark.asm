# JMH version: 1.36
# VM version: JDK 17.0.6, Java HotSpot(TM) 64-Bit Server VM, 17.0.6+9-LTS-jvmci-22.3-b11
# VM invoker: /usr/lib/jvm/graalvm-ee-java17-22.3.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 730 

                  #           [sp+0x10]  (sp of caller)
                  0x00007fffde94a840:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                  0x00007fffde94a844:   movabs $0x800000000,%r12
                  0x00007fffde94a84e:   add    %r12,%r10
                  0x00007fffde94a851:   xor    %r12,%r12
                  0x00007fffde94a854:   cmp    %r10,%rax
                  0x00007fffde94a857:   jne    0x00007fffde33e780           ;   {runtime_call ic_miss_stub}
                  0x00007fffde94a85d:   nop
                  0x00007fffde94a85e:   xchg   %ax,%ax
                [Verified Entry Point]
   0.05%          0x00007fffde94a860:   nopl   0x0(%rax,%rax,1)
                  0x00007fffde94a865:   vmovsd -0x4d(%rip),%xmm0        # 0x00007fffde94a820
                                                                            ;   {section_word}
   0.00%          0x00007fffde94a86d:   vmovsd -0x4d(%rip),%xmm1        # 0x00007fffde94a828
                                                                            ;   {section_word}
   0.01%          0x00007fffde94a875:   mov    $0x5,%r10d
   0.04%  ╭       0x00007fffde94a87b:   jmp    0x00007fffde94a92b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.05%  │↗      0x00007fffde94a880:   lea    0x10(%r10),%r11d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
          ││      0x00007fffde94a884:   vxorpd %xmm2,%xmm2,%xmm2
   3.02%  ││      0x00007fffde94a888:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.07%  ││      0x00007fffde94a88d:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a891:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   9.06%  ││      0x00007fffde94a895:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.02%  ││      0x00007fffde94a899:   vxorpd %xmm2,%xmm2,%xmm2
   0.06%  ││      0x00007fffde94a89d:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   3.00%  ││      0x00007fffde94a8a2:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a8a6:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   9.30%  ││      0x00007fffde94a8aa:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.02%  ││      0x00007fffde94a8ae:   vxorpd %xmm2,%xmm2,%xmm2
   0.00%  ││      0x00007fffde94a8b2:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   2.98%  ││      0x00007fffde94a8b7:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a8bb:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   9.15%  ││      0x00007fffde94a8bf:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.02%  ││      0x00007fffde94a8c3:   vxorpd %xmm2,%xmm2,%xmm2
   0.05%  ││      0x00007fffde94a8c7:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   2.98%  ││      0x00007fffde94a8cc:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a8d0:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   8.95%  ││      0x00007fffde94a8d4:   lea    0x8(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.03%  ││      0x00007fffde94a8d8:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94a8dc:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   3.08%  ││      0x00007fffde94a8e1:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a8e5:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   9.37%  ││      0x00007fffde94a8e9:   lea    0xa(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.02%  ││      0x00007fffde94a8ed:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94a8f1:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   2.96%  ││      0x00007fffde94a8f6:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a8fa:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   9.12%  ││      0x00007fffde94a8fe:   lea    0xc(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.02%  ││      0x00007fffde94a902:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94a906:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   3.19%  ││      0x00007fffde94a90b:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a90f:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   8.96%  ││      0x00007fffde94a913:   lea    0xe(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.02%  ││      0x00007fffde94a917:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94a91b:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   3.15%  ││      0x00007fffde94a920:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.01%  ││      0x00007fffde94a924:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   9.02%  ││      0x00007fffde94a928:   mov    %r11d,%r10d
   0.02%  ↘│      0x00007fffde94a92b:   cmp    $0x3d8,%r10d
           ╰      0x00007fffde94a932:   jb     0x00007fffde94a880
                  0x00007fffde94a938:   mov    %r10d,%r11d
                  0x00007fffde94a93b:   mov    $0x1,%r10d
   0.06%          0x00007fffde94a941:   data16 data16 nopw 0x0(%rax,%rax,1)
                  0x00007fffde94a94c:   data16 data16 xchg %ax,%ax
              ↗↗  0x00007fffde94a950:   cmp    $0x3e8,%r11d
            ╭ ││  0x00007fffde94a957:   jae    0x00007fffde94a996           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.06%    │ ││  0x00007fffde94a95d:   lea    0x2(%r11),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.04%    │ ││  0x00007fffde94a961:   mov    %r10d,%r9d
            │ ││  0x00007fffde94a964:   xor    $0x1,%r9d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 100)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
            │ ││  0x00007fffde94a968:   vxorpd %xmm2,%xmm2,%xmm2
   0.06%    │ ││  0x00007fffde94a96c:   vcvtsi2sd %r11d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.05%    │ ││  0x00007fffde94a971:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
            │ ││  0x00007fffde94a975:   test   %r10d,%r10d
            │╭││  0x00007fffde94a978:   jne    0x00007fffde94a98a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 95)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.06%    ││││  0x00007fffde94a97e:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.05%    ││││  0x00007fffde94a982:   mov    %r8d,%r11d
            ││││  0x00007fffde94a985:   mov    %r9d,%r10d
            ││╰│  0x00007fffde94a988:   jmp    0x00007fffde94a950
   0.00%    │↘ │  0x00007fffde94a98a:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 83)
   0.05%    │  │  0x00007fffde94a98e:   mov    %r8d,%r11d
            │  │  0x00007fffde94a991:   mov    %r9d,%r10d
            │  ╰  0x00007fffde94a994:   jmp    0x00007fffde94a950
   0.06%    ↘     0x00007fffde94a996:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@5 (line 84)
   0.00%          0x00007fffde94a99b:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@12 (line 84)
                  0x00007fffde94a99f:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@14 (line 84)
   0.12%          0x00007fffde94a9a3:   mov    0x348(%r15),%rcx
                  0x00007fffde94a9aa:   test   %eax,(%rcx)                  ;   {poll_return}
                  0x00007fffde94a9ac:   ret    
                [Exception Handler]
                  0x00007fffde94a9ad:   call   0x00007fffde489d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                  0x00007fffde94a9b2:   nop
                [Deopt Handler Code]
                  0x00007fffde94a9b3:   call   0x00007fffde344020           ;   {runtime_call DeoptimizationBlob}
                  0x00007fffde94a9b8:   nop
                [Stub Code]
....................................................................................................
  98.48%  <total for region 1>

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 741 

                  #           [sp+0x10]  (sp of caller)
                  0x00007fffde94a9c0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                  0x00007fffde94a9c4:   movabs $0x800000000,%r12
                  0x00007fffde94a9ce:   add    %r12,%r10
                  0x00007fffde94a9d1:   xor    %r12,%r12
                  0x00007fffde94a9d4:   cmp    %r10,%rax
                  0x00007fffde94a9d7:   jne    0x00007fffde33e780           ;   {runtime_call ic_miss_stub}
                  0x00007fffde94a9dd:   nop
                  0x00007fffde94a9de:   xchg   %ax,%ax
                [Verified Entry Point]
   0.06%          0x00007fffde94a9e0:   nopl   0x0(%rax,%rax,1)
   0.00%          0x00007fffde94a9e5:   vmovsd -0x4d(%rip),%xmm0        # 0x00007fffde94a9a0
                                                                            ;   {section_word}
                  0x00007fffde94a9ed:   vmovsd -0x4d(%rip),%xmm1        # 0x00007fffde94a9a8
                                                                            ;   {section_word}
   0.03%          0x00007fffde94a9f5:   mov    $0x5,%r10d
   0.03%  ╭       0x00007fffde94a9fb:   jmp    0x00007fffde94aaab           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.06%  │↗      0x00007fffde94aa00:   lea    0x10(%r10),%r11d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
          ││      0x00007fffde94aa04:   vxorpd %xmm2,%xmm2,%xmm2
   3.08%  ││      0x00007fffde94aa08:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.05%  ││      0x00007fffde94aa0d:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%  ││      0x00007fffde94aa11:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.08%  ││      0x00007fffde94aa15:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%  ││      0x00007fffde94aa19:   vxorpd %xmm2,%xmm2,%xmm2
   0.05%  ││      0x00007fffde94aa1d:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   3.05%  ││      0x00007fffde94aa22:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%  ││      0x00007fffde94aa26:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.11%  ││      0x00007fffde94aa2a:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%  ││      0x00007fffde94aa2e:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94aa32:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   3.08%  ││      0x00007fffde94aa37:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%  ││      0x00007fffde94aa3b:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.20%  ││      0x00007fffde94aa3f:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%  ││      0x00007fffde94aa43:   vxorpd %xmm2,%xmm2,%xmm2
   0.03%  ││      0x00007fffde94aa47:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   3.19%  ││      0x00007fffde94aa4c:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%  ││      0x00007fffde94aa50:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.14%  ││      0x00007fffde94aa54:   lea    0x8(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%  ││      0x00007fffde94aa58:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94aa5c:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   3.06%  ││      0x00007fffde94aa61:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
          ││      0x00007fffde94aa65:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.28%  ││      0x00007fffde94aa69:   lea    0xa(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%  ││      0x00007fffde94aa6d:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94aa71:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   3.13%  ││      0x00007fffde94aa76:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
          ││      0x00007fffde94aa7a:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.17%  ││      0x00007fffde94aa7e:   lea    0xc(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%  ││      0x00007fffde94aa82:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94aa86:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   2.96%  ││      0x00007fffde94aa8b:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%  ││      0x00007fffde94aa8f:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.22%  ││      0x00007fffde94aa93:   lea    0xe(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.01%  ││      0x00007fffde94aa97:   vxorpd %xmm2,%xmm2,%xmm2
          ││      0x00007fffde94aa9b:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   2.99%  ││      0x00007fffde94aaa0:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.00%  ││      0x00007fffde94aaa4:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   9.35%  ││      0x00007fffde94aaa8:   mov    %r11d,%r10d
   0.01%  ↘│      0x00007fffde94aaab:   cmp    $0x3d8,%r10d
           ╰      0x00007fffde94aab2:   jb     0x00007fffde94aa00
                  0x00007fffde94aab8:   mov    %r10d,%r11d
                  0x00007fffde94aabb:   mov    $0x1,%r10d
   0.04%          0x00007fffde94aac1:   data16 data16 nopw 0x0(%rax,%rax,1)
                  0x00007fffde94aacc:   data16 data16 xchg %ax,%ax
              ↗↗  0x00007fffde94aad0:   cmp    $0x3e8,%r11d
            ╭ ││  0x00007fffde94aad7:   jae    0x00007fffde94ab16           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 94)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.03%    │ ││  0x00007fffde94aadd:   lea    0x2(%r11),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 94)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.03%    │ ││  0x00007fffde94aae1:   mov    %r10d,%r9d
            │ ││  0x00007fffde94aae4:   xor    $0x1,%r9d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 100)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
            │ ││  0x00007fffde94aae8:   vxorpd %xmm2,%xmm2,%xmm2
   0.05%    │ ││  0x00007fffde94aaec:   vcvtsi2sd %r11d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 96)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.05%    │ ││  0x00007fffde94aaf1:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 96)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
            │ ││  0x00007fffde94aaf5:   test   %r10d,%r10d
            │╭││  0x00007fffde94aaf8:   jne    0x00007fffde94ab0a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 95)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.05%    ││││  0x00007fffde94aafe:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 98)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.07%    ││││  0x00007fffde94ab02:   mov    %r8d,%r11d
            ││││  0x00007fffde94ab05:   mov    %r9d,%r10d
            ││╰│  0x00007fffde94ab08:   jmp    0x00007fffde94aad0
            │↘ │  0x00007fffde94ab0a:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 96)
            │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 76)
   0.04%    │  │  0x00007fffde94ab0e:   mov    %r8d,%r11d
            │  │  0x00007fffde94ab11:   mov    %r9d,%r10d
            │  ╰  0x00007fffde94ab14:   jmp    0x00007fffde94aad0
   0.07%    ↘     0x00007fffde94ab16:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@21 (line 77)
                  0x00007fffde94ab1b:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@28 (line 77)
                  0x00007fffde94ab1f:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadMethodCallStoreBenchmark::method_call_dse@30 (line 77)
   0.12%          0x00007fffde94ab23:   mov    0x348(%r15),%rcx
                  0x00007fffde94ab2a:   test   %eax,(%rcx)                  ;   {poll_return}
                  0x00007fffde94ab2c:   ret    
                [Exception Handler]
                  0x00007fffde94ab2d:   call   0x00007fffde48be00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                  0x00007fffde94ab32:   nop
                [Deopt Handler Code]
                  0x00007fffde94ab33:   call   0x00007fffde344020           ;   {runtime_call DeoptimizationBlob}
                  0x00007fffde94ab38:   nop
                [Stub Code]
....................................................................................................
  99.06%  <total for region 1>
