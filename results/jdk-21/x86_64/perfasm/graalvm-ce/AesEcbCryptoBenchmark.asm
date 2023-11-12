# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/NoPadding)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.924 us/op
# Warmup Iteration   2: 13.273 us/op
# Warmup Iteration   3: 13.227 us/op
# Warmup Iteration   4: 13.224 us/op
# Warmup Iteration   5: 13.220 us/op
Iteration   1: 13.227 us/op
Iteration   2: 13.260 us/op
Iteration   3: 13.239 us/op
Iteration   4: 13.215 us/op
Iteration   5: 13.239 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  13.236 ±(99.9%) 0.063 us/op [Average]
  (min, avg, max) = (13.215, 13.236, 13.260), stdev = 0.016
  CI (99.9%): [13.173, 13.299] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 255596 total address lines.
Perf output processed (skipped 61.655 seconds):
 Column 1: cycles (50989 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

             0x00007f87dedbfd76:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007f87dedbfd7b:   nopl   0x0(%rax,%rax,1)
             0x00007f87dedbfd80:   cmp    $0x34,%r10d
          ╭  0x00007f87dedbfd84:   je     0x00007f87dedbfdaa
          │  0x00007f87dedbfd86:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f87dedbfd8b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f87dedbfd90:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f87dedbfd98:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f87dedbfd9d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f87dedbfda5:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘  0x00007f87dedbfdaa:   vaesdec %xmm2,%xmm0,%xmm0
   8.26%     0x00007f87dedbfdaf:   vaesdec %xmm3,%xmm0,%xmm0
  11.58%     0x00007f87dedbfdb4:   vaesdeclast %xmm4,%xmm0,%xmm0
  11.42%     0x00007f87dedbfdb9:   vmovdqu %xmm0,(%rdx)
   2.84%     0x00007f87dedbfdbd:   add    $0x18,%rsp
             0x00007f87dedbfdc1:   ret    
             0x00007f87dedbfdc2:   hlt    
             0x00007f87dedbfdc3:   hlt    
             0x00007f87dedbfdc4:   hlt    
             0x00007f87dedbfdc5:   hlt    
             0x00007f87dedbfdc6:   hlt    
             0x00007f87dedbfdc7:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  34.10%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          <task_queued compile_id='1047' method='com.sun.crypto.provider.AESCrypt decryptBlock ([BI[BI)V' bytes='10' count='5381' iicount='5381' stamp='11.371' comment='tiered' hot_count='5381'/>
          <task_queued compile_id='1048' method='com.sun.crypto.provider.AESCrypt implDecryptBlock ([BI[BI)V' bytes='3849' count='5383' iicount='5383' stamp='11.371' comment='tiered' hot_count='5383'/>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f87dedbfc10
          --------------------------------------------------------------------------------
   0.01%    0x00007f87dedbfca0:   sub    $0x18,%rsp
   2.82%    0x00007f87dedbfca4:   mov    -0x4(%rcx),%r10d
   0.06%    0x00007f87dedbfca8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f87dedbfc80
   0.01%    0x00007f87dedbfcb0:   vmovdqu (%rsi),%xmm0
   0.11%    0x00007f87dedbfcb4:   vmovdqu 0x10(%rcx),%xmm2
   2.87%    0x00007f87dedbfcb9:   vpshufb %xmm1,%xmm2,%xmm2
   0.06%    0x00007f87dedbfcbe:   vmovdqu 0x20(%rcx),%xmm3
   0.01%    0x00007f87dedbfcc3:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%    0x00007f87dedbfcc8:   vmovdqu 0x30(%rcx),%xmm4
   3.04%    0x00007f87dedbfccd:   vpshufb %xmm1,%xmm4,%xmm4
   0.05%    0x00007f87dedbfcd2:   vmovdqu 0x40(%rcx),%xmm5
   0.00%    0x00007f87dedbfcd7:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%    0x00007f87dedbfcdc:   vpxor  %xmm2,%xmm0,%xmm0
   2.96%    0x00007f87dedbfce0:   vaesdec %xmm3,%xmm0,%xmm0
   0.05%    0x00007f87dedbfce5:   vaesdec %xmm4,%xmm0,%xmm0
   0.02%    0x00007f87dedbfcea:   vaesdec %xmm5,%xmm0,%xmm0
   0.03%    0x00007f87dedbfcef:   vmovdqu 0x50(%rcx),%xmm2
   2.76%    0x00007f87dedbfcf4:   vpshufb %xmm1,%xmm2,%xmm2
   0.04%    0x00007f87dedbfcf9:   vmovdqu 0x60(%rcx),%xmm3
   0.01%    0x00007f87dedbfcfe:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%    0x00007f87dedbfd03:   vmovdqu 0x70(%rcx),%xmm4
   2.87%    0x00007f87dedbfd08:   vpshufb %xmm1,%xmm4,%xmm4
   0.05%    0x00007f87dedbfd0d:   vmovdqu 0x80(%rcx),%xmm5
   0.01%    0x00007f87dedbfd15:   vpshufb %xmm1,%xmm5,%xmm5
   0.02%    0x00007f87dedbfd1a:   vaesdec %xmm2,%xmm0,%xmm0
   2.93%    0x00007f87dedbfd1f:   vaesdec %xmm3,%xmm0,%xmm0
   0.14%    0x00007f87dedbfd24:   vaesdec %xmm4,%xmm0,%xmm0
   0.78%    0x00007f87dedbfd29:   vaesdec %xmm5,%xmm0,%xmm0
   6.00%    0x00007f87dedbfd2e:   vmovdqu 0x90(%rcx),%xmm2
   0.16%    0x00007f87dedbfd36:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f87dedbfd3b:   vmovdqu 0xa0(%rcx),%xmm3
   0.01%    0x00007f87dedbfd43:   vpshufb %xmm1,%xmm3,%xmm3
   2.83%    0x00007f87dedbfd48:   vmovdqu (%rcx),%xmm4
   0.20%    0x00007f87dedbfd4c:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007f87dedbfd51:   cmp    $0x2c,%r10d
            0x00007f87dedbfd55:   je     0x00007f87dedbfdaa
            0x00007f87dedbfd57:   vaesdec %xmm2,%xmm0,%xmm0
            0x00007f87dedbfd5c:   vaesdec %xmm3,%xmm0,%xmm0
            0x00007f87dedbfd61:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007f87dedbfd69:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f87dedbfd6e:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007f87dedbfd76:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f87dedbfd7b:   nopl   0x0(%rax,%rax,1)
            0x00007f87dedbfd80:   cmp    $0x34,%r10d
            0x00007f87dedbfd84:   je     0x00007f87dedbfdaa
....................................................................................................
  30.94%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1079 

             0x00007f87df2534f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%  ↗  0x00007f87df253500:   test   %r10d,%r10d
          │  0x00007f87df253503:   jl     0x00007f87df253615
   0.01%  │  0x00007f87df253509:   cmp    %esi,%r10d
          │  0x00007f87df25350c:   jg     0x00007f87df253615
   0.00%  │  0x00007f87df253512:   test   %r9d,%r9d
          │  0x00007f87df253515:   jl     0x00007f87df253615
   2.85%  │  0x00007f87df25351b:   nopl   0x0(%rax,%rax,1)
          │  0x00007f87df253520:   cmp    %edx,%r9d
          │  0x00007f87df253523:   jg     0x00007f87df253615
   0.01%  │  0x00007f87df253529:   mov    %r11,%r8
          │  0x00007f87df25352c:   mov    %rax,%rbp
   2.94%  │  0x00007f87df25352f:   mov    %rcx,%rbx
   0.00%  │  0x00007f87df253532:   mov    %r10d,%r13d
   0.01%  │  0x00007f87df253535:   lea    0x10(%r13),%r13
   0.00%  │  0x00007f87df253539:   add    %r8,%r13
   3.01%  │  0x00007f87df25353c:   mov    %r9d,%r8d
   0.00%  │  0x00007f87df25353f:   lea    0x10(%r8),%r8
   0.00%  │  0x00007f87df253543:   add    %rbp,%r8
   0.00%  │  0x00007f87df253546:   lea    0x10(%rbx),%rbx
   2.93%  │  0x00007f87df25354a:   mov    %esi,%ebp
   0.01%  │  0x00007f87df25354c:   mov    %r13,%rsi
   0.01%  │  0x00007f87df25354f:   mov    %edx,%r13d
   0.00%  │  0x00007f87df253552:   mov    %r8,%rdx
   2.96%  │  0x00007f87df253555:   mov    %rcx,%r8
   0.00%  │  0x00007f87df253558:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%  │  0x00007f87df25355b:   mov    %r10d,%ebx
   0.00%  │  0x00007f87df25355e:   xchg   %ax,%ax                      ;   {no_reloc}
   2.86%  │  0x00007f87df253560:   call   0x00007f87dedbfca0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.01%  │  0x00007f87df253565:   nop
          │  0x00007f87df253566:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rax=Oop r8=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
          │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::decryptBlock@9 (line 1161)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.81%  │  0x00007f87df25356d:   test   %eax,(%rsi)                  ;   {poll}
   0.00%  │  0x00007f87df25356f:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%  │  0x00007f87df253572:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%  │  0x00007f87df253575:   mov    %ebx,%r10d
   2.91%  │  0x00007f87df253578:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f87df25357b:   mov    %ebp,%esi
   0.01%  │  0x00007f87df25357d:   mov    %r13d,%edx
   0.00%  │  0x00007f87df253580:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.88%  │  0x00007f87df253583:   cmp    %r14d,%edi
          ╰  0x00007f87df253586:   jle    0x00007f87df253500           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f87df25358c:   mov    0x1c(%rsp),%r13d
             0x00007f87df253591:   test   %r13d,%r13d
             0x00007f87df253594:   jne    0x00007f87df2536f7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%     0x00007f87df25359a:   mov    0x20(%rsp),%ebp
   0.01%     0x00007f87df25359e:   mov    0x18(%rsp),%ebx
             0x00007f87df2535a2:   movl   $0x0,0x14(,%rbx,8)           ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%     0x00007f87df2535ad:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%     0x00007f87df2535b4:   mov    0x30(%rsp),%rbp
             0x00007f87df2535b9:   add    $0x38,%rsp
             0x00007f87df2535bd:   data16 xchg %ax,%ax
   0.00%     0x00007f87df2535c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007f87df2535c7:   ja     0x00007f87df253795
             0x00007f87df2535cd:   vzeroupper 
   0.00%     0x00007f87df2535d0:   ret    
             0x00007f87df2535d1:   movabs $0x7f87630022c0,%rsi         ;   {metadata({type array byte})}
             0x00007f87df2535db:   mov    0x24(%rsp),%edx              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f87df2535df:   nop
             0x00007f87df2535e0:   call   0x00007f87dedb6c80           ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop r9=NarrowOop r10=Oop r11=NarrowOop r14=NarrowOop [24]=NarrowOop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@0 (line 114)
....................................................................................................
  26.27%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.10%                      <unknown> 
  30.94%                      <unknown> 
  26.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1079 
   5.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1079 
   0.74%              kernel  [unknown] 
   0.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1079 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.12%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1079 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1102 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%              kernel  [unknown] 
   1.42%  <...other 424 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.17%                      <unknown> 
  32.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1079 
   1.96%              kernel  [unknown] 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1102 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%           libjvm.so  FreeListAllocator::reset 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.42%  <...other 148 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  65.17%                    
  32.04%      jvmci, level 4
   1.96%              kernel
   0.46%           libjvm.so
   0.28%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2103453.map
   0.00%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/PKCS5Padding)

# Run progress: 8.33% complete, ETA 00:21:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.221 us/op
# Warmup Iteration   2: 22.218 us/op
# Warmup Iteration   3: 22.150 us/op
# Warmup Iteration   4: 22.272 us/op
# Warmup Iteration   5: 22.164 us/op
Iteration   1: 22.152 us/op
Iteration   2: 22.281 us/op
Iteration   3: 22.184 us/op
Iteration   4: 22.124 us/op
Iteration   5: 22.124 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  22.173 ±(99.9%) 0.252 us/op [Average]
  (min, avg, max) = (22.124, 22.173, 22.281), stdev = 0.065
  CI (99.9%): [21.922, 22.425] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 257027 total address lines.
Perf output processed (skipped 61.566 seconds):
 Column 1: cycles (50720 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 

                  0x00007f5433257091:   mov    0x44(%rsp),%r8d
                  0x00007f5433257096:   mov    %r8d,%eax
                  0x00007f5433257099:   dec    %eax
                  0x00007f543325709b:   nopl   0x0(%rax,%rax,1)
                  0x00007f54332570a0:   cmp    %eax,%r8d
                  0x00007f54332570a3:   jbe    0x00007f5433257363
                  0x00007f54332570a9:   mov    0x8(%rsp),%rbx
                  0x00007f54332570ae:   movb   $0x0,0x10(%rbx)              ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::fill@13 (line 3288)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%          0x00007f54332570b2:   cmp    $0x3,%r8d
                  0x00007f54332570b6:   mov    $0x2,%eax
                  0x00007f54332570bb:   cmovl  %r8d,%eax
                  0x00007f54332570bf:   mov    $0x1,%esi
   0.00%  ╭       0x00007f54332570c4:   jmp    0x00007f54332570e7           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.Arrays::fill@5 (line 3287)
          │                                                                 ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
          │       0x00007f54332570c9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       0x00007f54332570d4:   data16 data16 xchg %ax,%ax
          │       0x00007f54332570d8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.Arrays::fill@7 (line 3287)
          │                                                                 ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%  │↗      0x00007f54332570e0:   movb   $0x0,0x10(%rbx,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.Arrays::fill@13 (line 3288)
          ││                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
          ││      0x00007f54332570e5:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.Arrays::fill@14 (line 3287)
          ││                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
          ↘│      0x00007f54332570e7:   cmp    %esi,%eax
           ╰      0x00007f54332570e9:   jg     0x00007f54332570e0
                  0x00007f54332570eb:   mov    %esi,%eax
                  0x00007f54332570ed:   mov    0x40(%rsp),%r13d
            ╭     0x00007f54332570f2:   jmp    0x00007f5433257156
            │     0x00007f54332570f7:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - java.util.Arrays::fill@7 (line 3287)
            │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.01%    │↗    0x00007f5433257100:   movb   $0x0,0x10(%rbx,%rax,1)
   1.78%    ││    0x00007f5433257105:   movslq %eax,%rsi
   0.00%    ││    0x00007f5433257108:   movb   $0x0,0x11(%rbx,%rsi,1)
   2.70%    ││    0x00007f543325710d:   movb   $0x0,0x12(%rbx,%rsi,1)
   2.13%    ││    0x00007f5433257112:   movb   $0x0,0x13(%rbx,%rsi,1)
   1.98%    ││    0x00007f5433257117:   movb   $0x0,0x14(%rbx,%rsi,1)
   1.26%    ││    0x00007f543325711c:   movb   $0x0,0x15(%rbx,%rsi,1)
   1.62%    ││    0x00007f5433257121:   movb   $0x0,0x16(%rbx,%rsi,1)
   1.69%    ││    0x00007f5433257126:   movb   $0x0,0x17(%rbx,%rsi,1)
   1.85%    ││    0x00007f543325712b:   movb   $0x0,0x18(%rbx,%rsi,1)
   1.79%    ││    0x00007f5433257130:   movb   $0x0,0x19(%rbx,%rsi,1)
   1.90%    ││    0x00007f5433257135:   movb   $0x0,0x1a(%rbx,%rsi,1)
   2.44%    ││    0x00007f543325713a:   movb   $0x0,0x1b(%rbx,%rsi,1)
   1.94%    ││    0x00007f543325713f:   movb   $0x0,0x1c(%rbx,%rsi,1)
   1.74%    ││    0x00007f5433257144:   movb   $0x0,0x1d(%rbx,%rsi,1)
   1.35%    ││    0x00007f5433257149:   movb   $0x0,0x1e(%rbx,%rsi,1)
   1.67%    ││    0x00007f543325714e:   movb   $0x0,0x1f(%rbx,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.Arrays::fill@13 (line 3288)
            ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   1.79%    ││    0x00007f5433257153:   lea    0x10(%rax),%eax              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.Arrays::fill@14 (line 3287)
            ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%    ↘│    0x00007f5433257156:   cmp    %eax,%r13d
             ╰    0x00007f5433257159:   jg     0x00007f5433257100
   0.01%      ╭   0x00007f543325715b:   jmp    0x00007f5433257170           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - java.util.Arrays::fill@7 (line 3287)
              │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%      │↗  0x00007f5433257160:   movb   $0x0,0x10(%rbx,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.Arrays::fill@13 (line 3288)
              ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.04%      ││  0x00007f5433257165:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.Arrays::fill@14 (line 3287)
              ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
              ││  0x00007f5433257167:   nopw   0x0(%rax,%rax,1)
   0.01%      ↘│  0x00007f5433257170:   cmp    %eax,%r8d
               ╰  0x00007f5433257173:   jg     0x00007f5433257160           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::fill@7 (line 3287)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
                  0x00007f5433257175:   mov    0x10(%rsp),%rax              ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@102 (line 744)
   0.01%          0x00007f543325717a:   mov    0x50(%rsp),%rbp
                  0x00007f543325717f:   add    $0x58,%rsp                   ;   {no_reloc}
                  0x00007f5433257183:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f543325718a:   ja     0x00007f5433257657
   0.02%          0x00007f5433257190:   vzeroupper 
   0.00%          0x00007f5433257193:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@73 (line 108)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%          0x00007f5433257194:   mov    %r11d,%esi
                  0x00007f5433257197:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@87 (line 108)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%          0x00007f5433257199:   nopl   0x0(%rax)
                  0x00007f54332571a0:   cmp    %esi,%r8d
                  0x00007f54332571a3:   jg     0x00007f5433257206
                  0x00007f54332571a9:   cmp    %r11d,%r8d
                  0x00007f54332571ac:   jbe    0x00007f54332573be           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@79 (line 109)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
....................................................................................................
  29.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          <task_queued compile_id='1061' method='com.sun.crypto.provider.AESCrypt decryptBlock ([BI[BI)V' bytes='10' count='5379' iicount='5379' stamp='11.163' comment='tiered' hot_count='5379'/>
          <task_queued compile_id='1062' compile_kind='osr' method='java.util.Arrays fill ([BB)V' bytes='21' count='13' backedge_count='101817' iicount='13' osr_bci='5' stamp='11.164' comment='tiered' hot_count='101817'/>
          <task_queued compile_id='1063' method='com.sun.crypto.provider.AESCrypt implDecryptBlock ([BI[BI)V' bytes='3849' count='7432' iicount='7432' stamp='11.165' comment='tiered' hot_count='7432'/>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f5432db8890
          --------------------------------------------------------------------------------
   0.00%    0x00007f5432db8920:   sub    $0x18,%rsp
   1.54%    0x00007f5432db8924:   mov    -0x4(%rcx),%r10d
   0.00%    0x00007f5432db8928:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f5432db8900
   0.06%    0x00007f5432db8930:   vmovdqu (%rsi),%xmm0
   0.14%    0x00007f5432db8934:   vmovdqu 0x10(%rcx),%xmm2
   1.72%    0x00007f5432db8939:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f5432db893e:   vmovdqu 0x20(%rcx),%xmm3
   0.00%    0x00007f5432db8943:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f5432db8948:   vmovdqu 0x30(%rcx),%xmm4
   1.76%    0x00007f5432db894d:   vpshufb %xmm1,%xmm4,%xmm4
            0x00007f5432db8952:   vmovdqu 0x40(%rcx),%xmm5
   0.01%    0x00007f5432db8957:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%    0x00007f5432db895c:   vpxor  %xmm2,%xmm0,%xmm0
   1.79%    0x00007f5432db8960:   vaesdec %xmm3,%xmm0,%xmm0
   0.00%    0x00007f5432db8965:   vaesdec %xmm4,%xmm0,%xmm0
   0.01%    0x00007f5432db896a:   vaesdec %xmm5,%xmm0,%xmm0
   0.02%    0x00007f5432db896f:   vmovdqu 0x50(%rcx),%xmm2
   1.71%    0x00007f5432db8974:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f5432db8979:   vmovdqu 0x60(%rcx),%xmm3
   0.00%    0x00007f5432db897e:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%    0x00007f5432db8983:   vmovdqu 0x70(%rcx),%xmm4
   1.68%    0x00007f5432db8988:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007f5432db898d:   vmovdqu 0x80(%rcx),%xmm5
   0.01%    0x00007f5432db8995:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%    0x00007f5432db899a:   vaesdec %xmm2,%xmm0,%xmm0
   2.15%    0x00007f5432db899f:   vaesdec %xmm3,%xmm0,%xmm0
   0.96%    0x00007f5432db89a4:   vaesdec %xmm4,%xmm0,%xmm0
   2.25%    0x00007f5432db89a9:   vaesdec %xmm5,%xmm0,%xmm0
   5.09%    0x00007f5432db89ae:   vmovdqu 0x90(%rcx),%xmm2
   0.42%    0x00007f5432db89b6:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f5432db89bb:   vmovdqu 0xa0(%rcx),%xmm3
   0.00%    0x00007f5432db89c3:   vpshufb %xmm1,%xmm3,%xmm3
   1.35%    0x00007f5432db89c8:   vmovdqu (%rcx),%xmm4
   0.38%    0x00007f5432db89cc:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007f5432db89d1:   cmp    $0x2c,%r10d
            0x00007f5432db89d5:   je     0x00007f5432db8a2a
            0x00007f5432db89d7:   vaesdec %xmm2,%xmm0,%xmm0
            0x00007f5432db89dc:   vaesdec %xmm3,%xmm0,%xmm0
            0x00007f5432db89e1:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007f5432db89e9:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f5432db89ee:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007f5432db89f6:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f5432db89fb:   nopl   0x0(%rax,%rax,1)
            0x00007f5432db8a00:   cmp    $0x34,%r10d
            0x00007f5432db8a04:   je     0x00007f5432db8a2a
....................................................................................................
  23.10%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

             0x00007f5432db89f6:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007f5432db89fb:   nopl   0x0(%rax,%rax,1)
             0x00007f5432db8a00:   cmp    $0x34,%r10d
          ╭  0x00007f5432db8a04:   je     0x00007f5432db8a2a
          │  0x00007f5432db8a06:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f5432db8a0b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f5432db8a10:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f5432db8a18:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f5432db8a1d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f5432db8a25:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘  0x00007f5432db8a2a:   vaesdec %xmm2,%xmm0,%xmm0
   4.16%     0x00007f5432db8a2f:   vaesdec %xmm3,%xmm0,%xmm0
   6.70%     0x00007f5432db8a34:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.84%     0x00007f5432db8a39:   vmovdqu %xmm0,(%rdx)
   1.68%     0x00007f5432db8a3d:   add    $0x18,%rsp
             0x00007f5432db8a41:   ret    
             0x00007f5432db8a42:   hlt    
             0x00007f5432db8a43:   hlt    
             0x00007f5432db8a44:   hlt    
             0x00007f5432db8a45:   hlt    
             0x00007f5432db8a46:   hlt    
             0x00007f5432db8a47:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  19.38%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 

             0x00007f5433256e99:   data16 data16 xchg %ax,%ax
             0x00007f5433256e9d:   data16 xchg %ax,%ax                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ↗  0x00007f5433256ea0:   test   %r13d,%r13d
          │  0x00007f5433256ea3:   jl     0x00007f5433257325
   1.70%  │  0x00007f5433256ea9:   cmp    %ebx,%r13d
          │  0x00007f5433256eac:   jg     0x00007f5433257325
   0.00%  │  0x00007f5433256eb2:   test   %r10d,%r10d
          │  0x00007f5433256eb5:   jl     0x00007f5433257325
   0.01%  │  0x00007f5433256ebb:   nopl   0x0(%rax,%rax,1)
   0.00%  │  0x00007f5433256ec0:   cmp    %eax,%r10d                   ;   {no_reloc}
          │  0x00007f5433256ec3:   jg     0x00007f5433257325
   1.69%  │  0x00007f5433256ec9:   mov    %rsi,%rbp
          │  0x00007f5433256ecc:   mov    %r14,%rdi
   0.01%  │  0x00007f5433256ecf:   mov    %r11,%r9
          │  0x00007f5433256ed2:   mov    %r13d,%r8d
   1.75%  │  0x00007f5433256ed5:   lea    0x10(%r8),%r8
          │  0x00007f5433256ed9:   add    %rbp,%r8
   0.01%  │  0x00007f5433256edc:   mov    %r10d,%ebp
   0.00%  │  0x00007f5433256edf:   lea    0x10(%rbp),%rbp
   1.66%  │  0x00007f5433256ee3:   add    %rdi,%rbp
   0.00%  │  0x00007f5433256ee6:   lea    0x10(%r9),%rdi
   0.01%  │  0x00007f5433256eea:   mov    %r8,%rsi
          │  0x00007f5433256eed:   mov    %edx,%r8d
   1.66%  │  0x00007f5433256ef0:   mov    %rbp,%rdx
          │  0x00007f5433256ef3:   mov    %ecx,%ebp
   0.01%  │  0x00007f5433256ef5:   mov    %rdi,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f5433256ef8:   mov    %r10d,%edi
   1.70%  │  0x00007f5433256efb:   call   0x00007f5432db8920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.00%  │  0x00007f5433256f00:   nop
   0.00%  │  0x00007f5433256f01:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r11=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop }
          │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::decryptBlock@9 (line 1161)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.66%  │  0x00007f5433256f08:   test   %eax,(%rsi)                  ;   {poll}
          │  0x00007f5433256f0a:   mov    %r8d,%edx
   0.01%  │  0x00007f5433256f0d:   sub    %ebp,%edx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f5433256f0f:   mov    %edi,%r10d
   1.72%  │  0x00007f5433256f12:   add    %ebp,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f5433256f15:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  0x00007f5433256f18:   mov    %ebp,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f5433256f1a:   mov    0x18(%rsp),%rsi
   1.74%  │  0x00007f5433256f1f:   nop
   0.00%  │  0x00007f5433256f20:   cmp    %edx,%ecx
          ╰  0x00007f5433256f22:   jle    0x00007f5433256ea0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f5433256f28:   mov    0x44(%rsp),%r8d
   0.00%     0x00007f5433256f2d:   mov    %r8d,%edi
             0x00007f5433256f30:   dec    %edi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@21 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f5433256f32:   cmp    %edi,%r8d
             0x00007f5433256f35:   jbe    0x00007f54332574e5
             0x00007f5433256f3b:   movsbl 0x10(%r14,%rdi,1),%edi
             0x00007f5433256f41:   movsbl %dil,%r10d                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f5433256f45:   test   $0xff,%r10d
             0x00007f5433256f4c:   je     0x00007f54332574cd           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@36 (line 98)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f5433256f52:   mov    0x2c(%rsp),%esi
             0x00007f5433256f56:   movzbl %dil,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@30 (line 97)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%     0x00007f5433256f5a:   nopw   0x0(%rax,%rax,1)
             0x00007f5433256f60:   cmp    %esi,%edx
             0x00007f5433256f62:   jg     0x00007f54332574b5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@45 (line 98)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f5433256f68:   mov    %r8d,%r11d
             0x00007f5433256f6b:   sub    %edx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@54 (line 103)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f5433256f6e:   test   %r11d,%r11d
             0x00007f5433256f71:   jl     0x00007f543325749d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@60 (line 104)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f5433256f77:   cmp    %r11d,%r8d
             0x00007f5433256f7a:   jg     0x00007f5433257194           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@73 (line 108)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%     0x00007f5433256f80:   mov    0x3c(%rsp),%edi
   0.00%     0x00007f5433256f84:   test   %edi,%edi
             0x00007f5433256f86:   jne    0x00007f543325760b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.00%     0x00007f5433256f8c:   cmp    %r11d,%r8d
             0x00007f5433256f8f:   jle    0x00007f5433257440           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@75 (line 738)
             0x00007f5433256f95:   mov    0x40(%rsp),%ebp
             0x00007f5433256f99:   mov    0x20(%rsp),%rsi
             0x00007f5433256f9e:   movl   $0x0,0x14(%rsi)              ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.00%     0x00007f5433256fa5:   mov    %ebp,0x1c(%rsi)              ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.00%     0x00007f5433256fa8:   mov    0x1b8(%r15),%r10
             0x00007f5433256faf:   mov    %r11d,%edi
             0x00007f5433256fb2:   lea    0x17(%rdi),%rdi
             0x00007f5433256fb6:   and    $0xfffffffffffffff8,%rdi
   0.00%     0x00007f5433256fba:   mov    %rdi,%rdx
             0x00007f5433256fbd:   add    %r10,%rdx
             0x00007f5433256fc0:   cmp    0x1c8(%r15),%rdx
             0x00007f5433256fc7:   ja     0x00007f5433257237
             0x00007f5433256fcd:   mov    %rdx,0x1b8(%r15)
   0.00%     0x00007f5433256fd4:   prefetchw 0xc0(%rdi,%r10,1)
   0.06%     0x00007f5433256fdd:   prefetchw 0x100(%rdi,%r10,1)
   0.01%     0x00007f5433256fe6:   prefetchw 0x140(%rdi,%r10,1)
             0x00007f5433256fef:   prefetchw 0x180(%rdi,%r10,1)
             0x00007f5433256ff8:   movq   $0x1,(%r10)
             0x00007f5433256fff:   movl   $0x22c0,0x8(%r10)            ;   {metadata({type array byte})}
             0x00007f5433257007:   mov    %r11d,0xc(%r10)
             0x00007f543325700b:   lea    -0x10(%rdi),%r9
             0x00007f543325700f:   cmp    $0x800,%r9
             0x00007f5433257016:   jae    0x00007f5433257305
             0x00007f543325701c:   mov    $0x10,%rdx
             0x00007f5433257023:   jmp    0x00007f543325704c
             0x00007f5433257028:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  15.48%  <total for region 4>

....[Hottest Regions]...............................................................................
  29.74%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 
  23.10%                      <unknown> 
  19.38%                      <unknown> 
  15.48%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 
   6.45%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 
   3.02%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.13%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 
   0.06%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1125 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1104 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   1.80%  <...other 450 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.88%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1101 
  42.65%                      <unknown> 
   3.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.35%              kernel  [unknown] 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1104 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1125 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  G1CardSet::clear 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  JVMCIRuntime::new_array_common 
   0.51%  <...other 150 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  52.01%      jvmci, level 4
  42.65%                    
   3.04%        runtime stub
   1.35%              kernel
   0.52%           libjvm.so
   0.34%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.00%    perf-2103526.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/NoPadding)

# Run progress: 16.67% complete, ETA 00:19:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.618 us/op
# Warmup Iteration   2: 13.754 us/op
# Warmup Iteration   3: 13.739 us/op
# Warmup Iteration   4: 13.739 us/op
# Warmup Iteration   5: 13.725 us/op
Iteration   1: 13.720 us/op
Iteration   2: 13.751 us/op
Iteration   3: 13.732 us/op
Iteration   4: 13.742 us/op
Iteration   5: 13.924 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  13.774 ±(99.9%) 0.326 us/op [Average]
  (min, avg, max) = (13.720, 13.774, 13.924), stdev = 0.085
  CI (99.9%): [13.447, 14.100] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 257107 total address lines.
Perf output processed (skipped 61.744 seconds):
 Column 1: cycles (50679 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f33f6db8090
            --------------------------------------------------------------------------------
   0.02%      0x00007f33f6db8120:   sub    $0x18,%rsp
   2.84%      0x00007f33f6db8124:   mov    -0x4(%rcx),%r10d
   0.07%      0x00007f33f6db8128:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f33f6db8100
   0.02%      0x00007f33f6db8130:   vmovdqu (%rsi),%xmm0
   0.09%      0x00007f33f6db8134:   vmovdqu 0x10(%rcx),%xmm2
   2.91%      0x00007f33f6db8139:   vpshufb %xmm1,%xmm2,%xmm2
   0.06%      0x00007f33f6db813e:   vmovdqu 0x20(%rcx),%xmm3
   0.02%      0x00007f33f6db8143:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007f33f6db8148:   vmovdqu 0x30(%rcx),%xmm4
   2.72%      0x00007f33f6db814d:   vpshufb %xmm1,%xmm4,%xmm4
   0.07%      0x00007f33f6db8152:   vmovdqu 0x40(%rcx),%xmm5
   0.02%      0x00007f33f6db8157:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007f33f6db815c:   vpxor  %xmm2,%xmm0,%xmm0
   2.86%      0x00007f33f6db8160:   vaesdec %xmm3,%xmm0,%xmm0
   0.07%      0x00007f33f6db8165:   vaesdec %xmm4,%xmm0,%xmm0
   0.02%      0x00007f33f6db816a:   vaesdec %xmm5,%xmm0,%xmm0
   0.02%      0x00007f33f6db816f:   vmovdqu 0x50(%rcx),%xmm2
   2.86%      0x00007f33f6db8174:   vpshufb %xmm1,%xmm2,%xmm2
   0.05%      0x00007f33f6db8179:   vmovdqu 0x60(%rcx),%xmm3
   0.03%      0x00007f33f6db817e:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007f33f6db8183:   vmovdqu 0x70(%rcx),%xmm4
   2.86%      0x00007f33f6db8188:   vpshufb %xmm1,%xmm4,%xmm4
   0.04%      0x00007f33f6db818d:   vmovdqu 0x80(%rcx),%xmm5
   0.02%      0x00007f33f6db8195:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%      0x00007f33f6db819a:   vaesdec %xmm2,%xmm0,%xmm0
   2.77%      0x00007f33f6db819f:   vaesdec %xmm3,%xmm0,%xmm0
   0.07%      0x00007f33f6db81a4:   vaesdec %xmm4,%xmm0,%xmm0
   0.08%      0x00007f33f6db81a9:   vaesdec %xmm5,%xmm0,%xmm0
   0.30%      0x00007f33f6db81ae:   vmovdqu 0x90(%rcx),%xmm2
   2.72%      0x00007f33f6db81b6:   vpshufb %xmm1,%xmm2,%xmm2
   0.04%      0x00007f33f6db81bb:   vmovdqu 0xa0(%rcx),%xmm3
   0.02%      0x00007f33f6db81c3:   vpshufb %xmm1,%xmm3,%xmm3
   0.11%      0x00007f33f6db81c8:   vmovdqu (%rcx),%xmm4
   2.68%      0x00007f33f6db81cc:   vpshufb %xmm1,%xmm4,%xmm4
   0.07%      0x00007f33f6db81d1:   cmp    $0x2c,%r10d
          ╭   0x00007f33f6db81d5:   je     0x00007f33f6db822a
   0.01%  │   0x00007f33f6db81d7:   vaesdec %xmm2,%xmm0,%xmm0
   0.45%  │   0x00007f33f6db81dc:   vaesdec %xmm3,%xmm0,%xmm0
   5.29%  │   0x00007f33f6db81e1:   vmovdqu 0xb0(%rcx),%xmm2
   0.01%  │   0x00007f33f6db81e9:   vpshufb %xmm1,%xmm2,%xmm2
   0.02%  │   0x00007f33f6db81ee:   vmovdqu 0xc0(%rcx),%xmm3
   0.00%  │   0x00007f33f6db81f6:   vpshufb %xmm1,%xmm3,%xmm3
   2.79%  │   0x00007f33f6db81fb:   nopl   0x0(%rax,%rax,1)
   0.00%  │   0x00007f33f6db8200:   cmp    $0x34,%r10d
          │╭  0x00007f33f6db8204:   je     0x00007f33f6db822a
          ││  0x00007f33f6db8206:   vaesdec %xmm2,%xmm0,%xmm0
          ││  0x00007f33f6db820b:   vaesdec %xmm3,%xmm0,%xmm0
          ││  0x00007f33f6db8210:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f33f6db8218:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f33f6db821d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007f33f6db8225:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%  ↘↘  0x00007f33f6db822a:   vaesdec %xmm2,%xmm0,%xmm0
   6.61%      0x00007f33f6db822f:   vaesdec %xmm3,%xmm0,%xmm0
  10.22%      0x00007f33f6db8234:   vaesdeclast %xmm4,%xmm0,%xmm0
....................................................................................................
  35.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

   0.00%     0x00007f33f6db81f6:   vpshufb %xmm1,%xmm3,%xmm3
   2.79%     0x00007f33f6db81fb:   nopl   0x0(%rax,%rax,1)
   0.00%     0x00007f33f6db8200:   cmp    $0x34,%r10d
          ╭  0x00007f33f6db8204:   je     0x00007f33f6db822a
          │  0x00007f33f6db8206:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f33f6db820b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f33f6db8210:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f33f6db8218:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f33f6db821d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f33f6db8225:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%  ↘  0x00007f33f6db822a:   vaesdec %xmm2,%xmm0,%xmm0
   6.61%     0x00007f33f6db822f:   vaesdec %xmm3,%xmm0,%xmm0
  10.22%     0x00007f33f6db8234:   vaesdeclast %xmm4,%xmm0,%xmm0
  11.25%     0x00007f33f6db8239:   vmovdqu %xmm0,(%rdx)
   2.85%     0x00007f33f6db823d:   add    $0x18,%rsp
   0.00%     0x00007f33f6db8241:   ret    
             0x00007f33f6db8242:   hlt    
             0x00007f33f6db8243:   hlt    
             0x00007f33f6db8244:   hlt    
             0x00007f33f6db8245:   hlt    
             0x00007f33f6db8246:   hlt    
             0x00007f33f6db8247:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
....................................................................................................
  30.94%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1102 

               0x00007f33f7253e1c:   data16 data16 xchg %ax,%ax
          ↗    0x00007f33f7253e20:   movq   $0x0,(%rdx,%r10,1)
          │    0x00007f33f7253e28:   lea    0x8(%r10),%r10
          │    0x00007f33f7253e2c:   cmp    %r10,%rsi
          ╰    0x00007f33f7253e2f:   ja     0x00007f33f7253e20
               0x00007f33f7253e31:   mov    %rdx,%rax                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%       0x00007f33f7253e34:   shl    $0x3,%r9                     ;*getfield decryptCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@1 (line 114)
               0x00007f33f7253e38:   mov    %r9,0x10(%rsp)
   0.00%       0x00007f33f7253e3d:   shl    $0x3,%r11                    ;*getfield dataEncrypted {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@5 (line 114)
               0x00007f33f7253e41:   mov    %ebx,%r10d
   0.00%       0x00007f33f7253e44:   shl    $0x3,%r10                    ;*getfield core {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@1 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
               0x00007f33f7253e48:   mov    %r10,0x8(%rsp)
   0.01%       0x00007f33f7253e4d:   shl    $0x3,%rcx                    ;* unwind (locked if synchronized)
                                                                         ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
                                                                         ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
                                                                         ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
                                                                         ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                         ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                         ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                         ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
               0x00007f33f7253e51:   shl    $0x3,%r14                    ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.CipherCore::finalNoPadding@135 (line 989)
                                                                         ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
               0x00007f33f7253e55:   mov    %r14,(%rsp)
               0x00007f33f7253e59:   lea    -0x10(%r8),%edx
               0x00007f33f7253e5d:   lea    -0x10(%r8),%esi              ;* unwind (locked if synchronized)
                                                                         ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
                                                                         ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
                                                                         ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
                                                                         ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                         ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                         ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                         ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
               0x00007f33f7253e61:   mov    %r8d,%r14d
               0x00007f33f7253e64:   mov    $0x0,%r9d
   0.00%       0x00007f33f7253e6a:   mov    $0x0,%r10d
           ╭   0x00007f33f7253e70:   jmp    0x00007f33f7253f03           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
           │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
           │   0x00007f33f7253e75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
           │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%   │↗  0x00007f33f7253e80:   test   %r10d,%r10d
           ││  0x00007f33f7253e83:   jl     0x00007f33f7253f95
   0.02%   ││  0x00007f33f7253e89:   cmp    %esi,%r10d
           ││  0x00007f33f7253e8c:   jg     0x00007f33f7253f95
           ││  0x00007f33f7253e92:   test   %r9d,%r9d
           ││  0x00007f33f7253e95:   jl     0x00007f33f7253f95
   2.84%   ││  0x00007f33f7253e9b:   nopl   0x0(%rax,%rax,1)
   0.01%   ││  0x00007f33f7253ea0:   cmp    %edx,%r9d
           ││  0x00007f33f7253ea3:   jg     0x00007f33f7253f95
   0.03%   ││  0x00007f33f7253ea9:   mov    %r11,%r8
           ││  0x00007f33f7253eac:   mov    %rax,%rbp
   2.91%   ││  0x00007f33f7253eaf:   mov    %rcx,%rbx
   0.01%   ││  0x00007f33f7253eb2:   mov    %r10d,%r13d
   0.02%   ││  0x00007f33f7253eb5:   lea    0x10(%r13),%r13
   0.00%   ││  0x00007f33f7253eb9:   add    %r8,%r13
   2.71%   ││  0x00007f33f7253ebc:   mov    %r9d,%r8d
   0.00%   ││  0x00007f33f7253ebf:   lea    0x10(%r8),%r8
   0.03%   ││  0x00007f33f7253ec3:   add    %rbp,%r8
           ││  0x00007f33f7253ec6:   lea    0x10(%rbx),%rbx
   2.90%   ││  0x00007f33f7253eca:   mov    %esi,%ebp
   0.00%   ││  0x00007f33f7253ecc:   mov    %r13,%rsi
   0.02%   ││  0x00007f33f7253ecf:   mov    %edx,%r13d
           ││  0x00007f33f7253ed2:   mov    %r8,%rdx
   2.79%   ││  0x00007f33f7253ed5:   mov    %rcx,%r8
   0.00%   ││  0x00007f33f7253ed8:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
           ││                                                            ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
           ││                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.02%   ││  0x00007f33f7253edb:   mov    %r10d,%ebx
           ││  0x00007f33f7253ede:   xchg   %ax,%ax                      ;   {no_reloc}
   2.87%   ││  0x00007f33f7253ee0:   call   0x00007f33f6db8120           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.02%   ││  0x00007f33f7253ee5:   nop
           ││  0x00007f33f7253ee6:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rax=Oop r8=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
           ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
           ││                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::decryptBlock@9 (line 1161)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.85%   ││  0x00007f33f7253eed:   test   %eax,(%rsi)                  ;   {poll}
   0.00%   ││  0x00007f33f7253eef:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.02%   ││  0x00007f33f7253ef2:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
           ││  0x00007f33f7253ef5:   mov    %ebx,%r10d
   2.87%   ││  0x00007f33f7253ef8:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%   ││  0x00007f33f7253efb:   mov    %ebp,%esi
   0.03%   ││  0x00007f33f7253efd:   mov    %r13d,%edx
           ││  0x00007f33f7253f00:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
           ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.83%   ↘│  0x00007f33f7253f03:   cmp    %r14d,%edi
            ╰  0x00007f33f7253f06:   jle    0x00007f33f7253e80           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                         ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                         ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                         ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                         ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
               0x00007f33f7253f0c:   mov    0x1c(%rsp),%r13d
               0x00007f33f7253f11:   test   %r13d,%r13d
               0x00007f33f7253f14:   jne    0x00007f33f7254077           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%       0x00007f33f7253f1a:   mov    0x20(%rsp),%ebp
               0x00007f33f7253f1e:   mov    0x18(%rsp),%ebx
               0x00007f33f7253f22:   movl   $0x0,0x14(,%rbx,8)           ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
               0x00007f33f7253f2d:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%       0x00007f33f7253f34:   mov    0x30(%rsp),%rbp
               0x00007f33f7253f39:   add    $0x38,%rsp
               0x00007f33f7253f3d:   data16 xchg %ax,%ax
   0.00%       0x00007f33f7253f40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f33f7253f47:   ja     0x00007f33f7254115
               0x00007f33f7253f4d:   vzeroupper 
   0.00%       0x00007f33f7253f50:   ret    
               0x00007f33f7253f51:   movabs $0x7f337b0022c0,%rsi         ;   {metadata({type array byte})}
               0x00007f33f7253f5b:   mov    0x24(%rsp),%edx              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                         ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                         ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
               0x00007f33f7253f5f:   nop
               0x00007f33f7253f60:   call   0x00007f33f6db9000           ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop r9=NarrowOop r10=Oop r11=NarrowOop r14=NarrowOop [24]=NarrowOop }
                                                                         ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@0 (line 114)
....................................................................................................
  25.83%  <total for region 3>

....[Hottest Regions]...............................................................................
  35.12%                      <unknown> 
  30.94%                      <unknown> 
  25.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1102 
   5.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.38%              kernel  [unknown] 
   0.18%        libc-2.31.so  __memset_avx2_erms 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1134 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%              kernel  [unknown] 
   1.55%  <...other 441 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.25%                      <unknown> 
  31.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1102 
   1.57%              kernel  [unknown] 
   0.18%        libc-2.31.so  __memset_avx2_erms 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1134 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  ThreadLocalAllocBuffer::fill 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  HeapRegion::clear_cardtable 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.47%  <...other 146 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  66.25%                    
  31.31%      jvmci, level 4
   1.57%              kernel
   0.48%           libjvm.so
   0.32%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/PKCS5Padding)

# Run progress: 25.00% complete, ETA 00:17:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.818 us/op
# Warmup Iteration   2: 22.676 us/op
# Warmup Iteration   3: 22.856 us/op
# Warmup Iteration   4: 22.659 us/op
# Warmup Iteration   5: 22.750 us/op
Iteration   1: 22.907 us/op
Iteration   2: 23.051 us/op
Iteration   3: 22.489 us/op
Iteration   4: 23.040 us/op
Iteration   5: 22.936 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  22.885 ±(99.9%) 0.886 us/op [Average]
  (min, avg, max) = (22.489, 22.885, 23.051), stdev = 0.230
  CI (99.9%): [21.998, 23.771] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 261332 total address lines.
Perf output processed (skipped 61.889 seconds):
 Column 1: cycles (51065 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 

                  0x00007f80272594bb:   cmovl  %r8d,%eax
                  0x00007f80272594bf:   mov    $0x1,%esi
          ╭       0x00007f80272594c4:   jmp    0x00007f80272594e7           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.Arrays::fill@5 (line 3287)
          │                                                                 ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
          │       0x00007f80272594c9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       0x00007f80272594d4:   data16 data16 xchg %ax,%ax
          │       0x00007f80272594d8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.Arrays::fill@7 (line 3287)
          │                                                                 ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%  │↗      0x00007f80272594e0:   movb   $0x0,0x10(%rbx,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.Arrays::fill@13 (line 3288)
          ││                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%  ││      0x00007f80272594e5:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.Arrays::fill@14 (line 3287)
          ││                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
          ↘│      0x00007f80272594e7:   cmp    %esi,%eax
           ╰      0x00007f80272594e9:   jg     0x00007f80272594e0
                  0x00007f80272594eb:   mov    %esi,%eax
   0.00%          0x00007f80272594ed:   mov    0x40(%rsp),%r13d
            ╭     0x00007f80272594f2:   jmp    0x00007f8027259556
            │     0x00007f80272594f7:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - java.util.Arrays::fill@7 (line 3287)
            │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%    │↗    0x00007f8027259500:   movb   $0x0,0x10(%rbx,%rax,1)
   1.70%    ││    0x00007f8027259505:   movslq %eax,%rsi
   0.00%    ││    0x00007f8027259508:   movb   $0x0,0x11(%rbx,%rsi,1)
   2.54%    ││    0x00007f802725950d:   movb   $0x0,0x12(%rbx,%rsi,1)
   2.01%    ││    0x00007f8027259512:   movb   $0x0,0x13(%rbx,%rsi,1)
   1.77%    ││    0x00007f8027259517:   movb   $0x0,0x14(%rbx,%rsi,1)
   1.17%    ││    0x00007f802725951c:   movb   $0x0,0x15(%rbx,%rsi,1)
   1.51%    ││    0x00007f8027259521:   movb   $0x0,0x16(%rbx,%rsi,1)
   1.57%    ││    0x00007f8027259526:   movb   $0x0,0x17(%rbx,%rsi,1)
   1.82%    ││    0x00007f802725952b:   movb   $0x0,0x18(%rbx,%rsi,1)
   1.83%    ││    0x00007f8027259530:   movb   $0x0,0x19(%rbx,%rsi,1)
   1.79%    ││    0x00007f8027259535:   movb   $0x0,0x1a(%rbx,%rsi,1)
   2.11%    ││    0x00007f802725953a:   movb   $0x0,0x1b(%rbx,%rsi,1)
   1.60%    ││    0x00007f802725953f:   movb   $0x0,0x1c(%rbx,%rsi,1)
   1.69%    ││    0x00007f8027259544:   movb   $0x0,0x1d(%rbx,%rsi,1)
   1.13%    ││    0x00007f8027259549:   movb   $0x0,0x1e(%rbx,%rsi,1)
   1.63%    ││    0x00007f802725954e:   movb   $0x0,0x1f(%rbx,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.Arrays::fill@13 (line 3288)
            ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   1.74%    ││    0x00007f8027259553:   lea    0x10(%rax),%eax              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.Arrays::fill@14 (line 3287)
            ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
            ↘│    0x00007f8027259556:   cmp    %eax,%r13d
             ╰    0x00007f8027259559:   jg     0x00007f8027259500
   0.01%      ╭   0x00007f802725955b:   jmp    0x00007f8027259570           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - java.util.Arrays::fill@7 (line 3287)
              │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%      │↗  0x00007f8027259560:   movb   $0x0,0x10(%rbx,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.Arrays::fill@13 (line 3288)
              ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.04%      ││  0x00007f8027259565:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.Arrays::fill@14 (line 3287)
              ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
              ││  0x00007f8027259567:   nopw   0x0(%rax,%rax,1)
   0.01%      ↘│  0x00007f8027259570:   cmp    %eax,%r8d
               ╰  0x00007f8027259573:   jg     0x00007f8027259560           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::fill@7 (line 3287)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
                  0x00007f8027259575:   mov    0x10(%rsp),%rax              ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@102 (line 744)
   0.00%          0x00007f802725957a:   mov    0x50(%rsp),%rbp
                  0x00007f802725957f:   add    $0x58,%rsp                   ;   {no_reloc}
                  0x00007f8027259583:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f802725958a:   ja     0x00007f8027259a57
   0.03%          0x00007f8027259590:   vzeroupper 
                  0x00007f8027259593:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@73 (line 108)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%          0x00007f8027259594:   mov    %r11d,%esi
                  0x00007f8027259597:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@87 (line 108)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%          0x00007f8027259599:   nopl   0x0(%rax)
                  0x00007f80272595a0:   cmp    %esi,%r8d
                  0x00007f80272595a3:   jg     0x00007f8027259606
                  0x00007f80272595a9:   cmp    %r11d,%r8d
                  0x00007f80272595ac:   jbe    0x00007f80272597be           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@79 (line 109)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
....................................................................................................
  27.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f8026dbd310
            --------------------------------------------------------------------------------
   0.01%      0x00007f8026dbd3a0:   sub    $0x18,%rsp
   1.73%      0x00007f8026dbd3a4:   mov    -0x4(%rcx),%r10d
              0x00007f8026dbd3a8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f8026dbd380
   0.03%      0x00007f8026dbd3b0:   vmovdqu (%rsi),%xmm0
   0.08%      0x00007f8026dbd3b4:   vmovdqu 0x10(%rcx),%xmm2
   1.72%      0x00007f8026dbd3b9:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f8026dbd3be:   vmovdqu 0x20(%rcx),%xmm3
   0.00%      0x00007f8026dbd3c3:   vpshufb %xmm1,%xmm3,%xmm3
              0x00007f8026dbd3c8:   vmovdqu 0x30(%rcx),%xmm4
   1.68%      0x00007f8026dbd3cd:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007f8026dbd3d2:   vmovdqu 0x40(%rcx),%xmm5
   0.01%      0x00007f8026dbd3d7:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%      0x00007f8026dbd3dc:   vpxor  %xmm2,%xmm0,%xmm0
   1.70%      0x00007f8026dbd3e0:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%      0x00007f8026dbd3e5:   vaesdec %xmm4,%xmm0,%xmm0
   0.02%      0x00007f8026dbd3ea:   vaesdec %xmm5,%xmm0,%xmm0
   0.01%      0x00007f8026dbd3ef:   vmovdqu 0x50(%rcx),%xmm2
   1.68%      0x00007f8026dbd3f4:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f8026dbd3f9:   vmovdqu 0x60(%rcx),%xmm3
   0.01%      0x00007f8026dbd3fe:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007f8026dbd403:   vmovdqu 0x70(%rcx),%xmm4
   1.67%      0x00007f8026dbd408:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f8026dbd40d:   vmovdqu 0x80(%rcx),%xmm5
   0.01%      0x00007f8026dbd415:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007f8026dbd41a:   vaesdec %xmm2,%xmm0,%xmm0
   1.65%      0x00007f8026dbd41f:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%      0x00007f8026dbd424:   vaesdec %xmm4,%xmm0,%xmm0
   0.03%      0x00007f8026dbd429:   vaesdec %xmm5,%xmm0,%xmm0
   0.70%      0x00007f8026dbd42e:   vmovdqu 0x90(%rcx),%xmm2
   1.30%      0x00007f8026dbd436:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f8026dbd43b:   vmovdqu 0xa0(%rcx),%xmm3
   0.00%      0x00007f8026dbd443:   vpshufb %xmm1,%xmm3,%xmm3
   0.39%      0x00007f8026dbd448:   vmovdqu (%rcx),%xmm4
   1.27%      0x00007f8026dbd44c:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f8026dbd451:   cmp    $0x2c,%r10d
          ╭   0x00007f8026dbd455:   je     0x00007f8026dbd4aa
   0.00%  │   0x00007f8026dbd457:   vaesdec %xmm2,%xmm0,%xmm0
   2.47%  │   0x00007f8026dbd45c:   vaesdec %xmm3,%xmm0,%xmm0
   5.75%  │   0x00007f8026dbd461:   vmovdqu 0xb0(%rcx),%xmm2
   0.00%  │   0x00007f8026dbd469:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%  │   0x00007f8026dbd46e:   vmovdqu 0xc0(%rcx),%xmm3
          │   0x00007f8026dbd476:   vpshufb %xmm1,%xmm3,%xmm3
   1.69%  │   0x00007f8026dbd47b:   nopl   0x0(%rax,%rax,1)
          │   0x00007f8026dbd480:   cmp    $0x34,%r10d
          │╭  0x00007f8026dbd484:   je     0x00007f8026dbd4aa
          ││  0x00007f8026dbd486:   vaesdec %xmm2,%xmm0,%xmm0
          ││  0x00007f8026dbd48b:   vaesdec %xmm3,%xmm0,%xmm0
          ││  0x00007f8026dbd490:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f8026dbd498:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f8026dbd49d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007f8026dbd4a5:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘↘  0x00007f8026dbd4aa:   vaesdec %xmm2,%xmm0,%xmm0
   4.42%      0x00007f8026dbd4af:   vaesdec %xmm3,%xmm0,%xmm0
....................................................................................................
  25.67%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

             0x00007f8026dbd476:   vpshufb %xmm1,%xmm3,%xmm3
   1.69%     0x00007f8026dbd47b:   nopl   0x0(%rax,%rax,1)
             0x00007f8026dbd480:   cmp    $0x34,%r10d
          ╭  0x00007f8026dbd484:   je     0x00007f8026dbd4aa
          │  0x00007f8026dbd486:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f8026dbd48b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f8026dbd490:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f8026dbd498:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f8026dbd49d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f8026dbd4a5:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘  0x00007f8026dbd4aa:   vaesdec %xmm2,%xmm0,%xmm0
   4.42%     0x00007f8026dbd4af:   vaesdec %xmm3,%xmm0,%xmm0
   6.26%     0x00007f8026dbd4b4:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.66%     0x00007f8026dbd4b9:   vmovdqu %xmm0,(%rdx)
   1.67%     0x00007f8026dbd4bd:   add    $0x18,%rsp
   0.00%     0x00007f8026dbd4c1:   ret    
             0x00007f8026dbd4c2:   hlt    
             0x00007f8026dbd4c3:   hlt    
             0x00007f8026dbd4c4:   hlt    
             0x00007f8026dbd4c5:   hlt    
             0x00007f8026dbd4c6:   hlt    
             0x00007f8026dbd4c7:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
....................................................................................................
  19.01%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 

             0x00007f8027259299:   data16 data16 xchg %ax,%ax
             0x00007f802725929d:   data16 xchg %ax,%ax                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ↗  0x00007f80272592a0:   test   %r13d,%r13d
          │  0x00007f80272592a3:   jl     0x00007f8027259725
   1.70%  │  0x00007f80272592a9:   cmp    %ebx,%r13d
          │  0x00007f80272592ac:   jg     0x00007f8027259725
   0.00%  │  0x00007f80272592b2:   test   %r10d,%r10d
          │  0x00007f80272592b5:   jl     0x00007f8027259725
   0.00%  │  0x00007f80272592bb:   nopl   0x0(%rax,%rax,1)
          │  0x00007f80272592c0:   cmp    %eax,%r10d                   ;   {no_reloc}
          │  0x00007f80272592c3:   jg     0x00007f8027259725
   1.67%  │  0x00007f80272592c9:   mov    %rsi,%rbp
          │  0x00007f80272592cc:   mov    %r14,%rdi
   0.00%  │  0x00007f80272592cf:   mov    %r11,%r9
   0.00%  │  0x00007f80272592d2:   mov    %r13d,%r8d
   1.58%  │  0x00007f80272592d5:   lea    0x10(%r8),%r8
   0.00%  │  0x00007f80272592d9:   add    %rbp,%r8
   0.01%  │  0x00007f80272592dc:   mov    %r10d,%ebp
   0.00%  │  0x00007f80272592df:   lea    0x10(%rbp),%rbp
   1.65%  │  0x00007f80272592e3:   add    %rdi,%rbp
   0.00%  │  0x00007f80272592e6:   lea    0x10(%r9),%rdi
   0.01%  │  0x00007f80272592ea:   mov    %r8,%rsi
          │  0x00007f80272592ed:   mov    %edx,%r8d
   1.50%  │  0x00007f80272592f0:   mov    %rbp,%rdx
          │  0x00007f80272592f3:   mov    %ecx,%ebp
   0.01%  │  0x00007f80272592f5:   mov    %rdi,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f80272592f8:   mov    %r10d,%edi
   1.70%  │  0x00007f80272592fb:   call   0x00007f8026dbd3a0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.01%  │  0x00007f8027259300:   nop
   0.00%  │  0x00007f8027259301:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r11=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop }
          │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::decryptBlock@9 (line 1161)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.67%  │  0x00007f8027259308:   test   %eax,(%rsi)                  ;   {poll}
   0.00%  │  0x00007f802725930a:   mov    %r8d,%edx
   0.00%  │  0x00007f802725930d:   sub    %ebp,%edx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  0x00007f802725930f:   mov    %edi,%r10d
   1.63%  │  0x00007f8027259312:   add    %ebp,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  0x00007f8027259315:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f8027259318:   mov    %ebp,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  0x00007f802725931a:   mov    0x18(%rsp),%rsi
   1.71%  │  0x00007f802725931f:   nop
   0.00%  │  0x00007f8027259320:   cmp    %edx,%ecx
          ╰  0x00007f8027259322:   jle    0x00007f80272592a0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f8027259328:   mov    0x44(%rsp),%r8d
   0.01%     0x00007f802725932d:   mov    %r8d,%edi
             0x00007f8027259330:   dec    %edi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@21 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f8027259332:   cmp    %edi,%r8d
             0x00007f8027259335:   jbe    0x00007f80272598e5
             0x00007f802725933b:   movsbl 0x10(%r14,%rdi,1),%edi
   0.00%     0x00007f8027259341:   movsbl %dil,%r10d                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f8027259345:   test   $0xff,%r10d
             0x00007f802725934c:   je     0x00007f80272598cd           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@36 (line 98)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f8027259352:   mov    0x2c(%rsp),%esi
             0x00007f8027259356:   movzbl %dil,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@30 (line 97)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f802725935a:   nopw   0x0(%rax,%rax,1)
             0x00007f8027259360:   cmp    %esi,%edx
             0x00007f8027259362:   jg     0x00007f80272598b5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@45 (line 98)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f8027259368:   mov    %r8d,%r11d
             0x00007f802725936b:   sub    %edx,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@54 (line 103)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f802725936e:   test   %r11d,%r11d
             0x00007f8027259371:   jl     0x00007f802725989d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@60 (line 104)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f8027259377:   cmp    %r11d,%r8d
             0x00007f802725937a:   jg     0x00007f8027259594           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@73 (line 108)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f8027259380:   mov    0x3c(%rsp),%edi
             0x00007f8027259384:   test   %edi,%edi
             0x00007f8027259386:   jne    0x00007f8027259a0b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
             0x00007f802725938c:   cmp    %r11d,%r8d
             0x00007f802725938f:   jle    0x00007f8027259840           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.87%  <total for region 4>

....[Hottest Regions]...............................................................................
  27.73%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
  25.67%                       <unknown> 
  19.01%                       <unknown> 
  14.87%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
   6.46%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
   2.69%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.71%               kernel  [unknown] 
   0.22%         libc-2.31.so  __memset_avx2_erms 
   0.13%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1126 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
   0.05%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   1.91%  <...other 486 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.32%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1097 
  44.79%                       <unknown> 
   2.70%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.98%               kernel  [unknown] 
   0.22%         libc-2.31.so  __memset_avx2_erms 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1126 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  defaultStream::write 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  G1CardSet::clear 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  TypeArrayKlass::allocate_common 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  G1CardSetMemoryManager::memory_stats 
   0.62%  <...other 194 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  49.45%       jvmci, level 4
  44.79%                     
   2.70%         runtime stub
   1.98%               kernel
   0.58%            libjvm.so
   0.36%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.03%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%     perf-2103661.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/NoPadding)

# Run progress: 33.33% complete, ETA 00:15:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.628 us/op
# Warmup Iteration   2: 14.923 us/op
# Warmup Iteration   3: 14.917 us/op
# Warmup Iteration   4: 14.821 us/op
# Warmup Iteration   5: 14.672 us/op
Iteration   1: 14.840 us/op
Iteration   2: 14.838 us/op
Iteration   3: 14.710 us/op
Iteration   4: 14.781 us/op
Iteration   5: 14.919 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  14.817 ±(99.9%) 0.299 us/op [Average]
  (min, avg, max) = (14.710, 14.817, 14.919), stdev = 0.078
  CI (99.9%): [14.519, 15.116] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 253158 total address lines.
Perf output processed (skipped 61.570 seconds):
 Column 1: cycles (50962 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            <task_queued compile_id='1064' method='com.sun.crypto.provider.AESCrypt implDecryptBlock ([BI[BI)V' bytes='3849' count='6405' iicount='6405' stamp='11.146' comment='tiered' hot_count='6405'/>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f6d72dc0690
            --------------------------------------------------------------------------------
   0.01%      0x00007f6d72dc0720:   sub    $0x18,%rsp
   2.55%      0x00007f6d72dc0724:   mov    -0x4(%rcx),%r10d
   0.10%      0x00007f6d72dc0728:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f6d72dc0700
   0.01%      0x00007f6d72dc0730:   vmovdqu (%rsi),%xmm0
   0.10%      0x00007f6d72dc0734:   vmovdqu 0x10(%rcx),%xmm2
   2.51%      0x00007f6d72dc0739:   vpshufb %xmm1,%xmm2,%xmm2
   0.08%      0x00007f6d72dc073e:   vmovdqu 0x20(%rcx),%xmm3
              0x00007f6d72dc0743:   vpshufb %xmm1,%xmm3,%xmm3
              0x00007f6d72dc0748:   vmovdqu 0x30(%rcx),%xmm4
   2.55%      0x00007f6d72dc074d:   vpshufb %xmm1,%xmm4,%xmm4
   0.11%      0x00007f6d72dc0752:   vmovdqu 0x40(%rcx),%xmm5
   0.00%      0x00007f6d72dc0757:   vpshufb %xmm1,%xmm5,%xmm5
              0x00007f6d72dc075c:   vpxor  %xmm2,%xmm0,%xmm0
   2.56%      0x00007f6d72dc0760:   vaesdec %xmm3,%xmm0,%xmm0
   0.09%      0x00007f6d72dc0765:   vaesdec %xmm4,%xmm0,%xmm0
   0.01%      0x00007f6d72dc076a:   vaesdec %xmm5,%xmm0,%xmm0
   0.01%      0x00007f6d72dc076f:   vmovdqu 0x50(%rcx),%xmm2
   2.67%      0x00007f6d72dc0774:   vpshufb %xmm1,%xmm2,%xmm2
   0.11%      0x00007f6d72dc0779:   vmovdqu 0x60(%rcx),%xmm3
              0x00007f6d72dc077e:   vpshufb %xmm1,%xmm3,%xmm3
              0x00007f6d72dc0783:   vmovdqu 0x70(%rcx),%xmm4
   2.58%      0x00007f6d72dc0788:   vpshufb %xmm1,%xmm4,%xmm4
   0.07%      0x00007f6d72dc078d:   vmovdqu 0x80(%rcx),%xmm5
   0.00%      0x00007f6d72dc0795:   vpshufb %xmm1,%xmm5,%xmm5
              0x00007f6d72dc079a:   vaesdec %xmm2,%xmm0,%xmm0
   2.65%      0x00007f6d72dc079f:   vaesdec %xmm3,%xmm0,%xmm0
   0.08%      0x00007f6d72dc07a4:   vaesdec %xmm4,%xmm0,%xmm0
   0.01%      0x00007f6d72dc07a9:   vaesdec %xmm5,%xmm0,%xmm0
   0.14%      0x00007f6d72dc07ae:   vmovdqu 0x90(%rcx),%xmm2
   2.53%      0x00007f6d72dc07b6:   vpshufb %xmm1,%xmm2,%xmm2
   0.09%      0x00007f6d72dc07bb:   vmovdqu 0xa0(%rcx),%xmm3
              0x00007f6d72dc07c3:   vpshufb %xmm1,%xmm3,%xmm3
   0.09%      0x00007f6d72dc07c8:   vmovdqu (%rcx),%xmm4
   2.39%      0x00007f6d72dc07cc:   vpshufb %xmm1,%xmm4,%xmm4
   0.09%      0x00007f6d72dc07d1:   cmp    $0x2c,%r10d
          ╭   0x00007f6d72dc07d5:   je     0x00007f6d72dc082a
          │   0x00007f6d72dc07d7:   vaesdec %xmm2,%xmm0,%xmm0
   0.40%  │   0x00007f6d72dc07dc:   vaesdec %xmm3,%xmm0,%xmm0
   3.33%  │   0x00007f6d72dc07e1:   vmovdqu 0xb0(%rcx),%xmm2
   0.09%  │   0x00007f6d72dc07e9:   vpshufb %xmm1,%xmm2,%xmm2
   0.02%  │   0x00007f6d72dc07ee:   vmovdqu 0xc0(%rcx),%xmm3
          │   0x00007f6d72dc07f6:   vpshufb %xmm1,%xmm3,%xmm3
   2.60%  │   0x00007f6d72dc07fb:   nopl   0x0(%rax,%rax,1)
   0.07%  │   0x00007f6d72dc0800:   cmp    $0x34,%r10d
          │╭  0x00007f6d72dc0804:   je     0x00007f6d72dc082a
   0.00%  ││  0x00007f6d72dc0806:   vaesdec %xmm2,%xmm0,%xmm0
   2.04%  ││  0x00007f6d72dc080b:   vaesdec %xmm3,%xmm0,%xmm0
   5.71%  ││  0x00007f6d72dc0810:   vmovdqu 0xd0(%rcx),%xmm2
   0.03%  ││  0x00007f6d72dc0818:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f6d72dc081d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007f6d72dc0825:   vpshufb %xmm1,%xmm3,%xmm3
   2.62%  ↘↘  0x00007f6d72dc082a:   vaesdec %xmm2,%xmm0,%xmm0
   4.92%      0x00007f6d72dc082f:   vaesdec %xmm3,%xmm0,%xmm0
   8.47%      0x00007f6d72dc0834:   vaesdeclast %xmm4,%xmm0,%xmm0
  10.06%      0x00007f6d72dc0839:   vmovdqu %xmm0,(%rdx)
   2.88%      0x00007f6d72dc083d:   add    $0x18,%rsp
              0x00007f6d72dc0841:   ret    
              0x00007f6d72dc0842:   hlt    
              0x00007f6d72dc0843:   hlt    
              0x00007f6d72dc0844:   hlt    
              0x00007f6d72dc0845:   hlt    
              0x00007f6d72dc0846:   hlt    
              0x00007f6d72dc0847:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  67.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1091 

                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f6d73259000:   test   %r10d,%r10d
            0x00007f6d73259003:   jl     0x00007f6d73259115
            0x00007f6d73259009:   cmp    %esi,%r10d
            0x00007f6d7325900c:   jg     0x00007f6d73259115
            0x00007f6d73259012:   test   %r9d,%r9d
            0x00007f6d73259015:   jl     0x00007f6d73259115
   2.73%    0x00007f6d7325901b:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007f6d73259020:   cmp    %edx,%r9d
            0x00007f6d73259023:   jg     0x00007f6d73259115
            0x00007f6d73259029:   mov    %r11,%r8
            0x00007f6d7325902c:   mov    %rax,%rbp
   2.83%    0x00007f6d7325902f:   mov    %rcx,%rbx
   0.00%    0x00007f6d73259032:   mov    %r10d,%r13d
   0.00%    0x00007f6d73259035:   lea    0x10(%r13),%r13
            0x00007f6d73259039:   add    %r8,%r13
   2.62%    0x00007f6d7325903c:   mov    %r9d,%r8d
   0.00%    0x00007f6d7325903f:   lea    0x10(%r8),%r8
   0.00%    0x00007f6d73259043:   add    %rbp,%r8
            0x00007f6d73259046:   lea    0x10(%rbx),%rbx
   2.68%    0x00007f6d7325904a:   mov    %esi,%ebp
   0.00%    0x00007f6d7325904c:   mov    %r13,%rsi
   0.00%    0x00007f6d7325904f:   mov    %edx,%r13d
            0x00007f6d73259052:   mov    %r8,%rdx
   2.63%    0x00007f6d73259055:   mov    %rcx,%r8
   0.00%    0x00007f6d73259058:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
                                                                      ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
                                                                      ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f6d7325905b:   mov    %r10d,%ebx
            0x00007f6d7325905e:   xchg   %ax,%ax                      ;   {no_reloc}
   2.64%    0x00007f6d73259060:   call   0x00007f6d72dc0720           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
            0x00007f6d73259065:   nop
            0x00007f6d73259066:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rax=Oop r8=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
                                                                      ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.sun.crypto.provider.AESCrypt::decryptBlock@9 (line 1161)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.73%    0x00007f6d7325906d:   test   %eax,(%rsi)                  ;   {poll}
   0.01%    0x00007f6d7325906f:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f6d73259072:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f6d73259075:   mov    %ebx,%r10d
   2.62%    0x00007f6d73259078:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f6d7325907b:   mov    %ebp,%esi
            0x00007f6d7325907d:   mov    %r13d,%edx
            0x00007f6d73259080:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.64%    0x00007f6d73259083:   cmp    %r14d,%edi
            0x00007f6d73259086:   jle    0x00007f6d73259000           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  24.16%  <total for region 2>

....[Hottest Regions]...............................................................................
  67.44%                      <unknown> 
  24.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1091 
   4.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1091 
   0.49%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.15%        libc-2.31.so  __memset_avx2_erms 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1091 
   0.10%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1091 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1123 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   1.75%  <...other 494 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.56%                      <unknown> 
  29.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1091 
   2.25%              kernel  [unknown] 
   0.15%        libc-2.31.so  __memset_avx2_erms 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1123 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%           libjvm.so  StatSamplerTask::task 
   0.02%           libjvm.so  VMError::is_error_reported 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.42%  <...other 146 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  67.56%                    
  29.36%      jvmci, level 4
   2.25%              kernel
   0.43%           libjvm.so
   0.27%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%    perf-2103725.map
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/PKCS5Padding)

# Run progress: 41.67% complete, ETA 00:13:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.122 us/op
# Warmup Iteration   2: 23.586 us/op
# Warmup Iteration   3: 23.575 us/op
# Warmup Iteration   4: 23.526 us/op
# Warmup Iteration   5: 23.467 us/op
Iteration   1: 23.504 us/op
Iteration   2: 23.511 us/op
Iteration   3: 23.564 us/op
Iteration   4: 23.533 us/op
Iteration   5: 23.825 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  23.587 ±(99.9%) 0.519 us/op [Average]
  (min, avg, max) = (23.504, 23.587, 23.825), stdev = 0.135
  CI (99.9%): [23.068, 24.107] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 256186 total address lines.
Perf output processed (skipped 61.545 seconds):
 Column 1: cycles (50680 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007fee52db9110
            --------------------------------------------------------------------------------
   0.00%      0x00007fee52db91a0:   sub    $0x18,%rsp
   1.62%      0x00007fee52db91a4:   mov    -0x4(%rcx),%r10d
   0.00%      0x00007fee52db91a8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007fee52db9180
   0.03%      0x00007fee52db91b0:   vmovdqu (%rsi),%xmm0
   0.11%      0x00007fee52db91b4:   vmovdqu 0x10(%rcx),%xmm2
   1.70%      0x00007fee52db91b9:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%      0x00007fee52db91be:   vmovdqu 0x20(%rcx),%xmm3
              0x00007fee52db91c3:   vpshufb %xmm1,%xmm3,%xmm3
              0x00007fee52db91c8:   vmovdqu 0x30(%rcx),%xmm4
   1.60%      0x00007fee52db91cd:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007fee52db91d2:   vmovdqu 0x40(%rcx),%xmm5
              0x00007fee52db91d7:   vpshufb %xmm1,%xmm5,%xmm5
              0x00007fee52db91dc:   vpxor  %xmm2,%xmm0,%xmm0
   1.60%      0x00007fee52db91e0:   vaesdec %xmm3,%xmm0,%xmm0
   0.00%      0x00007fee52db91e5:   vaesdec %xmm4,%xmm0,%xmm0
   0.01%      0x00007fee52db91ea:   vaesdec %xmm5,%xmm0,%xmm0
   0.01%      0x00007fee52db91ef:   vmovdqu 0x50(%rcx),%xmm2
   1.57%      0x00007fee52db91f4:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007fee52db91f9:   vmovdqu 0x60(%rcx),%xmm3
              0x00007fee52db91fe:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007fee52db9203:   vmovdqu 0x70(%rcx),%xmm4
   1.62%      0x00007fee52db9208:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007fee52db920d:   vmovdqu 0x80(%rcx),%xmm5
              0x00007fee52db9215:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%      0x00007fee52db921a:   vaesdec %xmm2,%xmm0,%xmm0
   1.65%      0x00007fee52db921f:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%      0x00007fee52db9224:   vaesdec %xmm4,%xmm0,%xmm0
   0.03%      0x00007fee52db9229:   vaesdec %xmm5,%xmm0,%xmm0
   0.03%      0x00007fee52db922e:   vmovdqu 0x90(%rcx),%xmm2
   1.61%      0x00007fee52db9236:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007fee52db923b:   vmovdqu 0xa0(%rcx),%xmm3
              0x00007fee52db9243:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%      0x00007fee52db9248:   vmovdqu (%rcx),%xmm4
   1.69%      0x00007fee52db924c:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007fee52db9251:   cmp    $0x2c,%r10d
          ╭   0x00007fee52db9255:   je     0x00007fee52db92aa
          │   0x00007fee52db9257:   vaesdec %xmm2,%xmm0,%xmm0
   0.44%  │   0x00007fee52db925c:   vaesdec %xmm3,%xmm0,%xmm0
   2.87%  │   0x00007fee52db9261:   vmovdqu 0xb0(%rcx),%xmm2
          │   0x00007fee52db9269:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007fee52db926e:   vmovdqu 0xc0(%rcx),%xmm3
          │   0x00007fee52db9276:   vpshufb %xmm1,%xmm3,%xmm3
   1.66%  │   0x00007fee52db927b:   nopl   0x0(%rax,%rax,1)
   0.00%  │   0x00007fee52db9280:   cmp    $0x34,%r10d
          │╭  0x00007fee52db9284:   je     0x00007fee52db92aa
          ││  0x00007fee52db9286:   vaesdec %xmm2,%xmm0,%xmm0
   1.60%  ││  0x00007fee52db928b:   vaesdec %xmm3,%xmm0,%xmm0
   5.04%  ││  0x00007fee52db9290:   vmovdqu 0xd0(%rcx),%xmm2
   0.00%  ││  0x00007fee52db9298:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007fee52db929d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007fee52db92a5:   vpshufb %xmm1,%xmm3,%xmm3
   1.58%  ↘↘  0x00007fee52db92aa:   vaesdec %xmm2,%xmm0,%xmm0
   3.85%      0x00007fee52db92af:   vaesdec %xmm3,%xmm0,%xmm0
   6.04%      0x00007fee52db92b4:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.38%      0x00007fee52db92b9:   vmovdqu %xmm0,(%rdx)
   1.65%      0x00007fee52db92bd:   add    $0x18,%rsp
   0.00%      0x00007fee52db92c1:   ret    
              0x00007fee52db92c2:   hlt    
              0x00007fee52db92c3:   hlt    
              0x00007fee52db92c4:   hlt    
              0x00007fee52db92c5:   hlt    
              0x00007fee52db92c6:   hlt    
              0x00007fee52db92c7:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
....................................................................................................
  46.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 

                  0x00007fee532555bb:   cmovl  %r8d,%eax
                  0x00007fee532555bf:   mov    $0x1,%esi
          ╭       0x00007fee532555c4:   jmp    0x00007fee532555e7           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.Arrays::fill@5 (line 3287)
          │                                                                 ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
          │       0x00007fee532555c9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       0x00007fee532555d4:   data16 data16 xchg %ax,%ax
          │       0x00007fee532555d8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.Arrays::fill@7 (line 3287)
          │                                                                 ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%  │↗      0x00007fee532555e0:   movb   $0x0,0x10(%rbx,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.Arrays::fill@13 (line 3288)
          ││                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%  ││      0x00007fee532555e5:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.Arrays::fill@14 (line 3287)
          ││                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
          ↘│      0x00007fee532555e7:   cmp    %esi,%eax
           ╰      0x00007fee532555e9:   jg     0x00007fee532555e0
                  0x00007fee532555eb:   mov    %esi,%eax
                  0x00007fee532555ed:   mov    0x40(%rsp),%r13d
   0.00%    ╭     0x00007fee532555f2:   jmp    0x00007fee53255656
            │     0x00007fee532555f7:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - java.util.Arrays::fill@7 (line 3287)
            │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.01%    │↗    0x00007fee53255600:   movb   $0x0,0x10(%rbx,%rax,1)
   1.75%    ││    0x00007fee53255605:   movslq %eax,%rsi
   0.00%    ││    0x00007fee53255608:   movb   $0x0,0x11(%rbx,%rsi,1)
   2.40%    ││    0x00007fee5325560d:   movb   $0x0,0x12(%rbx,%rsi,1)
   2.04%    ││    0x00007fee53255612:   movb   $0x0,0x13(%rbx,%rsi,1)
   1.73%    ││    0x00007fee53255617:   movb   $0x0,0x14(%rbx,%rsi,1)
   1.25%    ││    0x00007fee5325561c:   movb   $0x0,0x15(%rbx,%rsi,1)
   1.54%    ││    0x00007fee53255621:   movb   $0x0,0x16(%rbx,%rsi,1)
   1.55%    ││    0x00007fee53255626:   movb   $0x0,0x17(%rbx,%rsi,1)
   1.62%    ││    0x00007fee5325562b:   movb   $0x0,0x18(%rbx,%rsi,1)
   1.77%    ││    0x00007fee53255630:   movb   $0x0,0x19(%rbx,%rsi,1)
   1.80%    ││    0x00007fee53255635:   movb   $0x0,0x1a(%rbx,%rsi,1)
   2.07%    ││    0x00007fee5325563a:   movb   $0x0,0x1b(%rbx,%rsi,1)
   1.65%    ││    0x00007fee5325563f:   movb   $0x0,0x1c(%rbx,%rsi,1)
   1.65%    ││    0x00007fee53255644:   movb   $0x0,0x1d(%rbx,%rsi,1)
   1.27%    ││    0x00007fee53255649:   movb   $0x0,0x1e(%rbx,%rsi,1)
   1.64%    ││    0x00007fee5325564e:   movb   $0x0,0x1f(%rbx,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.Arrays::fill@13 (line 3288)
            ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   1.75%    ││    0x00007fee53255653:   lea    0x10(%rax),%eax              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.Arrays::fill@14 (line 3287)
            ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
            ↘│    0x00007fee53255656:   cmp    %eax,%r13d
             ╰    0x00007fee53255659:   jg     0x00007fee53255600
   0.00%      ╭   0x00007fee5325565b:   jmp    0x00007fee53255670           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - java.util.Arrays::fill@7 (line 3287)
              │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.00%      │↗  0x00007fee53255660:   movb   $0x0,0x10(%rbx,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.Arrays::fill@13 (line 3288)
              ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
   0.05%      ││  0x00007fee53255665:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.Arrays::fill@14 (line 3287)
              ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
              ││  0x00007fee53255667:   nopw   0x0(%rax,%rax,1)
   0.01%      ↘│  0x00007fee53255670:   cmp    %eax,%r8d
               ╰  0x00007fee53255673:   jg     0x00007fee53255660           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::fill@7 (line 3287)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@97 (line 742)
                  0x00007fee53255675:   mov    0x10(%rsp),%rax              ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@102 (line 744)
   0.00%          0x00007fee5325567a:   mov    0x50(%rsp),%rbp
                  0x00007fee5325567f:   add    $0x58,%rsp                   ;   {no_reloc}
                  0x00007fee53255683:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007fee5325568a:   ja     0x00007fee53255b57
   0.03%          0x00007fee53255690:   vzeroupper 
   0.00%          0x00007fee53255693:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@73 (line 108)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%          0x00007fee53255694:   mov    %r11d,%esi
   0.00%          0x00007fee53255697:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@87 (line 108)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%          0x00007fee53255699:   nopl   0x0(%rax)
                  0x00007fee532556a0:   cmp    %esi,%r8d
                  0x00007fee532556a3:   jg     0x00007fee53255706
                  0x00007fee532556a9:   cmp    %r11d,%r8d
                  0x00007fee532556ac:   jbe    0x00007fee532558be           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.PKCS5Padding::unpad@79 (line 109)
                                                                            ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
....................................................................................................
  27.61%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 

             0x00007fee53255399:   data16 data16 xchg %ax,%ax
             0x00007fee5325539d:   data16 xchg %ax,%ax                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ↗  0x00007fee532553a0:   test   %r13d,%r13d
          │  0x00007fee532553a3:   jl     0x00007fee53255825
   1.58%  │  0x00007fee532553a9:   cmp    %ebx,%r13d
          │  0x00007fee532553ac:   jg     0x00007fee53255825
          │  0x00007fee532553b2:   test   %r10d,%r10d
          │  0x00007fee532553b5:   jl     0x00007fee53255825
          │  0x00007fee532553bb:   nopl   0x0(%rax,%rax,1)
          │  0x00007fee532553c0:   cmp    %eax,%r10d                   ;   {no_reloc}
          │  0x00007fee532553c3:   jg     0x00007fee53255825
   1.67%  │  0x00007fee532553c9:   mov    %rsi,%rbp
          │  0x00007fee532553cc:   mov    %r14,%rdi
          │  0x00007fee532553cf:   mov    %r11,%r9
          │  0x00007fee532553d2:   mov    %r13d,%r8d
   1.62%  │  0x00007fee532553d5:   lea    0x10(%r8),%r8
          │  0x00007fee532553d9:   add    %rbp,%r8
          │  0x00007fee532553dc:   mov    %r10d,%ebp
          │  0x00007fee532553df:   lea    0x10(%rbp),%rbp
   1.76%  │  0x00007fee532553e3:   add    %rdi,%rbp
   0.00%  │  0x00007fee532553e6:   lea    0x10(%r9),%rdi
          │  0x00007fee532553ea:   mov    %r8,%rsi
          │  0x00007fee532553ed:   mov    %edx,%r8d
   1.65%  │  0x00007fee532553f0:   mov    %rbp,%rdx
   0.00%  │  0x00007fee532553f3:   mov    %ecx,%ebp
          │  0x00007fee532553f5:   mov    %rdi,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implDecryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007fee532553f8:   mov    %r10d,%edi
   1.70%  │  0x00007fee532553fb:   call   0x00007fee52db91a0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
          │  0x00007fee53255400:   nop
          │  0x00007fee53255401:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r11=Oop r14=Oop [16]=Oop [24]=Oop [32]=Oop }
          │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::decryptBlock@9 (line 1161)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.65%  │  0x00007fee53255408:   test   %eax,(%rsi)                  ;   {poll}
   0.00%  │  0x00007fee5325540a:   mov    %r8d,%edx
          │  0x00007fee5325540d:   sub    %ebp,%edx                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007fee5325540f:   mov    %edi,%r10d
   1.59%  │  0x00007fee53255412:   add    %ebp,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007fee53255415:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007fee53255418:   mov    %ebp,%ecx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007fee5325541a:   mov    0x18(%rsp),%rsi
   1.64%  │  0x00007fee5325541f:   nop
          │  0x00007fee53255420:   cmp    %edx,%ecx
          ╰  0x00007fee53255422:   jle    0x00007fee532553a0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007fee53255428:   mov    0x44(%rsp),%r8d
             0x00007fee5325542d:   mov    %r8d,%edi
....................................................................................................
  14.87%  <total for region 3>

....[Hottest Regions]...............................................................................
  46.05%                       <unknown> 
  27.61%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
  14.87%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
   3.05%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
   3.00%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
   2.39%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.45%               kernel  [unknown] 
   0.22%         libc-2.31.so  __memset_avx2_erms 
   0.13%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1115 
   0.06%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1136 
   1.60%  <...other 456 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.79%       jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1112 
  46.16%                       <unknown> 
   2.40%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.55%               kernel  [unknown] 
   0.22%         libc-2.31.so  __memset_avx2_erms 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1115 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1136 
   0.03%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  G1CardSet::clear 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.53%  <...other 179 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  48.90%       jvmci, level 4
  46.16%                     
   2.40%         runtime stub
   1.55%               kernel
   0.46%            libjvm.so
   0.37%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.04%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%     perf-2103790.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/NoPadding)

# Run progress: 50.00% complete, ETA 00:11:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.444 us/op
# Warmup Iteration   2: 12.762 us/op
# Warmup Iteration   3: 12.826 us/op
# Warmup Iteration   4: 12.783 us/op
# Warmup Iteration   5: 12.782 us/op
Iteration   1: 12.793 us/op
Iteration   2: 12.813 us/op
Iteration   3: 12.799 us/op
Iteration   4: 12.795 us/op
Iteration   5: 12.799 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  12.800 ±(99.9%) 0.030 us/op [Average]
  (min, avg, max) = (12.793, 12.800, 12.813), stdev = 0.008
  CI (99.9%): [12.770, 12.830] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 259023 total address lines.
Perf output processed (skipped 61.718 seconds):
 Column 1: cycles (50873 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007faf46db8890
          --------------------------------------------------------------------------------
   0.04%    0x00007faf46db8920:   sub    $0x18,%rsp
   2.87%    0x00007faf46db8924:   mov    -0x4(%rcx),%r10d
   0.07%    0x00007faf46db8928:   vmovdqu -0x30(%rip),%xmm1        # 0x00007faf46db8900
   0.04%    0x00007faf46db8930:   vmovdqu (%rsi),%xmm0
   0.13%    0x00007faf46db8934:   vmovdqu (%rcx),%xmm2
   2.96%    0x00007faf46db8938:   vpshufb %xmm1,%xmm2,%xmm2
   0.06%    0x00007faf46db893d:   vpxor  %xmm2,%xmm0,%xmm0
   0.05%    0x00007faf46db8941:   vmovdqu 0x10(%rcx),%xmm2
            0x00007faf46db8946:   vpshufb %xmm1,%xmm2,%xmm2
   2.86%    0x00007faf46db894b:   vmovdqu 0x20(%rcx),%xmm3
   0.08%    0x00007faf46db8950:   vpshufb %xmm1,%xmm3,%xmm3
   0.03%    0x00007faf46db8955:   vmovdqu 0x30(%rcx),%xmm4
   0.00%    0x00007faf46db895a:   vpshufb %xmm1,%xmm4,%xmm4
   2.82%    0x00007faf46db895f:   vmovdqu 0x40(%rcx),%xmm5
   0.07%    0x00007faf46db8964:   vpshufb %xmm1,%xmm5,%xmm5
   0.03%    0x00007faf46db8969:   vaesenc %xmm2,%xmm0,%xmm0
   0.01%    0x00007faf46db896e:   vaesenc %xmm3,%xmm0,%xmm0
   2.97%    0x00007faf46db8973:   vaesenc %xmm4,%xmm0,%xmm0
   0.07%    0x00007faf46db8978:   vaesenc %xmm5,%xmm0,%xmm0
   0.14%    0x00007faf46db897d:   vmovdqu 0x50(%rcx),%xmm2
   0.00%    0x00007faf46db8982:   vpshufb %xmm1,%xmm2,%xmm2
   2.95%    0x00007faf46db8987:   vmovdqu 0x60(%rcx),%xmm3
   0.05%    0x00007faf46db898c:   vpshufb %xmm1,%xmm3,%xmm3
   0.07%    0x00007faf46db8991:   vmovdqu 0x70(%rcx),%xmm4
            0x00007faf46db8996:   vpshufb %xmm1,%xmm4,%xmm4
   2.86%    0x00007faf46db899b:   vmovdqu 0x80(%rcx),%xmm5
   0.06%    0x00007faf46db89a3:   vpshufb %xmm1,%xmm5,%xmm5
   0.08%    0x00007faf46db89a8:   vaesenc %xmm2,%xmm0,%xmm0
   0.26%    0x00007faf46db89ad:   vaesenc %xmm3,%xmm0,%xmm0
   5.17%    0x00007faf46db89b2:   vaesenc %xmm4,%xmm0,%xmm0
   3.28%    0x00007faf46db89b7:   vaesenc %xmm5,%xmm0,%xmm0
   8.97%    0x00007faf46db89bc:   vmovdqu 0x90(%rcx),%xmm2
            0x00007faf46db89c4:   vpshufb %xmm1,%xmm2,%xmm2
   0.73%    0x00007faf46db89c9:   vmovdqu 0xa0(%rcx),%xmm3
   0.01%    0x00007faf46db89d1:   vpshufb %xmm1,%xmm3,%xmm3
   2.29%    0x00007faf46db89d6:   cmp    $0x2c,%r10d
            0x00007faf46db89da:   je     0x00007faf46db8a2a
            0x00007faf46db89dc:   vaesenc %xmm2,%xmm0,%xmm0
            0x00007faf46db89e1:   vaesenc %xmm3,%xmm0,%xmm0
            0x00007faf46db89e6:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007faf46db89ee:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007faf46db89f3:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007faf46db89fb:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007faf46db8a00:   cmp    $0x34,%r10d
            0x00007faf46db8a04:   je     0x00007faf46db8a2a
            0x00007faf46db8a06:   vaesenc %xmm2,%xmm0,%xmm0
....................................................................................................
  42.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1098 

                      0x00007faf47253b79:   mov    $0x10,%r10
          ╭           0x00007faf47253b80:   jmp    0x00007faf47253bac
          │           0x00007faf47253b85:   data16 data16 nopw 0x0(%rax,%rax,1)
          │           0x00007faf47253b90:   data16 data16 xchg %ax,%ax
          │           0x00007faf47253b94:   nopl   0x0(%rax,%rax,1)
          │           0x00007faf47253b9c:   data16 data16 xchg %ax,%ax
          │↗          0x00007faf47253ba0:   movq   $0x0,(%rdx,%r10,1)
          ││          0x00007faf47253ba8:   lea    0x8(%r10),%r10
          ↘│          0x00007faf47253bac:   cmp    %r10,%rsi
           ╰          0x00007faf47253baf:   ja     0x00007faf47253ba0
   0.00%           ↗  0x00007faf47253bb1:   mov    %rdx,%rax                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                   │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                   │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                  ↗│  0x00007faf47253bb4:   shl    $0x3,%r9                     ;*getfield encryptCipher {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@1 (line 108)
                  ││  0x00007faf47253bb8:   mov    %r9,0x10(%rsp)
   0.00%          ││  0x00007faf47253bbd:   shl    $0x3,%r11                    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@5 (line 108)
                  ││  0x00007faf47253bc1:   mov    %ebx,%r10d
                  ││  0x00007faf47253bc4:   shl    $0x3,%r10                    ;*getfield core {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@1 (line 446)
                  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%          ││  0x00007faf47253bc8:   mov    %r10,0x8(%rsp)
   0.00%          ││  0x00007faf47253bcd:   shl    $0x3,%rcx                    ;* unwind (locked if synchronized)
                  ││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
                  ││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                  ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                  ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%          ││  0x00007faf47253bd1:   shl    $0x3,%r14                    ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%          ││  0x00007faf47253bd5:   mov    %r14,(%rsp)
   0.00%          ││  0x00007faf47253bd9:   lea    -0x10(%r8),%edx
                  ││  0x00007faf47253bdd:   lea    -0x10(%r8),%esi              ;* unwind (locked if synchronized)
                  ││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
                  ││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                  ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                  ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                  ││  0x00007faf47253be1:   mov    %r8d,%r14d
                  ││  0x00007faf47253be4:   mov    $0x0,%r9d
                  ││  0x00007faf47253bea:   mov    $0x0,%r10d
   0.00%    ╭     ││  0x00007faf47253bf0:   jmp    0x00007faf47253c83           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
            │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            │     ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │     ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │     ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │     ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │     ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            │     ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            │     ││  0x00007faf47253bf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
            │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            │     ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │     ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │     ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │     ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │     ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            │     ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            │    ↗││  0x00007faf47253c00:   test   %r10d,%r10d
            │╭   │││  0x00007faf47253c03:   jl     0x00007faf47253d15
   0.03%    ││   │││  0x00007faf47253c09:   cmp    %esi,%r10d
            ││╭  │││  0x00007faf47253c0c:   jg     0x00007faf47253d15
   0.00%    │││  │││  0x00007faf47253c12:   test   %r9d,%r9d
            │││╭ │││  0x00007faf47253c15:   jl     0x00007faf47253d15
   2.96%    ││││ │││  0x00007faf47253c1b:   nopl   0x0(%rax,%rax,1)
            ││││ │││  0x00007faf47253c20:   cmp    %edx,%r9d
            ││││╭│││  0x00007faf47253c23:   jg     0x00007faf47253d15
   0.04%    ││││││││  0x00007faf47253c29:   mov    %r11,%r8
   0.00%    ││││││││  0x00007faf47253c2c:   mov    %rax,%rbp
   2.93%    ││││││││  0x00007faf47253c2f:   mov    %rcx,%rbx
   0.00%    ││││││││  0x00007faf47253c32:   mov    %r10d,%r13d
   0.04%    ││││││││  0x00007faf47253c35:   lea    0x10(%r13),%r13
   0.00%    ││││││││  0x00007faf47253c39:   add    %r8,%r13
   3.07%    ││││││││  0x00007faf47253c3c:   mov    %r9d,%r8d
            ││││││││  0x00007faf47253c3f:   lea    0x10(%r8),%r8
   0.03%    ││││││││  0x00007faf47253c43:   add    %rbp,%r8
            ││││││││  0x00007faf47253c46:   lea    0x10(%rbx),%rbx
   3.10%    ││││││││  0x00007faf47253c4a:   mov    %esi,%ebp
   0.01%    ││││││││  0x00007faf47253c4c:   mov    %r13,%rsi
   0.04%    ││││││││  0x00007faf47253c4f:   mov    %edx,%r13d
            ││││││││  0x00007faf47253c52:   mov    %r8,%rdx
   3.09%    ││││││││  0x00007faf47253c55:   mov    %rcx,%r8
   0.01%    ││││││││  0x00007faf47253c58:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
            ││││││││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
            ││││││││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.04%    ││││││││  0x00007faf47253c5b:   mov    %r10d,%ebx
   0.01%    ││││││││  0x00007faf47253c5e:   xchg   %ax,%ax                      ;   {no_reloc}
   3.04%    ││││││││  0x00007faf47253c60:   call   0x00007faf46db8920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.04%    ││││││││  0x00007faf47253c65:   nop
            ││││││││  0x00007faf47253c66:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rax=Oop r8=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
            ││││││││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
            ││││││││                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::encryptBlock@9 (line 1082)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   3.00%    ││││││││  0x00007faf47253c6d:   test   %eax,(%rsi)                  ;   {poll}
   0.00%    ││││││││  0x00007faf47253c6f:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.02%    ││││││││  0x00007faf47253c72:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%    ││││││││  0x00007faf47253c75:   mov    %ebx,%r10d
   2.93%    ││││││││  0x00007faf47253c78:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%    ││││││││  0x00007faf47253c7b:   mov    %ebp,%esi
   0.05%    ││││││││  0x00007faf47253c7d:   mov    %r13d,%edx
   0.00%    ││││││││  0x00007faf47253c80:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
            ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
            ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   3.02%    ↘│││││││  0x00007faf47253c83:   cmp    %r14d,%edi
             ││││╰││  0x00007faf47253c86:   jle    0x00007faf47253c00           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             ││││ ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
             ││││ ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
             ││││ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             ││││ ││  0x00007faf47253c8c:   mov    0x1c(%rsp),%r13d
   0.00%     ││││ ││  0x00007faf47253c91:   test   %r13d,%r13d
             ││││ ││  0x00007faf47253c94:   jne    0x00007faf47253df7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
             ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%     ││││ ││  0x00007faf47253c9a:   mov    0x20(%rsp),%ebp
   0.01%     ││││ ││  0x00007faf47253c9e:   mov    0x18(%rsp),%ebx
             ││││ ││  0x00007faf47253ca2:   movl   $0x0,0x14(,%rbx,8)           ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
             ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.03%     ││││ ││  0x00007faf47253cad:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
             ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             ││││ ││  0x00007faf47253cb4:   mov    0x30(%rsp),%rbp
             ││││ ││  0x00007faf47253cb9:   add    $0x38,%rsp
             ││││ ││  0x00007faf47253cbd:   data16 xchg %ax,%ax
   0.01%     ││││ ││  0x00007faf47253cc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             ││││ ││  0x00007faf47253cc7:   ja     0x00007faf47253e87
   0.00%     ││││ ││  0x00007faf47253ccd:   vzeroupper 
   0.00%     ││││ ││  0x00007faf47253cd0:   ret    
             ││││ ││  0x00007faf47253cd1:   movabs $0x7faecb0022c0,%rsi         ;   {metadata({type array byte})}
             ││││ ││  0x00007faf47253cdb:   mov    0x24(%rsp),%edx              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
             ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             ││││ ││  0x00007faf47253cdf:   nop
             ││││ ││  0x00007faf47253ce0:   call   0x00007faf46db7380           ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop r9=NarrowOop r10=Oop r11=NarrowOop r14=NarrowOop [24]=NarrowOop }
             ││││ ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@0 (line 108)
             ││││ ││                                                            ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
             ││││ ││  0x00007faf47253ce5:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rcx=NarrowOop rbx=NarrowOop r9=NarrowOop r10=Oop r11=NarrowOop r14=NarrowOop [24]=NarrowOop }
             ││││ ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@0 (line 108)
             ││││ ││  0x00007faf47253ced:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007faf47253f70
   0.00%     ││││ ╰│  0x00007faf47253cef:   jmp    0x00007faf47253bb4
             ││││  │  0x00007faf47253cf4:   mov    %edi,%esi
             ││││  │  0x00007faf47253cf6:   mov    %ecx,%r8d
             ││││  │  0x00007faf47253cf9:   mov    %r10,%rcx
   0.00%     ││││  │  0x00007faf47253cfc:   lea    0x10(%rdx),%rdi
             ││││  │  0x00007faf47253d00:   xor    %rax,%rax
   5.82%     ││││  │  0x00007faf47253d03:   rep rex.W stos %al,%es:(%rdi)
   0.03%     ││││  │  0x00007faf47253d06:   mov    %r8d,%ecx
   0.00%     ││││  │  0x00007faf47253d09:   mov    %esi,%edi
             ││││  │  0x00007faf47253d0b:   mov    0x24(%rsp),%r8d
   0.01%     ││││  ╰  0x00007faf47253d10:   jmp    0x00007faf47253bb1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
             ││││                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             ││││                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             ↘↘↘↘     0x00007faf47253d15:   mov    %r10d,%ebx
                      0x00007faf47253d18:   mov    (%rsp),%rcx
                      0x00007faf47253d1c:   mov    0x8(%rsp),%r10
                      0x00007faf47253d21:   mov    0x10(%rsp),%rdi
                      0x00007faf47253d26:   mov    0x24(%rsp),%r8d
                      0x00007faf47253d2b:   movl   $0xffffffe7,0x484(%r15)      ;* unwind (locked if synchronized)
....................................................................................................
  33.48%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

             0x00007faf46db89f3:   vmovdqu 0xc0(%rcx),%xmm3
             0x00007faf46db89fb:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007faf46db8a00:   cmp    $0x34,%r10d
          ╭  0x00007faf46db8a04:   je     0x00007faf46db8a2a
          │  0x00007faf46db8a06:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007faf46db8a0b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007faf46db8a10:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007faf46db8a18:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007faf46db8a1d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007faf46db8a25:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘  0x00007faf46db8a2a:   vaesenc %xmm2,%xmm0,%xmm0
   7.39%     0x00007faf46db8a2f:   vaesenclast %xmm3,%xmm0,%xmm0
  11.04%     0x00007faf46db8a34:   vmovdqu %xmm0,(%rdx)
   2.93%     0x00007faf46db8a38:   add    $0x18,%rsp
   0.00%     0x00007faf46db8a3c:   ret    
             0x00007faf46db8a3d:   hlt    
             0x00007faf46db8a3e:   hlt    
             0x00007faf46db8a3f:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <task_queued compile_id='1068' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='110' backedge_count='111767' iicount='110' level='3' stamp='11.368' comment='tiered' hot_count='110'/>
           <nmethod compile_id='1068' compiler='c1' level='3' entry='0x00007faf3f8c2ec0' size='1952' address='0x00007faf3f8c2d10' relocation_offset='344' insts_offset='432' stub_offset='1432' scopes_data_offset='1504' scopes_pcs_offset='1656' dependencies_offset='1928' nul_chk_table_offset='1936' metadata_offset='1496' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='112' backedge_count='114202' iicount='112' stamp='11.369'/>
           <print_nmethod compile_id='1068' compiler='c1' level='3' stamp='11.369'>
....................................................................................................
  21.36%  <total for region 3>

....[Hottest Regions]...............................................................................
  42.08%                      <unknown> 
  33.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1098 
  21.36%                      <unknown> 
   0.31%              kernel  [unknown] 
   0.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1098 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.15%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1129 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.53%  <...other 465 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.64%                      <unknown> 
  33.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1098 
   1.67%              kernel  [unknown] 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1129 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.44%  <...other 144 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  63.64%                    
  33.83%      jvmci, level 4
   1.67%              kernel
   0.48%           libjvm.so
   0.28%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/PKCS5Padding)

# Run progress: 58.33% complete, ETA 00:09:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.923 us/op
# Warmup Iteration   2: 21.295 us/op
# Warmup Iteration   3: 21.639 us/op
# Warmup Iteration   4: 21.221 us/op
# Warmup Iteration   5: 21.509 us/op
Iteration   1: 21.231 us/op
Iteration   2: 21.313 us/op
Iteration   3: 21.259 us/op
Iteration   4: 21.589 us/op
Iteration   5: 21.743 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  21.427 ±(99.9%) 0.873 us/op [Average]
  (min, avg, max) = (21.231, 21.427, 21.743), stdev = 0.227
  CI (99.9%): [20.554, 22.300] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 258442 total address lines.
Perf output processed (skipped 61.660 seconds):
 Column 1: cycles (50608 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 

                                                                           ; - java.util.Arrays::fill@5 (line 3287)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 0x00007f820f253925:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f820f253930:   data16 data16 xchg %ax,%ax
                 0x00007f820f253934:   nopl   0x0(%rax,%rax,1)
                 0x00007f820f25393c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@7 (line 3287)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  ↗      0x00007f820f253940:   movb   $0x0,0x10(%r9,%rsi,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.Arrays::fill@13 (line 3288)
          │                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          │                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │      0x00007f820f253946:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.Arrays::fill@14 (line 3287)
          │                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          │                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │      0x00007f820f253948:   cmp    %esi,%eax
          ╰      0x00007f820f25394a:   jg     0x00007f820f253940
                 0x00007f820f25394c:   mov    %esi,%eax
                 0x00007f820f25394e:   mov    0x20(%rsp),%esi
           ╭     0x00007f820f253952:   jmp    0x00007f820f2539c6
           │     0x00007f820f253957:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.Arrays::fill@7 (line 3287)
           │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
           │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │↗    0x00007f820f253960:   movb   $0x0,0x10(%r9,%rax,1)
   1.79%   ││    0x00007f820f253966:   movslq %eax,%rdx
   0.00%   ││    0x00007f820f253969:   movb   $0x0,0x11(%r9,%rdx,1)
   2.59%   ││    0x00007f820f25396f:   movb   $0x0,0x12(%r9,%rdx,1)
   2.21%   ││    0x00007f820f253975:   movb   $0x0,0x13(%r9,%rdx,1)
   1.78%   ││    0x00007f820f25397b:   movb   $0x0,0x14(%r9,%rdx,1)
   1.38%   ││    0x00007f820f253981:   movb   $0x0,0x15(%r9,%rdx,1)
   1.68%   ││    0x00007f820f253987:   movb   $0x0,0x16(%r9,%rdx,1)
   1.79%   ││    0x00007f820f25398d:   movb   $0x0,0x17(%r9,%rdx,1)
   1.89%   ││    0x00007f820f253993:   movb   $0x0,0x18(%r9,%rdx,1)
   1.84%   ││    0x00007f820f253999:   movb   $0x0,0x19(%r9,%rdx,1)
   1.81%   ││    0x00007f820f25399f:   movb   $0x0,0x1a(%r9,%rdx,1)
   2.33%   ││    0x00007f820f2539a5:   movb   $0x0,0x1b(%r9,%rdx,1)
   1.81%   ││    0x00007f820f2539ab:   movb   $0x0,0x1c(%r9,%rdx,1)
   1.73%   ││    0x00007f820f2539b1:   movb   $0x0,0x1d(%r9,%rdx,1)
   1.29%   ││    0x00007f820f2539b7:   movb   $0x0,0x1e(%r9,%rdx,1)
   1.75%   ││    0x00007f820f2539bd:   movb   $0x0,0x1f(%r9,%rdx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - java.util.Arrays::fill@13 (line 3288)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.72%   ││    0x00007f820f2539c3:   lea    0x10(%rax),%eax              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - java.util.Arrays::fill@14 (line 3287)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ↘│    0x00007f820f2539c6:   cmp    %eax,%esi                    ;   {no_reloc}
            ╰    0x00007f820f2539c8:   jg     0x00007f820f253960
             ╭   0x00007f820f2539ca:   jmp    0x00007f820f2539f0
             │   0x00007f820f2539cf:   data16 data16 nopw 0x0(%rax,%rax,1)
             │   0x00007f820f2539da:   data16 data16 xchg %ax,%ax
             │   0x00007f820f2539de:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.Arrays::fill@7 (line 3287)
             │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
             │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%     │↗  0x00007f820f2539e0:   movb   $0x0,0x10(%r9,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.Arrays::fill@13 (line 3288)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%     ││  0x00007f820f2539e6:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.Arrays::fill@14 (line 3287)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             ││  0x00007f820f2539e8:   nopl   0x0(%rax,%rax,1)
   0.01%     ↘│  0x00007f820f2539f0:   cmp    %eax,%r11d
              ╰  0x00007f820f2539f3:   jg     0x00007f820f2539e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@7 (line 3287)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%         0x00007f820f2539f5:   mov    0x24(%rsp),%ebx              ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@20 (line 3289)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%         0x00007f820f2539f9:   nopl   0x0(%rax)
                 0x00007f820f253a00:   test   %ebx,%ebx
                 0x00007f820f253a02:   jne    0x00007f820f253d14           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.00%         0x00007f820f253a08:   mov    0x38(%rsp),%eax
   0.00%         0x00007f820f253a0c:   cmp    %r11d,%eax
                 0x00007f820f253a0f:   jg     0x00007f820f253dfd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@75 (line 738)
                 0x00007f820f253a15:   mov    0x3c(%rsp),%ebp
   0.00%         0x00007f820f253a19:   mov    0x18(%rsp),%rsi
                 0x00007f820f253a1e:   movl   $0x0,0x14(%rsi)              ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.01%         0x00007f820f253a25:   mov    %ebp,0x1c(%rsi)              ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.01%         0x00007f820f253a28:   mov    %r8,%rax                     ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@105 (line 746)
                 0x00007f820f253a2b:   mov    0x50(%rsp),%rbp
                 0x00007f820f253a30:   add    $0x58,%rsp
                 0x00007f820f253a34:   nopl   0x0(%rax,%rax,1)
   0.01%         0x00007f820f253a3c:   data16 data16 xchg %ax,%ax
                 0x00007f820f253a40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007f820f253a47:   ja     0x00007f820f253e37
                 0x00007f820f253a4d:   vzeroupper 
                 0x00007f820f253a50:   ret    
                 0x00007f820f253a51:   mov    0x30(%rsp),%r11d
                 0x00007f820f253a56:   jmp    0x00007f820f253909           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@13 (line 3288)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%         0x00007f820f253a5b:   mov    0x28(%rsp),%r13
                 0x00007f820f253a60:   mov    %ebp,%eax
   0.00%         0x00007f820f253a62:   sub    %r8d,%eax
                 0x00007f820f253a65:   movslq %eax,%rax
                 0x00007f820f253a68:   mov    %r8d,%edx
                 0x00007f820f253a6b:   add    %rdx,%rax
                 0x00007f820f253a6e:   dec    %rax
   0.00%         0x00007f820f253a71:   cmp    %rax,%r13
                 0x00007f820f253a74:   jbe    0x00007f820f253cae
                 0x00007f820f253a7a:   nopw   0x0(%rax,%rax,1)
                 0x00007f820f253a80:   cmp    %r8d,%ebp
                 0x00007f820f253a83:   ja     0x00007f820f25369f
                 0x00007f820f253a89:   jmp    0x00007f820f253cf4           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@20 (line 3311)
                                                                           ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                           ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                 0x00007f820f253a8e:   mov    (%rsp),%r9
....................................................................................................
  29.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

          </deoptimized>
          <deoptimized thread='2103955' reason='constraint' pc='0x00007f82078b8dcb' compile_id='1070' compiler='c1' level='3'>
          <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='64' backedge_count='921076' iicount='64'/>
          </deoptimized>
          <deoptimized thread='2103955' reason='constraint' pc='0x00007f82078b8dcb' compile_id='1070' compiler='c1' level='3'>
          <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='65' backedge_count='929268' iicount='65'/>
          </deoptimized>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007f820edc0890
          --------------------------------------------------------------------------------
   1.70%    0x00007f820edc0920:   sub    $0x18,%rsp
   0.02%    0x00007f820edc0924:   mov    -0x4(%rcx),%r10d
   1.35%    0x00007f820edc0928:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f820edc0900
   0.43%    0x00007f820edc0930:   vmovdqu (%rsi),%xmm0
   0.10%    0x00007f820edc0934:   vmovdqu (%rcx),%xmm2
   0.01%    0x00007f820edc0938:   vpshufb %xmm1,%xmm2,%xmm2
   1.36%    0x00007f820edc093d:   vpxor  %xmm2,%xmm0,%xmm0
   0.49%    0x00007f820edc0941:   vmovdqu 0x10(%rcx),%xmm2
   0.00%    0x00007f820edc0946:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007f820edc094b:   vmovdqu 0x20(%rcx),%xmm3
   1.44%    0x00007f820edc0950:   vpshufb %xmm1,%xmm3,%xmm3
   0.41%    0x00007f820edc0955:   vmovdqu 0x30(%rcx),%xmm4
   0.01%    0x00007f820edc095a:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%    0x00007f820edc095f:   vmovdqu 0x40(%rcx),%xmm5
   1.44%    0x00007f820edc0964:   vpshufb %xmm1,%xmm5,%xmm5
   0.49%    0x00007f820edc0969:   vaesenc %xmm2,%xmm0,%xmm0
   0.03%    0x00007f820edc096e:   vaesenc %xmm3,%xmm0,%xmm0
   0.04%    0x00007f820edc0973:   vaesenc %xmm4,%xmm0,%xmm0
   1.40%    0x00007f820edc0978:   vaesenc %xmm5,%xmm0,%xmm0
   0.53%    0x00007f820edc097d:   vmovdqu 0x50(%rcx),%xmm2
   0.00%    0x00007f820edc0982:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f820edc0987:   vmovdqu 0x60(%rcx),%xmm3
   1.44%    0x00007f820edc098c:   vpshufb %xmm1,%xmm3,%xmm3
   0.41%    0x00007f820edc0991:   vmovdqu 0x70(%rcx),%xmm4
   0.01%    0x00007f820edc0996:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%    0x00007f820edc099b:   vmovdqu 0x80(%rcx),%xmm5
   1.39%    0x00007f820edc09a3:   vpshufb %xmm1,%xmm5,%xmm5
   0.38%    0x00007f820edc09a8:   vaesenc %xmm2,%xmm0,%xmm0
   0.09%    0x00007f820edc09ad:   vaesenc %xmm3,%xmm0,%xmm0
   0.77%    0x00007f820edc09b2:   vaesenc %xmm4,%xmm0,%xmm0
   3.66%    0x00007f820edc09b7:   vaesenc %xmm5,%xmm0,%xmm0
   7.29%    0x00007f820edc09bc:   vmovdqu 0x90(%rcx),%xmm2
   0.00%    0x00007f820edc09c4:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007f820edc09c9:   vmovdqu 0xa0(%rcx),%xmm3
   0.03%    0x00007f820edc09d1:   vpshufb %xmm1,%xmm3,%xmm3
   1.77%    0x00007f820edc09d6:   cmp    $0x2c,%r10d
            0x00007f820edc09da:   je     0x00007f820edc0a2a
            0x00007f820edc09dc:   vaesenc %xmm2,%xmm0,%xmm0
            0x00007f820edc09e1:   vaesenc %xmm3,%xmm0,%xmm0
            0x00007f820edc09e6:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007f820edc09ee:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f820edc09f3:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007f820edc09fb:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f820edc0a00:   cmp    $0x34,%r10d
            0x00007f820edc0a04:   je     0x00007f820edc0a2a
            0x00007f820edc0a06:   vaesenc %xmm2,%xmm0,%xmm0
....................................................................................................
  28.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 

             0x00007f820f253850:   data16 data16 xchg %ax,%ax
             0x00007f820f253854:   nopl   0x0(%rax,%rax,1)
             0x00007f820f25385c:   data16 data16 xchg %ax,%ax          ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ;   {no_reloc}
   0.00%  ↗  0x00007f820f253860:   test   %ecx,%ecx
          │  0x00007f820f253862:   jl     0x00007f820f253bb4
   0.00%  │  0x00007f820f253868:   cmp    %edi,%ecx
          │  0x00007f820f25386a:   jg     0x00007f820f253bb4
   0.01%  │  0x00007f820f253870:   test   %edx,%edx
          │  0x00007f820f253872:   jl     0x00007f820f253bb4
   1.80%  │  0x00007f820f253878:   nopl   0x0(%rax,%rax,1)
   0.00%  │  0x00007f820f253880:   cmp    %r10d,%edx
          │  0x00007f820f253883:   jg     0x00007f820f253bb4
   0.01%  │  0x00007f820f253889:   mov    %r9,%rax
   0.01%  │  0x00007f820f25388c:   mov    %r8,%rbx
   1.73%  │  0x00007f820f25388f:   mov    %r14,%r11
   0.00%  │  0x00007f820f253892:   mov    %ecx,%ebp
   0.00%  │  0x00007f820f253894:   lea    0x10(%rbp),%rbp
   0.01%  │  0x00007f820f253898:   add    %rax,%rbp
   1.87%  │  0x00007f820f25389b:   mov    %edx,%eax
          │  0x00007f820f25389d:   lea    0x10(%rax),%rax
   0.01%  │  0x00007f820f2538a1:   add    %rbx,%rax
   0.00%  │  0x00007f820f2538a4:   lea    0x10(%r11),%r11
   1.81%  │  0x00007f820f2538a8:   mov    %esi,%ebx
   0.00%  │  0x00007f820f2538aa:   mov    %rbp,%rsi
   0.01%  │  0x00007f820f2538ad:   mov    %edx,%ebp
   0.00%  │  0x00007f820f2538af:   mov    %rax,%rdx
   1.73%  │  0x00007f820f2538b2:   mov    %ecx,%eax
   0.00%  │  0x00007f820f2538b4:   mov    %r11,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f820f2538b7:   mov    %r10d,%r11d
   0.01%  │  0x00007f820f2538ba:   call   0x00007f820edc0920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.01%  │  0x00007f820f2538bf:   nop
   0.01%  │  0x00007f820f2538c0:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r8=Oop r9=Oop r14=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::encryptBlock@9 (line 1082)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.85%  │  0x00007f820f2538c7:   test   %eax,(%rsi)                  ;   {poll}
   0.00%  │  0x00007f820f2538c9:   mov    %ebx,%esi
   0.01%  │  0x00007f820f2538cb:   sub    %r13d,%esi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │  0x00007f820f2538ce:   mov    %ebp,%edx
   1.81%  │  0x00007f820f2538d0:   add    %r13d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  0x00007f820f2538d3:   mov    %eax,%ecx
   0.01%  │  0x00007f820f2538d5:   add    %r13d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │  0x00007f820f2538d8:   mov    %r11d,%r10d                  ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.89%  │  0x00007f820f2538db:   cmp    %esi,%r13d
          ╰  0x00007f820f2538de:   jle    0x00007f820f253860           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f820f2538e0:   cmpl   $0x1,0x30(%rsp)
             0x00007f820f2538e5:   jl     0x00007f820f253ba6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::fill@7 (line 3287)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f820f2538eb:   cmpl   $0x2,0x30(%rsp)
   0.01%     0x00007f820f2538f0:   jl     0x00007f820f253a51
   0.01%     0x00007f820f2538f6:   mov    0x30(%rsp),%r11d
             0x00007f820f2538fb:   mov    %r11d,%ebp
             0x00007f820f2538fe:   dec    %ebp
   0.00%     0x00007f820f253900:   cmp    %ebp,%r11d
             0x00007f820f253903:   jbe    0x00007f820f253d8e
             0x00007f820f253909:   movb   $0x0,0x10(%r9)               ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::fill@13 (line 3288)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f820f25390e:   cmp    $0x3,%r11d
             0x00007f820f253912:   mov    $0x2,%eax
             0x00007f820f253917:   cmovl  %r11d,%eax
             0x00007f820f25391b:   mov    $0x1,%esi
             0x00007f820f253920:   jmp    0x00007f820f253948           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.66%  <total for region 3>

....[Hottest Region 4]..............................................................................
, <unknown> 

             0x00007f820edc09f3:   vmovdqu 0xc0(%rcx),%xmm3
             0x00007f820edc09fb:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007f820edc0a00:   cmp    $0x34,%r10d
          ╭  0x00007f820edc0a04:   je     0x00007f820edc0a2a
          │  0x00007f820edc0a06:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007f820edc0a0b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007f820edc0a10:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f820edc0a18:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f820edc0a1d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f820edc0a25:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%  ↘  0x00007f820edc0a2a:   vaesenc %xmm2,%xmm0,%xmm0
   5.24%     0x00007f820edc0a2f:   vaesenclast %xmm3,%xmm0,%xmm0
   6.86%     0x00007f820edc0a34:   vmovdqu %xmm0,(%rdx)
   1.80%     0x00007f820edc0a38:   add    $0x18,%rsp
   0.00%     0x00007f820edc0a3c:   ret    
             0x00007f820edc0a3d:   hlt    
             0x00007f820edc0a3e:   hlt    
             0x00007f820edc0a3f:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <task_queued compile_id='1074' compile_kind='osr' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='59' backedge_count='60416' iicount='59' osr_bci='3' level='3' stamp='11.254' comment='tiered' hot_count='60416'/>
           <deoptimized thread='2103955' reason='constraint' pc='0x00007f82078b8dcb' compile_id='1070' compiler='c1' level='3'>
           <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='66' backedge_count='937460' iicount='66'/>
....................................................................................................
  13.91%  <total for region 4>

....[Hottest Regions]...............................................................................
  29.54%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
  28.53%                      <unknown> 
  14.66%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
  13.91%                      <unknown> 
   3.74%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
   3.46%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
   2.85%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.22%        libc-2.31.so  __memset_avx2_erms 
   0.15%              kernel  [unknown] 
   0.12%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1113 
   0.08%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
   0.07%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
   0.07%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
   0.06%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1136 
   0.04%              kernel  [unknown] 
   2.07%  <...other 490 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.85%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1111 
  42.52%                      <unknown> 
   2.85%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.52%              kernel  [unknown] 
   0.22%        libc-2.31.so  __memset_avx2_erms 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1113 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1136 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  Klass::check_array_allocation_length 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.60%  <...other 160 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  52.03%      jvmci, level 4
  42.52%                    
   2.85%        runtime stub
   1.52%              kernel
   0.58%           libjvm.so
   0.37%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.04%      hsdis-amd64.so
   0.02%         interpreter
   0.02%              [vdso]
   0.01%          ld-2.31.so
   0.00%    perf-2103920.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/NoPadding)

# Run progress: 66.67% complete, ETA 00:07:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.849 us/op
# Warmup Iteration   2: 13.395 us/op
# Warmup Iteration   3: 13.435 us/op
# Warmup Iteration   4: 13.350 us/op
# Warmup Iteration   5: 13.346 us/op
Iteration   1: 13.321 us/op
Iteration   2: 13.369 us/op
Iteration   3: 13.349 us/op
Iteration   4: 13.365 us/op
Iteration   5: 13.348 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  13.351 ±(99.9%) 0.073 us/op [Average]
  (min, avg, max) = (13.321, 13.351, 13.369), stdev = 0.019
  CI (99.9%): [13.277, 13.424] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 258929 total address lines.
Perf output processed (skipped 61.745 seconds):
 Column 1: cycles (50808 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007f6d3edb8890
            --------------------------------------------------------------------------------
   0.03%      0x00007f6d3edb8920:   sub    $0x18,%rsp
   2.66%      0x00007f6d3edb8924:   mov    -0x4(%rcx),%r10d
   0.06%      0x00007f6d3edb8928:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f6d3edb8900
   0.01%      0x00007f6d3edb8930:   vmovdqu (%rsi),%xmm0
   0.11%      0x00007f6d3edb8934:   vmovdqu (%rcx),%xmm2
   2.80%      0x00007f6d3edb8938:   vpshufb %xmm1,%xmm2,%xmm2
   0.07%      0x00007f6d3edb893d:   vpxor  %xmm2,%xmm0,%xmm0
   0.04%      0x00007f6d3edb8941:   vmovdqu 0x10(%rcx),%xmm2
   0.06%      0x00007f6d3edb8946:   vpshufb %xmm1,%xmm2,%xmm2
   2.88%      0x00007f6d3edb894b:   vmovdqu 0x20(%rcx),%xmm3
   0.08%      0x00007f6d3edb8950:   vpshufb %xmm1,%xmm3,%xmm3
   0.03%      0x00007f6d3edb8955:   vmovdqu 0x30(%rcx),%xmm4
   0.05%      0x00007f6d3edb895a:   vpshufb %xmm1,%xmm4,%xmm4
   2.76%      0x00007f6d3edb895f:   vmovdqu 0x40(%rcx),%xmm5
   0.05%      0x00007f6d3edb8964:   vpshufb %xmm1,%xmm5,%xmm5
   0.02%      0x00007f6d3edb8969:   vaesenc %xmm2,%xmm0,%xmm0
   0.04%      0x00007f6d3edb896e:   vaesenc %xmm3,%xmm0,%xmm0
   2.97%      0x00007f6d3edb8973:   vaesenc %xmm4,%xmm0,%xmm0
   0.07%      0x00007f6d3edb8978:   vaesenc %xmm5,%xmm0,%xmm0
   0.05%      0x00007f6d3edb897d:   vmovdqu 0x50(%rcx),%xmm2
   0.05%      0x00007f6d3edb8982:   vpshufb %xmm1,%xmm2,%xmm2
   2.86%      0x00007f6d3edb8987:   vmovdqu 0x60(%rcx),%xmm3
   0.06%      0x00007f6d3edb898c:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%      0x00007f6d3edb8991:   vmovdqu 0x70(%rcx),%xmm4
   0.05%      0x00007f6d3edb8996:   vpshufb %xmm1,%xmm4,%xmm4
   2.83%      0x00007f6d3edb899b:   vmovdqu 0x80(%rcx),%xmm5
   0.05%      0x00007f6d3edb89a3:   vpshufb %xmm1,%xmm5,%xmm5
   0.02%      0x00007f6d3edb89a8:   vaesenc %xmm2,%xmm0,%xmm0
   0.09%      0x00007f6d3edb89ad:   vaesenc %xmm3,%xmm0,%xmm0
   3.06%      0x00007f6d3edb89b2:   vaesenc %xmm4,%xmm0,%xmm0
   0.53%      0x00007f6d3edb89b7:   vaesenc %xmm5,%xmm0,%xmm0
   2.43%      0x00007f6d3edb89bc:   vmovdqu 0x90(%rcx),%xmm2
   0.07%      0x00007f6d3edb89c4:   vpshufb %xmm1,%xmm2,%xmm2
   1.95%      0x00007f6d3edb89c9:   vmovdqu 0xa0(%rcx),%xmm3
   0.04%      0x00007f6d3edb89d1:   vpshufb %xmm1,%xmm3,%xmm3
   0.79%      0x00007f6d3edb89d6:   cmp    $0x2c,%r10d
          ╭   0x00007f6d3edb89da:   je     0x00007f6d3edb8a2a
   0.04%  │   0x00007f6d3edb89dc:   vaesenc %xmm2,%xmm0,%xmm0
   4.78%  │   0x00007f6d3edb89e1:   vaesenc %xmm3,%xmm0,%xmm0
   6.66%  │   0x00007f6d3edb89e6:   vmovdqu 0xb0(%rcx),%xmm2
   0.02%  │   0x00007f6d3edb89ee:   vpshufb %xmm1,%xmm2,%xmm2
   0.02%  │   0x00007f6d3edb89f3:   vmovdqu 0xc0(%rcx),%xmm3
   0.69%  │   0x00007f6d3edb89fb:   vpshufb %xmm1,%xmm3,%xmm3
   2.17%  │   0x00007f6d3edb8a00:   cmp    $0x34,%r10d
          │╭  0x00007f6d3edb8a04:   je     0x00007f6d3edb8a2a
          ││  0x00007f6d3edb8a06:   vaesenc %xmm2,%xmm0,%xmm0
          ││  0x00007f6d3edb8a0b:   vaesenc %xmm3,%xmm0,%xmm0
          ││  0x00007f6d3edb8a10:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f6d3edb8a18:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f6d3edb8a1d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007f6d3edb8a25:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%  ↘↘  0x00007f6d3edb8a2a:   vaesenc %xmm2,%xmm0,%xmm0
   7.08%      0x00007f6d3edb8a2f:   vaesenclast %xmm3,%xmm0,%xmm0
  11.26%      0x00007f6d3edb8a34:   vmovdqu %xmm0,(%rdx)
....................................................................................................
  44.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1095 

              0x00007f6d3f253d28:   lea    0x8(%r10),%r10
              0x00007f6d3f253d2c:   cmp    %r10,%rsi
              0x00007f6d3f253d2f:   ja     0x00007f6d3f253d20
              0x00007f6d3f253d31:   mov    %rdx,%rax                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007f6d3f253d34:   shl    $0x3,%r9                     ;*getfield encryptCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@1 (line 108)
   0.00%      0x00007f6d3f253d38:   mov    %r9,0x10(%rsp)
   0.00%      0x00007f6d3f253d3d:   shl    $0x3,%r11                    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@5 (line 108)
              0x00007f6d3f253d41:   mov    %ebx,%r10d
              0x00007f6d3f253d44:   shl    $0x3,%r10                    ;*getfield core {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@1 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007f6d3f253d48:   mov    %r10,0x8(%rsp)
   0.00%      0x00007f6d3f253d4d:   shl    $0x3,%rcx                    ;* unwind (locked if synchronized)
                                                                        ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
                                                                        ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007f6d3f253d51:   shl    $0x3,%r14                    ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007f6d3f253d55:   mov    %r14,(%rsp)
   0.00%      0x00007f6d3f253d59:   lea    -0x10(%r8),%edx
              0x00007f6d3f253d5d:   lea    -0x10(%r8),%esi              ;* unwind (locked if synchronized)
                                                                        ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
                                                                        ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007f6d3f253d61:   mov    %r8d,%r14d
              0x00007f6d3f253d64:   mov    $0x0,%r9d
   0.00%      0x00007f6d3f253d6a:   mov    $0x0,%r10d
          ╭   0x00007f6d3f253d70:   jmp    0x00007f6d3f253e03           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │   0x00007f6d3f253d75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  │↗  0x00007f6d3f253d80:   test   %r10d,%r10d
          ││  0x00007f6d3f253d83:   jl     0x00007f6d3f253e95
   0.01%  ││  0x00007f6d3f253d89:   cmp    %esi,%r10d
          ││  0x00007f6d3f253d8c:   jg     0x00007f6d3f253e95
   0.06%  ││  0x00007f6d3f253d92:   test   %r9d,%r9d
          ││  0x00007f6d3f253d95:   jl     0x00007f6d3f253e95
   2.56%  ││  0x00007f6d3f253d9b:   nopl   0x0(%rax,%rax,1)
   0.01%  ││  0x00007f6d3f253da0:   cmp    %edx,%r9d
          ││  0x00007f6d3f253da3:   jg     0x00007f6d3f253e95
   0.02%  ││  0x00007f6d3f253da9:   mov    %r11,%r8
   0.06%  ││  0x00007f6d3f253dac:   mov    %rax,%rbp
   2.75%  ││  0x00007f6d3f253daf:   mov    %rcx,%rbx
   0.00%  ││  0x00007f6d3f253db2:   mov    %r10d,%r13d
   0.03%  ││  0x00007f6d3f253db5:   lea    0x10(%r13),%r13
   0.05%  ││  0x00007f6d3f253db9:   add    %r8,%r13
   2.95%  ││  0x00007f6d3f253dbc:   mov    %r9d,%r8d
   0.02%  ││  0x00007f6d3f253dbf:   lea    0x10(%r8),%r8
   0.02%  ││  0x00007f6d3f253dc3:   add    %rbp,%r8
   0.05%  ││  0x00007f6d3f253dc6:   lea    0x10(%rbx),%rbx
   2.78%  ││  0x00007f6d3f253dca:   mov    %esi,%ebp
   0.01%  ││  0x00007f6d3f253dcc:   mov    %r13,%rsi
   0.02%  ││  0x00007f6d3f253dcf:   mov    %edx,%r13d
   0.04%  ││  0x00007f6d3f253dd2:   mov    %r8,%rdx
   2.98%  ││  0x00007f6d3f253dd5:   mov    %rcx,%r8
   0.01%  ││  0x00007f6d3f253dd8:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
          ││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          ││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  ││  0x00007f6d3f253ddb:   mov    %r10d,%ebx
   0.06%  ││  0x00007f6d3f253dde:   xchg   %ax,%ax                      ;   {no_reloc}
   2.84%  ││  0x00007f6d3f253de0:   call   0x00007f6d3edb8920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.01%  ││  0x00007f6d3f253de5:   nop
   0.06%  ││  0x00007f6d3f253de6:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rax=Oop r8=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
          ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::encryptBlock@9 (line 1082)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.81%  ││  0x00007f6d3f253ded:   test   %eax,(%rsi)                  ;   {poll}
   0.02%  ││  0x00007f6d3f253def:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.02%  ││  0x00007f6d3f253df2:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.05%  ││  0x00007f6d3f253df5:   mov    %ebx,%r10d
   2.93%  ││  0x00007f6d3f253df8:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  ││  0x00007f6d3f253dfb:   mov    %ebp,%esi
   0.01%  ││  0x00007f6d3f253dfd:   mov    %r13d,%edx
   0.06%  ││  0x00007f6d3f253e00:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.90%  ↘│  0x00007f6d3f253e03:   cmp    %r14d,%edi
           ╰  0x00007f6d3f253e06:   jle    0x00007f6d3f253d80           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007f6d3f253e0c:   mov    0x1c(%rsp),%r13d
              0x00007f6d3f253e11:   test   %r13d,%r13d
              0x00007f6d3f253e14:   jne    0x00007f6d3f253f77           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007f6d3f253e1a:   mov    0x20(%rsp),%ebp
              0x00007f6d3f253e1e:   mov    0x18(%rsp),%ebx
              0x00007f6d3f253e22:   movl   $0x0,0x14(,%rbx,8)           ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%      0x00007f6d3f253e2d:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
....................................................................................................
  26.22%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

   0.02%     0x00007f6d3edb89f3:   vmovdqu 0xc0(%rcx),%xmm3
   0.69%     0x00007f6d3edb89fb:   vpshufb %xmm1,%xmm3,%xmm3
   2.17%     0x00007f6d3edb8a00:   cmp    $0x34,%r10d
          ╭  0x00007f6d3edb8a04:   je     0x00007f6d3edb8a2a
          │  0x00007f6d3edb8a06:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007f6d3edb8a0b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007f6d3edb8a10:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f6d3edb8a18:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f6d3edb8a1d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f6d3edb8a25:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%  ↘  0x00007f6d3edb8a2a:   vaesenc %xmm2,%xmm0,%xmm0
   7.08%     0x00007f6d3edb8a2f:   vaesenclast %xmm3,%xmm0,%xmm0
  11.26%     0x00007f6d3edb8a34:   vmovdqu %xmm0,(%rdx)
   2.79%     0x00007f6d3edb8a38:   add    $0x18,%rsp
   0.00%     0x00007f6d3edb8a3c:   ret    
             0x00007f6d3edb8a3d:   hlt    
             0x00007f6d3edb8a3e:   hlt    
             0x00007f6d3edb8a3f:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <task_queued compile_id='1069' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='107' backedge_count='108688' iicount='107' level='3' stamp='11.389' comment='tiered' hot_count='107'/>
           <nmethod compile_id='1067' compiler='jvmci' level='4' entry='0x00007f6d3f24fe00' size='976' address='0x00007f6d3f24fc90' relocation_offset='344' insts_offset='368' stub_offset='707' scopes_data_offset='728' scopes_pcs_offset='768' dependencies_offset='912' nul_chk_table_offset='920' metadata_offset='712' method='com.sun.crypto.provider.AESCrypt encryptBlock ([BI[BI)V' bytes='10' count='110721' iicount='110722' stamp='11.389'/>
           <make_not_entrant thread='2104006' compile_id='1060' compiler='c1' level='3' stamp='11.389'/>
....................................................................................................
  21.14%  <total for region 3>

....[Hottest Regions]...............................................................................
  44.11%                      <unknown> 
  26.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1095 
  21.14%                      <unknown> 
   5.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1095 
   0.18%        libc-2.31.so  __memset_avx2_erms 
   0.16%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1095 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1122 
   0.06%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1095 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1095 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   1.61%  <...other 483 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.41%                      <unknown> 
  32.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1095 
   1.50%              kernel  [unknown] 
   0.18%        libc-2.31.so  __memset_avx2_erms 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1122 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  JVMCIRuntime::new_array_common 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  FreeListAllocator::reset 
   0.01%           libjvm.so  TruncatedSeq::add 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.46%  <...other 151 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  65.41%                    
  32.21%      jvmci, level 4
   1.50%              kernel
   0.48%           libjvm.so
   0.34%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/PKCS5Padding)

# Run progress: 75.00% complete, ETA 00:05:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.075 us/op
# Warmup Iteration   2: 22.790 us/op
# Warmup Iteration   3: 22.740 us/op
# Warmup Iteration   4: 22.697 us/op
# Warmup Iteration   5: 22.598 us/op
Iteration   1: 22.846 us/op
Iteration   2: 22.785 us/op
Iteration   3: 22.881 us/op
Iteration   4: 22.629 us/op
Iteration   5: 22.745 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  22.777 ±(99.9%) 0.378 us/op [Average]
  (min, avg, max) = (22.629, 22.777, 22.881), stdev = 0.098
  CI (99.9%): [22.399, 23.155] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 259684 total address lines.
Perf output processed (skipped 61.776 seconds):
 Column 1: cycles (50801 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            </deoptimized>
            <deoptimized thread='2104085' reason='constraint' pc='0x00007f57278bde4b' compile_id='1063' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='40' backedge_count='511435' iicount='40'/>
            </deoptimized>
            <deoptimized thread='2104085' reason='constraint' pc='0x00007f57278bde4b' compile_id='1063' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='41' backedge_count='519627' iicount='41'/>
            </deoptimized>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007f572edbda90
            --------------------------------------------------------------------------------
   1.73%      0x00007f572edbdb20:   sub    $0x18,%rsp
              0x00007f572edbdb24:   mov    -0x4(%rcx),%r10d
   1.16%      0x00007f572edbdb28:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f572edbdb00
   0.50%      0x00007f572edbdb30:   vmovdqu (%rsi),%xmm0
   0.06%      0x00007f572edbdb34:   vmovdqu (%rcx),%xmm2
              0x00007f572edbdb38:   vpshufb %xmm1,%xmm2,%xmm2
   1.21%      0x00007f572edbdb3d:   vpxor  %xmm2,%xmm0,%xmm0
   0.48%      0x00007f572edbdb41:   vmovdqu 0x10(%rcx),%xmm2
   0.00%      0x00007f572edbdb46:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f572edbdb4b:   vmovdqu 0x20(%rcx),%xmm3
   1.20%      0x00007f572edbdb50:   vpshufb %xmm1,%xmm3,%xmm3
   0.43%      0x00007f572edbdb55:   vmovdqu 0x30(%rcx),%xmm4
   0.00%      0x00007f572edbdb5a:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007f572edbdb5f:   vmovdqu 0x40(%rcx),%xmm5
   1.19%      0x00007f572edbdb64:   vpshufb %xmm1,%xmm5,%xmm5
   0.50%      0x00007f572edbdb69:   vaesenc %xmm2,%xmm0,%xmm0
   0.01%      0x00007f572edbdb6e:   vaesenc %xmm3,%xmm0,%xmm0
   0.01%      0x00007f572edbdb73:   vaesenc %xmm4,%xmm0,%xmm0
   1.29%      0x00007f572edbdb78:   vaesenc %xmm5,%xmm0,%xmm0
   0.47%      0x00007f572edbdb7d:   vmovdqu 0x50(%rcx),%xmm2
              0x00007f572edbdb82:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f572edbdb87:   vmovdqu 0x60(%rcx),%xmm3
   1.24%      0x00007f572edbdb8c:   vpshufb %xmm1,%xmm3,%xmm3
   0.50%      0x00007f572edbdb91:   vmovdqu 0x70(%rcx),%xmm4
   0.00%      0x00007f572edbdb96:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%      0x00007f572edbdb9b:   vmovdqu 0x80(%rcx),%xmm5
   1.19%      0x00007f572edbdba3:   vpshufb %xmm1,%xmm5,%xmm5
   0.52%      0x00007f572edbdba8:   vaesenc %xmm2,%xmm0,%xmm0
   0.03%      0x00007f572edbdbad:   vaesenc %xmm3,%xmm0,%xmm0
   0.04%      0x00007f572edbdbb2:   vaesenc %xmm4,%xmm0,%xmm0
   1.32%      0x00007f572edbdbb7:   vaesenc %xmm5,%xmm0,%xmm0
   3.14%      0x00007f572edbdbbc:   vmovdqu 0x90(%rcx),%xmm2
   0.00%      0x00007f572edbdbc4:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f572edbdbc9:   vmovdqu 0xa0(%rcx),%xmm3
   0.29%      0x00007f572edbdbd1:   vpshufb %xmm1,%xmm3,%xmm3
   1.41%      0x00007f572edbdbd6:   cmp    $0x2c,%r10d
          ╭   0x00007f572edbdbda:   je     0x00007f572edbdc2a
          │   0x00007f572edbdbdc:   vaesenc %xmm2,%xmm0,%xmm0
   4.35%  │   0x00007f572edbdbe1:   vaesenc %xmm3,%xmm0,%xmm0
   6.81%  │   0x00007f572edbdbe6:   vmovdqu 0xb0(%rcx),%xmm2
   0.00%  │   0x00007f572edbdbee:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007f572edbdbf3:   vmovdqu 0xc0(%rcx),%xmm3
   0.00%  │   0x00007f572edbdbfb:   vpshufb %xmm1,%xmm3,%xmm3
   1.63%  │   0x00007f572edbdc00:   cmp    $0x34,%r10d
          │╭  0x00007f572edbdc04:   je     0x00007f572edbdc2a
          ││  0x00007f572edbdc06:   vaesenc %xmm2,%xmm0,%xmm0
          ││  0x00007f572edbdc0b:   vaesenc %xmm3,%xmm0,%xmm0
          ││  0x00007f572edbdc10:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f572edbdc18:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f572edbdc1d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007f572edbdc25:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%  ↘↘  0x00007f572edbdc2a:   vaesenc %xmm2,%xmm0,%xmm0
   5.04%      0x00007f572edbdc2f:   vaesenclast %xmm3,%xmm0,%xmm0
   6.82%      0x00007f572edbdc34:   vmovdqu %xmm0,(%rdx)
....................................................................................................
  32.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 

                                                                           ; - java.util.Arrays::fill@5 (line 3287)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 0x00007f572f255ba5:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f572f255bb0:   data16 data16 xchg %ax,%ax
                 0x00007f572f255bb4:   nopl   0x0(%rax,%rax,1)
                 0x00007f572f255bbc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@7 (line 3287)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  ↗      0x00007f572f255bc0:   movb   $0x0,0x10(%r9,%rsi,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.Arrays::fill@13 (line 3288)
          │                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          │                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │      0x00007f572f255bc6:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.Arrays::fill@14 (line 3287)
          │                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          │                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │      0x00007f572f255bc8:   cmp    %esi,%eax
          ╰      0x00007f572f255bca:   jg     0x00007f572f255bc0
                 0x00007f572f255bcc:   mov    %esi,%eax
                 0x00007f572f255bce:   mov    0x20(%rsp),%esi
           ╭     0x00007f572f255bd2:   jmp    0x00007f572f255c46
           │     0x00007f572f255bd7:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.Arrays::fill@7 (line 3287)
           │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
           │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │↗    0x00007f572f255be0:   movb   $0x0,0x10(%r9,%rax,1)
   1.73%   ││    0x00007f572f255be6:   movslq %eax,%rdx
           ││    0x00007f572f255be9:   movb   $0x0,0x11(%r9,%rdx,1)
   2.31%   ││    0x00007f572f255bef:   movb   $0x0,0x12(%r9,%rdx,1)
   1.86%   ││    0x00007f572f255bf5:   movb   $0x0,0x13(%r9,%rdx,1)
   1.60%   ││    0x00007f572f255bfb:   movb   $0x0,0x14(%r9,%rdx,1)
   1.39%   ││    0x00007f572f255c01:   movb   $0x0,0x15(%r9,%rdx,1)
   1.64%   ││    0x00007f572f255c07:   movb   $0x0,0x16(%r9,%rdx,1)
   1.58%   ││    0x00007f572f255c0d:   movb   $0x0,0x17(%r9,%rdx,1)
   1.68%   ││    0x00007f572f255c13:   movb   $0x0,0x18(%r9,%rdx,1)
   1.65%   ││    0x00007f572f255c19:   movb   $0x0,0x19(%r9,%rdx,1)
   1.69%   ││    0x00007f572f255c1f:   movb   $0x0,0x1a(%r9,%rdx,1)
   2.05%   ││    0x00007f572f255c25:   movb   $0x0,0x1b(%r9,%rdx,1)
   1.59%   ││    0x00007f572f255c2b:   movb   $0x0,0x1c(%r9,%rdx,1)
   1.58%   ││    0x00007f572f255c31:   movb   $0x0,0x1d(%r9,%rdx,1)
   1.27%   ││    0x00007f572f255c37:   movb   $0x0,0x1e(%r9,%rdx,1)
   1.71%   ││    0x00007f572f255c3d:   movb   $0x0,0x1f(%r9,%rdx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - java.util.Arrays::fill@13 (line 3288)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.68%   ││    0x00007f572f255c43:   lea    0x10(%rax),%eax              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - java.util.Arrays::fill@14 (line 3287)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
           ││                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ↘│    0x00007f572f255c46:   cmp    %eax,%esi                    ;   {no_reloc}
            ╰    0x00007f572f255c48:   jg     0x00007f572f255be0
   0.00%     ╭   0x00007f572f255c4a:   jmp    0x00007f572f255c70
             │   0x00007f572f255c4f:   data16 data16 nopw 0x0(%rax,%rax,1)
             │   0x00007f572f255c5a:   data16 data16 xchg %ax,%ax
             │   0x00007f572f255c5e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.Arrays::fill@7 (line 3287)
             │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
             │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     │↗  0x00007f572f255c60:   movb   $0x0,0x10(%r9,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.Arrays::fill@13 (line 3288)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%     ││  0x00007f572f255c66:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.Arrays::fill@14 (line 3287)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             ││  0x00007f572f255c68:   nopl   0x0(%rax,%rax,1)
   0.01%     ↘│  0x00007f572f255c70:   cmp    %eax,%r11d
              ╰  0x00007f572f255c73:   jg     0x00007f572f255c60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@7 (line 3287)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%         0x00007f572f255c75:   mov    0x24(%rsp),%ebx              ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@20 (line 3289)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%         0x00007f572f255c79:   nopl   0x0(%rax)
                 0x00007f572f255c80:   test   %ebx,%ebx
                 0x00007f572f255c82:   jne    0x00007f572f255f94           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.01%         0x00007f572f255c88:   mov    0x38(%rsp),%eax
   0.01%         0x00007f572f255c8c:   cmp    %r11d,%eax
                 0x00007f572f255c8f:   jg     0x00007f572f25607d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@75 (line 738)
   0.00%         0x00007f572f255c95:   mov    0x3c(%rsp),%ebp
                 0x00007f572f255c99:   mov    0x18(%rsp),%rsi
                 0x00007f572f255c9e:   movl   $0x0,0x14(%rsi)              ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.02%         0x00007f572f255ca5:   mov    %ebp,0x1c(%rsi)              ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.01%         0x00007f572f255ca8:   mov    %r8,%rax                     ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@105 (line 746)
                 0x00007f572f255cab:   mov    0x50(%rsp),%rbp
                 0x00007f572f255cb0:   add    $0x58,%rsp
                 0x00007f572f255cb4:   nopl   0x0(%rax,%rax,1)
   0.00%         0x00007f572f255cbc:   data16 data16 xchg %ax,%ax
                 0x00007f572f255cc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007f572f255cc7:   ja     0x00007f572f2560b7
                 0x00007f572f255ccd:   vzeroupper 
   0.00%         0x00007f572f255cd0:   ret    
                 0x00007f572f255cd1:   mov    0x30(%rsp),%r11d
                 0x00007f572f255cd6:   jmp    0x00007f572f255b89           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@13 (line 3288)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 0x00007f572f255cdb:   mov    0x28(%rsp),%r13
                 0x00007f572f255ce0:   mov    %ebp,%eax
                 0x00007f572f255ce2:   sub    %r8d,%eax
                 0x00007f572f255ce5:   movslq %eax,%rax
                 0x00007f572f255ce8:   mov    %r8d,%edx
                 0x00007f572f255ceb:   add    %rdx,%rax
   0.00%         0x00007f572f255cee:   dec    %rax
                 0x00007f572f255cf1:   cmp    %rax,%r13
                 0x00007f572f255cf4:   jbe    0x00007f572f255f2e
                 0x00007f572f255cfa:   nopw   0x0(%rax,%rax,1)
                 0x00007f572f255d00:   cmp    %r8d,%ebp
                 0x00007f572f255d03:   ja     0x00007f572f25591f
                 0x00007f572f255d09:   jmp    0x00007f572f255f74           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.Arrays::fill@20 (line 3311)
                                                                           ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                           ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
....................................................................................................
  27.15%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

             0x00007f572edbdbf3:   vmovdqu 0xc0(%rcx),%xmm3
   0.00%     0x00007f572edbdbfb:   vpshufb %xmm1,%xmm3,%xmm3
   1.63%     0x00007f572edbdc00:   cmp    $0x34,%r10d
          ╭  0x00007f572edbdc04:   je     0x00007f572edbdc2a
          │  0x00007f572edbdc06:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007f572edbdc0b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007f572edbdc10:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f572edbdc18:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f572edbdc1d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f572edbdc25:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%  ↘  0x00007f572edbdc2a:   vaesenc %xmm2,%xmm0,%xmm0
   5.04%     0x00007f572edbdc2f:   vaesenclast %xmm3,%xmm0,%xmm0
   6.82%     0x00007f572edbdc34:   vmovdqu %xmm0,(%rdx)
   1.73%     0x00007f572edbdc38:   add    $0x18,%rsp
             0x00007f572edbdc3c:   ret    
             0x00007f572edbdc3d:   hlt    
             0x00007f572edbdc3e:   hlt    
             0x00007f572edbdc3f:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <deoptimized thread='2104085' reason='constraint' pc='0x00007f57278bde4b' compile_id='1063' compiler='c1' level='3'>
           <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='42' backedge_count='527819' iicount='42'/>
....................................................................................................
  13.59%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 

             0x00007f572f255ad0:   data16 data16 xchg %ax,%ax
             0x00007f572f255ad4:   nopl   0x0(%rax,%rax,1)
             0x00007f572f255adc:   data16 data16 xchg %ax,%ax          ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ;   {no_reloc}
   0.00%  ↗  0x00007f572f255ae0:   test   %ecx,%ecx
          │  0x00007f572f255ae2:   jl     0x00007f572f255e34
          │  0x00007f572f255ae8:   cmp    %edi,%ecx
          │  0x00007f572f255aea:   jg     0x00007f572f255e34
          │  0x00007f572f255af0:   test   %edx,%edx
          │  0x00007f572f255af2:   jl     0x00007f572f255e34
   1.77%  │  0x00007f572f255af8:   nopl   0x0(%rax,%rax,1)
   0.01%  │  0x00007f572f255b00:   cmp    %r10d,%edx
          │  0x00007f572f255b03:   jg     0x00007f572f255e34
          │  0x00007f572f255b09:   mov    %r9,%rax
          │  0x00007f572f255b0c:   mov    %r8,%rbx
   1.61%  │  0x00007f572f255b0f:   mov    %r14,%r11
   0.01%  │  0x00007f572f255b12:   mov    %ecx,%ebp
          │  0x00007f572f255b14:   lea    0x10(%rbp),%rbp
          │  0x00007f572f255b18:   add    %rax,%rbp
   1.64%  │  0x00007f572f255b1b:   mov    %edx,%eax
   0.00%  │  0x00007f572f255b1d:   lea    0x10(%rax),%rax
   0.00%  │  0x00007f572f255b21:   add    %rbx,%rax
   0.00%  │  0x00007f572f255b24:   lea    0x10(%r11),%r11
   1.75%  │  0x00007f572f255b28:   mov    %esi,%ebx
   0.00%  │  0x00007f572f255b2a:   mov    %rbp,%rsi
          │  0x00007f572f255b2d:   mov    %edx,%ebp
          │  0x00007f572f255b2f:   mov    %rax,%rdx
   1.64%  │  0x00007f572f255b32:   mov    %ecx,%eax
   0.00%  │  0x00007f572f255b34:   mov    %r11,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  0x00007f572f255b37:   mov    %r10d,%r11d
   0.00%  │  0x00007f572f255b3a:   call   0x00007f572edbdb20           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.00%  │  0x00007f572f255b3f:   nop
          │  0x00007f572f255b40:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r8=Oop r9=Oop r14=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::encryptBlock@9 (line 1082)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.73%  │  0x00007f572f255b47:   test   %eax,(%rsi)                  ;   {poll}
   0.00%  │  0x00007f572f255b49:   mov    %ebx,%esi
          │  0x00007f572f255b4b:   sub    %r13d,%esi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f572f255b4e:   mov    %ebp,%edx
   1.65%  │  0x00007f572f255b50:   add    %r13d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f572f255b53:   mov    %eax,%ecx
   0.00%  │  0x00007f572f255b55:   add    %r13d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  0x00007f572f255b58:   mov    %r11d,%r10d                  ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.67%  │  0x00007f572f255b5b:   cmp    %esi,%r13d
          ╰  0x00007f572f255b5e:   jle    0x00007f572f255ae0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f572f255b60:   cmpl   $0x1,0x30(%rsp)
             0x00007f572f255b65:   jl     0x00007f572f255e26           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::fill@7 (line 3287)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     0x00007f572f255b6b:   cmpl   $0x2,0x30(%rsp)
             0x00007f572f255b70:   jl     0x00007f572f255cd1
   0.00%     0x00007f572f255b76:   mov    0x30(%rsp),%r11d
             0x00007f572f255b7b:   mov    %r11d,%ebp
   0.01%     0x00007f572f255b7e:   dec    %ebp
             0x00007f572f255b80:   cmp    %ebp,%r11d
             0x00007f572f255b83:   jbe    0x00007f572f25600e
             0x00007f572f255b89:   movb   $0x0,0x10(%r9)               ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::fill@13 (line 3288)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f572f255b8e:   cmp    $0x3,%r11d
             0x00007f572f255b92:   mov    $0x2,%eax
             0x00007f572f255b97:   cmovl  %r11d,%eax
   0.00%     0x00007f572f255b9b:   mov    $0x1,%esi
             0x00007f572f255ba0:   jmp    0x00007f572f255bc8           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::fill@5 (line 3287)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             0x00007f572f255ba5:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f572f255bb0:   data16 data16 xchg %ax,%ax
             0x00007f572f255bb4:   nopl   0x0(%rax,%rax,1)
             0x00007f572f255bbc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::fill@7 (line 3287)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
....................................................................................................
  13.52%  <total for region 4>

....[Hottest Regions]...............................................................................
  32.72%                      <unknown> 
  27.15%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
  13.59%                      <unknown> 
  13.52%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
   6.93%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
   2.52%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.34%              kernel  [unknown] 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.16%              kernel  [unknown] 
   0.12%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
   0.11%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
   0.07%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
   0.05%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
   0.05%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1132 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1106 
   2.14%  <...other 503 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.05%      jvmci, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 1102 
  46.41%                      <unknown> 
   2.52%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.94%              kernel  [unknown] 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1106 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1132 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.50%  <...other 155 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  48.17%      jvmci, level 4
  46.41%                    
   2.52%        runtime stub
   1.94%              kernel
   0.55%           libjvm.so
   0.33%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/NoPadding)

# Run progress: 83.33% complete, ETA 00:03:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.234 us/op
# Warmup Iteration   2: 13.511 us/op
# Warmup Iteration   3: 13.518 us/op
# Warmup Iteration   4: 13.415 us/op
# Warmup Iteration   5: 13.409 us/op
Iteration   1: 13.367 us/op
Iteration   2: 13.418 us/op
Iteration   3: 13.435 us/op
Iteration   4: 13.424 us/op
Iteration   5: 13.526 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  13.434 ±(99.9%) 0.223 us/op [Average]
  (min, avg, max) = (13.367, 13.434, 13.526), stdev = 0.058
  CI (99.9%): [13.211, 13.657] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 256965 total address lines.
Perf output processed (skipped 61.598 seconds):
 Column 1: cycles (50879 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007ff48adb8910
            --------------------------------------------------------------------------------
   0.14%      0x00007ff48adb89a0:   sub    $0x18,%rsp
   2.75%      0x00007ff48adb89a4:   mov    -0x4(%rcx),%r10d
   0.16%      0x00007ff48adb89a8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007ff48adb8980
   0.01%      0x00007ff48adb89b0:   vmovdqu (%rsi),%xmm0
   0.06%      0x00007ff48adb89b4:   vmovdqu (%rcx),%xmm2
   2.72%      0x00007ff48adb89b8:   vpshufb %xmm1,%xmm2,%xmm2
   0.16%      0x00007ff48adb89bd:   vpxor  %xmm2,%xmm0,%xmm0
   0.01%      0x00007ff48adb89c1:   vmovdqu 0x10(%rcx),%xmm2
   0.00%      0x00007ff48adb89c6:   vpshufb %xmm1,%xmm2,%xmm2
   2.75%      0x00007ff48adb89cb:   vmovdqu 0x20(%rcx),%xmm3
   0.19%      0x00007ff48adb89d0:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007ff48adb89d5:   vmovdqu 0x30(%rcx),%xmm4
              0x00007ff48adb89da:   vpshufb %xmm1,%xmm4,%xmm4
   2.64%      0x00007ff48adb89df:   vmovdqu 0x40(%rcx),%xmm5
   0.14%      0x00007ff48adb89e4:   vpshufb %xmm1,%xmm5,%xmm5
   0.02%      0x00007ff48adb89e9:   vaesenc %xmm2,%xmm0,%xmm0
   0.00%      0x00007ff48adb89ee:   vaesenc %xmm3,%xmm0,%xmm0
   2.74%      0x00007ff48adb89f3:   vaesenc %xmm4,%xmm0,%xmm0
   0.14%      0x00007ff48adb89f8:   vaesenc %xmm5,%xmm0,%xmm0
   0.01%      0x00007ff48adb89fd:   vmovdqu 0x50(%rcx),%xmm2
   0.00%      0x00007ff48adb8a02:   vpshufb %xmm1,%xmm2,%xmm2
   2.79%      0x00007ff48adb8a07:   vmovdqu 0x60(%rcx),%xmm3
   0.13%      0x00007ff48adb8a0c:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007ff48adb8a11:   vmovdqu 0x70(%rcx),%xmm4
              0x00007ff48adb8a16:   vpshufb %xmm1,%xmm4,%xmm4
   2.79%      0x00007ff48adb8a1b:   vmovdqu 0x80(%rcx),%xmm5
   0.18%      0x00007ff48adb8a23:   vpshufb %xmm1,%xmm5,%xmm5
   0.02%      0x00007ff48adb8a28:   vaesenc %xmm2,%xmm0,%xmm0
   0.01%      0x00007ff48adb8a2d:   vaesenc %xmm3,%xmm0,%xmm0
   2.84%      0x00007ff48adb8a32:   vaesenc %xmm4,%xmm0,%xmm0
   0.16%      0x00007ff48adb8a37:   vaesenc %xmm5,%xmm0,%xmm0
   0.16%      0x00007ff48adb8a3c:   vmovdqu 0x90(%rcx),%xmm2
   0.00%      0x00007ff48adb8a44:   vpshufb %xmm1,%xmm2,%xmm2
   2.72%      0x00007ff48adb8a49:   vmovdqu 0xa0(%rcx),%xmm3
   0.16%      0x00007ff48adb8a51:   vpshufb %xmm1,%xmm3,%xmm3
   0.05%      0x00007ff48adb8a56:   cmp    $0x2c,%r10d
          ╭   0x00007ff48adb8a5a:   je     0x00007ff48adb8aaa
   0.00%  │   0x00007ff48adb8a5c:   vaesenc %xmm2,%xmm0,%xmm0
   2.98%  │   0x00007ff48adb8a61:   vaesenc %xmm3,%xmm0,%xmm0
   1.00%  │   0x00007ff48adb8a66:   vmovdqu 0xb0(%rcx),%xmm2
   0.01%  │   0x00007ff48adb8a6e:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%  │   0x00007ff48adb8a73:   vmovdqu 0xc0(%rcx),%xmm3
   2.40%  │   0x00007ff48adb8a7b:   vpshufb %xmm1,%xmm3,%xmm3
   0.57%  │   0x00007ff48adb8a80:   cmp    $0x34,%r10d
          │╭  0x00007ff48adb8a84:   je     0x00007ff48adb8aaa
   0.01%  ││  0x00007ff48adb8a86:   vaesenc %xmm2,%xmm0,%xmm0
   1.65%  ││  0x00007ff48adb8a8b:   vaesenc %xmm3,%xmm0,%xmm0
   6.66%  ││  0x00007ff48adb8a90:   vmovdqu 0xd0(%rcx),%xmm2
   0.11%  ││  0x00007ff48adb8a98:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007ff48adb8a9d:   vmovdqu 0xe0(%rcx),%xmm3
   0.13%  ││  0x00007ff48adb8aa5:   vpshufb %xmm1,%xmm3,%xmm3
   2.92%  ↘↘  0x00007ff48adb8aaa:   vaesenc %xmm2,%xmm0,%xmm0
   6.20%      0x00007ff48adb8aaf:   vaesenclast %xmm3,%xmm0,%xmm0
  10.52%      0x00007ff48adb8ab4:   vmovdqu %xmm0,(%rdx)
   2.80%      0x00007ff48adb8ab8:   add    $0x18,%rsp
   0.12%      0x00007ff48adb8abc:   ret    
              0x00007ff48adb8abd:   hlt    
              0x00007ff48adb8abe:   hlt    
              0x00007ff48adb8abf:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            <task_queued compile_id='1059' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='106' backedge_count='107642' iicount='106' level='3' stamp='11.241' comment='tiered' hot_count='106'/>
            <nmethod compile_id='1057' compiler='jvmci' level='4' entry='0x00007ff48b24de80' size='976' address='0x00007ff48b24dd10' relocation_offset='344' insts_offset='368' stub_offset='707' scopes_data_offset='728' scopes_pcs_offset='768' dependencies_offset='912' nul_chk_table_offset='920' metadata_offset='712' method='com.sun.crypto.provider.AESCrypt encryptBlock ([BI[BI)V' bytes='10' count='109632' iicount='109634' stamp='11.241'/>
            <make_not_entrant thread='2104133' compile_id='1050' compiler='c1' level='3' stamp='11.241'/>
....................................................................................................
  64.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1088 

                    0x00007ff48b2520ac:   cmp    %r10,%rsi
                    0x00007ff48b2520af:   ja     0x00007ff48b2520a0
                 ↗  0x00007ff48b2520b1:   mov    %rdx,%rax                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                 │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                 │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                ↗│  0x00007ff48b2520b4:   shl    $0x3,%r9                     ;*getfield encryptCipher {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@1 (line 108)
                ││  0x00007ff48b2520b8:   mov    %r9,0x10(%rsp)
   0.00%        ││  0x00007ff48b2520bd:   shl    $0x3,%r11                    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@5 (line 108)
                ││  0x00007ff48b2520c1:   mov    %ebx,%r10d
                ││  0x00007ff48b2520c4:   shl    $0x3,%r10                    ;*getfield core {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@1 (line 446)
                ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%        ││  0x00007ff48b2520c8:   mov    %r10,0x8(%rsp)
                ││  0x00007ff48b2520cd:   shl    $0x3,%rcx                    ;* unwind (locked if synchronized)
                ││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
                ││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                ││  0x00007ff48b2520d1:   shl    $0x3,%r14                    ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                ││  0x00007ff48b2520d5:   mov    %r14,(%rsp)
                ││  0x00007ff48b2520d9:   lea    -0x10(%r8),%edx
   0.01%        ││  0x00007ff48b2520dd:   lea    -0x10(%r8),%esi              ;* unwind (locked if synchronized)
                ││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
                ││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%        ││  0x00007ff48b2520e1:   mov    %r8d,%r14d
                ││  0x00007ff48b2520e4:   mov    $0x0,%r9d
   0.00%        ││  0x00007ff48b2520ea:   mov    $0x0,%r10d
   0.00%  ╭     ││  0x00007ff48b2520f0:   jmp    0x00007ff48b252183           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │     ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │     ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │     ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │     ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │     ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │     ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │     ││  0x00007ff48b2520f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
          │     ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │     ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │     ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │     ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │     ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │     ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │     ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.11%  │    ↗││  0x00007ff48b252100:   test   %r10d,%r10d
          │╭   │││  0x00007ff48b252103:   jl     0x00007ff48b252215
   0.01%  ││   │││  0x00007ff48b252109:   cmp    %esi,%r10d
          ││╭  │││  0x00007ff48b25210c:   jg     0x00007ff48b252215
   0.00%  │││  │││  0x00007ff48b252112:   test   %r9d,%r9d
          │││╭ │││  0x00007ff48b252115:   jl     0x00007ff48b252215
   2.96%  ││││ │││  0x00007ff48b25211b:   nopl   0x0(%rax,%rax,1)
   0.14%  ││││ │││  0x00007ff48b252120:   cmp    %edx,%r9d
          ││││╭│││  0x00007ff48b252123:   jg     0x00007ff48b252215
   0.01%  ││││││││  0x00007ff48b252129:   mov    %r11,%r8
          ││││││││  0x00007ff48b25212c:   mov    %rax,%rbp
   2.76%  ││││││││  0x00007ff48b25212f:   mov    %rcx,%rbx
   0.13%  ││││││││  0x00007ff48b252132:   mov    %r10d,%r13d
          ││││││││  0x00007ff48b252135:   lea    0x10(%r13),%r13
   0.00%  ││││││││  0x00007ff48b252139:   add    %r8,%r13
   2.79%  ││││││││  0x00007ff48b25213c:   mov    %r9d,%r8d
   0.16%  ││││││││  0x00007ff48b25213f:   lea    0x10(%r8),%r8
   0.01%  ││││││││  0x00007ff48b252143:   add    %rbp,%r8
   0.00%  ││││││││  0x00007ff48b252146:   lea    0x10(%rbx),%rbx
   2.91%  ││││││││  0x00007ff48b25214a:   mov    %esi,%ebp
   0.15%  ││││││││  0x00007ff48b25214c:   mov    %r13,%rsi
   0.00%  ││││││││  0x00007ff48b25214f:   mov    %edx,%r13d
          ││││││││  0x00007ff48b252152:   mov    %r8,%rdx
   2.83%  ││││││││  0x00007ff48b252155:   mov    %rcx,%r8
   0.12%  ││││││││  0x00007ff48b252158:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
          ││││││││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          ││││││││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  ││││││││  0x00007ff48b25215b:   mov    %r10d,%ebx
          ││││││││  0x00007ff48b25215e:   xchg   %ax,%ax                      ;   {no_reloc}
   2.73%  ││││││││  0x00007ff48b252160:   call   0x00007ff48adb89a0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.00%  ││││││││  0x00007ff48b252165:   nop
   0.00%  ││││││││  0x00007ff48b252166:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rax=Oop r8=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
          ││││││││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          ││││││││                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::encryptBlock@9 (line 1082)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.84%  ││││││││  0x00007ff48b25216d:   test   %eax,(%rsi)                  ;   {poll}
   0.14%  ││││││││  0x00007ff48b25216f:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  ││││││││  0x00007ff48b252172:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          ││││││││  0x00007ff48b252175:   mov    %ebx,%r10d
   2.72%  ││││││││  0x00007ff48b252178:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.12%  ││││││││  0x00007ff48b25217b:   mov    %ebp,%esi
   0.00%  ││││││││  0x00007ff48b25217d:   mov    %r13d,%edx
          ││││││││  0x00007ff48b252180:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          ││││││││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││││││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││││││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││││││││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││││││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.74%  ↘│││││││  0x00007ff48b252183:   cmp    %r14d,%edi
           ││││╰││  0x00007ff48b252186:   jle    0x00007ff48b252100           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
           ││││ ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           ││││ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           ││││ ││  0x00007ff48b25218c:   mov    0x1c(%rsp),%r13d
           ││││ ││  0x00007ff48b252191:   test   %r13d,%r13d
           ││││ ││  0x00007ff48b252194:   jne    0x00007ff48b2522f7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
           ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%   ││││ ││  0x00007ff48b25219a:   mov    0x20(%rsp),%ebp
           ││││ ││  0x00007ff48b25219e:   mov    0x18(%rsp),%ebx
           ││││ ││  0x00007ff48b2521a2:   movl   $0x0,0x14(,%rbx,8)           ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
           ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           ││││ ││  0x00007ff48b2521ad:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
           ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%   ││││ ││  0x00007ff48b2521b4:   mov    0x30(%rsp),%rbp
           ││││ ││  0x00007ff48b2521b9:   add    $0x38,%rsp
           ││││ ││  0x00007ff48b2521bd:   data16 xchg %ax,%ax
           ││││ ││  0x00007ff48b2521c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ││││ ││  0x00007ff48b2521c7:   ja     0x00007ff48b252387
           ││││ ││  0x00007ff48b2521cd:   vzeroupper 
   0.00%   ││││ ││  0x00007ff48b2521d0:   ret    
           ││││ ││  0x00007ff48b2521d1:   movabs $0x7ff40f0022c0,%rsi         ;   {metadata({type array byte})}
           ││││ ││  0x00007ff48b2521db:   mov    0x24(%rsp),%edx              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
           ││││ ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││││ ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           ││││ ││  0x00007ff48b2521df:   nop
           ││││ ││  0x00007ff48b2521e0:   call   0x00007ff48adb6c80           ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop r9=NarrowOop r10=Oop r11=NarrowOop r14=NarrowOop [24]=NarrowOop }
           ││││ ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@0 (line 108)
           ││││ ││                                                            ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
           ││││ ││  0x00007ff48b2521e5:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rcx=NarrowOop rbx=NarrowOop r9=NarrowOop r10=Oop r11=NarrowOop r14=NarrowOop [24]=NarrowOop }
           ││││ ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@0 (line 108)
           ││││ ││  0x00007ff48b2521ed:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007ff48b252470
   0.00%   ││││ ╰│  0x00007ff48b2521ef:   jmp    0x00007ff48b2520b4
           ││││  │  0x00007ff48b2521f4:   mov    %edi,%esi
           ││││  │  0x00007ff48b2521f6:   mov    %ecx,%r8d
           ││││  │  0x00007ff48b2521f9:   mov    %r10,%rcx
   0.00%   ││││  │  0x00007ff48b2521fc:   lea    0x10(%rdx),%rdi
           ││││  │  0x00007ff48b252200:   xor    %rax,%rax
   5.63%   ││││  │  0x00007ff48b252203:   rep rex.W stos %al,%es:(%rdi)
   0.02%   ││││  │  0x00007ff48b252206:   mov    %r8d,%ecx
           ││││  │  0x00007ff48b252209:   mov    %esi,%edi
   0.00%   ││││  │  0x00007ff48b25220b:   mov    0x24(%rsp),%r8d
   0.00%   ││││  ╰  0x00007ff48b252210:   jmp    0x00007ff48b2520b1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
           ││││                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           ││││                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           ↘↘↘↘     0x00007ff48b252215:   mov    %r10d,%ebx
                    0x00007ff48b252218:   mov    (%rsp),%rcx
                    0x00007ff48b25221c:   mov    0x8(%rsp),%r10
                    0x00007ff48b252221:   mov    0x10(%rsp),%rdi
                    0x00007ff48b252226:   mov    0x24(%rsp),%r8d
                    0x00007ff48b25222b:   movl   $0xffffffe7,0x484(%r15)      ;* unwind (locked if synchronized)
....................................................................................................
  32.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.73%                       <unknown> 
  32.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1088 
   0.57%               kernel  [unknown] 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1088 
   0.19%         libc-2.31.so  __memset_avx2_erms 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1088 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1112 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%               kernel  [unknown] 
   1.48%  <...other 430 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.83%                       <unknown> 
  32.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1088 
   1.88%               kernel  [unknown] 
   0.19%         libc-2.31.so  __memset_avx2_erms 
   0.04%         libc-2.31.so  __vfprintf_internal 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1112 
   0.03%         libc-2.31.so  _IO_fwrite 
   0.02%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  defaultStream::write 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.45%  <...other 157 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  64.83%                     
  32.38%       jvmci, level 4
   1.88%               kernel
   0.42%            libjvm.so
   0.36%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%     perf-2104113.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/PKCS5Padding)

# Run progress: 91.67% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.645 us/op
# Warmup Iteration   2: 23.475 us/op
# Warmup Iteration   3: 23.145 us/op
# Warmup Iteration   4: 23.352 us/op
# Warmup Iteration   5: 23.587 us/op
Iteration   1: 23.799 us/op
Iteration   2: 23.408 us/op
Iteration   3: 23.795 us/op
Iteration   4: 23.567 us/op
Iteration   5: 23.399 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  23.594 ±(99.9%) 0.759 us/op [Average]
  (min, avg, max) = (23.399, 23.594, 23.799), stdev = 0.197
  CI (99.9%): [22.834, 24.353] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 258148 total address lines.
Perf output processed (skipped 61.687 seconds):
 Column 1: cycles (51066 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            <task_queued compile_id='1054' method='java.util.Arrays fill ([BB)V' bytes='21' count='62' backedge_count='889326' iicount='62' stamp='11.218' comment='tiered' hot_count='62'/>
            <deoptimized thread='2104215' reason='constraint' pc='0x00007fe9b78ba8cb' compile_id='1051' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='63' backedge_count='896494' iicount='63'/>
            </deoptimized>
            <deoptimized thread='2104215' reason='constraint' pc='0x00007fe9b78ba8cb' compile_id='1051' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='64' backedge_count='904686' iicount='64'/>
            </deoptimized>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007fe9bedc1a10
            --------------------------------------------------------------------------------
   0.02%      0x00007fe9bedc1aa0:   sub    $0x18,%rsp
   1.50%      0x00007fe9bedc1aa4:   mov    -0x4(%rcx),%r10d
   0.09%      0x00007fe9bedc1aa8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007fe9bedc1a80
   0.00%      0x00007fe9bedc1ab0:   vmovdqu (%rsi),%xmm0
   0.07%      0x00007fe9bedc1ab4:   vmovdqu (%rcx),%xmm2
   1.51%      0x00007fe9bedc1ab8:   vpshufb %xmm1,%xmm2,%xmm2
   0.10%      0x00007fe9bedc1abd:   vpxor  %xmm2,%xmm0,%xmm0
   0.03%      0x00007fe9bedc1ac1:   vmovdqu 0x10(%rcx),%xmm2
   0.00%      0x00007fe9bedc1ac6:   vpshufb %xmm1,%xmm2,%xmm2
   1.55%      0x00007fe9bedc1acb:   vmovdqu 0x20(%rcx),%xmm3
   0.10%      0x00007fe9bedc1ad0:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%      0x00007fe9bedc1ad5:   vmovdqu 0x30(%rcx),%xmm4
   0.00%      0x00007fe9bedc1ada:   vpshufb %xmm1,%xmm4,%xmm4
   1.49%      0x00007fe9bedc1adf:   vmovdqu 0x40(%rcx),%xmm5
   0.09%      0x00007fe9bedc1ae4:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%      0x00007fe9bedc1ae9:   vaesenc %xmm2,%xmm0,%xmm0
   0.02%      0x00007fe9bedc1aee:   vaesenc %xmm3,%xmm0,%xmm0
   1.60%      0x00007fe9bedc1af3:   vaesenc %xmm4,%xmm0,%xmm0
   0.17%      0x00007fe9bedc1af8:   vaesenc %xmm5,%xmm0,%xmm0
   0.04%      0x00007fe9bedc1afd:   vmovdqu 0x50(%rcx),%xmm2
   0.00%      0x00007fe9bedc1b02:   vpshufb %xmm1,%xmm2,%xmm2
   1.52%      0x00007fe9bedc1b07:   vmovdqu 0x60(%rcx),%xmm3
   0.10%      0x00007fe9bedc1b0c:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007fe9bedc1b11:   vmovdqu 0x70(%rcx),%xmm4
              0x00007fe9bedc1b16:   vpshufb %xmm1,%xmm4,%xmm4
   1.52%      0x00007fe9bedc1b1b:   vmovdqu 0x80(%rcx),%xmm5
   0.11%      0x00007fe9bedc1b23:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007fe9bedc1b28:   vaesenc %xmm2,%xmm0,%xmm0
   0.05%      0x00007fe9bedc1b2d:   vaesenc %xmm3,%xmm0,%xmm0
   1.50%      0x00007fe9bedc1b32:   vaesenc %xmm4,%xmm0,%xmm0
   0.15%      0x00007fe9bedc1b37:   vaesenc %xmm5,%xmm0,%xmm0
   0.07%      0x00007fe9bedc1b3c:   vmovdqu 0x90(%rcx),%xmm2
   0.00%      0x00007fe9bedc1b44:   vpshufb %xmm1,%xmm2,%xmm2
   1.46%      0x00007fe9bedc1b49:   vmovdqu 0xa0(%rcx),%xmm3
   0.12%      0x00007fe9bedc1b51:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%      0x00007fe9bedc1b56:   cmp    $0x2c,%r10d
          ╭   0x00007fe9bedc1b5a:   je     0x00007fe9bedc1baa
          │   0x00007fe9bedc1b5c:   vaesenc %xmm2,%xmm0,%xmm0
   1.69%  │   0x00007fe9bedc1b61:   vaesenc %xmm3,%xmm0,%xmm0
   3.13%  │   0x00007fe9bedc1b66:   vmovdqu 0xb0(%rcx),%xmm2
          │   0x00007fe9bedc1b6e:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007fe9bedc1b73:   vmovdqu 0xc0(%rcx),%xmm3
   0.44%  │   0x00007fe9bedc1b7b:   vpshufb %xmm1,%xmm3,%xmm3
   1.14%  │   0x00007fe9bedc1b80:   cmp    $0x34,%r10d
          │╭  0x00007fe9bedc1b84:   je     0x00007fe9bedc1baa
          ││  0x00007fe9bedc1b86:   vaesenc %xmm2,%xmm0,%xmm0
   3.82%  ││  0x00007fe9bedc1b8b:   vaesenc %xmm3,%xmm0,%xmm0
   6.00%  ││  0x00007fe9bedc1b90:   vmovdqu 0xd0(%rcx),%xmm2
   0.01%  ││  0x00007fe9bedc1b98:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007fe9bedc1b9d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007fe9bedc1ba5:   vpshufb %xmm1,%xmm3,%xmm3
   1.61%  ↘↘  0x00007fe9bedc1baa:   vaesenc %xmm2,%xmm0,%xmm0
   5.00%      0x00007fe9bedc1baf:   vaesenclast %xmm3,%xmm0,%xmm0
   6.41%      0x00007fe9bedc1bb4:   vmovdqu %xmm0,(%rdx)
   1.61%      0x00007fe9bedc1bb8:   add    $0x18,%rsp
   0.01%      0x00007fe9bedc1bbc:   ret    
              0x00007fe9bedc1bbd:   hlt    
              0x00007fe9bedc1bbe:   hlt    
              0x00007fe9bedc1bbf:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            <deoptimized thread='2104215' reason='constraint' pc='0x00007fe9b78ba8cb' compile_id='1051' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='65' backedge_count='912878' iicount='65'/>
            </deoptimized>
....................................................................................................
  45.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 

                   0x00007fe9bf24e533:   dec    %eax
                   0x00007fe9bf24e535:   cmp    %eax,%r11d
                   0x00007fe9bf24e538:   jbe    0x00007fe9bf24e913
                ↗  0x00007fe9bf24e53e:   movb   $0x0,0x10(%r13)              ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.util.Arrays::fill@13 (line 3288)
                │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%        │  0x00007fe9bf24e543:   cmp    $0x3,%r11d
                │  0x00007fe9bf24e547:   mov    $0x2,%eax
                │  0x00007fe9bf24e54c:   cmovl  %r11d,%eax
                │  0x00007fe9bf24e550:   mov    $0x1,%esi
   0.00%  ╭     │  0x00007fe9bf24e555:   jmp    0x00007fe9bf24e568           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.Arrays::fill@5 (line 3287)
          │     │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          │     │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │     │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │     │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │     │  0x00007fe9bf24e55a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - java.util.Arrays::fill@7 (line 3287)
          │     │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          │     │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │     │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │     │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  │↗    │  0x00007fe9bf24e560:   movb   $0x0,0x10(%r13,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                            ; - java.util.Arrays::fill@13 (line 3288)
          ││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          ││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││    │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││    │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  ││    │  0x00007fe9bf24e566:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                            ; - java.util.Arrays::fill@14 (line 3287)
          ││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
          ││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││    │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││    │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          ↘│    │  0x00007fe9bf24e568:   cmp    %esi,%eax
           ╰    │  0x00007fe9bf24e56a:   jg     0x00007fe9bf24e560
                │  0x00007fe9bf24e56c:   mov    %esi,%eax
                │  0x00007fe9bf24e56e:   mov    0x50(%rsp),%esi
   0.00%    ╭   │  0x00007fe9bf24e572:   jmp    0x00007fe9bf24e5e6
            │   │  0x00007fe9bf24e577:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                            ; - java.util.Arrays::fill@7 (line 3287)
            │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
            │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │   │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            │   │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%    │↗  │  0x00007fe9bf24e580:   movb   $0x0,0x10(%r13,%rax,1)
   1.65%    ││  │  0x00007fe9bf24e586:   movslq %eax,%rdx
   0.00%    ││  │  0x00007fe9bf24e589:   movb   $0x0,0x11(%r13,%rdx,1)
   2.26%    ││  │  0x00007fe9bf24e58f:   movb   $0x0,0x12(%r13,%rdx,1)
   1.92%    ││  │  0x00007fe9bf24e595:   movb   $0x0,0x13(%r13,%rdx,1)
   1.58%    ││  │  0x00007fe9bf24e59b:   movb   $0x0,0x14(%r13,%rdx,1)
   1.23%    ││  │  0x00007fe9bf24e5a1:   movb   $0x0,0x15(%r13,%rdx,1)
   1.39%    ││  │  0x00007fe9bf24e5a7:   movb   $0x0,0x16(%r13,%rdx,1)
   1.53%    ││  │  0x00007fe9bf24e5ad:   movb   $0x0,0x17(%r13,%rdx,1)
   1.65%    ││  │  0x00007fe9bf24e5b3:   movb   $0x0,0x18(%r13,%rdx,1)
   1.69%    ││  │  0x00007fe9bf24e5b9:   movb   $0x0,0x19(%r13,%rdx,1)
   1.68%    ││  │  0x00007fe9bf24e5bf:   movb   $0x0,0x1a(%r13,%rdx,1)
   1.87%    ││  │  0x00007fe9bf24e5c5:   movb   $0x0,0x1b(%r13,%rdx,1)
   1.59%    ││  │  0x00007fe9bf24e5cb:   movb   $0x0,0x1c(%r13,%rdx,1)
   1.61%    ││  │  0x00007fe9bf24e5d1:   movb   $0x0,0x1d(%r13,%rdx,1)
   1.14%    ││  │  0x00007fe9bf24e5d7:   movb   $0x0,0x1e(%r13,%rdx,1)
   1.60%    ││  │  0x00007fe9bf24e5dd:   movb   $0x0,0x1f(%r13,%rdx,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                            ; - java.util.Arrays::fill@13 (line 3288)
            ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
            ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││  │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││  │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   1.55%    ││  │  0x00007fe9bf24e5e3:   lea    0x10(%rax),%eax              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                            ; - java.util.Arrays::fill@14 (line 3287)
            ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
            ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ││  │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            ││  │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            ↘│  │  0x00007fe9bf24e5e6:   cmp    %eax,%esi
             ╰  │  0x00007fe9bf24e5e8:   jg     0x00007fe9bf24e580
   0.00%      ╭ │  0x00007fe9bf24e5ea:   jmp    0x00007fe9bf24e610           ;   {no_reloc}
              │ │  0x00007fe9bf24e5ef:   data16 data16 nopw 0x0(%rax,%rax,1)
              │ │  0x00007fe9bf24e5fa:   data16 data16 xchg %ax,%ax
              │ │  0x00007fe9bf24e5fe:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                            ; - java.util.Arrays::fill@7 (line 3287)
              │ │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
              │ │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              │ │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
              │ │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%      │↗│  0x00007fe9bf24e600:   movb   $0x0,0x10(%r13,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - java.util.Arrays::fill@13 (line 3288)
              │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
              │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              │││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
              │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.05%      │││  0x00007fe9bf24e606:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - java.util.Arrays::fill@14 (line 3287)
              │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
              │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              │││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
              │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              │││  0x00007fe9bf24e608:   nopl   0x0(%rax,%rax,1)
   0.01%      ↘││  0x00007fe9bf24e610:   cmp    %eax,%r11d
               ╰│  0x00007fe9bf24e613:   jg     0x00007fe9bf24e600           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.util.Arrays::fill@7 (line 3287)
                │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%        │  0x00007fe9bf24e615:   mov    0x6c(%rsp),%r8d
   0.00%        │  0x00007fe9bf24e61a:   nopw   0x0(%rax,%rax,1)
                │  0x00007fe9bf24e620:   test   %r8d,%r8d
                │  0x00007fe9bf24e623:   jne    0x00007fe9bf24ea1d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%        │  0x00007fe9bf24e629:   mov    0x68(%rsp),%eax
                │  0x00007fe9bf24e62d:   cmp    %r11d,%eax
                │  0x00007fe9bf24e630:   jg     0x00007fe9bf24e823           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@75 (line 738)
                │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                │  0x00007fe9bf24e636:   mov    0x70(%rsp),%ebx
                │  0x00007fe9bf24e63a:   mov    0x48(%rsp),%ebp
                │  0x00007fe9bf24e63e:   movl   $0x0,0x14(,%rbp,8)           ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%        │  0x00007fe9bf24e649:   mov    %ebx,0x1c(,%rbp,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%        │  0x00007fe9bf24e650:   mov    %r14,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@11 (line 108)
                │  0x00007fe9bf24e653:   mov    0x80(%rsp),%rbp
                │  0x00007fe9bf24e65b:   add    $0x88,%rsp
   0.00%        │  0x00007fe9bf24e662:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │  0x00007fe9bf24e669:   ja     0x00007fe9bf24eaa6
                │  0x00007fe9bf24e66f:   vzeroupper 
                │  0x00007fe9bf24e672:   ret    
                │  0x00007fe9bf24e673:   mov    0x60(%rsp),%r11d
                ╰  0x00007fe9bf24e678:   jmp    0x00007fe9bf24e53e           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.Arrays::fill@13 (line 3288)
                                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                   0x00007fe9bf24e67d:   mov    0x58(%rsp),%r13
   0.01%           0x00007fe9bf24e682:   mov    %r8d,%edx
                   0x00007fe9bf24e685:   sub    %eax,%edx
   0.00%           0x00007fe9bf24e687:   movslq %edx,%rdx
   0.00%           0x00007fe9bf24e68a:   mov    %eax,%esi
                   0x00007fe9bf24e68c:   add    %rsi,%rdx
                   0x00007fe9bf24e68f:   dec    %rdx
                   0x00007fe9bf24e692:   cmp    %rdx,%r13
                   0x00007fe9bf24e695:   jbe    0x00007fe9bf24e967
                   0x00007fe9bf24e69b:   nopl   0x0(%rax,%rax,1)
                   0x00007fe9bf24e6a0:   cmp    %eax,%r8d
                   0x00007fe9bf24e6a3:   ja     0x00007fe9bf24e2c0
                   0x00007fe9bf24e6a9:   jmp    0x00007fe9bf24e84d           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.Arrays::fill@20 (line 3311)
                                                                             ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
....................................................................................................
  26.07%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 

                                                                        ; - jdk.internal.util.Preconditions::checkFromIndexSize@5 (line 396)
                                                                        ; - sun.security.util.ArrayUtil::nullAndBoundsCheck@7 (line 47)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@19 (line 130)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007fe9bf24e3ee:   cmp    0x68(%rsp),%r8d
              0x00007fe9bf24e3f3:   jg     0x00007fe9bf24e8e9           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.internal.util.Preconditions::checkFromIndexSize@12 (line 396)
                                                                        ; - sun.security.util.ArrayUtil::nullAndBoundsCheck@7 (line 47)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@19 (line 130)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e3f9:   mov    %r9,0x28(%rsp)
              0x00007fe9bf24e3fe:   mov    0x24(%rsp),%r14d
              0x00007fe9bf24e403:   mov    0x54(%rsp),%r10d             ; ImmutableOopMap {rbx=Oop r13=Oop r14=NarrowOop [16]=Oop [24]=Oop [40]=Oop [56]=Oop [72]=NarrowOop }
                                                                        ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.Arrays::fill@27 (line 3312)
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                        ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007fe9bf24e408:   mov    0x10(,%r14,8),%eax           ; implicit exception: dispatches to 0x00007fe9bf24eb46
   0.03%      0x00007fe9bf24e410:   mov    0xc(,%r14,8),%esi            ; ImmutableOopMap {rbx=Oop r13=Oop r14=NarrowOop [16]=Oop [24]=Oop [40]=Oop [56]=Oop [72]=NarrowOop }
                                                                        ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.Arrays::fill@27 (line 3312)
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                        ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e418:   mov    0x18(,%rax,8),%edx           ; implicit exception: dispatches to 0x00007fe9bf24eb6d
                                                                        ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.Arrays::fill@27 (line 3312)
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                        ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.03%      0x00007fe9bf24e41f:   test   %eax,0x0(,%rdx,8)            ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rdx=NarrowOop rbx=Oop r13=Oop r14=NarrowOop [16]=Oop [24]=Oop [40]=Oop [56]=Oop [72]=NarrowOop }
   0.02%      0x00007fe9bf24e426:   mov    %r8d,%eax                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@33 (line 975)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e429:   mov    %edx,%r9d
              0x00007fe9bf24e42c:   cltd                                ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.Arrays::fill@27 (line 3312)
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                        ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e42d:   idiv   %r10d                        ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rbx=Oop r9=NarrowOop r13=Oop r14=NarrowOop [16]=Oop [24]=Oop [40]=Oop [56]=Oop [72]=NarrowOop }
   0.01%      0x00007fe9bf24e430:   test   %edx,%edx
              0x00007fe9bf24e432:   jne    0x00007fe9bf24e8e0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@34 (line 975)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e438:   mov    %r8d,%eax                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - sun.security.util.ArrayUtil::blockSizeCheck@2 (line 40)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@5 (line 128)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e43b:   cltd                                ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.Arrays::fill@27 (line 3312)
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                        ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007fe9bf24e43c:   idiv   %esi                         ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rbx=Oop r9=NarrowOop r13=Oop r14=NarrowOop [16]=Oop [24]=Oop [40]=Oop [56]=Oop [72]=NarrowOop }
   0.00%      0x00007fe9bf24e43e:   xchg   %ax,%ax
              0x00007fe9bf24e440:   test   %edx,%edx
              0x00007fe9bf24e442:   jne    0x00007fe9bf24e8ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - sun.security.util.ArrayUtil::blockSizeCheck@3 (line 40)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@5 (line 128)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007fe9bf24e448:   mov    0x68(%rsp),%eax
              0x00007fe9bf24e44c:   shl    $0x3,%r9
              0x00007fe9bf24e450:   lea    -0x10(%rax),%r10d            ;* unwind (locked if synchronized)
                                                                        ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
                                                                        ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e454:   shl    $0x3,%r14                    ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007fe9bf24e458:   mov    %r14,0x8(%rsp)
              0x00007fe9bf24e45d:   mov    $0x0,%edx
              0x00007fe9bf24e462:   mov    $0x0,%ecx                    ;   {no_reloc}
              0x00007fe9bf24e467:   mov    0x38(%rsp),%r14
   0.00%      0x00007fe9bf24e46c:   mov    %r8d,%ebx
          ╭   0x00007fe9bf24e46f:   jmp    0x00007fe9bf24e503           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │   0x00007fe9bf24e474:   nopl   0x0(%rax,%rax,1)
          │   0x00007fe9bf24e47c:   data16 data16 xchg %ax,%ax          ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
          │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  │↗  0x00007fe9bf24e480:   test   %ecx,%ecx
          ││  0x00007fe9bf24e482:   jl     0x00007fe9bf24e7f2
   0.01%  ││  0x00007fe9bf24e488:   cmp    %edi,%ecx
          ││  0x00007fe9bf24e48a:   jg     0x00007fe9bf24e7f2
          ││  0x00007fe9bf24e490:   test   %edx,%edx
          ││  0x00007fe9bf24e492:   jl     0x00007fe9bf24e7f2
   1.51%  ││  0x00007fe9bf24e498:   nopl   0x0(%rax,%rax,1)
   0.01%  ││  0x00007fe9bf24e4a0:   cmp    %r10d,%edx
          ││  0x00007fe9bf24e4a3:   jg     0x00007fe9bf24e7f2
   0.01%  ││  0x00007fe9bf24e4a9:   mov    %r13,%rbp
          ││  0x00007fe9bf24e4ac:   mov    %r14,%rax
   1.59%  ││  0x00007fe9bf24e4af:   mov    %r9,%r11
   0.01%  ││  0x00007fe9bf24e4b2:   mov    %ecx,%r8d
   0.00%  ││  0x00007fe9bf24e4b5:   lea    0x10(%r8),%r8
          ││  0x00007fe9bf24e4b9:   add    %rbp,%r8
   1.70%  ││  0x00007fe9bf24e4bc:   mov    %edx,%ebp
   0.01%  ││  0x00007fe9bf24e4be:   lea    0x10(%rbp),%rbp
   0.00%  ││  0x00007fe9bf24e4c2:   add    %rax,%rbp
          ││  0x00007fe9bf24e4c5:   lea    0x10(%r11),%rax
   1.62%  ││  0x00007fe9bf24e4c9:   mov    %esi,%r11d
   0.01%  ││  0x00007fe9bf24e4cc:   mov    %r8,%rsi
   0.01%  ││  0x00007fe9bf24e4cf:   mov    %edx,%r8d
          ││  0x00007fe9bf24e4d2:   mov    %rbp,%rdx
   1.56%  ││  0x00007fe9bf24e4d5:   mov    %ecx,%ebp
   0.01%  ││  0x00007fe9bf24e4d7:   mov    %rax,%rcx                    ;* unwind (locked if synchronized)
          ││                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          ││                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  ││  0x00007fe9bf24e4da:   mov    %r10d,%eax
          ││  0x00007fe9bf24e4dd:   data16 xchg %ax,%ax
   1.60%  ││  0x00007fe9bf24e4e0:   call   0x00007fe9bedc1aa0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.02%  ││  0x00007fe9bf24e4e5:   nop
          ││  0x00007fe9bf24e4e6:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r9=Oop r13=Oop r14=Oop [8]=Oop [16]=Oop [24]=Oop [40]=Oop [56]=Oop [72]=NarrowOop }
          ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.sun.crypto.provider.AESCrypt::encryptBlock@9 (line 1082)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   1.64%  ││  0x00007fe9bf24e4ed:   test   %eax,(%rsi)                  ;   {poll}
   0.01%  ││  0x00007fe9bf24e4ef:   sub    %r11d,%ebx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  ││  0x00007fe9bf24e4f2:   mov    %r8d,%edx
          ││  0x00007fe9bf24e4f5:   add    %r11d,%edx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   1.67%  ││  0x00007fe9bf24e4f8:   mov    %ebp,%ecx
   0.00%  ││  0x00007fe9bf24e4fa:   add    %r11d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  ││  0x00007fe9bf24e4fd:   mov    %eax,%r10d
          ││  0x00007fe9bf24e500:   mov    %r11d,%esi                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   1.59%  ↘│  0x00007fe9bf24e503:   cmp    %ebx,%esi
           ╰  0x00007fe9bf24e505:   jle    0x00007fe9bf24e480           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007fe9bf24e50b:   cmpl   $0x1,0x60(%rsp)
              0x00007fe9bf24e510:   jl     0x00007fe9bf24e7e8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::fill@7 (line 3287)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007fe9bf24e516:   data16 nopw 0x0(%rax,%rax,1)
              0x00007fe9bf24e520:   cmpl   $0x2,0x60(%rsp)
              0x00007fe9bf24e525:   jl     0x00007fe9bf24e673
              0x00007fe9bf24e52b:   mov    0x60(%rsp),%r11d
              0x00007fe9bf24e530:   mov    %r11d,%eax
....................................................................................................
  14.69%  <total for region 3>

....[Hottest Regions]...............................................................................
  45.88%                       <unknown> 
  26.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
  14.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
   7.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
   2.55%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.66%               kernel  [unknown] 
   0.23%         libc-2.31.so  __memset_avx2_erms 
   0.13%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
   0.10%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1121 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   1.80%  <...other 470 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1087 
  45.97%                       <unknown> 
   2.55%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.07%               kernel  [unknown] 
   0.23%         libc-2.31.so  __memset_avx2_erms 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1121 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  FreeListAllocator::reset 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  xmlStream::write_text 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  StatSamplerTask::task 
   0.02%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%            libjvm.so  TypeArrayKlass::allocate_common 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.54%  <...other 164 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  48.37%       jvmci, level 4
  45.97%                     
   2.55%         runtime stub
   2.07%               kernel
   0.55%            libjvm.so
   0.36%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       libz.so.1.2.11
   0.00%     perf-2104180.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:23:01

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

Benchmark                          (dataSize)  (keySize)      (transformation)  Mode  Cnt   Score   Error  Units
AesEcbCryptoBenchmark.decrypt           16384        128     AES/ECB/NoPadding  avgt    5  13.236 ± 0.063  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        128     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        128  AES/ECB/PKCS5Padding  avgt    5  22.173 ± 0.252  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        128  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        192     AES/ECB/NoPadding  avgt    5  13.774 ± 0.326  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        192     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        192  AES/ECB/PKCS5Padding  avgt    5  22.885 ± 0.886  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        192  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        256     AES/ECB/NoPadding  avgt    5  14.817 ± 0.299  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        256     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        256  AES/ECB/PKCS5Padding  avgt    5  23.587 ± 0.519  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        256  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        128     AES/ECB/NoPadding  avgt    5  12.800 ± 0.030  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        128     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        128  AES/ECB/PKCS5Padding  avgt    5  21.427 ± 0.873  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        128  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        192     AES/ECB/NoPadding  avgt    5  13.351 ± 0.073  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        192     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        192  AES/ECB/PKCS5Padding  avgt    5  22.777 ± 0.378  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        192  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        256     AES/ECB/NoPadding  avgt    5  13.434 ± 0.223  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        256     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        256  AES/ECB/PKCS5Padding  avgt    5  23.594 ± 0.759  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        256  AES/ECB/PKCS5Padding  avgt          NaN            ---
