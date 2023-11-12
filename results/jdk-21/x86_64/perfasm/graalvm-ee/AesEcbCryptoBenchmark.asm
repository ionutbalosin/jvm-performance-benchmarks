# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 12.199 us/op
# Warmup Iteration   2: 12.104 us/op
# Warmup Iteration   3: 12.158 us/op
# Warmup Iteration   4: 12.176 us/op
# Warmup Iteration   5: 11.985 us/op
Iteration   1: 12.166 us/op
Iteration   2: 12.000 us/op
Iteration   3: 12.588 us/op
Iteration   4: 12.211 us/op
Iteration   5: 12.140 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  12.221 ±(99.9%) 0.846 us/op [Average]
  (min, avg, max) = (12.000, 12.221, 12.588), stdev = 0.220
  CI (99.9%): [11.376, 13.067] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 268358 total address lines.
Perf output processed (skipped 62.018 seconds):
 Column 1: cycles (50627 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          <task_queued compile_id='1089' method='com.sun.crypto.provider.AESCrypt decryptBlock ([BI[BI)V' bytes='10' count='5379' iicount='5379' stamp='11.666' comment='tiered' hot_count='5379'/>
          <task_queued compile_id='1090' method='com.sun.crypto.provider.AESCrypt implDecryptBlock ([BI[BI)V' bytes='3849' count='6409' iicount='6409' stamp='11.666' comment='tiered' hot_count='6409'/>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f99ee8f1690
          --------------------------------------------------------------------------------
   3.32%    0x00007f99ee8f1720:   sub    $0x18,%rsp
            0x00007f99ee8f1724:   mov    -0x4(%rcx),%r10d
   0.03%    0x00007f99ee8f1728:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f99ee8f1700
   2.93%    0x00007f99ee8f1730:   vmovdqu (%rsi),%xmm0
   0.29%    0x00007f99ee8f1734:   vmovdqu 0x10(%rcx),%xmm2
            0x00007f99ee8f1739:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007f99ee8f173e:   vmovdqu 0x20(%rcx),%xmm3
   2.93%    0x00007f99ee8f1743:   vpshufb %xmm1,%xmm3,%xmm3
   0.24%    0x00007f99ee8f1748:   vmovdqu 0x30(%rcx),%xmm4
   0.00%    0x00007f99ee8f174d:   vpshufb %xmm1,%xmm4,%xmm4
            0x00007f99ee8f1752:   vmovdqu 0x40(%rcx),%xmm5
   2.89%    0x00007f99ee8f1757:   vpshufb %xmm1,%xmm5,%xmm5
   0.21%    0x00007f99ee8f175c:   vpxor  %xmm2,%xmm0,%xmm0
   0.02%    0x00007f99ee8f1760:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%    0x00007f99ee8f1765:   vaesdec %xmm4,%xmm0,%xmm0
   2.86%    0x00007f99ee8f176a:   vaesdec %xmm5,%xmm0,%xmm0
   0.22%    0x00007f99ee8f176f:   vmovdqu 0x50(%rcx),%xmm2
            0x00007f99ee8f1774:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f99ee8f1779:   vmovdqu 0x60(%rcx),%xmm3
   2.83%    0x00007f99ee8f177e:   vpshufb %xmm1,%xmm3,%xmm3
   0.22%    0x00007f99ee8f1783:   vmovdqu 0x70(%rcx),%xmm4
   0.02%    0x00007f99ee8f1788:   vpshufb %xmm1,%xmm4,%xmm4
   0.03%    0x00007f99ee8f178d:   vmovdqu 0x80(%rcx),%xmm5
   2.99%    0x00007f99ee8f1795:   vpshufb %xmm1,%xmm5,%xmm5
   0.22%    0x00007f99ee8f179a:   vaesdec %xmm2,%xmm0,%xmm0
   0.13%    0x00007f99ee8f179f:   vaesdec %xmm3,%xmm0,%xmm0
   0.66%    0x00007f99ee8f17a4:   vaesdec %xmm4,%xmm0,%xmm0
   4.69%    0x00007f99ee8f17a9:   vaesdec %xmm5,%xmm0,%xmm0
   4.12%    0x00007f99ee8f17ae:   vmovdqu 0x90(%rcx),%xmm2
            0x00007f99ee8f17b6:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f99ee8f17bb:   vmovdqu 0xa0(%rcx),%xmm3
   1.64%    0x00007f99ee8f17c3:   vpshufb %xmm1,%xmm3,%xmm3
   1.64%    0x00007f99ee8f17c8:   vmovdqu (%rcx),%xmm4
            0x00007f99ee8f17cc:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%    0x00007f99ee8f17d1:   cmp    $0x2c,%r10d
            0x00007f99ee8f17d5:   je     0x00007f99ee8f182a
            0x00007f99ee8f17d7:   vaesdec %xmm2,%xmm0,%xmm0
            0x00007f99ee8f17dc:   vaesdec %xmm3,%xmm0,%xmm0
            0x00007f99ee8f17e1:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007f99ee8f17e9:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f99ee8f17ee:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007f99ee8f17f6:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f99ee8f17fb:   nopl   0x0(%rax,%rax,1)
            0x00007f99ee8f1800:   cmp    $0x34,%r10d
            0x00007f99ee8f1804:   je     0x00007f99ee8f182a
....................................................................................................
  35.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

             0x00007f99ee8f17f6:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007f99ee8f17fb:   nopl   0x0(%rax,%rax,1)
             0x00007f99ee8f1800:   cmp    $0x34,%r10d
          ╭  0x00007f99ee8f1804:   je     0x00007f99ee8f182a
          │  0x00007f99ee8f1806:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f99ee8f180b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f99ee8f1810:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f99ee8f1818:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f99ee8f181d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f99ee8f1825:   vpshufb %xmm1,%xmm3,%xmm3
   1.62%  ↘  0x00007f99ee8f182a:   vaesdec %xmm2,%xmm0,%xmm0
   5.34%     0x00007f99ee8f182f:   vaesdec %xmm3,%xmm0,%xmm0
   8.47%     0x00007f99ee8f1834:   vaesdeclast %xmm4,%xmm0,%xmm0
  11.50%     0x00007f99ee8f1839:   vmovdqu %xmm0,(%rdx)
   3.21%     0x00007f99ee8f183d:   add    $0x18,%rsp
             0x00007f99ee8f1841:   ret    
             0x00007f99ee8f1842:   hlt    
             0x00007f99ee8f1843:   hlt    
             0x00007f99ee8f1844:   hlt    
             0x00007f99ee8f1845:   hlt    
             0x00007f99ee8f1846:   hlt    
             0x00007f99ee8f1847:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  30.14%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1121 

             0x00007f99eed8efd9:   nopl   0x0(%rax)                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  ↗  0x00007f99eed8efe0:   test   %esi,%esi                    ;   {no_reloc}
          │  0x00007f99eed8efe2:   jl     0x00007f99eed8f10f
   3.30%  │  0x00007f99eed8efe8:   cmp    %edx,%esi
          │  0x00007f99eed8efea:   jg     0x00007f99eed8f10f
          │  0x00007f99eed8eff0:   test   %r9d,%r9d
          │  0x00007f99eed8eff3:   jl     0x00007f99eed8f10f
          │  0x00007f99eed8eff9:   nopl   0x0(%rax)
   0.01%  │  0x00007f99eed8f000:   cmp    %r10d,%r9d
          │  0x00007f99eed8f003:   jg     0x00007f99eed8f10f
   3.13%  │  0x00007f99eed8f009:   mov    %r11,%r8
          │  0x00007f99eed8f00c:   mov    %rax,%rbp
   0.00%  │  0x00007f99eed8f00f:   mov    %rcx,%rbx
   0.01%  │  0x00007f99eed8f012:   mov    %esi,%r13d
   3.31%  │  0x00007f99eed8f015:   lea    0x10(%r13),%r13
          │  0x00007f99eed8f019:   add    %r8,%r13
          │  0x00007f99eed8f01c:   mov    %r9d,%r8d
   0.01%  │  0x00007f99eed8f01f:   lea    0x10(%r8),%r8
   3.31%  │  0x00007f99eed8f023:   add    %rbp,%r8
          │  0x00007f99eed8f026:   lea    0x10(%rbx),%rbx
   0.00%  │  0x00007f99eed8f02a:   mov    %esi,%ebp
   0.00%  │  0x00007f99eed8f02c:   mov    %r13,%rsi
   3.11%  │  0x00007f99eed8f02f:   mov    %edx,%r13d
          │  0x00007f99eed8f032:   mov    %r8,%rdx
   0.00%  │  0x00007f99eed8f035:   mov    %rcx,%r8
   0.00%  │  0x00007f99eed8f038:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
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
   3.24%  │  0x00007f99eed8f03b:   mov    %r10d,%ebx
   0.00%  │  0x00007f99eed8f03e:   xchg   %ax,%ax
          │  0x00007f99eed8f040:   call   0x00007f99ee8f1720           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.00%  │  0x00007f99eed8f045:   nop
   0.00%  │  0x00007f99eed8f046:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   3.20%  │  0x00007f99eed8f049:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
          │  0x00007f99eed8f04c:   mov    %ebp,%esi
          │  0x00007f99eed8f04e:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f99eed8f050:   mov    %r13d,%edx
   3.29%  │  0x00007f99eed8f053:   mov    %ebx,%r10d
          │  0x00007f99eed8f056:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f99eed8f059:   cmp    %r14d,%edi
          ╰  0x00007f99eed8f05c:   jle    0x00007f99eed8efe0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f99eed8f05e:   mov    0x2c(%rsp),%r13d
   0.00%     0x00007f99eed8f063:   test   %r13d,%r13d
             0x00007f99eed8f066:   jne    0x00007f99eed8f2a5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%     0x00007f99eed8f06c:   mov    0x30(%rsp),%ebp
   0.01%     0x00007f99eed8f070:   mov    0x1c(%rsp),%ebx
   0.00%     0x00007f99eed8f074:   mov    %r12d,0x14(,%rbx,8)          ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%     0x00007f99eed8f07c:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%     0x00007f99eed8f083:   mov    0x40(%rsp),%rbp
             0x00007f99eed8f088:   add    $0x48,%rsp
             0x00007f99eed8f08c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007f99eed8f093:   ja     0x00007f99eed8f2d8
             0x00007f99eed8f099:   vzeroupper 
   0.00%     0x00007f99eed8f09c:   ret    
             0x00007f99eed8f09d:   mov    %r10,0x20(%rsp)
             0x00007f99eed8f0a2:   jmp    0x00007f99eed8ef76
             0x00007f99eed8f0a7:   mov    %r10,0x20(%rsp)
             0x00007f99eed8f0ac:   mov    $0x0,%r14
             0x00007f99eed8f0b3:   jmp    0x00007f99eed8ef4f
             0x00007f99eed8f0b8:   mov    %r14,%r10
             0x00007f99eed8f0bb:   jmp    0x00007f99eed8ef66           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
....................................................................................................
  25.97%  <total for region 3>

....[Hottest Regions]...............................................................................
  35.14%                      <unknown> 
  30.14%                      <unknown> 
  25.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1121 
   6.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.18%        libc-2.31.so  __memset_avx2_erms 
   0.15%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1153 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%              kernel  [unknown] 
   1.43%  <...other 421 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.39%                      <unknown> 
  32.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1121 
   1.24%              kernel  [unknown] 
   0.18%        libc-2.31.so  __memset_avx2_erms 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1153 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  FreeListAllocator::reset 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  G1CardSet::clear 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%        libc-2.31.so  syscall 
   0.47%  <...other 153 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  65.39%                    
  32.46%      jvmci, level 4
   1.24%              kernel
   0.55%           libjvm.so
   0.28%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2123760.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/PKCS5Padding)

# Run progress: 8.33% complete, ETA 00:21:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.210 us/op
# Warmup Iteration   2: 16.085 us/op
# Warmup Iteration   3: 16.006 us/op
# Warmup Iteration   4: 16.098 us/op
# Warmup Iteration   5: 16.084 us/op
Iteration   1: 16.068 us/op
Iteration   2: 16.012 us/op
Iteration   3: 16.101 us/op
Iteration   4: 15.974 us/op
Iteration   5: 16.019 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  16.035 ±(99.9%) 0.192 us/op [Average]
  (min, avg, max) = (15.974, 16.035, 16.101), stdev = 0.050
  CI (99.9%): [15.843, 16.226] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 271767 total address lines.
Perf output processed (skipped 62.151 seconds):
 Column 1: cycles (51016 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          <task_queued compile_id='1082' method='java.util.Arrays fill ([BB)V' bytes='21' count='13' backedge_count='98840' iicount='13' level='3' stamp='11.696' comment='tiered' hot_count='13'/>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f8f928f3e10
          --------------------------------------------------------------------------------
   2.40%    0x00007f8f928f3ea0:   sub    $0x18,%rsp
            0x00007f8f928f3ea4:   mov    -0x4(%rcx),%r10d
   0.01%    0x00007f8f928f3ea8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f8f928f3e80
   2.44%    0x00007f8f928f3eb0:   vmovdqu (%rsi),%xmm0
   0.19%    0x00007f8f928f3eb4:   vmovdqu 0x10(%rcx),%xmm2
            0x00007f8f928f3eb9:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f8f928f3ebe:   vmovdqu 0x20(%rcx),%xmm3
   2.39%    0x00007f8f928f3ec3:   vpshufb %xmm1,%xmm3,%xmm3
   0.07%    0x00007f8f928f3ec8:   vmovdqu 0x30(%rcx),%xmm4
   0.01%    0x00007f8f928f3ecd:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007f8f928f3ed2:   vmovdqu 0x40(%rcx),%xmm5
   2.26%    0x00007f8f928f3ed7:   vpshufb %xmm1,%xmm5,%xmm5
   0.06%    0x00007f8f928f3edc:   vpxor  %xmm2,%xmm0,%xmm0
   0.01%    0x00007f8f928f3ee0:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%    0x00007f8f928f3ee5:   vaesdec %xmm4,%xmm0,%xmm0
   2.21%    0x00007f8f928f3eea:   vaesdec %xmm5,%xmm0,%xmm0
   0.10%    0x00007f8f928f3eef:   vmovdqu 0x50(%rcx),%xmm2
   0.00%    0x00007f8f928f3ef4:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f8f928f3ef9:   vmovdqu 0x60(%rcx),%xmm3
   2.26%    0x00007f8f928f3efe:   vpshufb %xmm1,%xmm3,%xmm3
   0.08%    0x00007f8f928f3f03:   vmovdqu 0x70(%rcx),%xmm4
            0x00007f8f928f3f08:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007f8f928f3f0d:   vmovdqu 0x80(%rcx),%xmm5
   2.39%    0x00007f8f928f3f15:   vpshufb %xmm1,%xmm5,%xmm5
   0.08%    0x00007f8f928f3f1a:   vaesdec %xmm2,%xmm0,%xmm0
   1.25%    0x00007f8f928f3f1f:   vaesdec %xmm3,%xmm0,%xmm0
   1.64%    0x00007f8f928f3f24:   vaesdec %xmm4,%xmm0,%xmm0
   5.92%    0x00007f8f928f3f29:   vaesdec %xmm5,%xmm0,%xmm0
   7.01%    0x00007f8f928f3f2e:   vmovdqu 0x90(%rcx),%xmm2
            0x00007f8f928f3f36:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f8f928f3f3b:   vmovdqu 0xa0(%rcx),%xmm3
   0.60%    0x00007f8f928f3f43:   vpshufb %xmm1,%xmm3,%xmm3
   1.70%    0x00007f8f928f3f48:   vmovdqu (%rcx),%xmm4
            0x00007f8f928f3f4c:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007f8f928f3f51:   cmp    $0x2c,%r10d
            0x00007f8f928f3f55:   je     0x00007f8f928f3faa
            0x00007f8f928f3f57:   vaesdec %xmm2,%xmm0,%xmm0
            0x00007f8f928f3f5c:   vaesdec %xmm3,%xmm0,%xmm0
            0x00007f8f928f3f61:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007f8f928f3f69:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f8f928f3f6e:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007f8f928f3f76:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f8f928f3f7b:   nopl   0x0(%rax,%rax,1)
            0x00007f8f928f3f80:   cmp    $0x34,%r10d
            0x00007f8f928f3f84:   je     0x00007f8f928f3faa
....................................................................................................
  35.10%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

             0x00007f8f928f3f76:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007f8f928f3f7b:   nopl   0x0(%rax,%rax,1)
             0x00007f8f928f3f80:   cmp    $0x34,%r10d
          ╭  0x00007f8f928f3f84:   je     0x00007f8f928f3faa
          │  0x00007f8f928f3f86:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f8f928f3f8b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f8f928f3f90:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f8f928f3f98:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f8f928f3f9d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f8f928f3fa5:   vpshufb %xmm1,%xmm3,%xmm3
   0.58%  ↘  0x00007f8f928f3faa:   vaesdec %xmm2,%xmm0,%xmm0
   5.96%     0x00007f8f928f3faf:   vaesdec %xmm3,%xmm0,%xmm0
   9.50%     0x00007f8f928f3fb4:   vaesdeclast %xmm4,%xmm0,%xmm0
   9.70%     0x00007f8f928f3fb9:   vmovdqu %xmm0,(%rdx)
   2.54%     0x00007f8f928f3fbd:   add    $0x18,%rsp
             0x00007f8f928f3fc1:   ret    
             0x00007f8f928f3fc2:   hlt    
             0x00007f8f928f3fc3:   hlt    
             0x00007f8f928f3fc4:   hlt    
             0x00007f8f928f3fc5:   hlt    
             0x00007f8f928f3fc6:   hlt    
             0x00007f8f928f3fc7:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  28.29%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 

             0x00007f8f92d975d6:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  ↗  0x00007f8f92d975e0:   test   %esi,%esi
          │  0x00007f8f92d975e2:   jl     0x00007f8f92d97cfc
   2.33%  │  0x00007f8f92d975e8:   cmp    %edx,%esi
          │  0x00007f8f92d975ea:   jg     0x00007f8f92d97cfc
          │  0x00007f8f92d975f0:   test   %r9d,%r9d
          │  0x00007f8f92d975f3:   jl     0x00007f8f92d97cfc
          │  0x00007f8f92d975f9:   nopl   0x0(%rax)
   0.00%  │  0x00007f8f92d97600:   cmp    %r10d,%r9d
          │  0x00007f8f92d97603:   jg     0x00007f8f92d97cfc
   2.42%  │  0x00007f8f92d97609:   mov    %r11,%r13
          │  0x00007f8f92d9760c:   mov    %r14,%rbx
          │  0x00007f8f92d9760f:   mov    %rax,%rdi
   0.01%  │  0x00007f8f92d97612:   mov    %esi,%r8d
   2.31%  │  0x00007f8f92d97615:   lea    0x10(%r8),%r8
          │  0x00007f8f92d97619:   add    %r13,%r8
          │  0x00007f8f92d9761c:   mov    %r9d,%r13d
   0.00%  │  0x00007f8f92d9761f:   lea    0x10(%r13),%r13
   2.40%  │  0x00007f8f92d97623:   add    %rbx,%r13
   0.00%  │  0x00007f8f92d97626:   lea    0x10(%rdi),%rdi
          │  0x00007f8f92d9762a:   mov    %esi,%ebx
   0.01%  │  0x00007f8f92d9762c:   mov    %r8,%rsi
   2.39%  │  0x00007f8f92d9762f:   mov    %edx,%r8d
          │  0x00007f8f92d97632:   mov    %r13,%rdx
          │  0x00007f8f92d97635:   mov    %ecx,%r13d
   0.00%  │  0x00007f8f92d97638:   mov    %rdi,%rcx                    ;* unwind (locked if synchronized)
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
   2.51%  │  0x00007f8f92d9763b:   mov    %r10d,%edi
          │  0x00007f8f92d9763e:   xchg   %ax,%ax
          │  0x00007f8f92d97640:   call   0x00007f8f928f3ea0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
          │  0x00007f8f92d97645:   nop
   0.00%  │  0x00007f8f92d97646:   sub    %r13d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.38%  │  0x00007f8f92d97649:   add    %r13d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
          │  0x00007f8f92d9764c:   mov    %ebx,%esi
          │  0x00007f8f92d9764e:   add    %r13d,%esi                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f8f92d97651:   mov    %r8d,%edx
   2.39%  │  0x00007f8f92d97654:   mov    %edi,%r10d
          │  0x00007f8f92d97657:   mov    %r13d,%ecx                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
          │  0x00007f8f92d9765a:   cmp    %ebp,%ecx
          ╰  0x00007f8f92d9765c:   jle    0x00007f8f92d975e0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f8f92d9765e:   mov    0x34(%rsp),%r8d
   0.00%     0x00007f8f92d97663:   test   %r8d,%r8d
             0x00007f8f92d97666:   je     0x00007f8f92d9804f           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f8f92d9766c:   mov    %r8d,%eax
             0x00007f8f92d9766f:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@21 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%     0x00007f8f92d97671:   movsbl 0x10(%r14,%rax,1),%eax
   0.01%     0x00007f8f92d97677:   movsbl %al,%r10d                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%     0x00007f8f92d9767b:   nopl   0x0(%rax,%rax,1)
             0x00007f8f92d97680:   test   $0xff,%r10d
             0x00007f8f92d97687:   je     0x00007f8f92d97e60           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@36 (line 98)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%     0x00007f8f92d9768d:   mov    0x2c(%rsp),%edi
             0x00007f8f92d97691:   movzbl %al,%esi                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@30 (line 97)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f8f92d97694:   cmp    %edi,%esi
             0x00007f8f92d97696:   jg     0x00007f8f92d98005           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@45 (line 98)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f8f92d9769c:   nopl   0x0(%rax)
   0.01%     0x00007f8f92d976a0:   cmp    %r8d,%esi
             0x00007f8f92d976a3:   ja     0x00007f8f92d97e15           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@60 (line 104)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f8f92d976a9:   mov    %r8d,%r9d
             0x00007f8f92d976ac:   sub    %esi,%r9d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@54 (line 103)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f8f92d976af:   mov    %r8d,%ebx
   0.00%     0x00007f8f92d976b2:   cmp    %r9d,%r8d
             0x00007f8f92d976b5:   jg     0x00007f8f92d97b3a           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@79 (line 109)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%     0x00007f8f92d976bb:   cmp    %r8d,%r9d
             0x00007f8f92d976be:   mov    $0x0,%edx
             0x00007f8f92d976c3:   cmovg  %edx,%esi
   0.00%     0x00007f8f92d976c6:   mov    %esi,%esi
             0x00007f8f92d976c8:   test   %rsi,%rsi
             0x00007f8f92d976cb:   je     0x00007f8f92d977d7
             0x00007f8f92d976d1:   mov    %r9d,%edx
   0.01%     0x00007f8f92d976d4:   lea    0x10(%r14,%rdx,1),%rdx
   0.01%     0x00007f8f92d976d9:   vmovd  %eax,%xmm0
             0x00007f8f92d976dd:   vpbroadcastb %xmm0,%ymm0
   0.24%     0x00007f8f92d976e2:   vpcmpeqd %ymm1,%ymm1,%ymm1
             0x00007f8f92d976e6:   cmp    $0x20,%rsi
             0x00007f8f92d976ea:   jae    0x00007f8f92d97b78
             0x00007f8f92d976f0:   mov    $0x0,%rbp
             0x00007f8f92d976f7:   mov    %r9d,%edi
             0x00007f8f92d976fa:   lea    -0x10(%rsi),%rcx
   0.00%     0x00007f8f92d976fe:   xchg   %ax,%ax
             0x00007f8f92d97700:   cmp    %rcx,%rbp
             0x00007f8f92d97703:   jg     0x00007f8f92d97bf1
             0x00007f8f92d97709:   vmovdqu (%rdx,%rbp,1),%xmm2
             0x00007f8f92d9770e:   vpcmpeqb %xmm2,%xmm0,%xmm2
   0.01%     0x00007f8f92d97712:   vpxor  %xmm1,%xmm2,%xmm1
             0x00007f8f92d97716:   vptest %xmm1,%xmm1
             0x00007f8f92d9771b:   nopl   0x0(%rax,%rax,1)
             0x00007f8f92d97720:   jne    0x00007f8f92d97db3
   0.00%     0x00007f8f92d97726:   lea    0x10(%rdi),%ecx
             0x00007f8f92d97729:   lea    0x10(%rbp),%rdi
             0x00007f8f92d9772d:   lea    -0x8(%rsi),%rbp
             0x00007f8f92d97731:   cmp    %rbp,%rdi
             0x00007f8f92d97734:   jg     0x00007f8f92d97763
             0x00007f8f92d9773a:   vmovq  (%rdx,%rdi,1),%xmm1          ;   {no_reloc}
             0x00007f8f92d97740:   vpcmpeqb %xmm1,%xmm0,%xmm1
             0x00007f8f92d97744:   vpmovmskb %xmm1,%ebp
             0x00007f8f92d97748:   and    $0xff,%rbp
             0x00007f8f92d9774f:   cmp    $0xff,%rbp
             0x00007f8f92d97756:   jne    0x00007f8f92d98017
....................................................................................................
  19.48%  <total for region 3>

....[Hottest Regions]...............................................................................
  35.10%                      <unknown> 
  28.29%                      <unknown> 
  19.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   6.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   4.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   2.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.83%              kernel  [unknown] 
   0.28%        libc-2.31.so  __memset_avx2_erms 
   0.12%              kernel  [unknown] 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1147 
   1.82%  <...other 451 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.53%                      <unknown> 
  33.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   2.10%              kernel  [unknown] 
   0.28%        libc-2.31.so  __memset_avx2_erms 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1147 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  defaultStream::write 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1CardSet::clear 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.01%           libjvm.so  HeapRegion::clear_cardtable 
   0.01%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.49%  <...other 152 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  63.53%                    
  33.29%      jvmci, level 4
   2.10%              kernel
   0.59%           libjvm.so
   0.40%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/NoPadding)

# Run progress: 16.67% complete, ETA 00:19:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.511 us/op
# Warmup Iteration   2: 14.859 us/op
# Warmup Iteration   3: 14.905 us/op
# Warmup Iteration   4: 14.869 us/op
# Warmup Iteration   5: 14.895 us/op
Iteration   1: 14.861 us/op
Iteration   2: 14.938 us/op
Iteration   3: 14.762 us/op
Iteration   4: 14.882 us/op
Iteration   5: 14.865 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  14.862 ±(99.9%) 0.245 us/op [Average]
  (min, avg, max) = (14.762, 14.862, 14.938), stdev = 0.064
  CI (99.9%): [14.616, 15.107] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 263760 total address lines.
Perf output processed (skipped 62.059 seconds):
 Column 1: cycles (50812 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f9b868f4890
            --------------------------------------------------------------------------------
   2.67%      0x00007f9b868f4920:   sub    $0x18,%rsp
              0x00007f9b868f4924:   mov    -0x4(%rcx),%r10d
   0.01%      0x00007f9b868f4928:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f9b868f4900
   2.23%      0x00007f9b868f4930:   vmovdqu (%rsi),%xmm0
   0.38%      0x00007f9b868f4934:   vmovdqu 0x10(%rcx),%xmm2
   0.00%      0x00007f9b868f4939:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f9b868f493e:   vmovdqu 0x20(%rcx),%xmm3
   2.44%      0x00007f9b868f4943:   vpshufb %xmm1,%xmm3,%xmm3
   0.28%      0x00007f9b868f4948:   vmovdqu 0x30(%rcx),%xmm4
   0.00%      0x00007f9b868f494d:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007f9b868f4952:   vmovdqu 0x40(%rcx),%xmm5
   2.31%      0x00007f9b868f4957:   vpshufb %xmm1,%xmm5,%xmm5
   0.27%      0x00007f9b868f495c:   vpxor  %xmm2,%xmm0,%xmm0
   0.01%      0x00007f9b868f4960:   vaesdec %xmm3,%xmm0,%xmm0
   0.00%      0x00007f9b868f4965:   vaesdec %xmm4,%xmm0,%xmm0
   2.33%      0x00007f9b868f496a:   vaesdec %xmm5,%xmm0,%xmm0
   0.30%      0x00007f9b868f496f:   vmovdqu 0x50(%rcx),%xmm2
   0.00%      0x00007f9b868f4974:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f9b868f4979:   vmovdqu 0x60(%rcx),%xmm3
   2.29%      0x00007f9b868f497e:   vpshufb %xmm1,%xmm3,%xmm3
   0.29%      0x00007f9b868f4983:   vmovdqu 0x70(%rcx),%xmm4
              0x00007f9b868f4988:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f9b868f498d:   vmovdqu 0x80(%rcx),%xmm5
   2.43%      0x00007f9b868f4995:   vpshufb %xmm1,%xmm5,%xmm5
   0.26%      0x00007f9b868f499a:   vaesdec %xmm2,%xmm0,%xmm0
   0.02%      0x00007f9b868f499f:   vaesdec %xmm3,%xmm0,%xmm0
   0.02%      0x00007f9b868f49a4:   vaesdec %xmm4,%xmm0,%xmm0
   2.34%      0x00007f9b868f49a9:   vaesdec %xmm5,%xmm0,%xmm0
   1.09%      0x00007f9b868f49ae:   vmovdqu 0x90(%rcx),%xmm2
              0x00007f9b868f49b6:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f9b868f49bb:   vmovdqu 0xa0(%rcx),%xmm3
   1.68%      0x00007f9b868f49c3:   vpshufb %xmm1,%xmm3,%xmm3
   0.87%      0x00007f9b868f49c8:   vmovdqu (%rcx),%xmm4
   0.00%      0x00007f9b868f49cc:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%      0x00007f9b868f49d1:   cmp    $0x2c,%r10d
          ╭   0x00007f9b868f49d5:   je     0x00007f9b868f4a2a
   1.74%  │   0x00007f9b868f49d7:   vaesdec %xmm2,%xmm0,%xmm0
   3.34%  │   0x00007f9b868f49dc:   vaesdec %xmm3,%xmm0,%xmm0
   7.83%  │   0x00007f9b868f49e1:   vmovdqu 0xb0(%rcx),%xmm2
   0.05%  │   0x00007f9b868f49e9:   vpshufb %xmm1,%xmm2,%xmm2
   0.33%  │   0x00007f9b868f49ee:   vmovdqu 0xc0(%rcx),%xmm3
          │   0x00007f9b868f49f6:   vpshufb %xmm1,%xmm3,%xmm3
   2.22%  │   0x00007f9b868f49fb:   nopl   0x0(%rax,%rax,1)
   0.01%  │   0x00007f9b868f4a00:   cmp    $0x34,%r10d
          │╭  0x00007f9b868f4a04:   je     0x00007f9b868f4a2a
          ││  0x00007f9b868f4a06:   vaesdec %xmm2,%xmm0,%xmm0
          ││  0x00007f9b868f4a0b:   vaesdec %xmm3,%xmm0,%xmm0
          ││  0x00007f9b868f4a10:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f9b868f4a18:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f9b868f4a1d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007f9b868f4a25:   vpshufb %xmm1,%xmm3,%xmm3
   0.35%  ↘↘  0x00007f9b868f4a2a:   vaesdec %xmm2,%xmm0,%xmm0
   7.37%      0x00007f9b868f4a2f:   vaesdec %xmm3,%xmm0,%xmm0
  10.22%      0x00007f9b868f4a34:   vaesdeclast %xmm4,%xmm0,%xmm0
....................................................................................................
  40.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

             0x00007f9b868f49f6:   vpshufb %xmm1,%xmm3,%xmm3
   2.22%     0x00007f9b868f49fb:   nopl   0x0(%rax,%rax,1)
   0.01%     0x00007f9b868f4a00:   cmp    $0x34,%r10d
          ╭  0x00007f9b868f4a04:   je     0x00007f9b868f4a2a
          │  0x00007f9b868f4a06:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f9b868f4a0b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f9b868f4a10:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f9b868f4a18:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f9b868f4a1d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f9b868f4a25:   vpshufb %xmm1,%xmm3,%xmm3
   0.35%  ↘  0x00007f9b868f4a2a:   vaesdec %xmm2,%xmm0,%xmm0
   7.37%     0x00007f9b868f4a2f:   vaesdec %xmm3,%xmm0,%xmm0
  10.22%     0x00007f9b868f4a34:   vaesdeclast %xmm4,%xmm0,%xmm0
  10.66%     0x00007f9b868f4a39:   vmovdqu %xmm0,(%rdx)
   2.54%     0x00007f9b868f4a3d:   add    $0x18,%rsp
             0x00007f9b868f4a41:   ret    
             0x00007f9b868f4a42:   hlt    
             0x00007f9b868f4a43:   hlt    
             0x00007f9b868f4a44:   hlt    
             0x00007f9b868f4a45:   hlt    
             0x00007f9b868f4a46:   hlt    
             0x00007f9b868f4a47:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  31.14%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1089 

             0x00007f9b86d8ded9:   nopl   0x0(%rax)                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%  ↗  0x00007f9b86d8dee0:   test   %esi,%esi                    ;   {no_reloc}
          │  0x00007f9b86d8dee2:   jl     0x00007f9b86d8e00f
   2.59%  │  0x00007f9b86d8dee8:   cmp    %edx,%esi
          │  0x00007f9b86d8deea:   jg     0x00007f9b86d8e00f
          │  0x00007f9b86d8def0:   test   %r9d,%r9d
          │  0x00007f9b86d8def3:   jl     0x00007f9b86d8e00f
          │  0x00007f9b86d8def9:   nopl   0x0(%rax)
   0.01%  │  0x00007f9b86d8df00:   cmp    %r10d,%r9d
          │  0x00007f9b86d8df03:   jg     0x00007f9b86d8e00f
   2.56%  │  0x00007f9b86d8df09:   mov    %r11,%r8
          │  0x00007f9b86d8df0c:   mov    %rax,%rbp
          │  0x00007f9b86d8df0f:   mov    %rcx,%rbx
   0.00%  │  0x00007f9b86d8df12:   mov    %esi,%r13d
   2.72%  │  0x00007f9b86d8df15:   lea    0x10(%r13),%r13
          │  0x00007f9b86d8df19:   add    %r8,%r13
   0.00%  │  0x00007f9b86d8df1c:   mov    %r9d,%r8d
   0.01%  │  0x00007f9b86d8df1f:   lea    0x10(%r8),%r8
   2.49%  │  0x00007f9b86d8df23:   add    %rbp,%r8
   0.00%  │  0x00007f9b86d8df26:   lea    0x10(%rbx),%rbx
          │  0x00007f9b86d8df2a:   mov    %esi,%ebp
   0.01%  │  0x00007f9b86d8df2c:   mov    %r13,%rsi
   2.56%  │  0x00007f9b86d8df2f:   mov    %edx,%r13d
          │  0x00007f9b86d8df32:   mov    %r8,%rdx
          │  0x00007f9b86d8df35:   mov    %rcx,%r8
   0.01%  │  0x00007f9b86d8df38:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
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
   2.70%  │  0x00007f9b86d8df3b:   mov    %r10d,%ebx
          │  0x00007f9b86d8df3e:   xchg   %ax,%ax
          │  0x00007f9b86d8df40:   call   0x00007f9b868f4920           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.00%  │  0x00007f9b86d8df45:   nop
   0.00%  │  0x00007f9b86d8df46:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.72%  │  0x00007f9b86d8df49:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f9b86d8df4c:   mov    %ebp,%esi
          │  0x00007f9b86d8df4e:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f9b86d8df50:   mov    %r13d,%edx
   2.60%  │  0x00007f9b86d8df53:   mov    %ebx,%r10d
          │  0x00007f9b86d8df56:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f9b86d8df59:   cmp    %r14d,%edi
          ╰  0x00007f9b86d8df5c:   jle    0x00007f9b86d8dee0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f9b86d8df5e:   mov    0x2c(%rsp),%r13d
   0.00%     0x00007f9b86d8df63:   test   %r13d,%r13d
             0x00007f9b86d8df66:   jne    0x00007f9b86d8e1a5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f9b86d8df6c:   mov    0x30(%rsp),%ebp
             0x00007f9b86d8df70:   mov    0x1c(%rsp),%ebx
             0x00007f9b86d8df74:   mov    %r12d,0x14(,%rbx,8)          ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f9b86d8df7c:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%     0x00007f9b86d8df83:   mov    0x40(%rsp),%rbp
             0x00007f9b86d8df88:   add    $0x48,%rsp
             0x00007f9b86d8df8c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007f9b86d8df93:   ja     0x00007f9b86d8e1d8
   0.00%     0x00007f9b86d8df99:   vzeroupper 
   0.00%     0x00007f9b86d8df9c:   ret    
             0x00007f9b86d8df9d:   mov    %r10,0x20(%rsp)
             0x00007f9b86d8dfa2:   jmp    0x00007f9b86d8de76
             0x00007f9b86d8dfa7:   mov    %r10,0x20(%rsp)
             0x00007f9b86d8dfac:   mov    $0x0,%r14
             0x00007f9b86d8dfb3:   jmp    0x00007f9b86d8de4f
             0x00007f9b86d8dfb8:   mov    %r14,%r10
             0x00007f9b86d8dfbb:   jmp    0x00007f9b86d8de66           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
....................................................................................................
  21.01%  <total for region 3>

....[Hottest Regions]...............................................................................
  40.06%                      <unknown> 
  31.14%                      <unknown> 
  21.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1089 
   5.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1089 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1089 
   0.21%              kernel  [unknown] 
   0.12%        libc-2.31.so  __memset_avx2_erms 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1118 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.54%  <...other 403 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.28%                      <unknown> 
  26.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1089 
   1.61%              kernel  [unknown] 
   0.12%        libc-2.31.so  __memset_avx2_erms 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1118 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  FreeListAllocator::reset 
   0.02%           libjvm.so  VMError::is_error_reported 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  HeapRegion::clear_cardtable 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.41%  <...other 131 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  71.28%                    
  26.33%      jvmci, level 4
   1.61%              kernel
   0.45%           libjvm.so
   0.23%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/PKCS5Padding)

# Run progress: 25.00% complete, ETA 00:17:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 18.042 us/op
# Warmup Iteration   2: 17.088 us/op
# Warmup Iteration   3: 17.017 us/op
# Warmup Iteration   4: 17.093 us/op
# Warmup Iteration   5: 17.039 us/op
Iteration   1: 17.046 us/op
Iteration   2: 17.095 us/op
Iteration   3: 17.010 us/op
Iteration   4: 17.097 us/op
Iteration   5: 17.058 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  17.061 ±(99.9%) 0.140 us/op [Average]
  (min, avg, max) = (17.010, 17.061, 17.097), stdev = 0.036
  CI (99.9%): [16.921, 17.201] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 268111 total address lines.
Perf output processed (skipped 62.120 seconds):
 Column 1: cycles (50681 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007fa0c28f5a10
            --------------------------------------------------------------------------------
   2.28%      0x00007fa0c28f5aa0:   sub    $0x18,%rsp
              0x00007fa0c28f5aa4:   mov    -0x4(%rcx),%r10d
   0.01%      0x00007fa0c28f5aa8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007fa0c28f5a80
   2.12%      0x00007fa0c28f5ab0:   vmovdqu (%rsi),%xmm0
   0.30%      0x00007fa0c28f5ab4:   vmovdqu 0x10(%rcx),%xmm2
              0x00007fa0c28f5ab9:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007fa0c28f5abe:   vmovdqu 0x20(%rcx),%xmm3
   2.07%      0x00007fa0c28f5ac3:   vpshufb %xmm1,%xmm3,%xmm3
   0.17%      0x00007fa0c28f5ac8:   vmovdqu 0x30(%rcx),%xmm4
              0x00007fa0c28f5acd:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007fa0c28f5ad2:   vmovdqu 0x40(%rcx),%xmm5
   2.04%      0x00007fa0c28f5ad7:   vpshufb %xmm1,%xmm5,%xmm5
   0.22%      0x00007fa0c28f5adc:   vpxor  %xmm2,%xmm0,%xmm0
   0.01%      0x00007fa0c28f5ae0:   vaesdec %xmm3,%xmm0,%xmm0
   0.00%      0x00007fa0c28f5ae5:   vaesdec %xmm4,%xmm0,%xmm0
   2.06%      0x00007fa0c28f5aea:   vaesdec %xmm5,%xmm0,%xmm0
   0.19%      0x00007fa0c28f5aef:   vmovdqu 0x50(%rcx),%xmm2
              0x00007fa0c28f5af4:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007fa0c28f5af9:   vmovdqu 0x60(%rcx),%xmm3
   2.02%      0x00007fa0c28f5afe:   vpshufb %xmm1,%xmm3,%xmm3
   0.22%      0x00007fa0c28f5b03:   vmovdqu 0x70(%rcx),%xmm4
   0.00%      0x00007fa0c28f5b08:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007fa0c28f5b0d:   vmovdqu 0x80(%rcx),%xmm5
   2.12%      0x00007fa0c28f5b15:   vpshufb %xmm1,%xmm5,%xmm5
   0.20%      0x00007fa0c28f5b1a:   vaesdec %xmm2,%xmm0,%xmm0
   0.01%      0x00007fa0c28f5b1f:   vaesdec %xmm3,%xmm0,%xmm0
   0.49%      0x00007fa0c28f5b24:   vaesdec %xmm4,%xmm0,%xmm0
   3.39%      0x00007fa0c28f5b29:   vaesdec %xmm5,%xmm0,%xmm0
   2.90%      0x00007fa0c28f5b2e:   vmovdqu 0x90(%rcx),%xmm2
              0x00007fa0c28f5b36:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007fa0c28f5b3b:   vmovdqu 0xa0(%rcx),%xmm3
   1.25%      0x00007fa0c28f5b43:   vpshufb %xmm1,%xmm3,%xmm3
   1.07%      0x00007fa0c28f5b48:   vmovdqu (%rcx),%xmm4
              0x00007fa0c28f5b4c:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007fa0c28f5b51:   cmp    $0x2c,%r10d
          ╭   0x00007fa0c28f5b55:   je     0x00007fa0c28f5baa
   1.14%  │   0x00007fa0c28f5b57:   vaesdec %xmm2,%xmm0,%xmm0
   3.98%  │   0x00007fa0c28f5b5c:   vaesdec %xmm3,%xmm0,%xmm0
   6.63%  │   0x00007fa0c28f5b61:   vmovdqu 0xb0(%rcx),%xmm2
   0.00%  │   0x00007fa0c28f5b69:   vpshufb %xmm1,%xmm2,%xmm2
   0.55%  │   0x00007fa0c28f5b6e:   vmovdqu 0xc0(%rcx),%xmm3
   0.06%  │   0x00007fa0c28f5b76:   vpshufb %xmm1,%xmm3,%xmm3
   1.70%  │   0x00007fa0c28f5b7b:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa0c28f5b80:   cmp    $0x34,%r10d
          │╭  0x00007fa0c28f5b84:   je     0x00007fa0c28f5baa
          ││  0x00007fa0c28f5b86:   vaesdec %xmm2,%xmm0,%xmm0
          ││  0x00007fa0c28f5b8b:   vaesdec %xmm3,%xmm0,%xmm0
          ││  0x00007fa0c28f5b90:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007fa0c28f5b98:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007fa0c28f5b9d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007fa0c28f5ba5:   vpshufb %xmm1,%xmm3,%xmm3
   0.46%  ↘↘  0x00007fa0c28f5baa:   vaesdec %xmm2,%xmm0,%xmm0
   6.12%      0x00007fa0c28f5baf:   vaesdec %xmm3,%xmm0,%xmm0
....................................................................................................
  39.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

   0.06%     0x00007fa0c28f5b76:   vpshufb %xmm1,%xmm3,%xmm3
   1.70%     0x00007fa0c28f5b7b:   nopl   0x0(%rax,%rax,1)
             0x00007fa0c28f5b80:   cmp    $0x34,%r10d
          ╭  0x00007fa0c28f5b84:   je     0x00007fa0c28f5baa
          │  0x00007fa0c28f5b86:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007fa0c28f5b8b:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007fa0c28f5b90:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007fa0c28f5b98:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007fa0c28f5b9d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007fa0c28f5ba5:   vpshufb %xmm1,%xmm3,%xmm3
   0.46%  ↘  0x00007fa0c28f5baa:   vaesdec %xmm2,%xmm0,%xmm0
   6.12%     0x00007fa0c28f5baf:   vaesdec %xmm3,%xmm0,%xmm0
   8.60%     0x00007fa0c28f5bb4:   vaesdeclast %xmm4,%xmm0,%xmm0
   9.25%     0x00007fa0c28f5bb9:   vmovdqu %xmm0,(%rdx)
   2.35%     0x00007fa0c28f5bbd:   add    $0x18,%rsp
             0x00007fa0c28f5bc1:   ret    
             0x00007fa0c28f5bc2:   hlt    
             0x00007fa0c28f5bc3:   hlt    
             0x00007fa0c28f5bc4:   hlt    
             0x00007fa0c28f5bc5:   hlt    
             0x00007fa0c28f5bc6:   hlt    
             0x00007fa0c28f5bc7:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  26.78%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007fa0c2d97260:   test   %esi,%esi
            0x00007fa0c2d97262:   jl     0x00007fa0c2d9797c
   2.31%    0x00007fa0c2d97268:   cmp    %edx,%esi
            0x00007fa0c2d9726a:   jg     0x00007fa0c2d9797c
            0x00007fa0c2d97270:   test   %r9d,%r9d
            0x00007fa0c2d97273:   jl     0x00007fa0c2d9797c
            0x00007fa0c2d97279:   nopl   0x0(%rax)
            0x00007fa0c2d97280:   cmp    %r10d,%r9d
            0x00007fa0c2d97283:   jg     0x00007fa0c2d9797c
   2.31%    0x00007fa0c2d97289:   mov    %r11,%r13
            0x00007fa0c2d9728c:   mov    %r14,%rbx
            0x00007fa0c2d9728f:   mov    %rax,%rdi
            0x00007fa0c2d97292:   mov    %esi,%r8d
   2.36%    0x00007fa0c2d97295:   lea    0x10(%r8),%r8
            0x00007fa0c2d97299:   add    %r13,%r8
            0x00007fa0c2d9729c:   mov    %r9d,%r13d
            0x00007fa0c2d9729f:   lea    0x10(%r13),%r13
   2.27%    0x00007fa0c2d972a3:   add    %rbx,%r13
            0x00007fa0c2d972a6:   lea    0x10(%rdi),%rdi
   0.00%    0x00007fa0c2d972aa:   mov    %esi,%ebx
   0.00%    0x00007fa0c2d972ac:   mov    %r8,%rsi
   2.26%    0x00007fa0c2d972af:   mov    %edx,%r8d
   0.00%    0x00007fa0c2d972b2:   mov    %r13,%rdx
            0x00007fa0c2d972b5:   mov    %ecx,%r13d
   0.00%    0x00007fa0c2d972b8:   mov    %rdi,%rcx                    ;* unwind (locked if synchronized)
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
   2.31%    0x00007fa0c2d972bb:   mov    %r10d,%edi
   0.00%    0x00007fa0c2d972be:   xchg   %ax,%ax
            0x00007fa0c2d972c0:   call   0x00007fa0c28f5aa0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
            0x00007fa0c2d972c5:   nop
   0.00%    0x00007fa0c2d972c6:   sub    %r13d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.22%    0x00007fa0c2d972c9:   add    %r13d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007fa0c2d972cc:   mov    %ebx,%esi
            0x00007fa0c2d972ce:   add    %r13d,%esi                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007fa0c2d972d1:   mov    %r8d,%edx
   2.35%    0x00007fa0c2d972d4:   mov    %edi,%r10d
            0x00007fa0c2d972d7:   mov    %r13d,%ecx                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007fa0c2d972da:   cmp    %ebp,%ecx
            0x00007fa0c2d972dc:   jle    0x00007fa0c2d97260           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007fa0c2d972de:   mov    0x34(%rsp),%r8d
   0.00%    0x00007fa0c2d972e3:   test   %r8d,%r8d
            0x00007fa0c2d972e6:   je     0x00007fa0c2d97ccf           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                      ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007fa0c2d972ec:   mov    %r8d,%eax
            0x00007fa0c2d972ef:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.PKCS5Padding::unpad@21 (line 96)
                                                                      ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007fa0c2d972f1:   movsbl 0x10(%r14,%rax,1),%eax
            0x00007fa0c2d972f7:   movsbl %al,%r10d                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                      ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
....................................................................................................
  16.09%  <total for region 3>

....[Hottest Regions]...............................................................................
  39.20%                       <unknown> 
  26.78%                       <unknown> 
  16.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   5.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   4.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   2.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   2.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.22%         libc-2.31.so  __memset_avx2_erms 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1147 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   0.05%               kernel  [unknown] 
   2.34%  <...other 491 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.08%                       <unknown> 
  31.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1122 
   1.50%               kernel  [unknown] 
   0.22%         libc-2.31.so  __memset_avx2_erms 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1147 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%            libjvm.so  TypeArrayKlass::allocate_common 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  FreeListAllocator::reset 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  HighResTimeSampler::take_sample 
   0.02%            libjvm.so  G1CardSet::clear 
   0.02%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  G1CollectionSet::add_eden_region 
   0.58%  <...other 159 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  66.08%                     
  31.32%       jvmci, level 4
   1.50%               kernel
   0.67%            libjvm.so
   0.33%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.02%               [vdso]
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 15.773 us/op
# Warmup Iteration   2: 15.147 us/op
# Warmup Iteration   3: 15.324 us/op
# Warmup Iteration   4: 15.346 us/op
# Warmup Iteration   5: 15.300 us/op
Iteration   1: 15.396 us/op
Iteration   2: 15.417 us/op
Iteration   3: 15.250 us/op
Iteration   4: 15.320 us/op
Iteration   5: 15.121 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  15.301 ±(99.9%) 0.463 us/op [Average]
  (min, avg, max) = (15.121, 15.301, 15.417), stdev = 0.120
  CI (99.9%): [14.838, 15.764] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 267870 total address lines.
Perf output processed (skipped 62.078 seconds):
 Column 1: cycles (50864 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            <task_queued compile_id='1067' method='com.sun.crypto.provider.AESCrypt decryptBlock ([BI[BI)V' bytes='10' count='5377' iicount='5377' stamp='11.732' comment='tiered' hot_count='5377'/>
            <task_queued compile_id='1068' method='com.sun.crypto.provider.AESCrypt implDecryptBlock ([BI[BI)V' bytes='3849' count='5382' iicount='5382' stamp='11.732' comment='tiered' hot_count='5382'/>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007f2ee28f3710
            --------------------------------------------------------------------------------
   2.45%      0x00007f2ee28f37a0:   sub    $0x18,%rsp
   0.01%      0x00007f2ee28f37a4:   mov    -0x4(%rcx),%r10d
   0.01%      0x00007f2ee28f37a8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f2ee28f3780
   2.39%      0x00007f2ee28f37b0:   vmovdqu (%rsi),%xmm0
   0.32%      0x00007f2ee28f37b4:   vmovdqu 0x10(%rcx),%xmm2
   0.00%      0x00007f2ee28f37b9:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f2ee28f37be:   vmovdqu 0x20(%rcx),%xmm3
   2.37%      0x00007f2ee28f37c3:   vpshufb %xmm1,%xmm3,%xmm3
   0.15%      0x00007f2ee28f37c8:   vmovdqu 0x30(%rcx),%xmm4
   0.01%      0x00007f2ee28f37cd:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f2ee28f37d2:   vmovdqu 0x40(%rcx),%xmm5
   2.25%      0x00007f2ee28f37d7:   vpshufb %xmm1,%xmm5,%xmm5
   0.16%      0x00007f2ee28f37dc:   vpxor  %xmm2,%xmm0,%xmm0
   0.02%      0x00007f2ee28f37e0:   vaesdec %xmm3,%xmm0,%xmm0
   0.00%      0x00007f2ee28f37e5:   vaesdec %xmm4,%xmm0,%xmm0
   2.36%      0x00007f2ee28f37ea:   vaesdec %xmm5,%xmm0,%xmm0
   0.18%      0x00007f2ee28f37ef:   vmovdqu 0x50(%rcx),%xmm2
              0x00007f2ee28f37f4:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f2ee28f37f9:   vmovdqu 0x60(%rcx),%xmm3
   2.30%      0x00007f2ee28f37fe:   vpshufb %xmm1,%xmm3,%xmm3
   0.18%      0x00007f2ee28f3803:   vmovdqu 0x70(%rcx),%xmm4
   0.00%      0x00007f2ee28f3808:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007f2ee28f380d:   vmovdqu 0x80(%rcx),%xmm5
   2.35%      0x00007f2ee28f3815:   vpshufb %xmm1,%xmm5,%xmm5
   0.17%      0x00007f2ee28f381a:   vaesdec %xmm2,%xmm0,%xmm0
   0.02%      0x00007f2ee28f381f:   vaesdec %xmm3,%xmm0,%xmm0
              0x00007f2ee28f3824:   vaesdec %xmm4,%xmm0,%xmm0
   2.47%      0x00007f2ee28f3829:   vaesdec %xmm5,%xmm0,%xmm0
   0.16%      0x00007f2ee28f382e:   vmovdqu 0x90(%rcx),%xmm2
   0.00%      0x00007f2ee28f3836:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f2ee28f383b:   vmovdqu 0xa0(%rcx),%xmm3
   2.46%      0x00007f2ee28f3843:   vpshufb %xmm1,%xmm3,%xmm3
   0.17%      0x00007f2ee28f3848:   vmovdqu (%rcx),%xmm4
   0.01%      0x00007f2ee28f384c:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007f2ee28f3851:   cmp    $0x2c,%r10d
          ╭   0x00007f2ee28f3855:   je     0x00007f2ee28f38aa
   2.42%  │   0x00007f2ee28f3857:   vaesdec %xmm2,%xmm0,%xmm0
   0.23%  │   0x00007f2ee28f385c:   vaesdec %xmm3,%xmm0,%xmm0
   0.75%  │   0x00007f2ee28f3861:   vmovdqu 0xb0(%rcx),%xmm2
   0.00%  │   0x00007f2ee28f3869:   vpshufb %xmm1,%xmm2,%xmm2
   1.90%  │   0x00007f2ee28f386e:   vmovdqu 0xc0(%rcx),%xmm3
   0.18%  │   0x00007f2ee28f3876:   vpshufb %xmm1,%xmm3,%xmm3
   0.38%  │   0x00007f2ee28f387b:   nopl   0x0(%rax,%rax,1)
          │   0x00007f2ee28f3880:   cmp    $0x34,%r10d
          │╭  0x00007f2ee28f3884:   je     0x00007f2ee28f38aa
   2.02%  ││  0x00007f2ee28f3886:   vaesdec %xmm2,%xmm0,%xmm0
   2.41%  ││  0x00007f2ee28f388b:   vaesdec %xmm3,%xmm0,%xmm0
   6.85%  ││  0x00007f2ee28f3890:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f2ee28f3898:   vpshufb %xmm1,%xmm2,%xmm2
   0.47%  ││  0x00007f2ee28f389d:   vmovdqu 0xe0(%rcx),%xmm3
   0.06%  ││  0x00007f2ee28f38a5:   vpshufb %xmm1,%xmm3,%xmm3
   1.98%  ↘↘  0x00007f2ee28f38aa:   vaesdec %xmm2,%xmm0,%xmm0
   6.83%      0x00007f2ee28f38af:   vaesdec %xmm3,%xmm0,%xmm0
   9.80%      0x00007f2ee28f38b4:   vaesdeclast %xmm4,%xmm0,%xmm0
  10.13%      0x00007f2ee28f38b9:   vmovdqu %xmm0,(%rdx)
   2.45%      0x00007f2ee28f38bd:   add    $0x18,%rsp
              0x00007f2ee28f38c1:   ret    
              0x00007f2ee28f38c2:   hlt    
              0x00007f2ee28f38c3:   hlt    
              0x00007f2ee28f38c4:   hlt    
              0x00007f2ee28f38c5:   hlt    
              0x00007f2ee28f38c6:   hlt    
              0x00007f2ee28f38c7:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  71.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 

             0x00007f2ee2d96259:   nopl   0x0(%rax)                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  ↗  0x00007f2ee2d96260:   test   %esi,%esi                    ;   {no_reloc}
          │  0x00007f2ee2d96262:   jl     0x00007f2ee2d9638f
   2.47%  │  0x00007f2ee2d96268:   cmp    %edx,%esi
          │  0x00007f2ee2d9626a:   jg     0x00007f2ee2d9638f
          │  0x00007f2ee2d96270:   test   %r9d,%r9d
          │  0x00007f2ee2d96273:   jl     0x00007f2ee2d9638f
          │  0x00007f2ee2d96279:   nopl   0x0(%rax)
   0.01%  │  0x00007f2ee2d96280:   cmp    %r10d,%r9d
          │  0x00007f2ee2d96283:   jg     0x00007f2ee2d9638f
   2.47%  │  0x00007f2ee2d96289:   mov    %r11,%r8
          │  0x00007f2ee2d9628c:   mov    %rax,%rbp
   0.00%  │  0x00007f2ee2d9628f:   mov    %rcx,%rbx
   0.01%  │  0x00007f2ee2d96292:   mov    %esi,%r13d
   2.49%  │  0x00007f2ee2d96295:   lea    0x10(%r13),%r13
          │  0x00007f2ee2d96299:   add    %r8,%r13
   0.00%  │  0x00007f2ee2d9629c:   mov    %r9d,%r8d
   0.00%  │  0x00007f2ee2d9629f:   lea    0x10(%r8),%r8
   2.58%  │  0x00007f2ee2d962a3:   add    %rbp,%r8
          │  0x00007f2ee2d962a6:   lea    0x10(%rbx),%rbx
   0.01%  │  0x00007f2ee2d962aa:   mov    %esi,%ebp
   0.00%  │  0x00007f2ee2d962ac:   mov    %r13,%rsi
   2.44%  │  0x00007f2ee2d962af:   mov    %edx,%r13d
   0.00%  │  0x00007f2ee2d962b2:   mov    %r8,%rdx
   0.00%  │  0x00007f2ee2d962b5:   mov    %rcx,%r8
   0.00%  │  0x00007f2ee2d962b8:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
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
   2.45%  │  0x00007f2ee2d962bb:   mov    %r10d,%ebx
          │  0x00007f2ee2d962be:   xchg   %ax,%ax
   0.01%  │  0x00007f2ee2d962c0:   call   0x00007f2ee28f37a0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.00%  │  0x00007f2ee2d962c5:   nop
   0.00%  │  0x00007f2ee2d962c6:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.58%  │  0x00007f2ee2d962c9:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
          │  0x00007f2ee2d962cc:   mov    %ebp,%esi
   0.00%  │  0x00007f2ee2d962ce:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007f2ee2d962d0:   mov    %r13d,%edx
   2.54%  │  0x00007f2ee2d962d3:   mov    %ebx,%r10d
          │  0x00007f2ee2d962d6:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%  │  0x00007f2ee2d962d9:   cmp    %r14d,%edi
          ╰  0x00007f2ee2d962dc:   jle    0x00007f2ee2d96260           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f2ee2d962de:   mov    0x2c(%rsp),%r13d
             0x00007f2ee2d962e3:   test   %r13d,%r13d
             0x00007f2ee2d962e6:   jne    0x00007f2ee2d96525           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f2ee2d962ec:   mov    0x30(%rsp),%ebp
             0x00007f2ee2d962f0:   mov    0x1c(%rsp),%ebx
   0.00%     0x00007f2ee2d962f4:   mov    %r12d,0x14(,%rbx,8)          ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007f2ee2d962fc:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
....................................................................................................
  20.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.88%                       <unknown> 
  20.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   4.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   0.69%               kernel  [unknown] 
   0.15%         libc-2.31.so  __memset_avx2_erms 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1132 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   1.56%  <...other 434 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.95%                       <unknown> 
  25.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1100 
   2.08%               kernel  [unknown] 
   0.15%         libc-2.31.so  __memset_avx2_erms 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1132 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  G1CollectedHeap::mem_allocate 
   0.01%            libjvm.so  FreeListAllocator::reset 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.01%            libjvm.so  ThreadLocalAllocBuffer::fill 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.38%  <...other 128 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  71.95%                     
  25.24%       jvmci, level 4
   2.08%               kernel
   0.42%            libjvm.so
   0.24%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.02%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%     perf-2124031.map
   0.00%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/PKCS5Padding)

# Run progress: 41.67% complete, ETA 00:13:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.764 us/op
# Warmup Iteration   2: 17.411 us/op
# Warmup Iteration   3: 17.403 us/op
# Warmup Iteration   4: 17.604 us/op
# Warmup Iteration   5: 17.623 us/op
Iteration   1: 17.530 us/op
Iteration   2: 17.394 us/op
Iteration   3: 17.597 us/op
Iteration   4: 17.366 us/op
Iteration   5: 17.353 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  17.448 ±(99.9%) 0.420 us/op [Average]
  (min, avg, max) = (17.353, 17.448, 17.597), stdev = 0.109
  CI (99.9%): [17.028, 17.868] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 271476 total address lines.
Perf output processed (skipped 62.124 seconds):
 Column 1: cycles (50757 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesDecrypt&gt; 0x00007fb8b28f5a90
            --------------------------------------------------------------------------------
   2.18%      0x00007fb8b28f5b20:   sub    $0x18,%rsp
   0.01%      0x00007fb8b28f5b24:   mov    -0x4(%rcx),%r10d
   0.04%      0x00007fb8b28f5b28:   vmovdqu -0x30(%rip),%xmm1        # 0x00007fb8b28f5b00
   2.09%      0x00007fb8b28f5b30:   vmovdqu (%rsi),%xmm0
   0.25%      0x00007fb8b28f5b34:   vmovdqu 0x10(%rcx),%xmm2
   0.00%      0x00007fb8b28f5b39:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007fb8b28f5b3e:   vmovdqu 0x20(%rcx),%xmm3
   1.99%      0x00007fb8b28f5b43:   vpshufb %xmm1,%xmm3,%xmm3
   0.15%      0x00007fb8b28f5b48:   vmovdqu 0x30(%rcx),%xmm4
   0.02%      0x00007fb8b28f5b4d:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007fb8b28f5b52:   vmovdqu 0x40(%rcx),%xmm5
   2.05%      0x00007fb8b28f5b57:   vpshufb %xmm1,%xmm5,%xmm5
   0.12%      0x00007fb8b28f5b5c:   vpxor  %xmm2,%xmm0,%xmm0
   0.01%      0x00007fb8b28f5b60:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%      0x00007fb8b28f5b65:   vaesdec %xmm4,%xmm0,%xmm0
   2.11%      0x00007fb8b28f5b6a:   vaesdec %xmm5,%xmm0,%xmm0
   0.15%      0x00007fb8b28f5b6f:   vmovdqu 0x50(%rcx),%xmm2
              0x00007fb8b28f5b74:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007fb8b28f5b79:   vmovdqu 0x60(%rcx),%xmm3
   2.02%      0x00007fb8b28f5b7e:   vpshufb %xmm1,%xmm3,%xmm3
   0.15%      0x00007fb8b28f5b83:   vmovdqu 0x70(%rcx),%xmm4
   0.01%      0x00007fb8b28f5b88:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%      0x00007fb8b28f5b8d:   vmovdqu 0x80(%rcx),%xmm5
   2.02%      0x00007fb8b28f5b95:   vpshufb %xmm1,%xmm5,%xmm5
   0.16%      0x00007fb8b28f5b9a:   vaesdec %xmm2,%xmm0,%xmm0
   0.01%      0x00007fb8b28f5b9f:   vaesdec %xmm3,%xmm0,%xmm0
              0x00007fb8b28f5ba4:   vaesdec %xmm4,%xmm0,%xmm0
   2.15%      0x00007fb8b28f5ba9:   vaesdec %xmm5,%xmm0,%xmm0
   0.23%      0x00007fb8b28f5bae:   vmovdqu 0x90(%rcx),%xmm2
   0.01%      0x00007fb8b28f5bb6:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007fb8b28f5bbb:   vmovdqu 0xa0(%rcx),%xmm3
   2.03%      0x00007fb8b28f5bc3:   vpshufb %xmm1,%xmm3,%xmm3
   0.17%      0x00007fb8b28f5bc8:   vmovdqu (%rcx),%xmm4
   0.01%      0x00007fb8b28f5bcc:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007fb8b28f5bd1:   cmp    $0x2c,%r10d
          ╭   0x00007fb8b28f5bd5:   je     0x00007fb8b28f5c2a
   2.02%  │   0x00007fb8b28f5bd7:   vaesdec %xmm2,%xmm0,%xmm0
   0.99%  │   0x00007fb8b28f5bdc:   vaesdec %xmm3,%xmm0,%xmm0
   1.97%  │   0x00007fb8b28f5be1:   vmovdqu 0xb0(%rcx),%xmm2
   0.01%  │   0x00007fb8b28f5be9:   vpshufb %xmm1,%xmm2,%xmm2
   1.63%  │   0x00007fb8b28f5bee:   vmovdqu 0xc0(%rcx),%xmm3
   0.12%  │   0x00007fb8b28f5bf6:   vpshufb %xmm1,%xmm3,%xmm3
   0.51%  │   0x00007fb8b28f5bfb:   nopl   0x0(%rax,%rax,1)
   0.00%  │   0x00007fb8b28f5c00:   cmp    $0x34,%r10d
          │╭  0x00007fb8b28f5c04:   je     0x00007fb8b28f5c2a
   1.57%  ││  0x00007fb8b28f5c06:   vaesdec %xmm2,%xmm0,%xmm0
   3.25%  ││  0x00007fb8b28f5c0b:   vaesdec %xmm3,%xmm0,%xmm0
   6.08%  ││  0x00007fb8b28f5c10:   vmovdqu 0xd0(%rcx),%xmm2
   0.00%  ││  0x00007fb8b28f5c18:   vpshufb %xmm1,%xmm2,%xmm2
   0.54%  ││  0x00007fb8b28f5c1d:   vmovdqu 0xe0(%rcx),%xmm3
   0.03%  ││  0x00007fb8b28f5c25:   vpshufb %xmm1,%xmm3,%xmm3
   1.63%  ↘↘  0x00007fb8b28f5c2a:   vaesdec %xmm2,%xmm0,%xmm0
   5.82%      0x00007fb8b28f5c2f:   vaesdec %xmm3,%xmm0,%xmm0
   8.70%      0x00007fb8b28f5c34:   vaesdeclast %xmm4,%xmm0,%xmm0
   9.10%      0x00007fb8b28f5c39:   vmovdqu %xmm0,(%rdx)
   2.19%      0x00007fb8b28f5c3d:   add    $0x18,%rsp
              0x00007fb8b28f5c41:   ret    
              0x00007fb8b28f5c42:   hlt    
              0x00007fb8b28f5c43:   hlt    
              0x00007fb8b28f5c44:   hlt    
              0x00007fb8b28f5c45:   hlt    
              0x00007fb8b28f5c46:   hlt    
              0x00007fb8b28f5c47:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
....................................................................................................
  66.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 

             0x00007fb8b2d980d6:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%  ↗  0x00007fb8b2d980e0:   test   %esi,%esi
          │  0x00007fb8b2d980e2:   jl     0x00007fb8b2d987fc
   2.23%  │  0x00007fb8b2d980e8:   cmp    %edx,%esi
          │  0x00007fb8b2d980ea:   jg     0x00007fb8b2d987fc
          │  0x00007fb8b2d980f0:   test   %r9d,%r9d
          │  0x00007fb8b2d980f3:   jl     0x00007fb8b2d987fc
   0.01%  │  0x00007fb8b2d980f9:   nopl   0x0(%rax)
   0.00%  │  0x00007fb8b2d98100:   cmp    %r10d,%r9d
          │  0x00007fb8b2d98103:   jg     0x00007fb8b2d987fc
   2.26%  │  0x00007fb8b2d98109:   mov    %r11,%r13
          │  0x00007fb8b2d9810c:   mov    %r14,%rbx
   0.01%  │  0x00007fb8b2d9810f:   mov    %rax,%rdi
   0.00%  │  0x00007fb8b2d98112:   mov    %esi,%r8d
   2.24%  │  0x00007fb8b2d98115:   lea    0x10(%r8),%r8
          │  0x00007fb8b2d98119:   add    %r13,%r8
   0.00%  │  0x00007fb8b2d9811c:   mov    %r9d,%r13d
          │  0x00007fb8b2d9811f:   lea    0x10(%r13),%r13
   2.11%  │  0x00007fb8b2d98123:   add    %rbx,%r13
          │  0x00007fb8b2d98126:   lea    0x10(%rdi),%rdi
   0.00%  │  0x00007fb8b2d9812a:   mov    %esi,%ebx
          │  0x00007fb8b2d9812c:   mov    %r8,%rsi
   2.37%  │  0x00007fb8b2d9812f:   mov    %edx,%r8d
          │  0x00007fb8b2d98132:   mov    %r13,%rdx
   0.00%  │  0x00007fb8b2d98135:   mov    %ecx,%r13d
   0.00%  │  0x00007fb8b2d98138:   mov    %rdi,%rcx                    ;* unwind (locked if synchronized)
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
   2.23%  │  0x00007fb8b2d9813b:   mov    %r10d,%edi
          │  0x00007fb8b2d9813e:   xchg   %ax,%ax
   0.01%  │  0x00007fb8b2d98140:   call   0x00007fb8b28f5b20           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesDecrypt&gt;}
   0.00%  │  0x00007fb8b2d98145:   nop
          │  0x00007fb8b2d98146:   sub    %r13d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   2.18%  │  0x00007fb8b2d98149:   add    %r13d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007fb8b2d9814c:   mov    %ebx,%esi
   0.01%  │  0x00007fb8b2d9814e:   add    %r13d,%esi                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007fb8b2d98151:   mov    %r8d,%edx
   2.39%  │  0x00007fb8b2d98154:   mov    %edi,%r10d
   0.00%  │  0x00007fb8b2d98157:   mov    %r13d,%ecx                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@3 (line 136)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%  │  0x00007fb8b2d9815a:   cmp    %ebp,%ecx
          ╰  0x00007fb8b2d9815c:   jle    0x00007fb8b2d980e0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007fb8b2d9815e:   mov    0x34(%rsp),%r8d
   0.00%     0x00007fb8b2d98163:   test   %r8d,%r8d
             0x00007fb8b2d98166:   je     0x00007fb8b2d98b4f           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                       ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
             0x00007fb8b2d9816c:   mov    %r8d,%eax
             0x00007fb8b2d9816f:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  18.10%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.31%                      <unknown> 
  18.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   5.76%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   4.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   2.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.28%        libc-2.31.so  __memset_avx2_erms 
   0.27%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.19%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.10%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1160 
   0.06%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   2.03%  <...other 455 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.43%                      <unknown> 
  30.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 1137 
   1.40%              kernel  [unknown] 
   0.28%        libc-2.31.so  __memset_avx2_erms 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1160 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%           libjvm.so  G1CardSet::clear 
   0.02%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  G1NUMA::index_of_current_thread 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.55%  <...other 153 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  66.43%                    
  31.00%      jvmci, level 4
   1.40%              kernel
   0.64%           libjvm.so
   0.40%        libc-2.31.so
   0.07%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%          libjava.so
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/NoPadding)

# Run progress: 50.00% complete, ETA 00:11:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.637 us/op
# Warmup Iteration   2: 12.273 us/op
# Warmup Iteration   3: 12.286 us/op
# Warmup Iteration   4: 12.600 us/op
# Warmup Iteration   5: 12.341 us/op
Iteration   1: 12.098 us/op
Iteration   2: 12.369 us/op
Iteration   3: 12.335 us/op
Iteration   4: 12.409 us/op
Iteration   5: 12.201 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  12.282 ±(99.9%) 0.498 us/op [Average]
  (min, avg, max) = (12.098, 12.282, 12.409), stdev = 0.129
  CI (99.9%): [11.784, 12.780] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 268817 total address lines.
Perf output processed (skipped 62.073 seconds):
 Column 1: cycles (50605 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          [/Disassembly]
          </print_nmethod>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007fa34a8f6190
          --------------------------------------------------------------------------------
   3.15%    0x00007fa34a8f6220:   sub    $0x18,%rsp
   0.00%    0x00007fa34a8f6224:   mov    -0x4(%rcx),%r10d
   0.01%    0x00007fa34a8f6228:   vmovdqu -0x30(%rip),%xmm1        # 0x00007fa34a8f6200
   2.68%    0x00007fa34a8f6230:   vmovdqu (%rsi),%xmm0
   0.50%    0x00007fa34a8f6234:   vmovdqu (%rcx),%xmm2
   0.00%    0x00007fa34a8f6238:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007fa34a8f623d:   vpxor  %xmm2,%xmm0,%xmm0
   2.96%    0x00007fa34a8f6241:   vmovdqu 0x10(%rcx),%xmm2
   0.33%    0x00007fa34a8f6246:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007fa34a8f624b:   vmovdqu 0x20(%rcx),%xmm3
   0.01%    0x00007fa34a8f6250:   vpshufb %xmm1,%xmm3,%xmm3
   2.75%    0x00007fa34a8f6255:   vmovdqu 0x30(%rcx),%xmm4
   0.37%    0x00007fa34a8f625a:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007fa34a8f625f:   vmovdqu 0x40(%rcx),%xmm5
   0.00%    0x00007fa34a8f6264:   vpshufb %xmm1,%xmm5,%xmm5
   2.71%    0x00007fa34a8f6269:   vaesenc %xmm2,%xmm0,%xmm0
   0.38%    0x00007fa34a8f626e:   vaesenc %xmm3,%xmm0,%xmm0
   0.00%    0x00007fa34a8f6273:   vaesenc %xmm4,%xmm0,%xmm0
   0.02%    0x00007fa34a8f6278:   vaesenc %xmm5,%xmm0,%xmm0
   2.99%    0x00007fa34a8f627d:   vmovdqu 0x50(%rcx),%xmm2
   0.36%    0x00007fa34a8f6282:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007fa34a8f6287:   vmovdqu 0x60(%rcx),%xmm3
   0.02%    0x00007fa34a8f628c:   vpshufb %xmm1,%xmm3,%xmm3
   2.80%    0x00007fa34a8f6291:   vmovdqu 0x70(%rcx),%xmm4
   0.37%    0x00007fa34a8f6296:   vpshufb %xmm1,%xmm4,%xmm4
            0x00007fa34a8f629b:   vmovdqu 0x80(%rcx),%xmm5
   0.01%    0x00007fa34a8f62a3:   vpshufb %xmm1,%xmm5,%xmm5
   2.76%    0x00007fa34a8f62a8:   vaesenc %xmm2,%xmm0,%xmm0
   1.52%    0x00007fa34a8f62ad:   vaesenc %xmm3,%xmm0,%xmm0
   0.93%    0x00007fa34a8f62b2:   vaesenc %xmm4,%xmm0,%xmm0
   4.42%    0x00007fa34a8f62b7:   vaesenc %xmm5,%xmm0,%xmm0
   9.31%    0x00007fa34a8f62bc:   vmovdqu 0x90(%rcx),%xmm2
   0.04%    0x00007fa34a8f62c4:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007fa34a8f62c9:   vmovdqu 0xa0(%rcx),%xmm3
   0.01%    0x00007fa34a8f62d1:   vpshufb %xmm1,%xmm3,%xmm3
   3.09%    0x00007fa34a8f62d6:   cmp    $0x2c,%r10d
            0x00007fa34a8f62da:   je     0x00007fa34a8f632a
            0x00007fa34a8f62dc:   vaesenc %xmm2,%xmm0,%xmm0
            0x00007fa34a8f62e1:   vaesenc %xmm3,%xmm0,%xmm0
            0x00007fa34a8f62e6:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007fa34a8f62ee:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007fa34a8f62f3:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007fa34a8f62fb:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007fa34a8f6300:   cmp    $0x34,%r10d
            0x00007fa34a8f6304:   je     0x00007fa34a8f632a
            0x00007fa34a8f6306:   vaesenc %xmm2,%xmm0,%xmm0
....................................................................................................
  44.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1100 

                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            0x00007fa34ad8f7e0:   test   %esi,%esi                    ;   {no_reloc}
            0x00007fa34ad8f7e2:   jl     0x00007fa34ad8f90f
   2.97%    0x00007fa34ad8f7e8:   cmp    %edx,%esi
            0x00007fa34ad8f7ea:   jg     0x00007fa34ad8f90f
            0x00007fa34ad8f7f0:   test   %r9d,%r9d
            0x00007fa34ad8f7f3:   jl     0x00007fa34ad8f90f
            0x00007fa34ad8f7f9:   nopl   0x0(%rax)
   0.02%    0x00007fa34ad8f800:   cmp    %r10d,%r9d
            0x00007fa34ad8f803:   jg     0x00007fa34ad8f90f
   3.13%    0x00007fa34ad8f809:   mov    %r11,%r8
   0.00%    0x00007fa34ad8f80c:   mov    %rax,%rbp
            0x00007fa34ad8f80f:   mov    %rcx,%rbx
   0.01%    0x00007fa34ad8f812:   mov    %esi,%r13d
   3.05%    0x00007fa34ad8f815:   lea    0x10(%r13),%r13
            0x00007fa34ad8f819:   add    %r8,%r13
            0x00007fa34ad8f81c:   mov    %r9d,%r8d
   0.00%    0x00007fa34ad8f81f:   lea    0x10(%r8),%r8
   3.21%    0x00007fa34ad8f823:   add    %rbp,%r8
   0.00%    0x00007fa34ad8f826:   lea    0x10(%rbx),%rbx
            0x00007fa34ad8f82a:   mov    %esi,%ebp
   0.01%    0x00007fa34ad8f82c:   mov    %r13,%rsi
   3.26%    0x00007fa34ad8f82f:   mov    %edx,%r13d
   0.00%    0x00007fa34ad8f832:   mov    %r8,%rdx
            0x00007fa34ad8f835:   mov    %rcx,%r8
   0.01%    0x00007fa34ad8f838:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
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
   3.18%    0x00007fa34ad8f83b:   mov    %r10d,%ebx
   0.00%    0x00007fa34ad8f83e:   xchg   %ax,%ax
   0.00%    0x00007fa34ad8f840:   call   0x00007fa34a8f6220           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
            0x00007fa34ad8f845:   nop
   0.00%    0x00007fa34ad8f846:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   3.33%    0x00007fa34ad8f849:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%    0x00007fa34ad8f84c:   mov    %ebp,%esi
            0x00007fa34ad8f84e:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%    0x00007fa34ad8f850:   mov    %r13d,%edx
   3.10%    0x00007fa34ad8f853:   mov    %ebx,%r10d
   0.00%    0x00007fa34ad8f856:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%    0x00007fa34ad8f859:   cmp    %r14d,%edi
            0x00007fa34ad8f85c:   jle    0x00007fa34ad8f7e0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            0x00007fa34ad8f85e:   mov    0x1c(%rsp),%r13d
   0.01%    0x00007fa34ad8f863:   test   %r13d,%r13d
            0x00007fa34ad8f866:   jne    0x00007fa34ad8fa90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            0x00007fa34ad8f86c:   mov    0x20(%rsp),%ebp
   0.01%    0x00007fa34ad8f870:   mov    0xc(%rsp),%ebx
   0.00%    0x00007fa34ad8f874:   mov    %r12d,0x14(,%rbx,8)          ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%    0x00007fa34ad8f87c:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%    0x00007fa34ad8f883:   mov    0x30(%rsp),%rbp
            0x00007fa34ad8f888:   add    $0x38,%rsp
            0x00007fa34ad8f88c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007fa34ad8f893:   ja     0x00007fa34ad8fac6
   0.01%    0x00007fa34ad8f899:   vzeroupper 
   0.00%    0x00007fa34ad8f89c:   ret    
            0x00007fa34ad8f89d:   mov    %r10,0x10(%rsp)
            0x00007fa34ad8f8a2:   jmp    0x00007fa34ad8f776
            0x00007fa34ad8f8a7:   mov    %r10,0x10(%rsp)
            0x00007fa34ad8f8ac:   mov    $0x0,%r14
            0x00007fa34ad8f8b3:   jmp    0x00007fa34ad8f74f
            0x00007fa34ad8f8b8:   mov    %r14,%r10
            0x00007fa34ad8f8bb:   jmp    0x00007fa34ad8f766           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
....................................................................................................
  25.34%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

             0x00007fa34a8f62f3:   vmovdqu 0xc0(%rcx),%xmm3
             0x00007fa34a8f62fb:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007fa34a8f6300:   cmp    $0x34,%r10d
          ╭  0x00007fa34a8f6304:   je     0x00007fa34a8f632a
          │  0x00007fa34a8f6306:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007fa34a8f630b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007fa34a8f6310:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007fa34a8f6318:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007fa34a8f631d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007fa34a8f6325:   vpshufb %xmm1,%xmm3,%xmm3
   0.04%  ↘  0x00007fa34a8f632a:   vaesenc %xmm2,%xmm0,%xmm0
   6.76%     0x00007fa34a8f632f:   vaesenclast %xmm3,%xmm0,%xmm0
  11.42%     0x00007fa34a8f6334:   vmovdqu %xmm0,(%rdx)
   3.14%     0x00007fa34a8f6338:   add    $0x18,%rsp
   0.00%     0x00007fa34a8f633c:   ret    
             0x00007fa34a8f633d:   hlt    
             0x00007fa34a8f633e:   hlt    
             0x00007fa34a8f633f:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <task_queued compile_id='1072' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='105' backedge_count='106779' iicount='105' level='3' stamp='11.800' comment='tiered' hot_count='105'/>
           <nmethod compile_id='1070' compiler='jvmci' level='4' entry='0x00007fa34ad8ae80' size='968' address='0x00007fa34ad8ad10' relocation_offset='344' insts_offset='368' stub_offset='703' scopes_data_offset='720' scopes_pcs_offset='760' dependencies_offset='904' nul_chk_table_offset='912' metadata_offset='704' method='com.sun.crypto.provider.AESCrypt encryptBlock ([BI[BI)V' bytes='10' count='108327' iicount='108331' stamp='11.800'/>
           <make_not_entrant thread='2124181' compile_id='1066' compiler='c1' level='3' stamp='11.800'/>
....................................................................................................
  21.36%  <total for region 3>

....[Hottest Regions]...............................................................................
  44.50%                      <unknown> 
  25.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1100 
  21.36%                      <unknown> 
   6.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1100 
   0.19%        libc-2.31.so  __memset_avx2_erms 
   0.15%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1100 
   0.10%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1100 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1133 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1100 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%              kernel  [unknown] 
   1.53%  <...other 422 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.96%                      <unknown> 
  31.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1100 
   1.47%              kernel  [unknown] 
   0.19%        libc-2.31.so  __memset_avx2_erms 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1133 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  ObjArrayAllocator::initialize 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  HeapRegion::clear_cardtable 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.40%  <...other 138 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  65.96%                    
  31.76%      jvmci, level 4
   1.47%              kernel
   0.41%           libjvm.so
   0.32%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2124161.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/PKCS5Padding)

# Run progress: 58.33% complete, ETA 00:09:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16.474 us/op
# Warmup Iteration   2: 15.788 us/op
# Warmup Iteration   3: 15.851 us/op
# Warmup Iteration   4: 15.284 us/op
# Warmup Iteration   5: 15.305 us/op
Iteration   1: 15.775 us/op
Iteration   2: 15.343 us/op
Iteration   3: 15.593 us/op
Iteration   4: 15.281 us/op
Iteration   5: 15.276 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  15.454 ±(99.9%) 0.853 us/op [Average]
  (min, avg, max) = (15.276, 15.454, 15.775), stdev = 0.222
  CI (99.9%): [14.601, 16.307] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 268268 total address lines.
Perf output processed (skipped 62.019 seconds):
 Column 1: cycles (50893 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          <deoptimized thread='2124264' reason='constraint' pc='0x00007faf133f774b' compile_id='1087' compiler='c1' level='3'>
          <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='44' backedge_count='544295' iicount='44'/>
          </deoptimized>
          <deoptimized thread='2124264' reason='constraint' pc='0x00007faf133f774b' compile_id='1087' compiler='c1' level='3'>
          <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='45' backedge_count='552487' iicount='45'/>
          </deoptimized>
          <task_queued compile_id='1090' method='java.lang.Math addExact (II)I' bytes='26' count='256' iicount='256' level='3' stamp='11.614' comment='tiered' hot_count='256'/>
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007faf1a8f3690
          --------------------------------------------------------------------------------
   0.01%    0x00007faf1a8f3720:   sub    $0x18,%rsp
   2.47%    0x00007faf1a8f3724:   mov    -0x4(%rcx),%r10d
   0.00%    0x00007faf1a8f3728:   vmovdqu -0x30(%rip),%xmm1        # 0x00007faf1a8f3700
   0.01%    0x00007faf1a8f3730:   vmovdqu (%rsi),%xmm0
   2.48%    0x00007faf1a8f3734:   vmovdqu (%rcx),%xmm2
   0.18%    0x00007faf1a8f3738:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007faf1a8f373d:   vpxor  %xmm2,%xmm0,%xmm0
   0.02%    0x00007faf1a8f3741:   vmovdqu 0x10(%rcx),%xmm2
   2.40%    0x00007faf1a8f3746:   vpshufb %xmm1,%xmm2,%xmm2
   0.16%    0x00007faf1a8f374b:   vmovdqu 0x20(%rcx),%xmm3
   0.00%    0x00007faf1a8f3750:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%    0x00007faf1a8f3755:   vmovdqu 0x30(%rcx),%xmm4
   2.34%    0x00007faf1a8f375a:   vpshufb %xmm1,%xmm4,%xmm4
   0.11%    0x00007faf1a8f375f:   vmovdqu 0x40(%rcx),%xmm5
   0.01%    0x00007faf1a8f3764:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%    0x00007faf1a8f3769:   vaesenc %xmm2,%xmm0,%xmm0
   2.23%    0x00007faf1a8f376e:   vaesenc %xmm3,%xmm0,%xmm0
   0.17%    0x00007faf1a8f3773:   vaesenc %xmm4,%xmm0,%xmm0
   0.04%    0x00007faf1a8f3778:   vaesenc %xmm5,%xmm0,%xmm0
   0.06%    0x00007faf1a8f377d:   vmovdqu 0x50(%rcx),%xmm2
   2.30%    0x00007faf1a8f3782:   vpshufb %xmm1,%xmm2,%xmm2
   0.15%    0x00007faf1a8f3787:   vmovdqu 0x60(%rcx),%xmm3
   0.00%    0x00007faf1a8f378c:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%    0x00007faf1a8f3791:   vmovdqu 0x70(%rcx),%xmm4
   2.41%    0x00007faf1a8f3796:   vpshufb %xmm1,%xmm4,%xmm4
   0.17%    0x00007faf1a8f379b:   vmovdqu 0x80(%rcx),%xmm5
            0x00007faf1a8f37a3:   vpshufb %xmm1,%xmm5,%xmm5
   0.02%    0x00007faf1a8f37a8:   vaesenc %xmm2,%xmm0,%xmm0
   2.43%    0x00007faf1a8f37ad:   vaesenc %xmm3,%xmm0,%xmm0
   1.10%    0x00007faf1a8f37b2:   vaesenc %xmm4,%xmm0,%xmm0
   3.94%    0x00007faf1a8f37b7:   vaesenc %xmm5,%xmm0,%xmm0
   9.60%    0x00007faf1a8f37bc:   vmovdqu 0x90(%rcx),%xmm2
   0.09%    0x00007faf1a8f37c4:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007faf1a8f37c9:   vmovdqu 0xa0(%rcx),%xmm3
   0.00%    0x00007faf1a8f37d1:   vpshufb %xmm1,%xmm3,%xmm3
   2.36%    0x00007faf1a8f37d6:   cmp    $0x2c,%r10d
            0x00007faf1a8f37da:   je     0x00007faf1a8f382a
            0x00007faf1a8f37dc:   vaesenc %xmm2,%xmm0,%xmm0
            0x00007faf1a8f37e1:   vaesenc %xmm3,%xmm0,%xmm0
            0x00007faf1a8f37e6:   vmovdqu 0xb0(%rcx),%xmm2
            0x00007faf1a8f37ee:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007faf1a8f37f3:   vmovdqu 0xc0(%rcx),%xmm3
            0x00007faf1a8f37fb:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007faf1a8f3800:   cmp    $0x34,%r10d
            0x00007faf1a8f3804:   je     0x00007faf1a8f382a
            0x00007faf1a8f3806:   vaesenc %xmm2,%xmm0,%xmm0
....................................................................................................
  37.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 

             0x00007faf1ad9091c:   data16 data16 xchg %ax,%ax          ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  ↗  0x00007faf1ad90920:   test   %r10d,%r10d
          │  0x00007faf1ad90923:   jl     0x00007faf1ad90cc5
   0.00%  │  0x00007faf1ad90929:   cmp    %ecx,%r10d
          │  0x00007faf1ad9092c:   jg     0x00007faf1ad90cc5
   0.00%  │  0x00007faf1ad90932:   test   %esi,%esi
          │  0x00007faf1ad90934:   jl     0x00007faf1ad90cc5
   2.51%  │  0x00007faf1ad9093a:   nopw   0x0(%rax,%rax,1)
   0.01%  │  0x00007faf1ad90940:   cmp    %edx,%esi
          │  0x00007faf1ad90942:   jg     0x00007faf1ad90cc5
   0.00%  │  0x00007faf1ad90948:   mov    %rbp,%rbx
   0.00%  │  0x00007faf1ad9094b:   mov    %r9,%rax
   2.57%  │  0x00007faf1ad9094e:   mov    %r8,%r13
   0.00%  │  0x00007faf1ad90951:   mov    %r10d,%r14d
   0.01%  │  0x00007faf1ad90954:   lea    0x10(%r14),%r14
   0.01%  │  0x00007faf1ad90958:   add    %rbx,%r14
   2.47%  │  0x00007faf1ad9095b:   mov    %esi,%ebx
   0.02%  │  0x00007faf1ad9095d:   lea    0x10(%rbx),%rbx
   0.00%  │  0x00007faf1ad90961:   add    %rax,%rbx
   0.01%  │  0x00007faf1ad90964:   lea    0x10(%r13),%rax
   2.41%  │  0x00007faf1ad90968:   mov    %esi,%r13d
   0.01%  │  0x00007faf1ad9096b:   mov    %r14,%rsi
   0.01%  │  0x00007faf1ad9096e:   mov    %edx,%r14d
          │  0x00007faf1ad90971:   mov    %rbx,%rdx
   2.42%  │  0x00007faf1ad90974:   mov    %ecx,%ebx
   0.01%  │  0x00007faf1ad90976:   mov    %rax,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  │  0x00007faf1ad90979:   mov    %r9,%rax
   0.00%  │  0x00007faf1ad9097c:   mov    %r10d,%r9d
   2.46%  │  0x00007faf1ad9097f:   nop                                 ;   {no_reloc}
   0.01%  │  0x00007faf1ad90980:   call   0x00007faf1a8f3720           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.00%  │  0x00007faf1ad90985:   nop
          │  0x00007faf1ad90986:   sub    %edi,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.42%  │  0x00007faf1ad90989:   mov    %r13d,%esi
   0.01%  │  0x00007faf1ad9098c:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  │  0x00007faf1ad9098e:   mov    %r9d,%r10d
          │  0x00007faf1ad90991:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.46%  │  0x00007faf1ad90994:   mov    %r14d,%edx
   0.01%  │  0x00007faf1ad90997:   mov    %ebx,%ecx
   0.01%  │  0x00007faf1ad90999:   mov    %rax,%r9                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  │  0x00007faf1ad9099c:   nopl   0x0(%rax)
   2.55%  │  0x00007faf1ad909a0:   cmp    %r11d,%edi
          ╰  0x00007faf1ad909a3:   jle    0x00007faf1ad90920           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007faf1ad909a9:   mov    %r9,%rax
             0x00007faf1ad909ac:   cmpl   $0x1,0x58(%rsp)
   0.01%     0x00007faf1ad909b1:   jl     0x00007faf1ad90b25
             0x00007faf1ad909b7:   mov    0x58(%rsp),%r10d
   0.01%     0x00007faf1ad909bc:   nopl   0x0(%rax)
             0x00007faf1ad909c0:   test   %r10d,%r10d
             0x00007faf1ad909c3:   je     0x00007faf1ad90d5f
             0x00007faf1ad909c9:   lea    0x10(%rbp),%rsi
             0x00007faf1ad909cd:   cmp    $0x20,%r10d
             0x00007faf1ad909d1:   jb     0x00007faf1ad90b40
             0x00007faf1ad909d7:   mov    0x40(%rsp),%r13
             0x00007faf1ad909dc:   lea    -0x20(%r13),%rdx
             0x00007faf1ad909e0:   mov    $0x0,%rcx
             0x00007faf1ad909e7:   nopw   0x0(%rax,%rax,1)
   0.71%     0x00007faf1ad909f0:   vmovdqu %ymm6,(%rsi,%rcx,1)
....................................................................................................
  22.44%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

             0x00007faf1a8f37f3:   vmovdqu 0xc0(%rcx),%xmm3
             0x00007faf1a8f37fb:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007faf1a8f3800:   cmp    $0x34,%r10d
          ╭  0x00007faf1a8f3804:   je     0x00007faf1a8f382a
          │  0x00007faf1a8f3806:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007faf1a8f380b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007faf1a8f3810:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007faf1a8f3818:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007faf1a8f381d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007faf1a8f3825:   vpshufb %xmm1,%xmm3,%xmm3
   0.09%  ↘  0x00007faf1a8f382a:   vaesenc %xmm2,%xmm0,%xmm0
   7.58%     0x00007faf1a8f382f:   vaesenclast %xmm3,%xmm0,%xmm0
  10.18%     0x00007faf1a8f3834:   vmovdqu %xmm0,(%rdx)
   2.48%     0x00007faf1a8f3838:   add    $0x18,%rsp
   0.01%     0x00007faf1a8f383c:   ret    
             0x00007faf1a8f383d:   hlt    
             0x00007faf1a8f383e:   hlt    
             0x00007faf1a8f383f:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <nmethod compile_id='1090' compiler='c1' level='3' entry='0x00007faf133f7b40' size='1224' address='0x00007faf133f7990' relocation_offset='344' insts_offset='432' stub_offset='880' scopes_data_offset='952' scopes_pcs_offset='1024' dependencies_offset='1216' metadata_offset='944' method='java.lang.Math addExact (II)I' bytes='26' count='257' iicount='257' stamp='11.616'/>
           <print_nmethod compile_id='1090' compiler='c1' level='3' stamp='11.616'>
           ============================= C1-compiled nmethod ==============================
....................................................................................................
  20.33%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 

                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@0 (line 108)
                                                                      ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
            0x00007faf1ad90c30:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rbx=NarrowOop r9=NarrowOop r11=NarrowOop [40]=Oop [48]=Oop [60]=NarrowOop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@0 (line 108)
            0x00007faf1ad90c38:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007faf1ad910ed
            0x00007faf1ad90c3a:   mov    %r10d,%esi
            0x00007faf1ad90c3d:   mov    %r8d,%edx
            0x00007faf1ad90c40:   vpxor  %xmm6,%xmm6,%xmm6
   0.00%    0x00007faf1ad90c44:   mov    0x5c(%rsp),%r8d
            0x00007faf1ad90c49:   jmp    0x00007faf1ad906e5           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@227 (line 910)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%    0x00007faf1ad90c4e:   mov    %edi,%esi
            0x00007faf1ad90c50:   mov    %r8d,0x5c(%rsp)
            0x00007faf1ad90c55:   mov    %r10,0x30(%rsp)
   0.00%    0x00007faf1ad90c5a:   mov    %eax,%r14d
   0.00%    0x00007faf1ad90c5d:   lea    0x10(%rdx),%rdi
            0x00007faf1ad90c61:   xor    %rax,%rax
   4.77%    0x00007faf1ad90c64:   rep rex.W stos %al,%es:(%rdi)
   0.02%    0x00007faf1ad90c67:   vpxor  %xmm6,%xmm6,%xmm6
            0x00007faf1ad90c6b:   mov    %r14d,%eax
            0x00007faf1ad90c6e:   mov    %esi,%edi
   0.00%    0x00007faf1ad90c70:   mov    0x3c(%rsp),%r14d
            0x00007faf1ad90c75:   jmp    0x00007faf1ad905e4           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            0x00007faf1ad90c7a:   mov    %ecx,0x50(%rsp)
            0x00007faf1ad90c7e:   mov    %edi,%esi
            0x00007faf1ad90c80:   mov    0x64(%rsp),%ebp
   0.00%    0x00007faf1ad90c84:   mov    %r8d,0x5c(%rsp)
            0x00007faf1ad90c89:   mov    %r14,%rcx
            0x00007faf1ad90c8c:   mov    %edx,%r8d
            0x00007faf1ad90c8f:   mov    0x60(%rsp),%r14d
   0.00%    0x00007faf1ad90c94:   mov    0x3c(%rsp),%edx
            0x00007faf1ad90c98:   mov    %rax,%r10
            0x00007faf1ad90c9b:   lea    0x10(%r10),%rdi
   0.00%    0x00007faf1ad90c9f:   xor    %rax,%rax
   5.37%    0x00007faf1ad90ca2:   rep rex.W stos %al,%es:(%rdi)
   0.01%    0x00007faf1ad90ca5:   mov    %r10,%rax
            0x00007faf1ad90ca8:   mov    0x50(%rsp),%ecx
   0.00%    0x00007faf1ad90cac:   vpxor  %xmm6,%xmm6,%xmm6
   0.00%    0x00007faf1ad90cb0:   mov    %esi,%edi
            0x00007faf1ad90cb2:   mov    0x58(%rsp),%esi
            0x00007faf1ad90cb6:   mov    %r8d,%edx
            0x00007faf1ad90cb9:   mov    0x5c(%rsp),%r8d
   0.00%    0x00007faf1ad90cbe:   xchg   %ax,%ax
            0x00007faf1ad90cc0:   jmp    0x00007faf1ad906e5           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@227 (line 910)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
            0x00007faf1ad90cc5:   mov    %esi,%r13d
            0x00007faf1ad90cc8:   mov    0x3c(%rsp),%edx
            0x00007faf1ad90ccc:   mov    %r10d,%r9d
            0x00007faf1ad90ccf:   mov    %edx,%r14d
....................................................................................................
  10.21%  <total for region 4>

....[Hottest Regions]...............................................................................
  37.30%                      <unknown> 
  22.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
  20.33%                      <unknown> 
  10.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   3.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   2.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   0.45%              kernel  [unknown] 
   0.37%        libc-2.31.so  __memset_avx2_erms 
   0.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   0.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   0.13%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1159 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   1.83%  <...other 467 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.75%                      <unknown> 
  39.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1127 
   1.73%              kernel  [unknown] 
   0.37%        libc-2.31.so  __memset_avx2_erms 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1159 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  xmlStream::write_text 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  G1CardSet::clear 
   0.54%  <...other 158 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  57.75%                    
  39.32%      jvmci, level 4
   1.73%              kernel
   0.58%           libjvm.so
   0.50%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-2124228.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/NoPadding)

# Run progress: 66.67% complete, ETA 00:07:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.656 us/op
# Warmup Iteration   2: 14.697 us/op
# Warmup Iteration   3: 14.960 us/op
# Warmup Iteration   4: 14.966 us/op
# Warmup Iteration   5: 14.953 us/op
Iteration   1: 14.992 us/op
Iteration   2: 14.922 us/op
Iteration   3: 14.980 us/op
Iteration   4: 14.942 us/op
Iteration   5: 14.941 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  14.955 ±(99.9%) 0.113 us/op [Average]
  (min, avg, max) = (14.922, 14.955, 14.992), stdev = 0.029
  CI (99.9%): [14.842, 15.068] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 270869 total address lines.
Perf output processed (skipped 62.192 seconds):
 Column 1: cycles (50583 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007f4e928f5110
            --------------------------------------------------------------------------------
   2.58%      0x00007f4e928f51a0:   sub    $0x18,%rsp
   0.01%      0x00007f4e928f51a4:   mov    -0x4(%rcx),%r10d
   0.01%      0x00007f4e928f51a8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f4e928f5180
   2.56%      0x00007f4e928f51b0:   vmovdqu (%rsi),%xmm0
   0.14%      0x00007f4e928f51b4:   vmovdqu (%rcx),%xmm2
              0x00007f4e928f51b8:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f4e928f51bd:   vpxor  %xmm2,%xmm0,%xmm0
   2.71%      0x00007f4e928f51c1:   vmovdqu 0x10(%rcx),%xmm2
   0.04%      0x00007f4e928f51c6:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f4e928f51cb:   vmovdqu 0x20(%rcx),%xmm3
   0.00%      0x00007f4e928f51d0:   vpshufb %xmm1,%xmm3,%xmm3
   2.59%      0x00007f4e928f51d5:   vmovdqu 0x30(%rcx),%xmm4
   0.04%      0x00007f4e928f51da:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f4e928f51df:   vmovdqu 0x40(%rcx),%xmm5
   0.01%      0x00007f4e928f51e4:   vpshufb %xmm1,%xmm5,%xmm5
   2.60%      0x00007f4e928f51e9:   vaesenc %xmm2,%xmm0,%xmm0
   0.06%      0x00007f4e928f51ee:   vaesenc %xmm3,%xmm0,%xmm0
   0.00%      0x00007f4e928f51f3:   vaesenc %xmm4,%xmm0,%xmm0
   0.01%      0x00007f4e928f51f8:   vaesenc %xmm5,%xmm0,%xmm0
   2.63%      0x00007f4e928f51fd:   vmovdqu 0x50(%rcx),%xmm2
   0.05%      0x00007f4e928f5202:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f4e928f5207:   vmovdqu 0x60(%rcx),%xmm3
   0.00%      0x00007f4e928f520c:   vpshufb %xmm1,%xmm3,%xmm3
   2.46%      0x00007f4e928f5211:   vmovdqu 0x70(%rcx),%xmm4
   0.05%      0x00007f4e928f5216:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f4e928f521b:   vmovdqu 0x80(%rcx),%xmm5
   0.00%      0x00007f4e928f5223:   vpshufb %xmm1,%xmm5,%xmm5
   2.54%      0x00007f4e928f5228:   vaesenc %xmm2,%xmm0,%xmm0
   0.07%      0x00007f4e928f522d:   vaesenc %xmm3,%xmm0,%xmm0
   0.02%      0x00007f4e928f5232:   vaesenc %xmm4,%xmm0,%xmm0
   0.16%      0x00007f4e928f5237:   vaesenc %xmm5,%xmm0,%xmm0
   8.06%      0x00007f4e928f523c:   vmovdqu 0x90(%rcx),%xmm2
   0.04%      0x00007f4e928f5244:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f4e928f5249:   vmovdqu 0xa0(%rcx),%xmm3
   0.01%      0x00007f4e928f5251:   vpshufb %xmm1,%xmm3,%xmm3
   2.40%      0x00007f4e928f5256:   cmp    $0x2c,%r10d
          ╭   0x00007f4e928f525a:   je     0x00007f4e928f52aa
   0.04%  │   0x00007f4e928f525c:   vaesenc %xmm2,%xmm0,%xmm0
   6.68%  │   0x00007f4e928f5261:   vaesenc %xmm3,%xmm0,%xmm0
   9.69%  │   0x00007f4e928f5266:   vmovdqu 0xb0(%rcx),%xmm2
   0.03%  │   0x00007f4e928f526e:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%  │   0x00007f4e928f5273:   vmovdqu 0xc0(%rcx),%xmm3
   0.01%  │   0x00007f4e928f527b:   vpshufb %xmm1,%xmm3,%xmm3
   2.52%  │   0x00007f4e928f5280:   cmp    $0x34,%r10d
          │╭  0x00007f4e928f5284:   je     0x00007f4e928f52aa
          ││  0x00007f4e928f5286:   vaesenc %xmm2,%xmm0,%xmm0
          ││  0x00007f4e928f528b:   vaesenc %xmm3,%xmm0,%xmm0
          ││  0x00007f4e928f5290:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f4e928f5298:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f4e928f529d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007f4e928f52a5:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%  ↘↘  0x00007f4e928f52aa:   vaesenc %xmm2,%xmm0,%xmm0
   7.64%      0x00007f4e928f52af:   vaesenclast %xmm3,%xmm0,%xmm0
  10.37%      0x00007f4e928f52b4:   vmovdqu %xmm0,(%rdx)
....................................................................................................
  50.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 

             0x00007f4e92d91258:   nopl   0x0(%rax,%rax,1)             ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  ↗  0x00007f4e92d91260:   test   %esi,%esi                    ;   {no_reloc}
          │  0x00007f4e92d91262:   jl     0x00007f4e92d9138f
   2.58%  │  0x00007f4e92d91268:   cmp    %edx,%esi
          │  0x00007f4e92d9126a:   jg     0x00007f4e92d9138f
   0.00%  │  0x00007f4e92d91270:   test   %r9d,%r9d
          │  0x00007f4e92d91273:   jl     0x00007f4e92d9138f
   0.00%  │  0x00007f4e92d91279:   nopl   0x0(%rax)
   0.00%  │  0x00007f4e92d91280:   cmp    %r10d,%r9d
          │  0x00007f4e92d91283:   jg     0x00007f4e92d9138f
   2.57%  │  0x00007f4e92d91289:   mov    %r11,%r8
   0.00%  │  0x00007f4e92d9128c:   mov    %rax,%rbp
   0.00%  │  0x00007f4e92d9128f:   mov    %rcx,%rbx
          │  0x00007f4e92d91292:   mov    %esi,%r13d
   2.45%  │  0x00007f4e92d91295:   lea    0x10(%r13),%r13
   0.01%  │  0x00007f4e92d91299:   add    %r8,%r13
   0.00%  │  0x00007f4e92d9129c:   mov    %r9d,%r8d
   0.01%  │  0x00007f4e92d9129f:   lea    0x10(%r8),%r8
   2.63%  │  0x00007f4e92d912a3:   add    %rbp,%r8
   0.00%  │  0x00007f4e92d912a6:   lea    0x10(%rbx),%rbx
   0.00%  │  0x00007f4e92d912aa:   mov    %esi,%ebp
          │  0x00007f4e92d912ac:   mov    %r13,%rsi
   2.70%  │  0x00007f4e92d912af:   mov    %edx,%r13d
   0.01%  │  0x00007f4e92d912b2:   mov    %r8,%rdx
          │  0x00007f4e92d912b5:   mov    %rcx,%r8
   0.01%  │  0x00007f4e92d912b8:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.47%  │  0x00007f4e92d912bb:   mov    %r10d,%ebx
   0.01%  │  0x00007f4e92d912be:   xchg   %ax,%ax
   0.00%  │  0x00007f4e92d912c0:   call   0x00007f4e928f51a0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.00%  │  0x00007f4e92d912c5:   nop
   0.00%  │  0x00007f4e92d912c6:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.63%  │  0x00007f4e92d912c9:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  │  0x00007f4e92d912cc:   mov    %ebp,%esi
   0.01%  │  0x00007f4e92d912ce:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │  0x00007f4e92d912d0:   mov    %r13d,%edx
   2.70%  │  0x00007f4e92d912d3:   mov    %ebx,%r10d
   0.01%  │  0x00007f4e92d912d6:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  │  0x00007f4e92d912d9:   cmp    %r14d,%edi
          ╰  0x00007f4e92d912dc:   jle    0x00007f4e92d91260           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f4e92d912de:   mov    0x1c(%rsp),%r13d
   0.00%     0x00007f4e92d912e3:   test   %r13d,%r13d
             0x00007f4e92d912e6:   jne    0x00007f4e92d91510           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f4e92d912ec:   mov    0x20(%rsp),%ebp
             0x00007f4e92d912f0:   mov    0xc(%rsp),%ebx
   0.00%     0x00007f4e92d912f4:   mov    %r12d,0x14(,%rbx,8)          ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f4e92d912fc:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
....................................................................................................
  20.86%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

   0.00%     0x00007f4e928f5273:   vmovdqu 0xc0(%rcx),%xmm3
   0.01%     0x00007f4e928f527b:   vpshufb %xmm1,%xmm3,%xmm3
   2.52%     0x00007f4e928f5280:   cmp    $0x34,%r10d
          ╭  0x00007f4e928f5284:   je     0x00007f4e928f52aa
          │  0x00007f4e928f5286:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007f4e928f528b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007f4e928f5290:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007f4e928f5298:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f4e928f529d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007f4e928f52a5:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%  ↘  0x00007f4e928f52aa:   vaesenc %xmm2,%xmm0,%xmm0
   7.64%     0x00007f4e928f52af:   vaesenclast %xmm3,%xmm0,%xmm0
  10.37%     0x00007f4e928f52b4:   vmovdqu %xmm0,(%rdx)
   2.51%     0x00007f4e928f52b8:   add    $0x18,%rsp
   0.00%     0x00007f4e928f52bc:   ret    
             0x00007f4e928f52bd:   hlt    
             0x00007f4e928f52be:   hlt    
             0x00007f4e928f52bf:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <task_queued compile_id='1099' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='105' backedge_count='106726' iicount='105' level='3' stamp='11.991' comment='tiered' hot_count='105'/>
           <nmethod compile_id='1097' compiler='jvmci' level='4' entry='0x00007f4e92d8de80' size='968' address='0x00007f4e92d8dd10' relocation_offset='344' insts_offset='368' stub_offset='703' scopes_data_offset='720' scopes_pcs_offset='760' dependencies_offset='904' nul_chk_table_offset='912' metadata_offset='704' method='com.sun.crypto.provider.AESCrypt encryptBlock ([BI[BI)V' bytes='10' count='107785' iicount='107789' stamp='11.992'/>
           <make_not_entrant thread='2124315' compile_id='1093' compiler='c1' level='3' stamp='11.992'/>
....................................................................................................
  20.55%  <total for region 3>

....[Hottest Regions]...............................................................................
  50.82%                      <unknown> 
  20.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
  20.55%                      <unknown> 
   5.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.16%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1151 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.03%              kernel  [unknown] 
   1.66%  <...other 436 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.48%                      <unknown> 
  26.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   1.66%              kernel  [unknown] 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1151 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  TypeArrayKlass::allocate_common 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%           libjvm.so  HeapRegion::clear_cardtable 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  G1CardSet::clear 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.33%  <...other 128 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  71.48%                    
  26.15%      jvmci, level 4
   1.66%              kernel
   0.39%           libjvm.so
   0.27%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2124295.map
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 16.512 us/op
# Warmup Iteration   2: 16.667 us/op
# Warmup Iteration   3: 16.509 us/op
# Warmup Iteration   4: 16.376 us/op
# Warmup Iteration   5: 16.521 us/op
Iteration   1: 16.345 us/op
Iteration   2: 16.496 us/op
Iteration   3: 16.475 us/op
Iteration   4: 16.532 us/op
Iteration   5: 16.532 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  16.476 ±(99.9%) 0.297 us/op [Average]
  (min, avg, max) = (16.345, 16.476, 16.532), stdev = 0.077
  CI (99.9%): [16.178, 16.773] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 270481 total address lines.
Perf output processed (skipped 62.093 seconds):
 Column 1: cycles (50934 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            <task_queued compile_id='1078' method='java.util.Arrays fill ([BB)V' bytes='21' count='37' backedge_count='479795' iicount='37' stamp='11.749' comment='tiered' hot_count='37'/>
            <deoptimized thread='2124393' reason='constraint' pc='0x00007fda1f3fe8cb' compile_id='1076' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='38' backedge_count='486963' iicount='38'/>
            </deoptimized>
            <deoptimized thread='2124393' reason='constraint' pc='0x00007fda1f3fe8cb' compile_id='1076' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='39' backedge_count='495155' iicount='39'/>
            </deoptimized>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007fda268f6210
            --------------------------------------------------------------------------------
   0.02%      0x00007fda268f62a0:   sub    $0x18,%rsp
   2.30%      0x00007fda268f62a4:   mov    -0x4(%rcx),%r10d
   0.01%      0x00007fda268f62a8:   vmovdqu -0x30(%rip),%xmm1        # 0x00007fda268f6280
              0x00007fda268f62b0:   vmovdqu (%rsi),%xmm0
   2.32%      0x00007fda268f62b4:   vmovdqu (%rcx),%xmm2
   0.05%      0x00007fda268f62b8:   vpshufb %xmm1,%xmm2,%xmm2
   0.02%      0x00007fda268f62bd:   vpxor  %xmm2,%xmm0,%xmm0
   0.03%      0x00007fda268f62c1:   vmovdqu 0x10(%rcx),%xmm2
   2.33%      0x00007fda268f62c6:   vpshufb %xmm1,%xmm2,%xmm2
   0.08%      0x00007fda268f62cb:   vmovdqu 0x20(%rcx),%xmm3
   0.00%      0x00007fda268f62d0:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007fda268f62d5:   vmovdqu 0x30(%rcx),%xmm4
   2.15%      0x00007fda268f62da:   vpshufb %xmm1,%xmm4,%xmm4
   0.05%      0x00007fda268f62df:   vmovdqu 0x40(%rcx),%xmm5
   0.02%      0x00007fda268f62e4:   vpshufb %xmm1,%xmm5,%xmm5
              0x00007fda268f62e9:   vaesenc %xmm2,%xmm0,%xmm0
   2.20%      0x00007fda268f62ee:   vaesenc %xmm3,%xmm0,%xmm0
   0.10%      0x00007fda268f62f3:   vaesenc %xmm4,%xmm0,%xmm0
   0.04%      0x00007fda268f62f8:   vaesenc %xmm5,%xmm0,%xmm0
   0.03%      0x00007fda268f62fd:   vmovdqu 0x50(%rcx),%xmm2
   2.30%      0x00007fda268f6302:   vpshufb %xmm1,%xmm2,%xmm2
   0.07%      0x00007fda268f6307:   vmovdqu 0x60(%rcx),%xmm3
   0.01%      0x00007fda268f630c:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%      0x00007fda268f6311:   vmovdqu 0x70(%rcx),%xmm4
   2.27%      0x00007fda268f6316:   vpshufb %xmm1,%xmm4,%xmm4
   0.07%      0x00007fda268f631b:   vmovdqu 0x80(%rcx),%xmm5
   0.02%      0x00007fda268f6323:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007fda268f6328:   vaesenc %xmm2,%xmm0,%xmm0
   2.20%      0x00007fda268f632d:   vaesenc %xmm3,%xmm0,%xmm0
   0.09%      0x00007fda268f6332:   vaesenc %xmm4,%xmm0,%xmm0
   1.29%      0x00007fda268f6337:   vaesenc %xmm5,%xmm0,%xmm0
   3.89%      0x00007fda268f633c:   vmovdqu 0x90(%rcx),%xmm2
   1.17%      0x00007fda268f6344:   vpshufb %xmm1,%xmm2,%xmm2
   0.03%      0x00007fda268f6349:   vmovdqu 0xa0(%rcx),%xmm3
   0.03%      0x00007fda268f6351:   vpshufb %xmm1,%xmm3,%xmm3
   1.14%      0x00007fda268f6356:   cmp    $0x2c,%r10d
          ╭   0x00007fda268f635a:   je     0x00007fda268f63aa
   1.25%  │   0x00007fda268f635c:   vaesenc %xmm2,%xmm0,%xmm0
   3.71%  │   0x00007fda268f6361:   vaesenc %xmm3,%xmm0,%xmm0
   7.90%  │   0x00007fda268f6366:   vmovdqu 0xb0(%rcx),%xmm2
          │   0x00007fda268f636e:   vpshufb %xmm1,%xmm2,%xmm2
   0.06%  │   0x00007fda268f6373:   vmovdqu 0xc0(%rcx),%xmm3
   0.00%  │   0x00007fda268f637b:   vpshufb %xmm1,%xmm3,%xmm3
   2.23%  │   0x00007fda268f6380:   cmp    $0x34,%r10d
          │╭  0x00007fda268f6384:   je     0x00007fda268f63aa
          ││  0x00007fda268f6386:   vaesenc %xmm2,%xmm0,%xmm0
          ││  0x00007fda268f638b:   vaesenc %xmm3,%xmm0,%xmm0
          ││  0x00007fda268f6390:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007fda268f6398:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007fda268f639d:   vmovdqu 0xe0(%rcx),%xmm3
          ││  0x00007fda268f63a5:   vpshufb %xmm1,%xmm3,%xmm3
          ↘↘  0x00007fda268f63aa:   vaesenc %xmm2,%xmm0,%xmm0
   6.89%      0x00007fda268f63af:   vaesenclast %xmm3,%xmm0,%xmm0
   9.23%      0x00007fda268f63b4:   vmovdqu %xmm0,(%rdx)
....................................................................................................
  41.49%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 

                0x00007fda26d9109c:   data16 data16 xchg %ax,%ax          ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  ↗     0x00007fda26d910a0:   test   %r10d,%r10d
          │     0x00007fda26d910a3:   jl     0x00007fda26d91445
   0.01%  │     0x00007fda26d910a9:   cmp    %ecx,%r10d
          │     0x00007fda26d910ac:   jg     0x00007fda26d91445
          │     0x00007fda26d910b2:   test   %esi,%esi
          │     0x00007fda26d910b4:   jl     0x00007fda26d91445
   2.41%  │     0x00007fda26d910ba:   nopw   0x0(%rax,%rax,1)
   0.00%  │     0x00007fda26d910c0:   cmp    %edx,%esi
          │     0x00007fda26d910c2:   jg     0x00007fda26d91445
   0.02%  │     0x00007fda26d910c8:   mov    %rbp,%rbx
          │     0x00007fda26d910cb:   mov    %r9,%rax
   2.28%  │     0x00007fda26d910ce:   mov    %r8,%r13
   0.00%  │     0x00007fda26d910d1:   mov    %r10d,%r14d
   0.02%  │     0x00007fda26d910d4:   lea    0x10(%r14),%r14
          │     0x00007fda26d910d8:   add    %rbx,%r14
   2.25%  │     0x00007fda26d910db:   mov    %esi,%ebx
   0.00%  │     0x00007fda26d910dd:   lea    0x10(%rbx),%rbx
   0.02%  │     0x00007fda26d910e1:   add    %rax,%rbx
          │     0x00007fda26d910e4:   lea    0x10(%r13),%rax
   2.23%  │     0x00007fda26d910e8:   mov    %esi,%r13d
   0.00%  │     0x00007fda26d910eb:   mov    %r14,%rsi
   0.01%  │     0x00007fda26d910ee:   mov    %edx,%r14d
          │     0x00007fda26d910f1:   mov    %rbx,%rdx
   2.35%  │     0x00007fda26d910f4:   mov    %ecx,%ebx
   0.00%  │     0x00007fda26d910f6:   mov    %rax,%rcx                    ;* unwind (locked if synchronized)
          │                                                               ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          │                                                               ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.02%  │     0x00007fda26d910f9:   mov    %r9,%rax
   0.00%  │     0x00007fda26d910fc:   mov    %r10d,%r9d
   2.47%  │     0x00007fda26d910ff:   nop                                 ;   {no_reloc}
          │     0x00007fda26d91100:   call   0x00007fda268f62a0           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.01%  │     0x00007fda26d91105:   nop
   0.00%  │     0x00007fda26d91106:   sub    %edi,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.31%  │     0x00007fda26d91109:   mov    %r13d,%esi
          │     0x00007fda26d9110c:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  │     0x00007fda26d9110e:   mov    %r9d,%r10d
   0.00%  │     0x00007fda26d91111:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.37%  │     0x00007fda26d91114:   mov    %r14d,%edx
          │     0x00007fda26d91117:   mov    %ebx,%ecx
   0.01%  │     0x00007fda26d91119:   mov    %rax,%r9                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │     0x00007fda26d9111c:   nopl   0x0(%rax)
   2.24%  │     0x00007fda26d91120:   cmp    %r11d,%edi
          ╰     0x00007fda26d91123:   jle    0x00007fda26d910a0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                0x00007fda26d91129:   mov    %r9,%rax
                0x00007fda26d9112c:   cmpl   $0x1,0x58(%rsp)
   0.00%        0x00007fda26d91131:   jl     0x00007fda26d912a5
                0x00007fda26d91137:   mov    0x58(%rsp),%r10d
   0.00%        0x00007fda26d9113c:   nopl   0x0(%rax)
                0x00007fda26d91140:   test   %r10d,%r10d
                0x00007fda26d91143:   je     0x00007fda26d914df
                0x00007fda26d91149:   lea    0x10(%rbp),%rsi
                0x00007fda26d9114d:   cmp    $0x20,%r10d
                0x00007fda26d91151:   jb     0x00007fda26d912c0
   0.00%        0x00007fda26d91157:   mov    0x40(%rsp),%r13
   0.00%        0x00007fda26d9115c:   lea    -0x20(%r13),%rdx
   0.00%        0x00007fda26d91160:   mov    $0x0,%rcx
                0x00007fda26d91167:   nopw   0x0(%rax,%rax,1)
   0.64%   ↗    0x00007fda26d91170:   vmovdqu %ymm6,(%rsi,%rcx,1)
   1.37%   │    0x00007fda26d91175:   lea    0x20(%rcx),%rcx
   0.22%   │    0x00007fda26d91179:   cmp    %rdx,%rcx
           ╰    0x00007fda26d9117c:   jle    0x00007fda26d91170
                0x00007fda26d9117e:   lea    -0x10(%r13),%rdx
                0x00007fda26d91182:   cmp    %rdx,%rcx
                0x00007fda26d91185:   jg     0x00007fda26d9130b
                0x00007fda26d9118b:   vmovdqu %xmm6,(%rsi,%rcx,1)
                0x00007fda26d91190:   lea    0x10(%rcx),%rdx
                0x00007fda26d91194:   lea    -0x8(%r13),%rcx
   0.00%        0x00007fda26d91198:   nopl   0x0(%rax,%rax,1)
                0x00007fda26d911a0:   cmp    %rcx,%rdx
            ╭   0x00007fda26d911a3:   jg     0x00007fda26d911b3
            │   0x00007fda26d911a9:   vmovq  %xmm6,(%rsi,%rdx,1)
            │   0x00007fda26d911af:   lea    0x8(%rdx),%rdx
            ↘   0x00007fda26d911b3:   lea    -0x4(%r13),%rcx
   0.00%        0x00007fda26d911b7:   cmp    %rcx,%rdx
             ╭  0x00007fda26d911ba:   jg     0x00007fda26d911c9
             │  0x00007fda26d911c0:   vmovd  %xmm6,(%rsi,%rdx,1)
             │  0x00007fda26d911c5:   lea    0x4(%rdx),%rdx
   0.00%     ↘  0x00007fda26d911c9:   dec    %r13
                0x00007fda26d911cc:   cmp    %r13,%rdx
                0x00007fda26d911cf:   jg     0x00007fda26d91200
                0x00007fda26d911d5:   mov    %r12b,(%rsi,%rdx,1)
                0x00007fda26d911d9:   mov    %rdx,%rcx
                0x00007fda26d911dc:   inc    %rcx
                0x00007fda26d911df:   nop
                0x00007fda26d911e0:   cmp    %r13,%rcx
                0x00007fda26d911e3:   jg     0x00007fda26d91200
                0x00007fda26d911e9:   mov    %r12b,0x1(%rsi,%rdx,1)
                0x00007fda26d911ee:   lea    0x2(%rdx),%rcx
....................................................................................................
  23.34%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

   0.00%     0x00007fda268f637b:   vpshufb %xmm1,%xmm3,%xmm3
   2.23%     0x00007fda268f6380:   cmp    $0x34,%r10d
          ╭  0x00007fda268f6384:   je     0x00007fda268f63aa
          │  0x00007fda268f6386:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007fda268f638b:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007fda268f6390:   vmovdqu 0xd0(%rcx),%xmm2
          │  0x00007fda268f6398:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007fda268f639d:   vmovdqu 0xe0(%rcx),%xmm3
          │  0x00007fda268f63a5:   vpshufb %xmm1,%xmm3,%xmm3
          ↘  0x00007fda268f63aa:   vaesenc %xmm2,%xmm0,%xmm0
   6.89%     0x00007fda268f63af:   vaesenclast %xmm3,%xmm0,%xmm0
   9.23%     0x00007fda268f63b4:   vmovdqu %xmm0,(%rdx)
   2.32%     0x00007fda268f63b8:   add    $0x18,%rsp
             0x00007fda268f63bc:   ret    
             0x00007fda268f63bd:   hlt    
             0x00007fda268f63be:   hlt    
             0x00007fda268f63bf:   hlt    
           --------------------------------------------------------------------------------
           - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           ImmutableOopMapSet contains 0 OopMaps
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <deoptimized thread='2124393' reason='constraint' pc='0x00007fda1f3fe8cb' compile_id='1076' compiler='c1' level='3'>
           <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='40' backedge_count='503347' iicount='40'/>
....................................................................................................
  18.44%  <total for region 3>

....[Hottest Regions]...............................................................................
  41.49%                       <unknown> 
  23.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
  18.44%                       <unknown> 
   9.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   3.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   0.24%         libc-2.31.so  __memset_avx2_erms 
   0.21%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1152 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   0.06%            libjvm.so  G1CardSet::reset_table_scanner 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   2.22%  <...other 534 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.06%                       <unknown> 
  36.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1123 
   1.81%               kernel  [unknown] 
   0.24%         libc-2.31.so  __memset_avx2_erms 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1152 
   0.06%            libjvm.so  G1CardSet::reset_table_scanner 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.03%           ld-2.31.so  __tls_get_addr 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  _IO_default_xsputn 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  TypeArrayKlass::allocate_common 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  HeapRegion::clear_cardtable 
   0.02%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.57%  <...other 157 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  60.06%                     
  36.93%       jvmci, level 4
   1.81%               kernel
   0.66%            libjvm.so
   0.38%         libc-2.31.so
   0.07%   libpthread-2.31.so
   0.04%               [vdso]
   0.03%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          interpreter
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 14.360 us/op
# Warmup Iteration   2: 13.885 us/op
# Warmup Iteration   3: 13.844 us/op
# Warmup Iteration   4: 13.715 us/op
# Warmup Iteration   5: 14.168 us/op
Iteration   1: 13.703 us/op
Iteration   2: 13.868 us/op
Iteration   3: 13.905 us/op
Iteration   4: 14.139 us/op
Iteration   5: 13.957 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  13.914 ±(99.9%) 0.607 us/op [Average]
  (min, avg, max) = (13.703, 13.914, 14.139), stdev = 0.158
  CI (99.9%): [13.308, 14.521] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 262620 total address lines.
Perf output processed (skipped 61.897 seconds):
 Column 1: cycles (50671 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            --------------------------------------------------------------------------------
            [/Disassembly]
            </print_nmethod>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007f8ac68f3790
            --------------------------------------------------------------------------------
   2.83%      0x00007f8ac68f3820:   sub    $0x18,%rsp
   0.00%      0x00007f8ac68f3824:   mov    -0x4(%rcx),%r10d
   0.03%      0x00007f8ac68f3828:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f8ac68f3800
   2.44%      0x00007f8ac68f3830:   vmovdqu (%rsi),%xmm0
   0.50%      0x00007f8ac68f3834:   vmovdqu (%rcx),%xmm2
   0.00%      0x00007f8ac68f3838:   vpshufb %xmm1,%xmm2,%xmm2
   0.02%      0x00007f8ac68f383d:   vpxor  %xmm2,%xmm0,%xmm0
   2.45%      0x00007f8ac68f3841:   vmovdqu 0x10(%rcx),%xmm2
   0.40%      0x00007f8ac68f3846:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%      0x00007f8ac68f384b:   vmovdqu 0x20(%rcx),%xmm3
   0.03%      0x00007f8ac68f3850:   vpshufb %xmm1,%xmm3,%xmm3
   2.38%      0x00007f8ac68f3855:   vmovdqu 0x30(%rcx),%xmm4
   0.42%      0x00007f8ac68f385a:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007f8ac68f385f:   vmovdqu 0x40(%rcx),%xmm5
   0.03%      0x00007f8ac68f3864:   vpshufb %xmm1,%xmm5,%xmm5
   2.42%      0x00007f8ac68f3869:   vaesenc %xmm2,%xmm0,%xmm0
   0.44%      0x00007f8ac68f386e:   vaesenc %xmm3,%xmm0,%xmm0
   0.01%      0x00007f8ac68f3873:   vaesenc %xmm4,%xmm0,%xmm0
   0.04%      0x00007f8ac68f3878:   vaesenc %xmm5,%xmm0,%xmm0
   2.26%      0x00007f8ac68f387d:   vmovdqu 0x50(%rcx),%xmm2
   0.38%      0x00007f8ac68f3882:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f8ac68f3887:   vmovdqu 0x60(%rcx),%xmm3
   0.02%      0x00007f8ac68f388c:   vpshufb %xmm1,%xmm3,%xmm3
   2.43%      0x00007f8ac68f3891:   vmovdqu 0x70(%rcx),%xmm4
   0.37%      0x00007f8ac68f3896:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%      0x00007f8ac68f389b:   vmovdqu 0x80(%rcx),%xmm5
   0.02%      0x00007f8ac68f38a3:   vpshufb %xmm1,%xmm5,%xmm5
   2.33%      0x00007f8ac68f38a8:   vaesenc %xmm2,%xmm0,%xmm0
   0.38%      0x00007f8ac68f38ad:   vaesenc %xmm3,%xmm0,%xmm0
   0.01%      0x00007f8ac68f38b2:   vaesenc %xmm4,%xmm0,%xmm0
   0.08%      0x00007f8ac68f38b7:   vaesenc %xmm5,%xmm0,%xmm0
   2.58%      0x00007f8ac68f38bc:   vmovdqu 0x90(%rcx),%xmm2
   0.39%      0x00007f8ac68f38c4:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f8ac68f38c9:   vmovdqu 0xa0(%rcx),%xmm3
   0.02%      0x00007f8ac68f38d1:   vpshufb %xmm1,%xmm3,%xmm3
   2.38%      0x00007f8ac68f38d6:   cmp    $0x2c,%r10d
          ╭   0x00007f8ac68f38da:   je     0x00007f8ac68f392a
   0.40%  │   0x00007f8ac68f38dc:   vaesenc %xmm2,%xmm0,%xmm0
   0.67%  │   0x00007f8ac68f38e1:   vaesenc %xmm3,%xmm0,%xmm0
   2.52%  │   0x00007f8ac68f38e6:   vmovdqu 0xb0(%rcx),%xmm2
   1.59%  │   0x00007f8ac68f38ee:   vpshufb %xmm1,%xmm2,%xmm2
   0.21%  │   0x00007f8ac68f38f3:   vmovdqu 0xc0(%rcx),%xmm3
   0.00%  │   0x00007f8ac68f38fb:   vpshufb %xmm1,%xmm3,%xmm3
   0.95%  │   0x00007f8ac68f3900:   cmp    $0x34,%r10d
          │╭  0x00007f8ac68f3904:   je     0x00007f8ac68f392a
   1.59%  ││  0x00007f8ac68f3906:   vaesenc %xmm2,%xmm0,%xmm0
   3.51%  ││  0x00007f8ac68f390b:   vaesenc %xmm3,%xmm0,%xmm0
   6.57%  ││  0x00007f8ac68f3910:   vmovdqu 0xd0(%rcx),%xmm2
   0.02%  ││  0x00007f8ac68f3918:   vpshufb %xmm1,%xmm2,%xmm2
   0.66%  ││  0x00007f8ac68f391d:   vmovdqu 0xe0(%rcx),%xmm3
   0.07%  ││  0x00007f8ac68f3925:   vpshufb %xmm1,%xmm3,%xmm3
   1.97%  ↘↘  0x00007f8ac68f392a:   vaesenc %xmm2,%xmm0,%xmm0
   7.00%      0x00007f8ac68f392f:   vaesenclast %xmm3,%xmm0,%xmm0
  10.86%      0x00007f8ac68f3934:   vmovdqu %xmm0,(%rdx)
   2.78%      0x00007f8ac68f3938:   add    $0x18,%rsp
              0x00007f8ac68f393c:   ret    
              0x00007f8ac68f393d:   hlt    
              0x00007f8ac68f393e:   hlt    
              0x00007f8ac68f393f:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            <task_queued compile_id='1083' method='com.sun.crypto.provider.ElectronicCodeBook implECBEncrypt ([BII[BI)I' bytes='55' count='107' backedge_count='108680' iicount='107' level='3' stamp='11.507' comment='tiered' hot_count='107'/>
            <nmethod compile_id='1081' compiler='jvmci' level='4' entry='0x00007f8ac6d8e900' size='968' address='0x00007f8ac6d8e790' relocation_offset='344' insts_offset='368' stub_offset='703' scopes_data_offset='720' scopes_pcs_offset='760' dependencies_offset='904' nul_chk_table_offset='912' metadata_offset='704' method='com.sun.crypto.provider.AESCrypt encryptBlock ([BI[BI)V' bytes='10' count='109925' iicount='109929' stamp='11.507'/>
....................................................................................................
  69.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1109 

             0x00007f8ac6d931d8:   nopl   0x0(%rax,%rax,1)             ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.02%  ↗  0x00007f8ac6d931e0:   test   %esi,%esi                    ;   {no_reloc}
          │  0x00007f8ac6d931e2:   jl     0x00007f8ac6d9330f
   2.84%  │  0x00007f8ac6d931e8:   cmp    %edx,%esi
          │  0x00007f8ac6d931ea:   jg     0x00007f8ac6d9330f
          │  0x00007f8ac6d931f0:   test   %r9d,%r9d
          │  0x00007f8ac6d931f3:   jl     0x00007f8ac6d9330f
   0.00%  │  0x00007f8ac6d931f9:   nopl   0x0(%rax)
   0.03%  │  0x00007f8ac6d93200:   cmp    %r10d,%r9d
          │  0x00007f8ac6d93203:   jg     0x00007f8ac6d9330f
   2.76%  │  0x00007f8ac6d93209:   mov    %r11,%r8
   0.01%  │  0x00007f8ac6d9320c:   mov    %rax,%rbp
   0.01%  │  0x00007f8ac6d9320f:   mov    %rcx,%rbx
   0.03%  │  0x00007f8ac6d93212:   mov    %esi,%r13d
   2.83%  │  0x00007f8ac6d93215:   lea    0x10(%r13),%r13
   0.01%  │  0x00007f8ac6d93219:   add    %r8,%r13
   0.00%  │  0x00007f8ac6d9321c:   mov    %r9d,%r8d
   0.03%  │  0x00007f8ac6d9321f:   lea    0x10(%r8),%r8
   2.74%  │  0x00007f8ac6d93223:   add    %rbp,%r8
          │  0x00007f8ac6d93226:   lea    0x10(%rbx),%rbx
   0.00%  │  0x00007f8ac6d9322a:   mov    %esi,%ebp
   0.03%  │  0x00007f8ac6d9322c:   mov    %r13,%rsi
   2.75%  │  0x00007f8ac6d9322f:   mov    %edx,%r13d
          │  0x00007f8ac6d93232:   mov    %r8,%rdx
   0.00%  │  0x00007f8ac6d93235:   mov    %rcx,%r8
   0.04%  │  0x00007f8ac6d93238:   mov    %rbx,%rcx                    ;* unwind (locked if synchronized)
          │                                                            ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.75%  │  0x00007f8ac6d9323b:   mov    %r10d,%ebx
          │  0x00007f8ac6d9323e:   xchg   %ax,%ax
   0.00%  │  0x00007f8ac6d93240:   call   0x00007f8ac68f3820           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.01%  │  0x00007f8ac6d93245:   nop
   0.03%  │  0x00007f8ac6d93246:   sub    %edi,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.76%  │  0x00007f8ac6d93249:   add    %edi,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │  0x00007f8ac6d9324c:   mov    %ebp,%esi
   0.00%  │  0x00007f8ac6d9324e:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.02%  │  0x00007f8ac6d93250:   mov    %r13d,%edx
   2.82%  │  0x00007f8ac6d93253:   mov    %ebx,%r10d
          │  0x00007f8ac6d93256:   mov    %r8,%rcx                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%  │  0x00007f8ac6d93259:   cmp    %r14d,%edi
          ╰  0x00007f8ac6d9325c:   jle    0x00007f8ac6d931e0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f8ac6d9325e:   mov    0x1c(%rsp),%r13d
   0.01%     0x00007f8ac6d93263:   test   %r13d,%r13d
             0x00007f8ac6d93266:   jne    0x00007f8ac6d93490           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@17 (line 852)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f8ac6d9326c:   mov    0x20(%rsp),%ebp
             0x00007f8ac6d93270:   mov    0xc(%rsp),%ebx
   0.00%     0x00007f8ac6d93274:   mov    %r12d,0x14(,%rbx,8)          ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f8ac6d9327c:   mov    %ebp,0x1c(,%rbx,8)           ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f8ac6d93283:   mov    0x30(%rsp),%rbp
             0x00007f8ac6d93288:   add    $0x38,%rsp
   0.00%     0x00007f8ac6d9328c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007f8ac6d93293:   ja     0x00007f8ac6d934c6
   0.00%     0x00007f8ac6d93299:   vzeroupper 
   0.00%     0x00007f8ac6d9329c:   ret    
             0x00007f8ac6d9329d:   mov    %r10,0x10(%rsp)
             0x00007f8ac6d932a2:   jmp    0x00007f8ac6d93176
             0x00007f8ac6d932a7:   mov    %r10,0x10(%rsp)
             0x00007f8ac6d932ac:   mov    $0x0,%r14
             0x00007f8ac6d932b3:   jmp    0x00007f8ac6d9314f
             0x00007f8ac6d932b8:   mov    %r14,%r10
             0x00007f8ac6d932bb:   jmp    0x00007f8ac6d93166           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@6 (line 728)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
....................................................................................................
  22.53%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.51%                       <unknown> 
  22.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1109 
   5.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1109 
   0.20%         libc-2.31.so  __memset_avx2_erms 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1109 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1142 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1109 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1109 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   1.48%  <...other 410 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.60%                       <unknown> 
  28.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1109 
   1.34%               kernel  [unknown] 
   0.20%         libc-2.31.so  __memset_avx2_erms 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1142 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%            libjvm.so  FreeListAllocator::reset 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  JVMCIRuntime::new_array_common 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.41%  <...other 141 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  69.60%                     
  28.21%       jvmci, level 4
   1.34%               kernel
   0.40%            libjvm.so
   0.33%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%           ld-2.31.so
   0.02%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 17.824 us/op
# Warmup Iteration   2: 16.777 us/op
# Warmup Iteration   3: 17.189 us/op
# Warmup Iteration   4: 17.146 us/op
# Warmup Iteration   5: 17.131 us/op
Iteration   1: 17.728 us/op
Iteration   2: 17.230 us/op
Iteration   3: 17.765 us/op
Iteration   4: 17.221 us/op
Iteration   5: 17.098 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  17.409 ±(99.9%) 1.205 us/op [Average]
  (min, avg, max) = (17.098, 17.409, 17.765), stdev = 0.313
  CI (99.9%): [16.203, 18.614] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 265890 total address lines.
Perf output processed (skipped 62.058 seconds):
 Column 1: cycles (50733 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

            <deoptimized thread='2124523' reason='constraint' pc='0x00007f89fb3f1ccb' compile_id='1080' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='37' backedge_count='470488' iicount='37'/>
            </deoptimized>
            <deoptimized thread='2124523' reason='constraint' pc='0x00007f89fb3f1ccb' compile_id='1080' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='38' backedge_count='478680' iicount='38'/>
            </deoptimized>
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Decoding RuntimeStub - Stub&lt;IntrinsicStubsGen.aesEncrypt&gt; 0x00007f8a028f5a90
            --------------------------------------------------------------------------------
              0x00007f8a028f5b20:   sub    $0x18,%rsp
   2.19%      0x00007f8a028f5b24:   mov    -0x4(%rcx),%r10d
              0x00007f8a028f5b28:   vmovdqu -0x30(%rip),%xmm1        # 0x00007f8a028f5b00
              0x00007f8a028f5b30:   vmovdqu (%rsi),%xmm0
   2.07%      0x00007f8a028f5b34:   vmovdqu (%rcx),%xmm2
   0.11%      0x00007f8a028f5b38:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f8a028f5b3d:   vpxor  %xmm2,%xmm0,%xmm0
   0.02%      0x00007f8a028f5b41:   vmovdqu 0x10(%rcx),%xmm2
   2.05%      0x00007f8a028f5b46:   vpshufb %xmm1,%xmm2,%xmm2
   0.10%      0x00007f8a028f5b4b:   vmovdqu 0x20(%rcx),%xmm3
   0.00%      0x00007f8a028f5b50:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007f8a028f5b55:   vmovdqu 0x30(%rcx),%xmm4
   2.11%      0x00007f8a028f5b5a:   vpshufb %xmm1,%xmm4,%xmm4
   0.16%      0x00007f8a028f5b5f:   vmovdqu 0x40(%rcx),%xmm5
   0.00%      0x00007f8a028f5b64:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007f8a028f5b69:   vaesenc %xmm2,%xmm0,%xmm0
   2.04%      0x00007f8a028f5b6e:   vaesenc %xmm3,%xmm0,%xmm0
   0.10%      0x00007f8a028f5b73:   vaesenc %xmm4,%xmm0,%xmm0
   0.03%      0x00007f8a028f5b78:   vaesenc %xmm5,%xmm0,%xmm0
   0.03%      0x00007f8a028f5b7d:   vmovdqu 0x50(%rcx),%xmm2
   2.11%      0x00007f8a028f5b82:   vpshufb %xmm1,%xmm2,%xmm2
   0.09%      0x00007f8a028f5b87:   vmovdqu 0x60(%rcx),%xmm3
   0.00%      0x00007f8a028f5b8c:   vpshufb %xmm1,%xmm3,%xmm3
   0.01%      0x00007f8a028f5b91:   vmovdqu 0x70(%rcx),%xmm4
   2.10%      0x00007f8a028f5b96:   vpshufb %xmm1,%xmm4,%xmm4
   0.09%      0x00007f8a028f5b9b:   vmovdqu 0x80(%rcx),%xmm5
              0x00007f8a028f5ba3:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007f8a028f5ba8:   vaesenc %xmm2,%xmm0,%xmm0
   2.31%      0x00007f8a028f5bad:   vaesenc %xmm3,%xmm0,%xmm0
   0.10%      0x00007f8a028f5bb2:   vaesenc %xmm4,%xmm0,%xmm0
   0.05%      0x00007f8a028f5bb7:   vaesenc %xmm5,%xmm0,%xmm0
   0.10%      0x00007f8a028f5bbc:   vmovdqu 0x90(%rcx),%xmm2
   2.12%      0x00007f8a028f5bc4:   vpshufb %xmm1,%xmm2,%xmm2
   0.09%      0x00007f8a028f5bc9:   vmovdqu 0xa0(%rcx),%xmm3
              0x00007f8a028f5bd1:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%      0x00007f8a028f5bd6:   cmp    $0x2c,%r10d
          ╭   0x00007f8a028f5bda:   je     0x00007f8a028f5c2a
   2.12%  │   0x00007f8a028f5bdc:   vaesenc %xmm2,%xmm0,%xmm0
   0.50%  │   0x00007f8a028f5be1:   vaesenc %xmm3,%xmm0,%xmm0
   3.80%  │   0x00007f8a028f5be6:   vmovdqu 0xb0(%rcx),%xmm2
          │   0x00007f8a028f5bee:   vpshufb %xmm1,%xmm2,%xmm2
   0.91%  │   0x00007f8a028f5bf3:   vmovdqu 0xc0(%rcx),%xmm3
   0.07%  │   0x00007f8a028f5bfb:   vpshufb %xmm1,%xmm3,%xmm3
   1.20%  │   0x00007f8a028f5c00:   cmp    $0x34,%r10d
          │╭  0x00007f8a028f5c04:   je     0x00007f8a028f5c2a
          ││  0x00007f8a028f5c06:   vaesenc %xmm2,%xmm0,%xmm0
   4.94%  ││  0x00007f8a028f5c0b:   vaesenc %xmm3,%xmm0,%xmm0
   7.86%  ││  0x00007f8a028f5c10:   vmovdqu 0xd0(%rcx),%xmm2
          ││  0x00007f8a028f5c18:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f8a028f5c1d:   vmovdqu 0xe0(%rcx),%xmm3
   0.06%  ││  0x00007f8a028f5c25:   vpshufb %xmm1,%xmm3,%xmm3
   2.09%  ↘↘  0x00007f8a028f5c2a:   vaesenc %xmm2,%xmm0,%xmm0
   6.50%      0x00007f8a028f5c2f:   vaesenclast %xmm3,%xmm0,%xmm0
   8.80%      0x00007f8a028f5c34:   vmovdqu %xmm0,(%rdx)
   2.32%      0x00007f8a028f5c38:   add    $0x18,%rsp
              0x00007f8a028f5c3c:   ret    
              0x00007f8a028f5c3d:   hlt    
              0x00007f8a028f5c3e:   hlt    
              0x00007f8a028f5c3f:   hlt    
            --------------------------------------------------------------------------------
            - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            ImmutableOopMapSet contains 0 OopMaps
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            <deoptimized thread='2124523' reason='constraint' pc='0x00007f89fb3f1ccb' compile_id='1080' compiler='c1' level='3'>
            <jvms bci='17' method='java.util.Arrays fill ([BB)V' bytes='21' count='39' backedge_count='486872' iicount='39'/>
....................................................................................................
  61.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 

                0x00007f8a02d9601c:   data16 data16 xchg %ax,%ax          ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  ↗     0x00007f8a02d96020:   test   %r10d,%r10d
          │     0x00007f8a02d96023:   jl     0x00007f8a02d963c5
          │     0x00007f8a02d96029:   cmp    %ecx,%r10d
          │     0x00007f8a02d9602c:   jg     0x00007f8a02d963c5
          │     0x00007f8a02d96032:   test   %esi,%esi
          │     0x00007f8a02d96034:   jl     0x00007f8a02d963c5
   2.26%  │     0x00007f8a02d9603a:   nopw   0x0(%rax,%rax,1)
   0.00%  │     0x00007f8a02d96040:   cmp    %edx,%esi
          │     0x00007f8a02d96042:   jg     0x00007f8a02d963c5
          │     0x00007f8a02d96048:   mov    %rbp,%rbx
          │     0x00007f8a02d9604b:   mov    %r9,%rax
   2.27%  │     0x00007f8a02d9604e:   mov    %r8,%r13
   0.00%  │     0x00007f8a02d96051:   mov    %r10d,%r14d
          │     0x00007f8a02d96054:   lea    0x10(%r14),%r14
          │     0x00007f8a02d96058:   add    %rbx,%r14
   2.18%  │     0x00007f8a02d9605b:   mov    %esi,%ebx
   0.00%  │     0x00007f8a02d9605d:   lea    0x10(%rbx),%rbx
          │     0x00007f8a02d96061:   add    %rax,%rbx
          │     0x00007f8a02d96064:   lea    0x10(%r13),%rax
   2.36%  │     0x00007f8a02d96068:   mov    %esi,%r13d
   0.00%  │     0x00007f8a02d9606b:   mov    %r14,%rsi
          │     0x00007f8a02d9606e:   mov    %edx,%r14d
          │     0x00007f8a02d96071:   mov    %rbx,%rdx
   2.12%  │     0x00007f8a02d96074:   mov    %ecx,%ebx
   0.00%  │     0x00007f8a02d96076:   mov    %rax,%rcx                    ;* unwind (locked if synchronized)
          │                                                               ; - com.sun.crypto.provider.AESCrypt::implEncryptBlock@-3
          │                                                               ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │     0x00007f8a02d96079:   mov    %r9,%rax
          │     0x00007f8a02d9607c:   mov    %r10d,%r9d
   2.19%  │     0x00007f8a02d9607f:   nop                                 ;   {no_reloc}
   0.00%  │     0x00007f8a02d96080:   call   0x00007f8a028f5b20           ;   {runtime_call Stub&lt;IntrinsicStubsGen.aesEncrypt&gt;}
   0.00%  │     0x00007f8a02d96085:   nop
          │     0x00007f8a02d96086:   sub    %edi,%r11d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.17%  │     0x00007f8a02d96089:   mov    %r13d,%esi
          │     0x00007f8a02d9608c:   add    %edi,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │     0x00007f8a02d9608e:   mov    %r9d,%r10d
          │     0x00007f8a02d96091:   add    %edi,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   2.26%  │     0x00007f8a02d96094:   mov    %r14d,%edx
          │     0x00007f8a02d96097:   mov    %ebx,%ecx
          │     0x00007f8a02d96099:   mov    %rax,%r9                     ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@3 (line 102)
          │                                                               ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                               ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          │     0x00007f8a02d9609c:   nopl   0x0(%rax)
   2.28%  │     0x00007f8a02d960a0:   cmp    %r11d,%edi
          ╰     0x00007f8a02d960a3:   jle    0x00007f8a02d96020           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                0x00007f8a02d960a9:   mov    %r9,%rax
                0x00007f8a02d960ac:   cmpl   $0x1,0x58(%rsp)
   0.01%        0x00007f8a02d960b1:   jl     0x00007f8a02d96225
                0x00007f8a02d960b7:   mov    0x58(%rsp),%r10d
                0x00007f8a02d960bc:   nopl   0x0(%rax)
                0x00007f8a02d960c0:   test   %r10d,%r10d
                0x00007f8a02d960c3:   je     0x00007f8a02d9645f
   0.00%        0x00007f8a02d960c9:   lea    0x10(%rbp),%rsi
                0x00007f8a02d960cd:   cmp    $0x20,%r10d
                0x00007f8a02d960d1:   jb     0x00007f8a02d96240
                0x00007f8a02d960d7:   mov    0x40(%rsp),%r13
                0x00007f8a02d960dc:   lea    -0x20(%r13),%rdx
   0.00%        0x00007f8a02d960e0:   mov    $0x0,%rcx
                0x00007f8a02d960e7:   nopw   0x0(%rax,%rax,1)
   0.67%   ↗    0x00007f8a02d960f0:   vmovdqu %ymm6,(%rsi,%rcx,1)
   1.31%   │    0x00007f8a02d960f5:   lea    0x20(%rcx),%rcx
   0.24%   │    0x00007f8a02d960f9:   cmp    %rdx,%rcx
           ╰    0x00007f8a02d960fc:   jle    0x00007f8a02d960f0
                0x00007f8a02d960fe:   lea    -0x10(%r13),%rdx
   0.01%        0x00007f8a02d96102:   cmp    %rdx,%rcx
                0x00007f8a02d96105:   jg     0x00007f8a02d9628b
                0x00007f8a02d9610b:   vmovdqu %xmm6,(%rsi,%rcx,1)
                0x00007f8a02d96110:   lea    0x10(%rcx),%rdx
                0x00007f8a02d96114:   lea    -0x8(%r13),%rcx
   0.00%        0x00007f8a02d96118:   nopl   0x0(%rax,%rax,1)
                0x00007f8a02d96120:   cmp    %rcx,%rdx
            ╭   0x00007f8a02d96123:   jg     0x00007f8a02d96133
            │   0x00007f8a02d96129:   vmovq  %xmm6,(%rsi,%rdx,1)
            │   0x00007f8a02d9612f:   lea    0x8(%rdx),%rdx
   0.00%    ↘   0x00007f8a02d96133:   lea    -0x4(%r13),%rcx
   0.00%        0x00007f8a02d96137:   cmp    %rcx,%rdx
             ╭  0x00007f8a02d9613a:   jg     0x00007f8a02d96149
             │  0x00007f8a02d96140:   vmovd  %xmm6,(%rsi,%rdx,1)
             │  0x00007f8a02d96145:   lea    0x4(%rdx),%rdx
   0.00%     ↘  0x00007f8a02d96149:   dec    %r13
                0x00007f8a02d9614c:   cmp    %r13,%rdx
                0x00007f8a02d9614f:   jg     0x00007f8a02d96180
                0x00007f8a02d96155:   mov    %r12b,(%rsi,%rdx,1)
                0x00007f8a02d96159:   mov    %rdx,%rcx
                0x00007f8a02d9615c:   inc    %rcx
                0x00007f8a02d9615f:   nop
                0x00007f8a02d96160:   cmp    %r13,%rcx
                0x00007f8a02d96163:   jg     0x00007f8a02d96180
                0x00007f8a02d96169:   mov    %r12b,0x1(%rsi,%rdx,1)
                0x00007f8a02d9616e:   lea    0x2(%rdx),%rcx
....................................................................................................
  22.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.41%                       <unknown> 
  22.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   9.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   3.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.32%               kernel  [unknown] 
   0.30%         libc-2.31.so  __memset_avx2_erms 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.12%               kernel  [unknown] 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1150 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   1.85%  <...other 457 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.49%                       <unknown> 
  35.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 1124 
   1.72%               kernel  [unknown] 
   0.30%         libc-2.31.so  __memset_avx2_erms 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 1150 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           ld-2.31.so  __tls_get_addr 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  G1CardSet::reset_table_scanner 
   0.02%            libjvm.so  FreeListAllocator::reset 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%            libjvm.so  TypeArrayKlass::allocate_common 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  JVMCIRuntime::new_array_common 
   0.01%   libpthread-2.31.so  __pthread_mutex_lock 
   0.01%            libjvm.so  G1RebuildFreeListTask::work 
   0.51%  <...other 155 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  61.49%                     
  35.72%       jvmci, level 4
   1.72%               kernel
   0.54%            libjvm.so
   0.43%         libc-2.31.so
   0.04%   libpthread-2.31.so
   0.03%           ld-2.31.so
   0.02%               [vdso]
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:23:02

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
AesEcbCryptoBenchmark.decrypt           16384        128     AES/ECB/NoPadding  avgt    5  12.221 ± 0.846  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        128     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        128  AES/ECB/PKCS5Padding  avgt    5  16.035 ± 0.192  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        128  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        192     AES/ECB/NoPadding  avgt    5  14.862 ± 0.245  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        192     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        192  AES/ECB/PKCS5Padding  avgt    5  17.061 ± 0.140  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        192  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        256     AES/ECB/NoPadding  avgt    5  15.301 ± 0.463  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        256     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        256  AES/ECB/PKCS5Padding  avgt    5  17.448 ± 0.420  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        256  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        128     AES/ECB/NoPadding  avgt    5  12.282 ± 0.498  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        128     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        128  AES/ECB/PKCS5Padding  avgt    5  15.454 ± 0.853  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        128  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        192     AES/ECB/NoPadding  avgt    5  14.955 ± 0.113  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        192     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        192  AES/ECB/PKCS5Padding  avgt    5  16.476 ± 0.297  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        192  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        256     AES/ECB/NoPadding  avgt    5  13.914 ± 0.607  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        256     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        256  AES/ECB/PKCS5Padding  avgt    5  17.409 ± 1.205  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        256  AES/ECB/PKCS5Padding  avgt          NaN            ---
