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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/NoPadding)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.618 us/op
# Warmup Iteration   2: 22.757 us/op
# Warmup Iteration   3: 22.806 us/op
# Warmup Iteration   4: 22.792 us/op
# Warmup Iteration   5: 22.590 us/op
Iteration   1: 22.952 us/op
Iteration   2: 22.949 us/op
Iteration   3: 22.941 us/op
Iteration   4: 22.971 us/op
Iteration   5: 22.930 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  22.949 ±(99.9%) 0.058 us/op [Average]
  (min, avg, max) = (22.930, 22.949, 22.971), stdev = 0.015
  CI (99.9%): [22.891, 23.007] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 154186 total address lines.
Perf output processed (skipped 57.071 seconds):
 Column 1: cycles (50671 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

          --------------------------------------------------------------------------------
          - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          StubRoutines::aescrypt_decryptBlock [0x00007f0e780e8e60, 0x00007f0e780e8f7a] (282 bytes)
          --------------------------------------------------------------------------------
   1.74%    0x00007f0e780e8e60:   push   %rbp
   0.01%    0x00007f0e780e8e61:   mov    %rsp,%rbp
   1.66%    0x00007f0e780e8e64:   mov    -0x4(%rdx),%eax
   0.01%    0x00007f0e780e8e67:   vmovdqu 0x1874a111(%rip),%xmm1        # 0x00007f0e90832f80
   0.01%    0x00007f0e780e8e6f:   vmovdqu (%rdi),%xmm0
   1.48%    0x00007f0e780e8e73:   vmovdqu 0x10(%rdx),%xmm2
   1.26%    0x00007f0e780e8e78:   vpshufb %xmm1,%xmm2,%xmm2
   0.02%    0x00007f0e780e8e7d:   vmovdqu 0x20(%rdx),%xmm3
   0.01%    0x00007f0e780e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   0.72%    0x00007f0e780e8e87:   vmovdqu 0x30(%rdx),%xmm4
   1.11%    0x00007f0e780e8e8c:   vpshufb %xmm1,%xmm4,%xmm4
   0.02%    0x00007f0e780e8e91:   vmovdqu 0x40(%rdx),%xmm5
   0.01%    0x00007f0e780e8e96:   vpshufb %xmm1,%xmm5,%xmm5
   0.67%    0x00007f0e780e8e9b:   vpxor  %xmm2,%xmm0,%xmm0
   5.29%    0x00007f0e780e8e9f:   vaesdec %xmm3,%xmm0,%xmm0
   1.69%    0x00007f0e780e8ea4:   vaesdec %xmm4,%xmm0,%xmm0
   4.98%    0x00007f0e780e8ea9:   vaesdec %xmm5,%xmm0,%xmm0
   6.55%    0x00007f0e780e8eae:   vmovdqu 0x50(%rdx),%xmm2
   0.04%    0x00007f0e780e8eb3:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f0e780e8eb8:   vmovdqu 0x60(%rdx),%xmm3
   0.00%    0x00007f0e780e8ebd:   vpshufb %xmm1,%xmm3,%xmm3
   1.69%    0x00007f0e780e8ec2:   vmovdqu 0x70(%rdx),%xmm4
   0.04%    0x00007f0e780e8ec7:   vpshufb %xmm1,%xmm4,%xmm4
            0x00007f0e780e8ecc:   vmovdqu 0x80(%rdx),%xmm5
   3.99%    0x00007f0e780e8ed4:   vpshufb %xmm1,%xmm5,%xmm5
   7.44%    0x00007f0e780e8ed9:   vaesdec %xmm2,%xmm0,%xmm0
   2.27%    0x00007f0e780e8ede:   vaesdec %xmm3,%xmm0,%xmm0
   0.20%    0x00007f0e780e8ee3:   vaesdec %xmm4,%xmm0,%xmm0
   4.54%    0x00007f0e780e8ee8:   vaesdec %xmm5,%xmm0,%xmm0
   6.75%    0x00007f0e780e8eed:   vmovdqu 0x90(%rdx),%xmm2
   0.06%    0x00007f0e780e8ef5:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007f0e780e8efa:   vmovdqu 0xa0(%rdx),%xmm3
            0x00007f0e780e8f02:   vpshufb %xmm1,%xmm3,%xmm3
   1.56%    0x00007f0e780e8f07:   vmovdqu (%rdx),%xmm4
            0x00007f0e780e8f0b:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007f0e780e8f10:   cmp    $0x2c,%eax
            0x00007f0e780e8f13:   je     0x00007f0e780e8f62
            0x00007f0e780e8f15:   vaesdec %xmm2,%xmm0,%xmm0
            0x00007f0e780e8f1a:   vaesdec %xmm3,%xmm0,%xmm0
            0x00007f0e780e8f1f:   vmovdqu 0xb0(%rdx),%xmm2
            0x00007f0e780e8f27:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f0e780e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
            0x00007f0e780e8f34:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f0e780e8f39:   cmp    $0x34,%eax
            0x00007f0e780e8f3c:   je     0x00007f0e780e8f62
            0x00007f0e780e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
....................................................................................................
  55.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

             0x00007f0e780e8f34:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007f0e780e8f39:   cmp    $0x34,%eax
          ╭  0x00007f0e780e8f3c:   je     0x00007f0e780e8f62
          │  0x00007f0e780e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f0e780e8f43:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f0e780e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          │  0x00007f0e780e8f50:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f0e780e8f55:   vmovdqu 0xe0(%rdx),%xmm3
          │  0x00007f0e780e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
          ↘  0x00007f0e780e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   5.11%     0x00007f0e780e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.83%     0x00007f0e780e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.77%     0x00007f0e780e8f71:   vmovdqu %xmm0,(%rsi)
   1.67%     0x00007f0e780e8f75:   xor    %rax,%rax
             0x00007f0e780e8f78:   leave  
   1.70%     0x00007f0e780e8f79:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::cipherBlockChaining_encryptAESCrypt [0x00007f0e780e8f80, 0x00007f0e780e91a8] (552 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  22.08%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 670 

            0x00007f0e78646cd4:   mov    0x10(%r12,%rcx,8),%r11d      ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@13 (line 137)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.71%    0x00007f0e78646cd9:   mov    %r14d,%esi
            0x00007f0e78646cdc:   mov    (%rsp),%r10d
            0x00007f0e78646ce0:   mov    0x8(%rsp),%r14
   0.00%    0x00007f0e78646ce5:   mov    0x10(%rsp),%r8
   1.68%    0x00007f0e78646cea:   mov    0x18(%rsp),%rdi
            0x00007f0e78646cef:   mov    %ebp,%r9d
   0.00%    0x00007f0e78646cf2:   mov    %eax,%ebp
            0x00007f0e78646cf4:   mov    %edx,0x28(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@12 (line 137)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.59%    0x00007f0e78646cf8:   nopl   0x0(%rax,%rax,1)
            0x00007f0e78646d00:   mov    0x18(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007f0e78647254
                                                                      ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
   0.00%    0x00007f0e78646d05:   mov    %rdi,0x18(%rsp)
            0x00007f0e78646d0a:   mov    %ecx,0x4(%rsp)
   1.70%    0x00007f0e78646d0e:   mov    %r14,0x8(%rsp)
   0.00%    0x00007f0e78646d13:   mov    %r10d,(%rsp)
   0.00%    0x00007f0e78646d17:   mov    %esi,%r14d                   ;*synchronization entry
                                                                      ; - com.sun.crypto.provider.AESCrypt::decryptBlock@-1 (line 1160)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f0e78646d1a:   lea    0x10(%r8,%r9,1),%rdi
   1.59%    0x00007f0e78646d1f:   mov    %r9d,0x20(%rsp)
   0.01%    0x00007f0e78646d24:   mov    %r8,0x10(%rsp)
   0.00%    0x00007f0e78646d29:   lea    0x10(%r13,%rbp,1),%rsi
            0x00007f0e78646d2e:   mov    %r11,%r10
   1.79%    0x00007f0e78646d31:   shl    $0x3,%r10
            0x00007f0e78646d35:   lea    0x10(%r12,%r11,8),%rdx
   0.00%    0x00007f0e78646d3a:   movabs $0x7f0e780e8e60,%r10
            0x00007f0e78646d44:   call   *%r10
            0x00007f0e78646d47:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
                                                                      ;   {other}
            0x00007f0e78646d4f:   mov    0x4(%rsp),%r10d
   1.62%    0x00007f0e78646d54:   mov    0xc(%r12,%r10,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007f0e78646d59:   mov    0x458(%r15),%r11
            0x00007f0e78646d60:   mov    0x28(%rsp),%edx
            0x00007f0e78646d64:   sub    %r10d,%edx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.64%    0x00007f0e78646d67:   add    %r10d,%ebp                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007f0e78646d6a:   mov    %ebp,%eax
            0x00007f0e78646d6c:   mov    0x20(%rsp),%ebp
            0x00007f0e78646d70:   add    %r10d,%ebp                   ; ImmutableOopMap {rbx=NarrowOop r13=Oop [4]=NarrowOop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop }
                                                                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.75%    0x00007f0e78646d73:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                                                                      ;   {poll}
            0x00007f0e78646d76:   cmp    %r10d,%edx
            0x00007f0e78646d79:   jge    0x00007f0e78646cd0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                      ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                      ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                      ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f0e78646d7f:   movzbl 0x24(%r12,%rbx,8),%ebp       ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007f0e78646d85:   test   %ebp,%ebp
            0x00007f0e78646d87:   je     0x00007f0e786471ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f0e78646d8d:   mov    0x2c(%r12,%rbx,8),%ebp       ;*getfield padding {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@21 (line 940)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%    0x00007f0e78646d92:   test   %ebp,%ebp
            0x00007f0e78646d94:   jne    0x00007f0e78647220           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@24 (line 940)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007f0e78646d9a:   mov    0xc(%r12,%rbx,8),%r10d       ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%    0x00007f0e78646d9f:   mov    %r10d,0xc(%rsp)
   0.00%    0x00007f0e78646da4:   mov    0x20(%r12,%rbx,8),%r9d       ;*getfield cipherMode {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@14 (line 852)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f0e78646da9:   mov    %r14d,%esi
            0x00007f0e78646dac:   mov    (%rsp),%r10d                 ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
            0x00007f0e78646db0:   mov    0xc(%rsp),%r11d
   0.01%    0x00007f0e78646db5:   mov    %r11d,0x1c(%r12,%rbx,8)      ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.01%    0x00007f0e78646dba:   mov    %r12d,0x14(%r12,%rbx,8)      ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                      ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                      ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                      ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
....................................................................................................
  15.14%  <total for region 3>

....[Hottest Regions]...............................................................................
  55.82%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  22.08%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  15.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 670 
   4.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 670 
   0.43%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 670 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 720 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 670 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 670 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.47%  <...other 416 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  77.90%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  19.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 670 
   1.81%              kernel  [unknown] 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 720 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.28%  <...other 112 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  77.90%        runtime stub
  19.71%         c2, level 4
   1.81%              kernel
   0.30%           libjvm.so
   0.16%        libc-2.31.so
   0.06%                    
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/PKCS5Padding)

# Run progress: 8.33% complete, ETA 00:20:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.681 us/op
# Warmup Iteration   2: 24.609 us/op
# Warmup Iteration   3: 24.561 us/op
# Warmup Iteration   4: 24.551 us/op
# Warmup Iteration   5: 24.493 us/op
Iteration   1: 24.504 us/op
Iteration   2: 24.496 us/op
Iteration   3: 24.484 us/op
Iteration   4: 24.514 us/op
Iteration   5: 24.494 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  24.498 ±(99.9%) 0.044 us/op [Average]
  (min, avg, max) = (24.484, 24.498, 24.514), stdev = 0.011
  CI (99.9%): [24.455, 24.542] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 155458 total address lines.
Perf output processed (skipped 56.912 seconds):
 Column 1: cycles (50588 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

          --------------------------------------------------------------------------------
          - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          StubRoutines::aescrypt_decryptBlock [0x00007f864c0e8e60, 0x00007f864c0e8f7a] (282 bytes)
          --------------------------------------------------------------------------------
   1.61%    0x00007f864c0e8e60:   push   %rbp
            0x00007f864c0e8e61:   mov    %rsp,%rbp
            0x00007f864c0e8e64:   mov    -0x4(%rdx),%eax
   1.54%    0x00007f864c0e8e67:   vmovdqu 0x15352111(%rip),%xmm1        # 0x00007f866143af80
   0.04%    0x00007f864c0e8e6f:   vmovdqu (%rdi),%xmm0
   1.02%    0x00007f864c0e8e73:   vmovdqu 0x10(%rdx),%xmm2
   0.03%    0x00007f864c0e8e78:   vpshufb %xmm1,%xmm2,%xmm2
   1.25%    0x00007f864c0e8e7d:   vmovdqu 0x20(%rdx),%xmm3
   0.01%    0x00007f864c0e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   0.46%    0x00007f864c0e8e87:   vmovdqu 0x30(%rdx),%xmm4
   0.00%    0x00007f864c0e8e8c:   vpshufb %xmm1,%xmm4,%xmm4
   1.08%    0x00007f864c0e8e91:   vmovdqu 0x40(%rdx),%xmm5
   0.85%    0x00007f864c0e8e96:   vpshufb %xmm1,%xmm5,%xmm5
   7.09%    0x00007f864c0e8e9b:   vpxor  %xmm2,%xmm0,%xmm0
   0.23%    0x00007f864c0e8e9f:   vaesdec %xmm3,%xmm0,%xmm0
   0.42%    0x00007f864c0e8ea4:   vaesdec %xmm4,%xmm0,%xmm0
   1.89%    0x00007f864c0e8ea9:   vaesdec %xmm5,%xmm0,%xmm0
   6.30%    0x00007f864c0e8eae:   vmovdqu 0x50(%rdx),%xmm2
            0x00007f864c0e8eb3:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007f864c0e8eb8:   vmovdqu 0x60(%rdx),%xmm3
   0.00%    0x00007f864c0e8ebd:   vpshufb %xmm1,%xmm3,%xmm3
   1.55%    0x00007f864c0e8ec2:   vmovdqu 0x70(%rdx),%xmm4
            0x00007f864c0e8ec7:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%    0x00007f864c0e8ecc:   vmovdqu 0x80(%rdx),%xmm5
   0.01%    0x00007f864c0e8ed4:   vpshufb %xmm1,%xmm5,%xmm5
   1.49%    0x00007f864c0e8ed9:   vaesdec %xmm2,%xmm0,%xmm0
   9.27%    0x00007f864c0e8ede:   vaesdec %xmm3,%xmm0,%xmm0
   0.12%    0x00007f864c0e8ee3:   vaesdec %xmm4,%xmm0,%xmm0
   6.42%    0x00007f864c0e8ee8:   vaesdec %xmm5,%xmm0,%xmm0
   6.43%    0x00007f864c0e8eed:   vmovdqu 0x90(%rdx),%xmm2
            0x00007f864c0e8ef5:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007f864c0e8efa:   vmovdqu 0xa0(%rdx),%xmm3
            0x00007f864c0e8f02:   vpshufb %xmm1,%xmm3,%xmm3
   1.60%    0x00007f864c0e8f07:   vmovdqu (%rdx),%xmm4
   0.00%    0x00007f864c0e8f0b:   vpshufb %xmm1,%xmm4,%xmm4
            0x00007f864c0e8f10:   cmp    $0x2c,%eax
            0x00007f864c0e8f13:   je     0x00007f864c0e8f62
            0x00007f864c0e8f15:   vaesdec %xmm2,%xmm0,%xmm0
            0x00007f864c0e8f1a:   vaesdec %xmm3,%xmm0,%xmm0
            0x00007f864c0e8f1f:   vmovdqu 0xb0(%rdx),%xmm2
            0x00007f864c0e8f27:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007f864c0e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
            0x00007f864c0e8f34:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007f864c0e8f39:   cmp    $0x34,%eax
            0x00007f864c0e8f3c:   je     0x00007f864c0e8f62
....................................................................................................
  50.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

             0x00007f864c0e8f34:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007f864c0e8f39:   cmp    $0x34,%eax
          ╭  0x00007f864c0e8f3c:   je     0x00007f864c0e8f62
          │  0x00007f864c0e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f864c0e8f43:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f864c0e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          │  0x00007f864c0e8f50:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f864c0e8f55:   vmovdqu 0xe0(%rdx),%xmm3
          │  0x00007f864c0e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
          ↘  0x00007f864c0e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   4.76%     0x00007f864c0e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.24%     0x00007f864c0e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.36%     0x00007f864c0e8f71:   vmovdqu %xmm0,(%rsi)
   1.59%     0x00007f864c0e8f75:   xor    %rax,%rax
             0x00007f864c0e8f78:   leave  
   1.64%     0x00007f864c0e8f79:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::cipherBlockChaining_encryptAESCrypt [0x00007f864c0e8f80, 0x00007f864c0e91a8] (552 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  20.59%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, javax.crypto.Cipher::doFinal, version 2, compile id 669 

              0x00007f864c6438d7:   test   %edx,%edx
              0x00007f864c6438d9:   je     0x00007f864c644174           ;*invokevirtual implECBDecrypt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007f864c6438df:   nop
   0.00%      0x00007f864c6438e0:   cmp    %r11d,%ebx
              0x00007f864c6438e3:   jl     0x00007f864c6439f8           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ;   {no_reloc}
              0x00007f864c6438e9:   lea    (%r12,%rcx,8),%r11           ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@135 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007f864c6438ed:   mov    %r11,0x28(%rsp)
   0.00%      0x00007f864c6438f2:   mov    %ecx,0x4(%rsp)
   0.00%      0x00007f864c6438f6:   mov    %ebx,0x38(%rsp)
              0x00007f864c6438fa:   xor    %ebp,%ebp
              0x00007f864c6438fc:   xor    %ecx,%ecx
              0x00007f864c6438fe:   mov    %ebp,0x34(%rsp)
   0.00%      0x00007f864c643902:   mov    %ecx,0x30(%rsp)
   0.00%  ╭   0x00007f864c643906:   jmp    0x00007f864c643933
          │   0x00007f864c643908:   nopl   0x0(%rax,%rax,1)
   1.65%  │↗  0x00007f864c643910:   mov    0x4(%rsp),%ebx
          ││  0x00007f864c643914:   mov    0x10(%r12,%rbx,8),%edx       ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@13 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││  0x00007f864c643919:   mov    %r14d,%ebx
   0.00%  ││  0x00007f864c64391c:   mov    (%rsp),%r10d
   1.60%  ││  0x00007f864c643920:   mov    0x8(%rsp),%r14
          ││  0x00007f864c643925:   mov    0x18(%rsp),%r8
          ││  0x00007f864c64392a:   mov    0x20(%rsp),%r9
   0.00%  ││  0x00007f864c64392f:   mov    %ebp,0x38(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@12 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.60%  ↘│  0x00007f864c643933:   mov    0x18(%r12,%rdx,8),%r11d      ; implicit exception: dispatches to 0x00007f864c64471c
           │                                                            ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.04%   │  0x00007f864c643938:   mov    %r9,0x20(%rsp)
           │  0x00007f864c64393d:   mov    %r8,0x18(%rsp)
   0.01%   │  0x00007f864c643942:   mov    %r14,0x8(%rsp)
   1.54%   │  0x00007f864c643947:   mov    %r10d,(%rsp)
           │  0x00007f864c64394b:   mov    %ebx,%r14d                   ;*synchronization entry
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@-1 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%   │  0x00007f864c64394e:   mov    0x34(%rsp),%ebx
           │  0x00007f864c643952:   lea    0x10(%r13,%rbx,1),%rdi
   1.55%   │  0x00007f864c643957:   mov    0x30(%rsp),%ebx
           │  0x00007f864c64395b:   lea    0x10(%r9,%rbx,1),%rsi
   0.00%   │  0x00007f864c643960:   mov    %r11,%r10
           │  0x00007f864c643963:   shl    $0x3,%r10
   1.51%   │  0x00007f864c643967:   lea    0x10(%r12,%r11,8),%rdx
           │  0x00007f864c64396c:   vzeroupper 
   1.60%   │  0x00007f864c64396f:   movabs $0x7f864c0e8e60,%r10
   0.00%   │  0x00007f864c643979:   call   *%r10
   0.00%   │  0x00007f864c64397c:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ;   {other}
   0.00%   │  0x00007f864c643984:   mov    0x4(%rsp),%ebx
   1.60%   │  0x00007f864c643988:   mov    0xc(%r12,%rbx,8),%r11d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%   │  0x00007f864c64398d:   mov    0x458(%r15),%r10
           │  0x00007f864c643994:   mov    0x38(%rsp),%ebp
   0.00%   │  0x00007f864c643998:   sub    %r11d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.52%   │  0x00007f864c64399b:   mov    0x30(%rsp),%ebx
           │  0x00007f864c64399f:   add    %r11d,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.01%   │  0x00007f864c6439a2:   mov    %ebx,0x30(%rsp)
   0.00%   │  0x00007f864c6439a6:   mov    0x34(%rsp),%ebx
   1.74%   │  0x00007f864c6439aa:   add    %r11d,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007f864c6439ad:   mov    %ebx,0x34(%rsp)              ; ImmutableOopMap {r13=Oop [0]=NarrowOop [4]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007f864c6439b1:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ;   {poll}
   0.00%   │  0x00007f864c6439b4:   cmp    %r11d,%ebp
           ╰  0x00007f864c6439b7:   jge    0x00007f864c643910           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%      0x00007f864c6439bd:   mov    (%rsp),%r10d
              0x00007f864c6439c1:   movzbl 0x24(%r12,%r10,8),%ebp       ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.01%      0x00007f864c6439c7:   test   %ebp,%ebp
              0x00007f864c6439c9:   je     0x00007f864c6446bc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007f864c6439cf:   mov    0x2c(%r12,%r10,8),%r11d      ;*getfield padding {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.99%  <total for region 3>

....[Hottest Regions]...............................................................................
  50.72%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  20.59%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  15.99%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   4.36%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.91%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   1.28%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   0.18%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   0.16%        libc-2.31.so  __memset_avx2_erms 
   0.10%              kernel  [unknown] 
   0.09%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   0.09%              kernel  [unknown] 
   0.08%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   0.08%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   0.07%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   1.94%  <...other 436 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.31%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  21.76%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 669 
   4.38%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.54%              kernel  [unknown] 
   0.16%        libc-2.31.so  __memset_avx2_erms 
   0.09%                      <unknown> 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 723 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 
   0.03%           libjvm.so  FreeListAllocator::reset 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ObjArrayAllocator::initialize 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  G1MonotonicArena::num_segments 
   0.46%  <...other 136 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.69%        runtime stub
  21.84%         c2, level 4
   1.54%              kernel
   0.50%           libjvm.so
   0.28%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/NoPadding)

# Run progress: 16.67% complete, ETA 00:18:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.968 us/op
# Warmup Iteration   2: 22.102 us/op
# Warmup Iteration   3: 22.004 us/op
# Warmup Iteration   4: 21.984 us/op
# Warmup Iteration   5: 21.987 us/op
Iteration   1: 22.132 us/op
Iteration   2: 22.138 us/op
Iteration   3: 22.175 us/op
Iteration   4: 22.148 us/op
Iteration   5: 22.163 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  22.151 ±(99.9%) 0.068 us/op [Average]
  (min, avg, max) = (22.132, 22.151, 22.175), stdev = 0.018
  CI (99.9%): [22.083, 22.219] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 149379 total address lines.
Perf output processed (skipped 56.929 seconds):
 Column 1: cycles (51228 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::aescrypt_decryptBlock [0x00007f66300e8e60, 0x00007f66300e8f7a] (282 bytes)
            --------------------------------------------------------------------------------
   1.68%      0x00007f66300e8e60:   push   %rbp
   0.01%      0x00007f66300e8e61:   mov    %rsp,%rbp
   1.74%      0x00007f66300e8e64:   mov    -0x4(%rdx),%eax
   0.01%      0x00007f66300e8e67:   vmovdqu 0x1593d111(%rip),%xmm1        # 0x00007f6645a25f80
   0.00%      0x00007f66300e8e6f:   vmovdqu (%rdi),%xmm0
   0.04%      0x00007f66300e8e73:   vmovdqu 0x10(%rdx),%xmm2
   1.77%      0x00007f66300e8e78:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f66300e8e7d:   vmovdqu 0x20(%rdx),%xmm3
              0x00007f66300e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%      0x00007f66300e8e87:   vmovdqu 0x30(%rdx),%xmm4
   1.77%      0x00007f66300e8e8c:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f66300e8e91:   vmovdqu 0x40(%rdx),%xmm5
   0.00%      0x00007f66300e8e96:   vpshufb %xmm1,%xmm5,%xmm5
              0x00007f66300e8e9b:   vpxor  %xmm2,%xmm0,%xmm0
   1.60%      0x00007f66300e8e9f:   vaesdec %xmm3,%xmm0,%xmm0
   0.00%      0x00007f66300e8ea4:   vaesdec %xmm4,%xmm0,%xmm0
   0.08%      0x00007f66300e8ea9:   vaesdec %xmm5,%xmm0,%xmm0
   1.87%      0x00007f66300e8eae:   vmovdqu 0x50(%rdx),%xmm2
   0.46%      0x00007f66300e8eb3:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f66300e8eb8:   vmovdqu 0x60(%rdx),%xmm3
              0x00007f66300e8ebd:   vpshufb %xmm1,%xmm3,%xmm3
   1.27%      0x00007f66300e8ec2:   vmovdqu 0x70(%rdx),%xmm4
   0.47%      0x00007f66300e8ec7:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f66300e8ecc:   vmovdqu 0x80(%rdx),%xmm5
              0x00007f66300e8ed4:   vpshufb %xmm1,%xmm5,%xmm5
   1.25%      0x00007f66300e8ed9:   vaesdec %xmm2,%xmm0,%xmm0
   9.74%      0x00007f66300e8ede:   vaesdec %xmm3,%xmm0,%xmm0
   0.33%      0x00007f66300e8ee3:   vaesdec %xmm4,%xmm0,%xmm0
   7.13%      0x00007f66300e8ee8:   vaesdec %xmm5,%xmm0,%xmm0
   6.84%      0x00007f66300e8eed:   vmovdqu 0x90(%rdx),%xmm2
   0.00%      0x00007f66300e8ef5:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f66300e8efa:   vmovdqu 0xa0(%rdx),%xmm3
              0x00007f66300e8f02:   vpshufb %xmm1,%xmm3,%xmm3
   1.69%      0x00007f66300e8f07:   vmovdqu (%rdx),%xmm4
   0.00%      0x00007f66300e8f0b:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f66300e8f10:   cmp    $0x2c,%eax
          ╭   0x00007f66300e8f13:   je     0x00007f66300e8f62
          │   0x00007f66300e8f15:   vaesdec %xmm2,%xmm0,%xmm0
   5.30%  │   0x00007f66300e8f1a:   vaesdec %xmm3,%xmm0,%xmm0
   6.96%  │   0x00007f66300e8f1f:   vmovdqu 0xb0(%rdx),%xmm2
          │   0x00007f66300e8f27:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007f66300e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
          │   0x00007f66300e8f34:   vpshufb %xmm1,%xmm3,%xmm3
   1.70%  │   0x00007f66300e8f39:   cmp    $0x34,%eax
          │╭  0x00007f66300e8f3c:   je     0x00007f66300e8f62
          ││  0x00007f66300e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
          ││  0x00007f66300e8f43:   vaesdec %xmm3,%xmm0,%xmm0
          ││  0x00007f66300e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          ││  0x00007f66300e8f50:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f66300e8f55:   vmovdqu 0xe0(%rdx),%xmm3
          ││  0x00007f66300e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘↘  0x00007f66300e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   5.21%      0x00007f66300e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.81%      0x00007f66300e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
....................................................................................................
  53.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

             0x00007f66300e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
             0x00007f66300e8f34:   vpshufb %xmm1,%xmm3,%xmm3
   1.70%     0x00007f66300e8f39:   cmp    $0x34,%eax
          ╭  0x00007f66300e8f3c:   je     0x00007f66300e8f62
          │  0x00007f66300e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007f66300e8f43:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007f66300e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          │  0x00007f66300e8f50:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f66300e8f55:   vmovdqu 0xe0(%rdx),%xmm3
          │  0x00007f66300e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘  0x00007f66300e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   5.21%     0x00007f66300e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.81%     0x00007f66300e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.74%     0x00007f66300e8f71:   vmovdqu %xmm0,(%rsi)
   1.71%     0x00007f66300e8f75:   xor    %rax,%rax
             0x00007f66300e8f78:   leave  
   1.65%     0x00007f66300e8f79:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::cipherBlockChaining_encryptAESCrypt [0x00007f66300e8f80, 0x00007f66300e91a8] (552 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  22.13%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 

                0x00007f66306485c3:   cmp    $0xffffffff,%edi
          ╭     0x00007f66306485c6:   je     0x00007f66306485cb
          │     0x00007f66306485c8:   cltd   
          │     0x00007f66306485c9:   idiv   %edi                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@33 (line 975)
          │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.02%  ↘     0x00007f66306485cb:   test   %edx,%edx
                0x00007f66306485cd:   jne    0x00007f6630648a74           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@34 (line 975)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                                                                          ;   {no_reloc}
                0x00007f66306485d3:   mov    0x30(%r12,%rbx,8),%ecx       ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@135 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                0x00007f66306485d8:   nopl   0x0(%rax,%rax,1)
                0x00007f66306485e0:   mov    0xc(%r12,%rcx,8),%edi        ; implicit exception: dispatches to 0x00007f6630648c28
                                                                          ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@2 (line 162)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%        0x00007f66306485e5:   test   %edi,%edi
                0x00007f66306485e7:   je     0x00007f6630648818
                0x00007f66306485ed:   mov    %esi,%eax
                0x00007f66306485ef:   cmp    $0x80000000,%eax
           ╭    0x00007f66306485f4:   jne    0x00007f66306485fd
           │    0x00007f66306485f6:   xor    %edx,%edx
           │    0x00007f66306485f8:   cmp    $0xffffffff,%edi
           │╭   0x00007f66306485fb:   je     0x00007f6630648600
           ↘│   0x00007f66306485fd:   cltd   
            │   0x00007f66306485fe:   idiv   %edi                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - sun.security.util.ArrayUtil::blockSizeCheck@2 (line 40)
            │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@5 (line 162)
            │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
            │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
            │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
            │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.03%    ↘   0x00007f6630648600:   test   %edx,%edx
                0x00007f6630648602:   jne    0x00007f6630648ab4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - sun.security.util.ArrayUtil::blockSizeCheck@3 (line 40)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@5 (line 162)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%        0x00007f6630648608:   mov    %r10d,%ebp
                0x00007f663064860b:   or     %esi,%ebp                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.util.Preconditions::checkFromIndexSize@4 (line 396)
                                                                          ; - sun.security.util.ArrayUtil::nullAndBoundsCheck@7 (line 47)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@19 (line 164)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                0x00007f663064860d:   test   %ebp,%ebp
                0x00007f663064860f:   jl     0x00007f66306488e0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.util.Preconditions::checkFromIndexSize@5 (line 396)
                                                                          ; - sun.security.util.ArrayUtil::nullAndBoundsCheck@7 (line 47)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@19 (line 164)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                0x00007f6630648615:   cmp    %r10d,%esi
                0x00007f6630648618:   jg     0x00007f6630648af4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - jdk.internal.util.Preconditions::checkFromIndexSize@12 (line 396)
                                                                          ; - sun.security.util.ArrayUtil::nullAndBoundsCheck@7 (line 47)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@19 (line 164)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%        0x00007f663064861e:   mov    0x10(%r12,%rcx,8),%r11d
                0x00007f6630648623:   test   %r11d,%r11d
                0x00007f6630648626:   je     0x00007f6630648848           ;*invokevirtual implECBDecrypt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                0x00007f663064862c:   cmp    %edi,%esi
                0x00007f663064862e:   jl     0x00007f6630648730           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%        0x00007f6630648634:   lea    (%r12,%rcx,8),%rdi           ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@135 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                0x00007f6630648638:   mov    %esi,0x28(%rsp)
   0.00%        0x00007f663064863c:   xor    %r9d,%r9d
                0x00007f663064863f:   xor    %ebp,%ebp
   0.00%     ╭  0x00007f6630648641:   jmp    0x00007f6630648678
             │  0x00007f6630648643:   nopw   0x0(%rax,%rax,1)
             │  0x00007f663064864c:   data16 data16 xchg %ax,%ax
   0.00%     │  0x00007f6630648650:   mov    0x4(%rsp),%ecx
   0.00%     │  0x00007f6630648654:   mov    0x10(%r12,%rcx,8),%r11d      ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@13 (line 137)
             │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
             │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
             │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
             │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.83%     │  0x00007f6630648659:   mov    %r14d,%esi
             │  0x00007f663064865c:   mov    (%rsp),%r10d
             │  0x00007f6630648660:   mov    0x8(%rsp),%r14
             │  0x00007f6630648665:   mov    0x10(%rsp),%r8
   1.79%     │  0x00007f663064866a:   mov    0x18(%rsp),%rdi
             │  0x00007f663064866f:   mov    %ebp,%r9d
             │  0x00007f6630648672:   mov    %eax,%ebp
             │  0x00007f6630648674:   mov    %edx,0x28(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@12 (line 137)
             │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
             │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
             │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
             │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.75%     ↘  0x00007f6630648678:   nopl   0x0(%rax,%rax,1)
                0x00007f6630648680:   mov    0x18(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007f6630648bd4
                                                                          ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
   0.00%        0x00007f6630648685:   mov    %rdi,0x18(%rsp)
                0x00007f663064868a:   mov    %ecx,0x4(%rsp)
   1.78%        0x00007f663064868e:   mov    %r14,0x8(%rsp)
   0.01%        0x00007f6630648693:   mov    %r10d,(%rsp)
                0x00007f6630648697:   mov    %esi,%r14d                   ;*synchronization entry
                                                                          ; - com.sun.crypto.provider.AESCrypt::decryptBlock@-1 (line 1160)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                          ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                          ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                          ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
                0x00007f663064869a:   lea    0x10(%r8,%r9,1),%rdi
   1.70%        0x00007f663064869f:   mov    %r9d,0x20(%rsp)
   0.01%        0x00007f66306486a4:   mov    %r8,0x10(%rsp)
   0.00%        0x00007f66306486a9:   lea    0x10(%r13,%rbp,1),%rsi
   0.00%        0x00007f66306486ae:   mov    %r11,%r10
   1.80%        0x00007f66306486b1:   shl    $0x3,%r10
                0x00007f66306486b5:   lea    0x10(%r12,%r11,8),%rdx
                0x00007f66306486ba:   movabs $0x7f66300e8e60,%r10
                0x00007f66306486c4:   call   *%r10
                0x00007f66306486c7:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
                                                                          ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                          ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                          ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                          ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
....................................................................................................
  10.75%  <total for region 3>

....[Hottest Regions]...............................................................................
  53.71%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  22.13%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  10.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 
   5.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 
   4.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 
   1.35%              kernel  [unknown] 
   0.11%        libc-2.31.so  __memset_avx2_erms 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 
   0.10%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 711 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.51%  <...other 420 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.85%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  20.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 672 
   2.86%              kernel  [unknown] 
   0.11%        libc-2.31.so  __memset_avx2_erms 
   0.07%                      <unknown> 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 711 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%        libc-2.31.so  syscall 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  G1RemSet::prepare_region_for_scan 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.34%  <...other 133 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  75.85%        runtime stub
  20.61%         c2, level 4
   2.86%              kernel
   0.31%           libjvm.so
   0.23%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-1930488.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/PKCS5Padding)

# Run progress: 25.00% complete, ETA 00:16:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.030 us/op
# Warmup Iteration   2: 23.895 us/op
# Warmup Iteration   3: 23.760 us/op
# Warmup Iteration   4: 23.846 us/op
# Warmup Iteration   5: 23.836 us/op
Iteration   1: 23.851 us/op
Iteration   2: 23.838 us/op
Iteration   3: 23.825 us/op
Iteration   4: 23.823 us/op
Iteration   5: 23.841 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  23.836 ±(99.9%) 0.045 us/op [Average]
  (min, avg, max) = (23.823, 23.836, 23.851), stdev = 0.012
  CI (99.9%): [23.791, 23.881] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 153458 total address lines.
Perf output processed (skipped 56.917 seconds):
 Column 1: cycles (50793 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::aescrypt_decryptBlock [0x00007fca140e8e60, 0x00007fca140e8f7a] (282 bytes)
            --------------------------------------------------------------------------------
   1.72%      0x00007fca140e8e60:   push   %rbp
   0.00%      0x00007fca140e8e61:   mov    %rsp,%rbp
   0.00%      0x00007fca140e8e64:   mov    -0x4(%rdx),%eax
   1.74%      0x00007fca140e8e67:   vmovdqu 0x18858111(%rip),%xmm1        # 0x00007fca2c940f80
   0.04%      0x00007fca140e8e6f:   vmovdqu (%rdi),%xmm0
   0.40%      0x00007fca140e8e73:   vmovdqu 0x10(%rdx),%xmm2
   0.02%      0x00007fca140e8e78:   vpshufb %xmm1,%xmm2,%xmm2
   1.18%      0x00007fca140e8e7d:   vmovdqu 0x20(%rdx),%xmm3
              0x00007fca140e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   0.35%      0x00007fca140e8e87:   vmovdqu 0x30(%rdx),%xmm4
   0.00%      0x00007fca140e8e8c:   vpshufb %xmm1,%xmm4,%xmm4
   1.29%      0x00007fca140e8e91:   vmovdqu 0x40(%rdx),%xmm5
              0x00007fca140e8e96:   vpshufb %xmm1,%xmm5,%xmm5
   0.33%      0x00007fca140e8e9b:   vpxor  %xmm2,%xmm0,%xmm0
   2.66%      0x00007fca140e8e9f:   vaesdec %xmm3,%xmm0,%xmm0
   1.21%      0x00007fca140e8ea4:   vaesdec %xmm4,%xmm0,%xmm0
   0.86%      0x00007fca140e8ea9:   vaesdec %xmm5,%xmm0,%xmm0
   1.84%      0x00007fca140e8eae:   vmovdqu 0x50(%rdx),%xmm2
   0.01%      0x00007fca140e8eb3:   vpshufb %xmm1,%xmm2,%xmm2
   1.02%      0x00007fca140e8eb8:   vmovdqu 0x60(%rdx),%xmm3
              0x00007fca140e8ebd:   vpshufb %xmm1,%xmm3,%xmm3
   0.66%      0x00007fca140e8ec2:   vmovdqu 0x70(%rdx),%xmm4
              0x00007fca140e8ec7:   vpshufb %xmm1,%xmm4,%xmm4
   0.95%      0x00007fca140e8ecc:   vmovdqu 0x80(%rdx),%xmm5
              0x00007fca140e8ed4:   vpshufb %xmm1,%xmm5,%xmm5
   0.66%      0x00007fca140e8ed9:   vaesdec %xmm2,%xmm0,%xmm0
   4.12%      0x00007fca140e8ede:   vaesdec %xmm3,%xmm0,%xmm0
   3.20%      0x00007fca140e8ee3:   vaesdec %xmm4,%xmm0,%xmm0
   4.92%      0x00007fca140e8ee8:   vaesdec %xmm5,%xmm0,%xmm0
   5.68%      0x00007fca140e8eed:   vmovdqu 0x90(%rdx),%xmm2
   0.00%      0x00007fca140e8ef5:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%      0x00007fca140e8efa:   vmovdqu 0xa0(%rdx),%xmm3
              0x00007fca140e8f02:   vpshufb %xmm1,%xmm3,%xmm3
   1.63%      0x00007fca140e8f07:   vmovdqu (%rdx),%xmm4
              0x00007fca140e8f0b:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%      0x00007fca140e8f10:   cmp    $0x2c,%eax
          ╭   0x00007fca140e8f13:   je     0x00007fca140e8f62
          │   0x00007fca140e8f15:   vaesdec %xmm2,%xmm0,%xmm0
   4.93%  │   0x00007fca140e8f1a:   vaesdec %xmm3,%xmm0,%xmm0
   6.52%  │   0x00007fca140e8f1f:   vmovdqu 0xb0(%rdx),%xmm2
   0.00%  │   0x00007fca140e8f27:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007fca140e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
          │   0x00007fca140e8f34:   vpshufb %xmm1,%xmm3,%xmm3
   1.68%  │   0x00007fca140e8f39:   cmp    $0x34,%eax
          │╭  0x00007fca140e8f3c:   je     0x00007fca140e8f62
          ││  0x00007fca140e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
          ││  0x00007fca140e8f43:   vaesdec %xmm3,%xmm0,%xmm0
          ││  0x00007fca140e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          ││  0x00007fca140e8f50:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007fca140e8f55:   vmovdqu 0xe0(%rdx),%xmm3
          ││  0x00007fca140e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘↘  0x00007fca140e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   5.05%      0x00007fca140e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.41%      0x00007fca140e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
....................................................................................................
  49.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

             0x00007fca140e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
             0x00007fca140e8f34:   vpshufb %xmm1,%xmm3,%xmm3
   1.68%     0x00007fca140e8f39:   cmp    $0x34,%eax
          ╭  0x00007fca140e8f3c:   je     0x00007fca140e8f62
          │  0x00007fca140e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
          │  0x00007fca140e8f43:   vaesdec %xmm3,%xmm0,%xmm0
          │  0x00007fca140e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          │  0x00007fca140e8f50:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007fca140e8f55:   vmovdqu 0xe0(%rdx),%xmm3
          │  0x00007fca140e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘  0x00007fca140e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   5.05%     0x00007fca140e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.41%     0x00007fca140e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.54%     0x00007fca140e8f71:   vmovdqu %xmm0,(%rsi)
   1.57%     0x00007fca140e8f75:   xor    %rax,%rax
             0x00007fca140e8f78:   leave  
   1.71%     0x00007fca140e8f79:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::cipherBlockChaining_encryptAESCrypt [0x00007fca140e8f80, 0x00007fca140e91a8] (552 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  21.30%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, javax.crypto.Cipher::doFinal, version 2, compile id 666 

                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fca1464546d:   mov    %r11,0x28(%rsp)
              0x00007fca14645472:   mov    %ecx,0x4(%rsp)
              0x00007fca14645476:   mov    %ebx,0x38(%rsp)
              0x00007fca1464547a:   xor    %ebp,%ebp
              0x00007fca1464547c:   xor    %ecx,%ecx
              0x00007fca1464547e:   mov    %ebp,0x34(%rsp)
              0x00007fca14645482:   mov    %ecx,0x30(%rsp)
          ╭   0x00007fca14645486:   jmp    0x00007fca146454b3
          │   0x00007fca14645488:   nopl   0x0(%rax,%rax,1)
   1.64%  │↗  0x00007fca14645490:   mov    0x4(%rsp),%ebx
          ││  0x00007fca14645494:   mov    0x10(%r12,%rbx,8),%edx       ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@13 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%  ││  0x00007fca14645499:   mov    %r14d,%ebx
          ││  0x00007fca1464549c:   mov    (%rsp),%r10d
   1.56%  ││  0x00007fca146454a0:   mov    0x8(%rsp),%r14
          ││  0x00007fca146454a5:   mov    0x18(%rsp),%r8
          ││  0x00007fca146454aa:   mov    0x20(%rsp),%r9
          ││  0x00007fca146454af:   mov    %ebp,0x38(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@12 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.61%  ↘│  0x00007fca146454b3:   mov    0x18(%r12,%rdx,8),%r11d      ; implicit exception: dispatches to 0x00007fca1464629c
           │                                                            ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%   │  0x00007fca146454b8:   mov    %r9,0x20(%rsp)
           │  0x00007fca146454bd:   mov    %r8,0x18(%rsp)
           │  0x00007fca146454c2:   mov    %r14,0x8(%rsp)
   1.67%   │  0x00007fca146454c7:   mov    %r10d,(%rsp)
           │  0x00007fca146454cb:   mov    %ebx,%r14d                   ;*synchronization entry
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@-1 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%   │  0x00007fca146454ce:   mov    0x34(%rsp),%ebx
   0.00%   │  0x00007fca146454d2:   lea    0x10(%r13,%rbx,1),%rdi
   1.72%   │  0x00007fca146454d7:   mov    0x30(%rsp),%ebx
   0.00%   │  0x00007fca146454db:   lea    0x10(%r9,%rbx,1),%rsi
   0.00%   │  0x00007fca146454e0:   mov    %r11,%r10
   0.00%   │  0x00007fca146454e3:   shl    $0x3,%r10
   1.59%   │  0x00007fca146454e7:   lea    0x10(%r12,%r11,8),%rdx
           │  0x00007fca146454ec:   vzeroupper 
   1.70%   │  0x00007fca146454ef:   movabs $0x7fca140e8e60,%r10
   0.00%   │  0x00007fca146454f9:   call   *%r10
           │  0x00007fca146454fc:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ;   {other}
           │  0x00007fca14645504:   mov    0x4(%rsp),%ebx
   1.60%   │  0x00007fca14645508:   mov    0xc(%r12,%rbx,8),%r11d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%   │  0x00007fca1464550d:   mov    0x458(%r15),%r10
           │  0x00007fca14645514:   mov    0x38(%rsp),%ebp
           │  0x00007fca14645518:   sub    %r11d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.67%   │  0x00007fca1464551b:   mov    0x30(%rsp),%ebx
           │  0x00007fca1464551f:   add    %r11d,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007fca14645522:   mov    %ebx,0x30(%rsp)
           │  0x00007fca14645526:   mov    0x34(%rsp),%ebx
   1.62%   │  0x00007fca1464552a:   add    %r11d,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007fca1464552d:   mov    %ebx,0x34(%rsp)              ; ImmutableOopMap {r13=Oop [0]=NarrowOop [4]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007fca14645531:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ;   {poll}
           │  0x00007fca14645534:   cmp    %r11d,%ebp
           ╰  0x00007fca14645537:   jge    0x00007fca14645490           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%      0x00007fca1464553d:   mov    (%rsp),%r10d
              0x00007fca14645541:   movzbl 0x24(%r12,%r10,8),%ebp       ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%      0x00007fca14645547:   test   %ebp,%ebp
              0x00007fca14645549:   je     0x00007fca1464623c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fca1464554f:   mov    0x2c(%r12,%r10,8),%r11d      ;*getfield padding {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@21 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.01%      0x00007fca14645554:   vmovd  %r11d,%xmm0
              0x00007fca14645559:   test   %r11d,%r11d
              0x00007fca1464555c:   nopl   0x0(%rax)
              0x00007fca14645560:   je     0x00007fca1464626c
              0x00007fca14645566:   mov    %r14d,%ebx
   0.00%      0x00007fca14645569:   mov    0x8(%rsp),%r14
              0x00007fca1464556e:   mov    0x18(%rsp),%r8
              0x00007fca14645573:   mov    0x20(%rsp),%r9               ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fca14645578:   vmovd  %xmm0,%r11d
   0.00%      0x00007fca1464557d:   mov    0x8(%r12,%r11,8),%r11d
   0.00%      0x00007fca14645582:   cmp    $0x10c8fa8,%r11d             ;   {metadata(&apos;com/sun/crypto/provider/PKCS5Padding&apos;)}
              0x00007fca14645589:   jne    0x00007fca14645e38
              0x00007fca1464558f:   vmovd  %xmm0,%r11d
              0x00007fca14645594:   shl    $0x3,%r11                    ;*invokeinterface unpad {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fca14645598:   mov    %ebx,%ebp
              0x00007fca1464559a:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::unpad@21 (line 96)
                                                                        ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%      0x00007fca1464559c:   nopl   0x0(%rax)
   0.00%      0x00007fca146455a0:   cmp    0x3c(%rsp),%ebp
              0x00007fca146455a4:   jae    0x00007fca14645d2c
              0x00007fca146455aa:   movsbl 0xf(%r9,%r14,1),%edx         ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::unpad@22 (line 96)
                                                                        ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fca146455b0:   movzbl %dl,%esi                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::unpad@30 (line 97)
                                                                        ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fca146455b3:   cmp    $0x1,%esi
              0x00007fca146455b6:   jl     0x00007fca14645f1c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::unpad@36 (line 98)
                                                                        ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%      0x00007fca146455bc:   mov    0xc(%r11),%ebp               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.PKCS5Padding::unpad@42 (line 98)
                                                                        ; - com.sun.crypto.provider.CipherCore::unpad@7 (line 859)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@33 (line 941)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
....................................................................................................
  16.43%  <total for region 3>

....[Hottest Regions]...............................................................................
  49.64%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  21.30%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  16.43%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   4.10%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.97%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   1.17%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   0.35%              kernel  [unknown] 
   0.15%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   0.09%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   0.08%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   0.07%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 718 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.06%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   2.09%  <...other 489 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.94%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  22.14%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 666 
   4.10%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.82%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 718 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 677 
   0.04%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%           libjvm.so  FreeListAllocator::reset 
   0.52%  <...other 153 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.03%        runtime stub
  22.25%         c2, level 4
   1.82%              kernel
   0.47%           libjvm.so
   0.19%        libc-2.31.so
   0.10%                    
   0.08%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%    perf-1930556.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/NoPadding)

# Run progress: 33.33% complete, ETA 00:14:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.979 us/op
# Warmup Iteration   2: 23.071 us/op
# Warmup Iteration   3: 22.952 us/op
# Warmup Iteration   4: 23.184 us/op
# Warmup Iteration   5: 23.196 us/op
Iteration   1: 22.969 us/op
Iteration   2: 22.919 us/op
Iteration   3: 22.929 us/op
Iteration   4: 22.932 us/op
Iteration   5: 22.928 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  22.936 ±(99.9%) 0.074 us/op [Average]
  (min, avg, max) = (22.919, 22.936, 22.969), stdev = 0.019
  CI (99.9%): [22.862, 23.010] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 152566 total address lines.
Perf output processed (skipped 57.039 seconds):
 Column 1: cycles (50981 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::aescrypt_decryptBlock [0x00007f5d140e8e60, 0x00007f5d140e8f7a] (282 bytes)
            --------------------------------------------------------------------------------
   1.66%      0x00007f5d140e8e60:   push   %rbp
   0.01%      0x00007f5d140e8e61:   mov    %rsp,%rbp
   1.78%      0x00007f5d140e8e64:   mov    -0x4(%rdx),%eax
   0.01%      0x00007f5d140e8e67:   vmovdqu 0x19076111(%rip),%xmm1        # 0x00007f5d2d15ef80
   0.00%      0x00007f5d140e8e6f:   vmovdqu (%rdi),%xmm0
   0.06%      0x00007f5d140e8e73:   vmovdqu 0x10(%rdx),%xmm2
   1.69%      0x00007f5d140e8e78:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%      0x00007f5d140e8e7d:   vmovdqu 0x20(%rdx),%xmm3
   0.00%      0x00007f5d140e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%      0x00007f5d140e8e87:   vmovdqu 0x30(%rdx),%xmm4
   1.65%      0x00007f5d140e8e8c:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f5d140e8e91:   vmovdqu 0x40(%rdx),%xmm5
              0x00007f5d140e8e96:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007f5d140e8e9b:   vpxor  %xmm2,%xmm0,%xmm0
   1.57%      0x00007f5d140e8e9f:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%      0x00007f5d140e8ea4:   vaesdec %xmm4,%xmm0,%xmm0
   0.03%      0x00007f5d140e8ea9:   vaesdec %xmm5,%xmm0,%xmm0
   0.61%      0x00007f5d140e8eae:   vmovdqu 0x50(%rdx),%xmm2
   1.27%      0x00007f5d140e8eb3:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f5d140e8eb8:   vmovdqu 0x60(%rdx),%xmm3
              0x00007f5d140e8ebd:   vpshufb %xmm1,%xmm3,%xmm3
   0.40%      0x00007f5d140e8ec2:   vmovdqu 0x70(%rdx),%xmm4
   1.36%      0x00007f5d140e8ec7:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f5d140e8ecc:   vmovdqu 0x80(%rdx),%xmm5
   0.00%      0x00007f5d140e8ed4:   vpshufb %xmm1,%xmm5,%xmm5
   0.42%      0x00007f5d140e8ed9:   vaesdec %xmm2,%xmm0,%xmm0
   3.81%      0x00007f5d140e8ede:   vaesdec %xmm3,%xmm0,%xmm0
   0.40%      0x00007f5d140e8ee3:   vaesdec %xmm4,%xmm0,%xmm0
   4.53%      0x00007f5d140e8ee8:   vaesdec %xmm5,%xmm0,%xmm0
   5.85%      0x00007f5d140e8eed:   vmovdqu 0x90(%rdx),%xmm2
   0.02%      0x00007f5d140e8ef5:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f5d140e8efa:   vmovdqu 0xa0(%rdx),%xmm3
              0x00007f5d140e8f02:   vpshufb %xmm1,%xmm3,%xmm3
   1.64%      0x00007f5d140e8f07:   vmovdqu (%rdx),%xmm4
   0.03%      0x00007f5d140e8f0b:   vpshufb %xmm1,%xmm4,%xmm4
   0.01%      0x00007f5d140e8f10:   cmp    $0x2c,%eax
          ╭   0x00007f5d140e8f13:   je     0x00007f5d140e8f62
          │   0x00007f5d140e8f15:   vaesdec %xmm2,%xmm0,%xmm0
   4.91%  │   0x00007f5d140e8f1a:   vaesdec %xmm3,%xmm0,%xmm0
   6.69%  │   0x00007f5d140e8f1f:   vmovdqu 0xb0(%rdx),%xmm2
          │   0x00007f5d140e8f27:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007f5d140e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
          │   0x00007f5d140e8f34:   vpshufb %xmm1,%xmm3,%xmm3
   1.72%  │   0x00007f5d140e8f39:   cmp    $0x34,%eax
          │╭  0x00007f5d140e8f3c:   je     0x00007f5d140e8f62
   0.00%  ││  0x00007f5d140e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
   5.11%  ││  0x00007f5d140e8f43:   vaesdec %xmm3,%xmm0,%xmm0
   6.63%  ││  0x00007f5d140e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          ││  0x00007f5d140e8f50:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f5d140e8f55:   vmovdqu 0xe0(%rdx),%xmm3
          ││  0x00007f5d140e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
   1.71%  ↘↘  0x00007f5d140e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   5.01%      0x00007f5d140e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.84%      0x00007f5d140e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.75%      0x00007f5d140e8f71:   vmovdqu %xmm0,(%rsi)
   1.68%      0x00007f5d140e8f75:   xor    %rax,%rax
              0x00007f5d140e8f78:   leave  
   1.70%      0x00007f5d140e8f79:   ret    
            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::cipherBlockChaining_encryptAESCrypt [0x00007f5d140e8f80, 0x00007f5d140e91a8] (552 bytes)
            --------------------------------------------------------------------------------
....................................................................................................
  77.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 678 

                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
              0x00007f5d14645eb8:   mov    %esi,0x28(%rsp)
              0x00007f5d14645ebc:   xor    %r9d,%r9d
              0x00007f5d14645ebf:   xor    %ebp,%ebp
          ╭   0x00007f5d14645ec1:   jmp    0x00007f5d14645ef8
          │   0x00007f5d14645ec3:   nopw   0x0(%rax,%rax,1)
          │   0x00007f5d14645ecc:   data16 data16 xchg %ax,%ax
   0.00%  │↗  0x00007f5d14645ed0:   mov    0x4(%rsp),%ecx
          ││  0x00007f5d14645ed4:   mov    0x10(%r12,%rcx,8),%r11d      ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@13 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.73%  ││  0x00007f5d14645ed9:   mov    %r14d,%esi
   0.00%  ││  0x00007f5d14645edc:   mov    (%rsp),%r10d
          ││  0x00007f5d14645ee0:   mov    0x8(%rsp),%r14
          ││  0x00007f5d14645ee5:   mov    0x10(%rsp),%r8
   1.70%  ││  0x00007f5d14645eea:   mov    0x18(%rsp),%rdi
          ││  0x00007f5d14645eef:   mov    %ebp,%r9d
   0.00%  ││  0x00007f5d14645ef2:   mov    %eax,%ebp
          ││  0x00007f5d14645ef4:   mov    %edx,0x28(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@12 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.75%  ↘│  0x00007f5d14645ef8:   nopl   0x0(%rax,%rax,1)
   0.01%   │  0x00007f5d14645f00:   mov    0x18(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007f5d14646454
           │                                                            ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
   0.00%   │  0x00007f5d14645f05:   mov    %rdi,0x18(%rsp)
           │  0x00007f5d14645f0a:   mov    %ecx,0x4(%rsp)
   1.63%   │  0x00007f5d14645f0e:   mov    %r14,0x8(%rsp)
   0.00%   │  0x00007f5d14645f13:   mov    %r10d,(%rsp)
           │  0x00007f5d14645f17:   mov    %esi,%r14d                   ;*synchronization entry
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@-1 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%   │  0x00007f5d14645f1a:   lea    0x10(%r8,%r9,1),%rdi
   1.70%   │  0x00007f5d14645f1f:   mov    %r9d,0x20(%rsp)
   0.01%   │  0x00007f5d14645f24:   mov    %r8,0x10(%rsp)
           │  0x00007f5d14645f29:   lea    0x10(%r13,%rbp,1),%rsi
           │  0x00007f5d14645f2e:   mov    %r11,%r10
   1.70%   │  0x00007f5d14645f31:   shl    $0x3,%r10
           │  0x00007f5d14645f35:   lea    0x10(%r12,%r11,8),%rdx
   0.00%   │  0x00007f5d14645f3a:   movabs $0x7f5d140e8e60,%r10
           │  0x00007f5d14645f44:   call   *%r10
   0.00%   │  0x00007f5d14645f47:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
           │                                                            ;   {other}
           │  0x00007f5d14645f4f:   mov    0x4(%rsp),%r10d
   1.56%   │  0x00007f5d14645f54:   mov    0xc(%r12,%r10,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
           │  0x00007f5d14645f59:   mov    0x458(%r15),%r11
           │  0x00007f5d14645f60:   mov    0x28(%rsp),%edx
           │  0x00007f5d14645f64:   sub    %r10d,%edx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.72%   │  0x00007f5d14645f67:   add    %r10d,%ebp                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
           │  0x00007f5d14645f6a:   mov    %ebp,%eax
           │  0x00007f5d14645f6c:   mov    0x20(%rsp),%ebp
   0.00%   │  0x00007f5d14645f70:   add    %r10d,%ebp                   ; ImmutableOopMap {rbx=NarrowOop r13=Oop [4]=NarrowOop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   1.67%   │  0x00007f5d14645f73:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
           │                                                            ;   {poll}
   0.00%   │  0x00007f5d14645f76:   cmp    %r10d,%edx
           ╰  0x00007f5d14645f79:   jge    0x00007f5d14645ed0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
              0x00007f5d14645f7f:   movzbl 0x24(%r12,%rbx,8),%ebp       ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
              0x00007f5d14645f85:   test   %ebp,%ebp
              0x00007f5d14645f87:   je     0x00007f5d146463ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
              0x00007f5d14645f8d:   mov    0x2c(%r12,%rbx,8),%ebp       ;*getfield padding {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@21 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt@8 (line 114)
   0.00%      0x00007f5d14645f92:   test   %ebp,%ebp
              0x00007f5d14645f94:   jne    0x00007f5d14646420           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@24 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
....................................................................................................
  15.21%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.61%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  15.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 678 
   4.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 678 
   0.87%              kernel  [unknown] 
   0.14%        libc-2.31.so  __memset_avx2_erms 
   0.08%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 711 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 678 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 678 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   1.25%  <...other 369 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  77.61%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  19.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 678 
   2.04%              kernel  [unknown] 
   0.14%        libc-2.31.so  __memset_avx2_erms 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 711 
   0.07%                      <unknown> 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  OptoRuntime::new_array_C 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.33%  <...other 126 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  77.61%        runtime stub
  19.64%         c2, level 4
   2.04%              kernel
   0.33%           libjvm.so
   0.24%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/PKCS5Padding)

# Run progress: 41.67% complete, ETA 00:12:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.246 us/op
# Warmup Iteration   2: 24.930 us/op
# Warmup Iteration   3: 24.949 us/op
# Warmup Iteration   4: 24.895 us/op
# Warmup Iteration   5: 24.894 us/op
Iteration   1: 24.899 us/op
Iteration   2: 24.923 us/op
Iteration   3: 24.928 us/op
Iteration   4: 24.921 us/op
Iteration   5: 24.919 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt":
  24.918 ±(99.9%) 0.043 us/op [Average]
  (min, avg, max) = (24.899, 24.918, 24.928), stdev = 0.011
  CI (99.9%): [24.875, 24.961] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 160191 total address lines.
Perf output processed (skipped 57.367 seconds):
 Column 1: cycles (50833 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_decryptBlock 

            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::aescrypt_decryptBlock [0x00007fb4680e8e60, 0x00007fb4680e8f7a] (282 bytes)
            --------------------------------------------------------------------------------
   0.00%      0x00007fb4680e8e60:   push   %rbp
   1.59%      0x00007fb4680e8e61:   mov    %rsp,%rbp
              0x00007fb4680e8e64:   mov    -0x4(%rdx),%eax
   0.00%      0x00007fb4680e8e67:   vmovdqu 0x17342111(%rip),%xmm1        # 0x00007fb47f42af80
   1.52%      0x00007fb4680e8e6f:   vmovdqu (%rdi),%xmm0
   0.02%      0x00007fb4680e8e73:   vmovdqu 0x10(%rdx),%xmm2
   0.01%      0x00007fb4680e8e78:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007fb4680e8e7d:   vmovdqu 0x20(%rdx),%xmm3
   1.56%      0x00007fb4680e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%      0x00007fb4680e8e87:   vmovdqu 0x30(%rdx),%xmm4
              0x00007fb4680e8e8c:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007fb4680e8e91:   vmovdqu 0x40(%rdx),%xmm5
   1.47%      0x00007fb4680e8e96:   vpshufb %xmm1,%xmm5,%xmm5
              0x00007fb4680e8e9b:   vpxor  %xmm2,%xmm0,%xmm0
   0.03%      0x00007fb4680e8e9f:   vaesdec %xmm3,%xmm0,%xmm0
   0.01%      0x00007fb4680e8ea4:   vaesdec %xmm4,%xmm0,%xmm0
   1.61%      0x00007fb4680e8ea9:   vaesdec %xmm5,%xmm0,%xmm0
   1.42%      0x00007fb4680e8eae:   vmovdqu 0x50(%rdx),%xmm2
              0x00007fb4680e8eb3:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007fb4680e8eb8:   vmovdqu 0x60(%rdx),%xmm3
   1.17%      0x00007fb4680e8ebd:   vpshufb %xmm1,%xmm3,%xmm3
   0.36%      0x00007fb4680e8ec2:   vmovdqu 0x70(%rdx),%xmm4
              0x00007fb4680e8ec7:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%      0x00007fb4680e8ecc:   vmovdqu 0x80(%rdx),%xmm5
   1.12%      0x00007fb4680e8ed4:   vpshufb %xmm1,%xmm5,%xmm5
   0.35%      0x00007fb4680e8ed9:   vaesdec %xmm2,%xmm0,%xmm0
   2.23%      0x00007fb4680e8ede:   vaesdec %xmm3,%xmm0,%xmm0
   2.19%      0x00007fb4680e8ee3:   vaesdec %xmm4,%xmm0,%xmm0
   5.12%      0x00007fb4680e8ee8:   vaesdec %xmm5,%xmm0,%xmm0
   6.13%      0x00007fb4680e8eed:   vmovdqu 0x90(%rdx),%xmm2
              0x00007fb4680e8ef5:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007fb4680e8efa:   vmovdqu 0xa0(%rdx),%xmm3
   0.01%      0x00007fb4680e8f02:   vpshufb %xmm1,%xmm3,%xmm3
   1.50%      0x00007fb4680e8f07:   vmovdqu (%rdx),%xmm4
              0x00007fb4680e8f0b:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007fb4680e8f10:   cmp    $0x2c,%eax
          ╭   0x00007fb4680e8f13:   je     0x00007fb4680e8f62
   0.01%  │   0x00007fb4680e8f15:   vaesdec %xmm2,%xmm0,%xmm0
   4.71%  │   0x00007fb4680e8f1a:   vaesdec %xmm3,%xmm0,%xmm0
   6.42%  │   0x00007fb4680e8f1f:   vmovdqu 0xb0(%rdx),%xmm2
   0.00%  │   0x00007fb4680e8f27:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007fb4680e8f2c:   vmovdqu 0xc0(%rdx),%xmm3
   0.00%  │   0x00007fb4680e8f34:   vpshufb %xmm1,%xmm3,%xmm3
   1.55%  │   0x00007fb4680e8f39:   cmp    $0x34,%eax
          │╭  0x00007fb4680e8f3c:   je     0x00007fb4680e8f62
          ││  0x00007fb4680e8f3e:   vaesdec %xmm2,%xmm0,%xmm0
   4.65%  ││  0x00007fb4680e8f43:   vaesdec %xmm3,%xmm0,%xmm0
   6.22%  ││  0x00007fb4680e8f48:   vmovdqu 0xd0(%rdx),%xmm2
          ││  0x00007fb4680e8f50:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%  ││  0x00007fb4680e8f55:   vmovdqu 0xe0(%rdx),%xmm3
   0.00%  ││  0x00007fb4680e8f5d:   vpshufb %xmm1,%xmm3,%xmm3
   1.61%  ↘↘  0x00007fb4680e8f62:   vaesdec %xmm2,%xmm0,%xmm0
   4.66%      0x00007fb4680e8f67:   vaesdec %xmm3,%xmm0,%xmm0
   6.31%      0x00007fb4680e8f6c:   vaesdeclast %xmm4,%xmm0,%xmm0
   6.30%      0x00007fb4680e8f71:   vmovdqu %xmm0,(%rsi)
   1.53%      0x00007fb4680e8f75:   xor    %rax,%rax
              0x00007fb4680e8f78:   leave  
   1.53%      0x00007fb4680e8f79:   ret    
            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::cipherBlockChaining_encryptAESCrypt [0x00007fb4680e8f80, 0x00007fb4680e91a8] (552 bytes)
            --------------------------------------------------------------------------------
....................................................................................................
  74.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 

                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              0x00007fb468645736:   mov    %r9,(%rsp)
              0x00007fb46864573a:   mov    %r10d,%ebp
              0x00007fb46864573d:   xor    %ebx,%ebx
              0x00007fb46864573f:   nop
          ╭   0x00007fb468645740:   jmp    0x00007fb468645767
          │   0x00007fb468645742:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fb46864574c:   data16 data16 xchg %ax,%ax
          │↗  0x00007fb468645750:   mov    0x30(%rsp),%r10d
   0.00%  ││  0x00007fb468645755:   mov    0x10(%r12,%r10,8),%r11d      ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@13 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││  0x00007fb46864575a:   mov    0x28(%rsp),%r10d
   1.54%  ││  0x00007fb46864575f:   mov    %r14,%r8
   0.00%  ││  0x00007fb468645762:   mov    0x8(%rsp),%r14               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@12 (line 137)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  ↘│  0x00007fb468645767:   mov    0x18(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007fb4686464ec
           │                                                            ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.06%   │  0x00007fb46864576c:   mov    %r10d,0x28(%rsp)             ;*synchronization entry
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@-1 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.52%   │  0x00007fb468645771:   lea    0x10(%r14,%rbx,1),%rsi
           │  0x00007fb468645776:   mov    %r14,0x8(%rsp)
   0.00%   │  0x00007fb46864577b:   mov    0x44(%rsp),%r10d
           │  0x00007fb468645780:   lea    0x10(%r8,%r10,1),%rdi
   1.59%   │  0x00007fb468645785:   mov    %r8,%r14
           │  0x00007fb468645788:   mov    %r11,%r10
           │  0x00007fb46864578b:   shl    $0x3,%r10
           │  0x00007fb46864578f:   lea    0x10(%r12,%r11,8),%rdx
   1.52%   │  0x00007fb468645794:   vzeroupper 
   1.46%   │  0x00007fb468645797:   movabs $0x7fb4680e8e60,%r10
           │  0x00007fb4686457a1:   call   *%r10
           │  0x00007fb4686457a4:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implDecryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::decryptBlock@6 (line 1160)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@22 (line 137)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ;   {other}
           │  0x00007fb4686457ac:   mov    0x30(%rsp),%r11d
   1.58%   │  0x00007fb4686457b1:   mov    0xc(%r12,%r11,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007fb4686457b6:   mov    0x458(%r15),%r11
           │  0x00007fb4686457bd:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@47 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007fb4686457c0:   add    %r10d,%ebx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@38 (line 139)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.49%   │  0x00007fb4686457c3:   mov    0x44(%rsp),%r8d
           │  0x00007fb4686457c8:   add    %r10d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@30 (line 138)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │  0x00007fb4686457cb:   mov    %r8d,0x44(%rsp)              ; ImmutableOopMap {r13=Oop r14=Oop [0]=Oop [8]=Oop [48]=NarrowOop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007fb4686457d0:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@50 (line 136)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ;   {poll}
   1.60%   │  0x00007fb4686457d3:   cmp    %r10d,%ebp
           ╰  0x00007fb4686457d6:   jge    0x00007fb468645750           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              0x00007fb4686457dc:   movzbl 0x24(%r13),%ebp              ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              0x00007fb4686457e1:   test   %ebp,%ebp
              0x00007fb4686457e3:   je     0x00007fb4686464a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              0x00007fb4686457e9:   mov    0x2c(%r13),%ebx              ;*getfield padding {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@21 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%      0x00007fb4686457ed:   test   %ebx,%ebx
              0x00007fb4686457ef:   je     0x00007fb4686464c0
              0x00007fb4686457f5:   mov    0x28(%rsp),%r10d
              0x00007fb4686457fa:   mov    %r14,%r8
              0x00007fb4686457fd:   mov    0x8(%rsp),%r14               ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBDecrypt@9 (line 136)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::decrypt@30 (line 165)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
....................................................................................................
  12.38%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.96%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  12.38%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   4.22%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   4.00%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   1.27%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   0.35%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.14%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   0.11%              kernel  [unknown] 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 708 
   0.09%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   0.09%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 740 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   1.59%  <...other 417 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.96%        runtime stub  StubRoutines::aescrypt_decryptBlock 
  18.11%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 702 
   4.22%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.66%              kernel  [unknown] 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::decrypt, version 2, compile id 708 
   0.09%                      <unknown> 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 740 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.01%           libjvm.so  ObjArrayAllocator::initialize 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.48%  <...other 153 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  79.18%        runtime stub
  18.29%         c2, level 4
   1.66%              kernel
   0.49%           libjvm.so
   0.19%        libc-2.31.so
   0.09%                    
   0.04%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/NoPadding)

# Run progress: 50.00% complete, ETA 00:10:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 22.516 us/op
# Warmup Iteration   2: 21.758 us/op
# Warmup Iteration   3: 21.927 us/op
# Warmup Iteration   4: 21.710 us/op
# Warmup Iteration   5: 21.745 us/op
Iteration   1: 21.699 us/op
Iteration   2: 21.705 us/op
Iteration   3: 21.710 us/op
Iteration   4: 21.713 us/op
Iteration   5: 21.711 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  21.707 ±(99.9%) 0.021 us/op [Average]
  (min, avg, max) = (21.699, 21.707, 21.713), stdev = 0.005
  CI (99.9%): [21.686, 21.729] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 152545 total address lines.
Perf output processed (skipped 57.073 seconds):
 Column 1: cycles (50619 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

          --------------------------------------------------------------------------------
          - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          StubRoutines::aescrypt_encryptBlock [0x00007feb840e8d80, 0x00007feb840e8e9a] (282 bytes)
          --------------------------------------------------------------------------------
   0.01%    0x00007feb840e8d80:   push   %rbp
   0.01%    0x00007feb840e8d81:   mov    %rsp,%rbp
   1.79%    0x00007feb840e8d84:   mov    -0x4(%rdx),%eax
            0x00007feb840e8d87:   vmovdqu 0x165e91f1(%rip),%xmm1        # 0x00007feb9a6d1f80
   0.00%    0x00007feb840e8d8f:   vmovdqu (%rdi),%xmm0
   1.84%    0x00007feb840e8d93:   vmovdqu (%rdx),%xmm2
            0x00007feb840e8d97:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007feb840e8d9c:   vpxor  %xmm2,%xmm0,%xmm0
   1.73%    0x00007feb840e8da0:   vmovdqu 0x10(%rdx),%xmm2
   1.35%    0x00007feb840e8da5:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%    0x00007feb840e8daa:   vmovdqu 0x20(%rdx),%xmm3
   0.00%    0x00007feb840e8daf:   vpshufb %xmm1,%xmm3,%xmm3
   1.34%    0x00007feb840e8db4:   vmovdqu 0x30(%rdx),%xmm4
   0.59%    0x00007feb840e8db9:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007feb840e8dbe:   vmovdqu 0x40(%rdx),%xmm5
            0x00007feb840e8dc3:   vpshufb %xmm1,%xmm5,%xmm5
   1.26%    0x00007feb840e8dc8:   vaesenc %xmm2,%xmm0,%xmm0
   0.57%    0x00007feb840e8dcd:   vaesenc %xmm3,%xmm0,%xmm0
   4.27%    0x00007feb840e8dd2:   vaesenc %xmm4,%xmm0,%xmm0
   6.79%    0x00007feb840e8dd7:   vaesenc %xmm5,%xmm0,%xmm0
   6.79%    0x00007feb840e8ddc:   vmovdqu 0x50(%rdx),%xmm2
   0.01%    0x00007feb840e8de1:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007feb840e8de6:   vmovdqu 0x60(%rdx),%xmm3
            0x00007feb840e8deb:   vpshufb %xmm1,%xmm3,%xmm3
   1.82%    0x00007feb840e8df0:   vmovdqu 0x70(%rdx),%xmm4
   0.00%    0x00007feb840e8df5:   vpshufb %xmm1,%xmm4,%xmm4
            0x00007feb840e8dfa:   vmovdqu 0x80(%rdx),%xmm5
            0x00007feb840e8e02:   vpshufb %xmm1,%xmm5,%xmm5
   1.76%    0x00007feb840e8e07:   vaesenc %xmm2,%xmm0,%xmm0
   9.57%    0x00007feb840e8e0c:   vaesenc %xmm3,%xmm0,%xmm0
   1.04%    0x00007feb840e8e11:   vaesenc %xmm4,%xmm0,%xmm0
   7.15%    0x00007feb840e8e16:   vaesenc %xmm5,%xmm0,%xmm0
   7.39%    0x00007feb840e8e1b:   vmovdqu 0x90(%rdx),%xmm2
            0x00007feb840e8e23:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007feb840e8e28:   vmovdqu 0xa0(%rdx),%xmm3
            0x00007feb840e8e30:   vpshufb %xmm1,%xmm3,%xmm3
   1.84%    0x00007feb840e8e35:   cmp    $0x2c,%eax
            0x00007feb840e8e38:   je     0x00007feb840e8e87
            0x00007feb840e8e3a:   vaesenc %xmm2,%xmm0,%xmm0
            0x00007feb840e8e3f:   vaesenc %xmm3,%xmm0,%xmm0
            0x00007feb840e8e44:   vmovdqu 0xb0(%rdx),%xmm2
            0x00007feb840e8e4c:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007feb840e8e51:   vmovdqu 0xc0(%rdx),%xmm3
            0x00007feb840e8e59:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007feb840e8e5e:   cmp    $0x34,%eax
            0x00007feb840e8e61:   je     0x00007feb840e8e87
            0x00007feb840e8e63:   vaesenc %xmm2,%xmm0,%xmm0
....................................................................................................
  58.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 684 

                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007feb8464862c:   mov    %esi,0x20(%rsp)
              0x00007feb84648630:   xor    %ebp,%ebp
              0x00007feb84648632:   xor    %edi,%edi
          ╭   0x00007feb84648634:   jmp    0x00007feb84648666
          │   0x00007feb84648636:   data16 nopw 0x0(%rax,%rax,1)
   1.83%  │↗  0x00007feb84648640:   mov    0x4(%rsp),%r9d
   0.00%  ││  0x00007feb84648645:   mov    0x10(%r12,%r9,8),%r8d        ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@13 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  ││  0x00007feb8464864a:   mov    %r14d,%esi
          ││  0x00007feb8464864d:   mov    (%rsp),%r10d
   1.81%  ││  0x00007feb84648651:   mov    0x8(%rsp),%r14
          ││  0x00007feb84648656:   mov    %rbp,%r11
          ││  0x00007feb84648659:   mov    0x10(%rsp),%rdx
          ││  0x00007feb8464865e:   vmovd  %xmm0,%ebp
   1.82%  ││  0x00007feb84648662:   mov    %ecx,0x20(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@12 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          ↘│  0x00007feb84648666:   mov    0x18(%r12,%r8,8),%r8d        ; implicit exception: dispatches to 0x00007feb84648b68
           │                                                            ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
   0.01%   │  0x00007feb8464866b:   mov    %rdx,0x10(%rsp)
           │  0x00007feb84648670:   mov    %r9d,0x4(%rsp)
   1.76%   │  0x00007feb84648675:   mov    %r14,0x8(%rsp)
   0.01%   │  0x00007feb8464867a:   mov    %r10d,(%rsp)
   0.00%   │  0x00007feb8464867e:   mov    %esi,%r14d                   ;*synchronization entry
           │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@-1 (line 1081)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%   │  0x00007feb84648681:   lea    0x10(%r13,%rdi,1),%rsi
   1.81%   │  0x00007feb84648686:   mov    %edi,0x1c(%rsp)
           │  0x00007feb8464868a:   lea    0x10(%r11,%rbp,1),%rdi
           │  0x00007feb8464868f:   mov    %ebp,0x18(%rsp)
           │  0x00007feb84648693:   mov    %r11,%rbp
   1.83%   │  0x00007feb84648696:   mov    %r8,%r10
   0.00%   │  0x00007feb84648699:   shl    $0x3,%r10
           │  0x00007feb8464869d:   lea    0x10(%r12,%r8,8),%rdx
           │  0x00007feb846486a2:   movabs $0x7feb840e8d80,%r10
   1.81%   │  0x00007feb846486ac:   call   *%r10
   0.01%   │  0x00007feb846486af:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
           │                                                            ;   {other}
           │  0x00007feb846486b7:   mov    0x4(%rsp),%r11d
   1.89%   │  0x00007feb846486bc:   mov    0xc(%r12,%r11,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%   │  0x00007feb846486c1:   mov    0x458(%r15),%r9
           │  0x00007feb846486c8:   mov    0x20(%rsp),%ecx
           │  0x00007feb846486cc:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   1.84%   │  0x00007feb846486cf:   mov    0x1c(%rsp),%r11d
   0.00%   │  0x00007feb846486d4:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           │  0x00007feb846486d7:   mov    %r11d,%edi
           │  0x00007feb846486da:   mov    0x18(%rsp),%r8d
   1.72%   │  0x00007feb846486df:   add    %r10d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           │  0x00007feb846486e2:   vmovd  %r8d,%xmm0                   ; ImmutableOopMap {rbx=NarrowOop rbp=Oop r13=Oop [4]=NarrowOop [8]=Oop [16]=Oop [36]=NarrowOop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           │  0x00007feb846486e7:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
           │                                                            ;   {poll}
   0.00%   │  0x00007feb846486ea:   cmp    %r10d,%ecx
           ╰  0x00007feb846486ed:   jge    0x00007feb84648640           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007feb846486f3:   movzbl 0x24(%r12,%rbx,8),%ebp       ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007feb846486f9:   test   %ebp,%ebp
              0x00007feb846486fb:   nopl   0x0(%rax,%rax,1)
              0x00007feb84648700:   jne    0x00007feb84648b34           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007feb84648706:   mov    0xc(%r12,%rbx,8),%r10d       ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%      0x00007feb8464870b:   mov    %r10d,0xc(%rsp)
   0.01%      0x00007feb84648710:   mov    0x20(%r12,%rbx,8),%edi       ;*getfield cipherMode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@14 (line 852)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007feb84648715:   mov    %r14d,%esi
              0x00007feb84648718:   mov    (%rsp),%r10d                 ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              0x00007feb8464871c:   mov    0xc(%rsp),%r11d
              0x00007feb84648721:   mov    %r11d,0x1c(%r12,%rbx,8)      ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      0x00007feb84648726:   mov    %r12d,0x14(%r12,%rbx,8)      ;*putfield buffered {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::endDoFinal@2 (line 850)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
....................................................................................................
  18.17%  <total for region 2>

....[Hottest Region 3]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

             0x00007feb840e8e51:   vmovdqu 0xc0(%rdx),%xmm3
             0x00007feb840e8e59:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007feb840e8e5e:   cmp    $0x34,%eax
          ╭  0x00007feb840e8e61:   je     0x00007feb840e8e87
          │  0x00007feb840e8e63:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007feb840e8e68:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007feb840e8e6d:   vmovdqu 0xd0(%rdx),%xmm2
          │  0x00007feb840e8e75:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007feb840e8e7a:   vmovdqu 0xe0(%rdx),%xmm3
          │  0x00007feb840e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%  ↘  0x00007feb840e8e87:   vaesenc %xmm2,%xmm0,%xmm0
   5.17%     0x00007feb840e8e8c:   vaesenclast %xmm3,%xmm0,%xmm0
   7.17%     0x00007feb840e8e91:   vmovdqu %xmm0,(%rsi)
   1.89%     0x00007feb840e8e95:   xor    %rax,%rax
             0x00007feb840e8e98:   leave  
   1.90%     0x00007feb840e8e99:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::aescrypt_decryptBlock [0x00007feb840e8ea0, 0x00007feb840e8fba] (282 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  16.12%  <total for region 3>

....[Hottest Regions]...............................................................................
  58.95%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  18.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 684 
  16.12%        runtime stub  StubRoutines::aescrypt_encryptBlock 
   4.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 684 
   0.16%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.14%        libc-2.31.so  __memset_avx2_erms 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 728 
   0.09%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 684 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 684 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 684 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%                      <unknown> 
   1.25%  <...other 321 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.07%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  22.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 684 
   1.43%              kernel  [unknown] 
   0.14%        libc-2.31.so  __memset_avx2_erms 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 728 
   0.09%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.01%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%           libjvm.so  G1NUMA::index_of_current_thread 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.30%  <...other 119 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.07%        runtime stub
  22.83%         c2, level 4
   1.43%              kernel
   0.31%           libjvm.so
   0.20%        libc-2.31.so
   0.09%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = AES/ECB/PKCS5Padding)

# Run progress: 58.33% complete, ETA 00:09:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.113 us/op
# Warmup Iteration   2: 23.980 us/op
# Warmup Iteration   3: 23.744 us/op
# Warmup Iteration   4: 23.885 us/op
# Warmup Iteration   5: 23.882 us/op
Iteration   1: 23.873 us/op
Iteration   2: 23.856 us/op
Iteration   3: 23.858 us/op
Iteration   4: 23.873 us/op
Iteration   5: 23.860 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  23.864 ±(99.9%) 0.032 us/op [Average]
  (min, avg, max) = (23.856, 23.864, 23.873), stdev = 0.008
  CI (99.9%): [23.832, 23.897] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 157520 total address lines.
Perf output processed (skipped 57.093 seconds):
 Column 1: cycles (50647 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

          --------------------------------------------------------------------------------
          - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          StubRoutines::aescrypt_encryptBlock [0x00007fe5c00e9b00, 0x00007fe5c00e9c1a] (282 bytes)
          --------------------------------------------------------------------------------
   1.70%    0x00007fe5c00e9b00:   push   %rbp
            0x00007fe5c00e9b01:   mov    %rsp,%rbp
   1.62%    0x00007fe5c00e9b04:   mov    -0x4(%rdx),%eax
   0.00%    0x00007fe5c00e9b07:   vmovdqu 0x17cc8471(%rip),%xmm1        # 0x00007fe5d7db1f80
   0.02%    0x00007fe5c00e9b0f:   vmovdqu (%rdi),%xmm0
   0.09%    0x00007fe5c00e9b13:   vmovdqu (%rdx),%xmm2
   1.57%    0x00007fe5c00e9b17:   vpshufb %xmm1,%xmm2,%xmm2
   0.02%    0x00007fe5c00e9b1c:   vpxor  %xmm2,%xmm0,%xmm0
   0.51%    0x00007fe5c00e9b20:   vmovdqu 0x10(%rdx),%xmm2
            0x00007fe5c00e9b25:   vpshufb %xmm1,%xmm2,%xmm2
   1.43%    0x00007fe5c00e9b2a:   vmovdqu 0x20(%rdx),%xmm3
   0.00%    0x00007fe5c00e9b2f:   vpshufb %xmm1,%xmm3,%xmm3
   2.94%    0x00007fe5c00e9b34:   vmovdqu 0x30(%rdx),%xmm4
            0x00007fe5c00e9b39:   vpshufb %xmm1,%xmm4,%xmm4
   0.09%    0x00007fe5c00e9b3e:   vmovdqu 0x40(%rdx),%xmm5
   0.00%    0x00007fe5c00e9b43:   vpshufb %xmm1,%xmm5,%xmm5
   1.69%    0x00007fe5c00e9b48:   vaesenc %xmm2,%xmm0,%xmm0
   0.01%    0x00007fe5c00e9b4d:   vaesenc %xmm3,%xmm0,%xmm0
   4.66%    0x00007fe5c00e9b52:   vaesenc %xmm4,%xmm0,%xmm0
   6.34%    0x00007fe5c00e9b57:   vaesenc %xmm5,%xmm0,%xmm0
   6.50%    0x00007fe5c00e9b5c:   vmovdqu 0x50(%rdx),%xmm2
            0x00007fe5c00e9b61:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%    0x00007fe5c00e9b66:   vmovdqu 0x60(%rdx),%xmm3
            0x00007fe5c00e9b6b:   vpshufb %xmm1,%xmm3,%xmm3
   1.74%    0x00007fe5c00e9b70:   vmovdqu 0x70(%rdx),%xmm4
            0x00007fe5c00e9b75:   vpshufb %xmm1,%xmm4,%xmm4
   0.00%    0x00007fe5c00e9b7a:   vmovdqu 0x80(%rdx),%xmm5
            0x00007fe5c00e9b82:   vpshufb %xmm1,%xmm5,%xmm5
   1.65%    0x00007fe5c00e9b87:   vaesenc %xmm2,%xmm0,%xmm0
   9.37%    0x00007fe5c00e9b8c:   vaesenc %xmm3,%xmm0,%xmm0
   0.35%    0x00007fe5c00e9b91:   vaesenc %xmm4,%xmm0,%xmm0
   6.37%    0x00007fe5c00e9b96:   vaesenc %xmm5,%xmm0,%xmm0
   6.54%    0x00007fe5c00e9b9b:   vmovdqu 0x90(%rdx),%xmm2
            0x00007fe5c00e9ba3:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007fe5c00e9ba8:   vmovdqu 0xa0(%rdx),%xmm3
            0x00007fe5c00e9bb0:   vpshufb %xmm1,%xmm3,%xmm3
   1.64%    0x00007fe5c00e9bb5:   cmp    $0x2c,%eax
            0x00007fe5c00e9bb8:   je     0x00007fe5c00e9c07
            0x00007fe5c00e9bba:   vaesenc %xmm2,%xmm0,%xmm0
            0x00007fe5c00e9bbf:   vaesenc %xmm3,%xmm0,%xmm0
            0x00007fe5c00e9bc4:   vmovdqu 0xb0(%rdx),%xmm2
            0x00007fe5c00e9bcc:   vpshufb %xmm1,%xmm2,%xmm2
            0x00007fe5c00e9bd1:   vmovdqu 0xc0(%rdx),%xmm3
            0x00007fe5c00e9bd9:   vpshufb %xmm1,%xmm3,%xmm3
            0x00007fe5c00e9bde:   cmp    $0x34,%eax
            0x00007fe5c00e9be1:   je     0x00007fe5c00e9c07
            0x00007fe5c00e9be3:   vaesenc %xmm2,%xmm0,%xmm0
....................................................................................................
  56.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

             0x00007fe5c00e9bd9:   vpshufb %xmm1,%xmm3,%xmm3
             0x00007fe5c00e9bde:   cmp    $0x34,%eax
          ╭  0x00007fe5c00e9be1:   je     0x00007fe5c00e9c07
          │  0x00007fe5c00e9be3:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007fe5c00e9be8:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007fe5c00e9bed:   vmovdqu 0xd0(%rdx),%xmm2
          │  0x00007fe5c00e9bf5:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007fe5c00e9bfa:   vmovdqu 0xe0(%rdx),%xmm3
          │  0x00007fe5c00e9c02:   vpshufb %xmm1,%xmm3,%xmm3
          ↘  0x00007fe5c00e9c07:   vaesenc %xmm2,%xmm0,%xmm0
   4.81%     0x00007fe5c00e9c0c:   vaesenclast %xmm3,%xmm0,%xmm0
   6.43%     0x00007fe5c00e9c11:   vmovdqu %xmm0,(%rsi)
   1.57%     0x00007fe5c00e9c15:   xor    %rax,%rax
             0x00007fe5c00e9c18:   leave  
   1.52%     0x00007fe5c00e9c19:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::aescrypt_decryptBlock [0x00007fe5c00e9c20, 0x00007fe5c00e9d3a] (282 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  14.33%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, javax.crypto.Cipher::doFinal, version 2, compile id 699 

                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fe5c0644fc3:   mov    %r8d,%ebp
              0x00007fe5c0644fc6:   xor    %r14d,%r14d
              0x00007fe5c0644fc9:   xor    %r13d,%r13d
          ╭   0x00007fe5c0644fcc:   jmp    0x00007fe5c0644fed
          │   0x00007fe5c0644fce:   xchg   %ax,%ax                      ;   {no_reloc}
   1.66%  │↗  0x00007fe5c0644fd0:   mov    0x10(%rsp),%r10d
          ││  0x00007fe5c0644fd5:   mov    0x10(%r12,%r10,8),%ecx       ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@13 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ││  0x00007fe5c0644fda:   mov    (%rsp),%r9d
          ││  0x00007fe5c0644fde:   mov    0x4(%rsp),%r11d
   1.70%  ││  0x00007fe5c0644fe3:   mov    0x20(%rsp),%r8d
          ││  0x00007fe5c0644fe8:   mov    0x18(%rsp),%rdi              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@12 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          ││                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          ↘│  0x00007fe5c0644fed:   mov    0x18(%r12,%rcx,8),%edx       ; implicit exception: dispatches to 0x00007fe5c0645a18
           │                                                            ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007fe5c0644ff2:   mov    %rdi,0x18(%rsp)
   1.71%   │  0x00007fe5c0644ff7:   mov    %r10d,0x10(%rsp)
           │  0x00007fe5c0644ffc:   mov    %r8d,0x20(%rsp)
           │  0x00007fe5c0645001:   mov    %r11d,0x4(%rsp)
           │  0x00007fe5c0645006:   mov    %r9d,(%rsp)                  ;*synchronization entry
           │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@-1 (line 1081)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.58%   │  0x00007fe5c064500a:   mov    0x30(%rsp),%r10
   0.00%   │  0x00007fe5c064500f:   lea    0x10(%r10,%r13,1),%rsi
           │  0x00007fe5c0645014:   lea    0x10(%rbx,%r14,1),%rdi
           │  0x00007fe5c0645019:   mov    %rdx,%r10
   1.63%   │  0x00007fe5c064501c:   shl    $0x3,%r10
           │  0x00007fe5c0645020:   lea    0x10(%r12,%rdx,8),%rdx
           │  0x00007fe5c0645025:   vzeroupper 
   1.64%   │  0x00007fe5c0645028:   movabs $0x7fe5c00e9b00,%r10
           │  0x00007fe5c0645032:   call   *%r10
           │  0x00007fe5c0645035:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ;   {other}
           │  0x00007fe5c064503d:   mov    0x10(%rsp),%r11d
   1.68%   │  0x00007fe5c0645042:   mov    0xc(%r12,%r11,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Arrays::fill@24 (line 3310)
           │                                                            ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
           │                                                            ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007fe5c0645047:   mov    0x458(%r15),%r11
   0.00%   │  0x00007fe5c064504e:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007fe5c0645051:   add    %r10d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.61%   │  0x00007fe5c0645054:   add    %r10d,%r14d                  ; ImmutableOopMap {rbx=Oop [0]=NarrowOop [8]=Oop [16]=NarrowOop [24]=Oop [40]=Oop [48]=Oop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │  0x00007fe5c0645057:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                            ;   {poll}
           │  0x00007fe5c064505a:   nopw   0x0(%rax,%rax,1)
           │  0x00007fe5c0645060:   cmp    %r10d,%ebp
           ╰  0x00007fe5c0645063:   jge    0x00007fe5c0644fd0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fe5c0645069:   mov    (%rsp),%r9d
              0x00007fe5c064506d:   movzbl 0x24(%r12,%r9,8),%ebp        ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.01%      0x00007fe5c0645073:   test   %ebp,%ebp
              0x00007fe5c0645075:   jne    0x00007fe5c06459e4
   0.00%      0x00007fe5c064507b:   mov    0x4(%rsp),%r11d
              0x00007fe5c0645080:   mov    0x20(%rsp),%r8d              ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                        ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              0x00007fe5c0645085:   test   %r8d,%r8d
....................................................................................................
  13.23%  <total for region 3>

....[Hottest Regions]...............................................................................
  56.84%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  14.33%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  13.23%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   4.69%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   4.20%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   2.32%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.33%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   0.42%              kernel  [unknown] 
   0.23%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.09%              kernel  [unknown] 
   0.09%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   0.08%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   0.07%              kernel  [unknown] 
   0.05%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 704 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 744 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   0.04%              kernel  [unknown] 
   1.61%  <...other 353 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.17%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  24.06%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 699 
   2.33%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.49%              kernel  [unknown] 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.07%                      <unknown> 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 704 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 744 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  G1CollectedHeap::mem_allocate 
   0.01%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%           libjvm.so  fileStream::write 
   0.39%  <...other 120 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.52%        runtime stub
  24.15%         c2, level 4
   1.49%              kernel
   0.40%           libjvm.so
   0.29%        libc-2.31.so
   0.07%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/NoPadding)

# Run progress: 66.67% complete, ETA 00:07:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.670 us/op
# Warmup Iteration   2: 23.705 us/op
# Warmup Iteration   3: 23.703 us/op
# Warmup Iteration   4: 23.669 us/op
# Warmup Iteration   5: 23.667 us/op
Iteration   1: 23.646 us/op
Iteration   2: 23.629 us/op
Iteration   3: 23.633 us/op
Iteration   4: 23.636 us/op
Iteration   5: 23.637 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  23.636 ±(99.9%) 0.024 us/op [Average]
  (min, avg, max) = (23.629, 23.636, 23.646), stdev = 0.006
  CI (99.9%): [23.612, 23.661] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 150864 total address lines.
Perf output processed (skipped 56.921 seconds):
 Column 1: cycles (50836 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc099ed5:   lea    -0x8(%r14),%rax
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc099ed9:   xor    %edx,%edx
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc099edb:   cmpq   $0x0,-0x8(%r14)
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc099ee0:   cmovne %rax,%rdx
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc099ee4:   movabs $0x7fefbc07ff80,%rax
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc099eee:   ret    
                                                                                                                                                                                                                                                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                                                                                                    StubRoutines::aescrypt_encryptBlock [0x00007fefbc0e9200, 0x00007fefbc0e931a] (282 bytes)
                                                                                                                                                                                                                                                                                                                                                    --------------------------------------------------------------------------------
   0.01%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9200:   push   %rbp
   0.00%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9201:   mov    %rsp,%rbp
   1.58%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9204:   mov    -0x4(%rdx),%eax
   0.00%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9207:   vmovdqu 0x18a1cd71(%rip),%xmm1        # 0x00007fefd4b05f80
   0.00%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e920f:   vmovdqu (%rdi),%xmm0
   1.68%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9213:   vmovdqu (%rdx),%xmm2
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e9217:   vpshufb %xmm1,%xmm2,%xmm2
   0.01%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e921c:   vpxor  %xmm2,%xmm0,%xmm0
   0.06%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9220:   vmovdqu 0x10(%rdx),%xmm2
   1.51%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9225:   vpshufb %xmm1,%xmm2,%xmm2
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e922a:   vmovdqu 0x20(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e922f:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9234:   vmovdqu 0x30(%rdx),%xmm4
   1.66%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9239:   vpshufb %xmm1,%xmm4,%xmm4
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e923e:   vmovdqu 0x40(%rdx),%xmm5
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e9243:   vpshufb %xmm1,%xmm5,%xmm5
   0.04%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9248:   vaesenc %xmm2,%xmm0,%xmm0
   1.73%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e924d:   vaesenc %xmm3,%xmm0,%xmm0
   0.23%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9252:   vaesenc %xmm4,%xmm0,%xmm0
   6.07%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9257:   vaesenc %xmm5,%xmm0,%xmm0
   6.63%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e925c:   vmovdqu 0x50(%rdx),%xmm2
   0.01%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9261:   vpshufb %xmm1,%xmm2,%xmm2
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e9266:   vmovdqu 0x60(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e926b:   vpshufb %xmm1,%xmm3,%xmm3
   1.70%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9270:   vmovdqu 0x70(%rdx),%xmm4
   0.01%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9275:   vpshufb %xmm1,%xmm4,%xmm4
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e927a:   vmovdqu 0x80(%rdx),%xmm5
   0.00%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9282:   vpshufb %xmm1,%xmm5,%xmm5
   1.63%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9287:   vaesenc %xmm2,%xmm0,%xmm0
   9.43%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e928c:   vaesenc %xmm3,%xmm0,%xmm0
   0.35%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9291:   vaesenc %xmm4,%xmm0,%xmm0
   6.38%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9296:   vaesenc %xmm5,%xmm0,%xmm0
   6.74%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e929b:   vmovdqu 0x90(%rdx),%xmm2
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e92a3:   vpshufb %xmm1,%xmm2,%xmm2
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e92a8:   vmovdqu 0xa0(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                                                                      0x00007fefbc0e92b0:   vpshufb %xmm1,%xmm3,%xmm3
   1.67%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e92b5:   cmp    $0x2c,%eax
                                                                                                                                                                                                                                                                                                                                                  ╭   0x00007fefbc0e92b8:   je     0x00007fefbc0e9307
   0.00%                                                                                                                                                                                                                                                                                                                                          │   0x00007fefbc0e92ba:   vaesenc %xmm2,%xmm0,%xmm0
   5.01%                                                                                                                                                                                                                                                                                                                                          │   0x00007fefbc0e92bf:   vaesenc %xmm3,%xmm0,%xmm0
   6.64%                                                                                                                                                                                                                                                                                                                                          │   0x00007fefbc0e92c4:   vmovdqu 0xb0(%rdx),%xmm2
                                                                                                                                                                                                                                                                                                                                                  │   0x00007fefbc0e92cc:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%                                                                                                                                                                                                                                                                                                                                          │   0x00007fefbc0e92d1:   vmovdqu 0xc0(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                                                                  │   0x00007fefbc0e92d9:   vpshufb %xmm1,%xmm3,%xmm3
   1.62%                                                                                                                                                                                                                                                                                                                                          │   0x00007fefbc0e92de:   cmp    $0x34,%eax
                                                                                                                                                                                                                                                                                                                                                  │╭  0x00007fefbc0e92e1:   je     0x00007fefbc0e9307
                                                                                                                                                                                                                                                                                                                                                  ││  0x00007fefbc0e92e3:   vaesenc %xmm2,%xmm0,%xmm0
                                                                                                                                                                                                                                                                                                                                                  ││  0x00007fefbc0e92e8:   vaesenc %xmm3,%xmm0,%xmm0
                                                                                                                                                                                                                                                                                                                                                  ││  0x00007fefbc0e92ed:   vmovdqu 0xd0(%rdx),%xmm2
                                                                                                                                                                                                                                                                                                                                                  ││  0x00007fefbc0e92f5:   vpshufb %xmm1,%xmm2,%xmm2
                                                                                                                                                                                                                                                                                                                                                  ││  0x00007fefbc0e92fa:   vmovdqu 0xe0(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                                                                  ││  0x00007fefbc0e9302:   vpshufb %xmm1,%xmm3,%xmm3
                                                                                                                                                                                                                                                                                                                                                  ↘↘  0x00007fefbc0e9307:   vaesenc %xmm2,%xmm0,%xmm0
   4.85%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e930c:   vaesenclast %xmm3,%xmm0,%xmm0
   6.35%                                                                                                                                                                                                                                                                                                                                              0x00007fefbc0e9311:   vmovdqu %xmm0,(%rsi)
....................................................................................................
  62.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 672 

                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646a8e:   mov    0x20(%r12,%rbx,8),%edi       ;*getfield cipherMode {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@12 (line 975)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%         0x00007fefbc646a93:   cmp    $0x2,%edi
                 0x00007fefbc646a96:   je     0x00007fefbc646ebc           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@16 (line 975)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%         0x00007fefbc646a9c:   nopl   0x0(%rax)
                 0x00007fefbc646aa0:   cmp    $0x3,%edi
                 0x00007fefbc646aa3:   je     0x00007fefbc646efc           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@24 (line 975)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%         0x00007fefbc646aa9:   test   %ecx,%ecx
                 0x00007fefbc646aab:   je     0x00007fefbc646cc8
                 0x00007fefbc646ab1:   mov    %esi,%eax
                 0x00007fefbc646ab3:   cmp    $0x80000000,%eax
          ╭      0x00007fefbc646ab8:   jne    0x00007fefbc646ac1
          │      0x00007fefbc646aba:   xor    %edx,%edx
          │      0x00007fefbc646abc:   cmp    $0xffffffff,%ecx
          │╭     0x00007fefbc646abf:   je     0x00007fefbc646ac4
          ↘│     0x00007fefbc646ac1:   cltd   
           │     0x00007fefbc646ac2:   idiv   %ecx                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.sun.crypto.provider.CipherCore::finalNoPadding@33 (line 975)
           │                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                               ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
           │                                                               ; - javax.crypto.Cipher::doFinal@31 (line 2244)
           │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.03%   ↘     0x00007fefbc646ac4:   test   %edx,%edx
                 0x00007fefbc646ac6:   jne    0x00007fefbc646f3c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@34 (line 975)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646acc:   mov    0x30(%r12,%rbx,8),%r9d       ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                                                                           ;   {no_reloc}
                 0x00007fefbc646ad1:   mov    0xc(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007fefbc6470b8
                                                                           ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@2 (line 128)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646ad6:   test   %ecx,%ecx
                 0x00007fefbc646ad8:   je     0x00007fefbc646cf8
                 0x00007fefbc646ade:   mov    %esi,%eax
   0.00%         0x00007fefbc646ae0:   cmp    $0x80000000,%eax
            ╭    0x00007fefbc646ae5:   jne    0x00007fefbc646aee
            │    0x00007fefbc646ae7:   xor    %edx,%edx
            │    0x00007fefbc646ae9:   cmp    $0xffffffff,%ecx
            │╭   0x00007fefbc646aec:   je     0x00007fefbc646af1
            ↘│   0x00007fefbc646aee:   cltd   
             │   0x00007fefbc646aef:   idiv   %ecx                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - sun.security.util.ArrayUtil::blockSizeCheck@2 (line 40)
             │                                                             ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@5 (line 128)
             │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │                                                             ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
             │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.02%     ↘   0x00007fefbc646af1:   test   %edx,%edx
                 0x00007fefbc646af3:   jne    0x00007fefbc646f7c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - sun.security.util.ArrayUtil::blockSizeCheck@3 (line 40)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@5 (line 128)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%         0x00007fefbc646af9:   mov    %r10d,%ebp
                 0x00007fefbc646afc:   or     %esi,%ebp                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.util.Preconditions::checkFromIndexSize@4 (line 396)
                                                                           ; - sun.security.util.ArrayUtil::nullAndBoundsCheck@7 (line 47)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@19 (line 130)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646afe:   xchg   %ax,%ax
                 0x00007fefbc646b00:   test   %ebp,%ebp
                 0x00007fefbc646b02:   jl     0x00007fefbc646dc0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
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
   0.00%         0x00007fefbc646b08:   cmp    %r10d,%esi
                 0x00007fefbc646b0b:   jg     0x00007fefbc646fbc           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
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
   0.00%         0x00007fefbc646b11:   mov    0x10(%r12,%r9,8),%r8d
                 0x00007fefbc646b16:   test   %r8d,%r8d
                 0x00007fefbc646b19:   je     0x00007fefbc646d28           ;*invokevirtual implECBEncrypt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646b1f:   nop
                 0x00007fefbc646b20:   cmp    %ecx,%esi
                 0x00007fefbc646b22:   jl     0x00007fefbc646c1c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%         0x00007fefbc646b28:   lea    (%r12,%r9,8),%rdx            ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646b2c:   mov    %esi,0x20(%rsp)
                 0x00007fefbc646b30:   xor    %ebp,%ebp
   0.00%         0x00007fefbc646b32:   xor    %edi,%edi
   0.00%      ╭  0x00007fefbc646b34:   jmp    0x00007fefbc646b66
              │  0x00007fefbc646b36:   data16 nopw 0x0(%rax,%rax,1)
   1.71%      │  0x00007fefbc646b40:   mov    0x4(%rsp),%r9d
              │  0x00007fefbc646b45:   mov    0x10(%r12,%r9,8),%r8d        ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@13 (line 103)
              │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
              │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
              │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%      │  0x00007fefbc646b4a:   mov    %r14d,%esi
              │  0x00007fefbc646b4d:   mov    (%rsp),%r10d
   1.63%      │  0x00007fefbc646b51:   mov    0x8(%rsp),%r14
              │  0x00007fefbc646b56:   mov    %rbp,%r11
   0.00%      │  0x00007fefbc646b59:   mov    0x10(%rsp),%rdx
              │  0x00007fefbc646b5e:   vmovd  %xmm0,%ebp
   1.67%      │  0x00007fefbc646b62:   mov    %ecx,0x20(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@12 (line 103)
              │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
              │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
              │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
              ↘  0x00007fefbc646b66:   mov    0x18(%r12,%r8,8),%r8d        ; implicit exception: dispatches to 0x00007fefbc647068
                                                                           ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
   0.01%         0x00007fefbc646b6b:   mov    %rdx,0x10(%rsp)
   0.00%         0x00007fefbc646b70:   mov    %r9d,0x4(%rsp)
   1.67%         0x00007fefbc646b75:   mov    %r14,0x8(%rsp)
                 0x00007fefbc646b7a:   mov    %r10d,(%rsp)
   0.00%         0x00007fefbc646b7e:   mov    %esi,%r14d                   ;*synchronization entry
                                                                           ; - com.sun.crypto.provider.AESCrypt::encryptBlock@-1 (line 1081)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646b81:   lea    0x10(%r13,%rdi,1),%rsi
   1.66%         0x00007fefbc646b86:   mov    %edi,0x1c(%rsp)
   0.00%         0x00007fefbc646b8a:   lea    0x10(%r11,%rbp,1),%rdi
                 0x00007fefbc646b8f:   mov    %ebp,0x18(%rsp)
   0.00%         0x00007fefbc646b93:   mov    %r11,%rbp
   1.66%         0x00007fefbc646b96:   mov    %r8,%r10
                 0x00007fefbc646b99:   shl    $0x3,%r10
                 0x00007fefbc646b9d:   lea    0x10(%r12,%r8,8),%rdx
                 0x00007fefbc646ba2:   movabs $0x7fefbc0e9200,%r10
   1.64%         0x00007fefbc646bac:   call   *%r10
                 0x00007fefbc646baf:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
                                                                           ;   {other}
   0.00%         0x00007fefbc646bb7:   mov    0x4(%rsp),%r11d
   1.61%         0x00007fefbc646bbc:   mov    0xc(%r12,%r11,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646bc1:   mov    0x458(%r15),%r9
   0.00%         0x00007fefbc646bc8:   mov    0x20(%rsp),%ecx
                 0x00007fefbc646bcc:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   1.57%         0x00007fefbc646bcf:   mov    0x1c(%rsp),%r11d
                 0x00007fefbc646bd4:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%         0x00007fefbc646bd7:   mov    %r11d,%edi
                 0x00007fefbc646bda:   mov    0x18(%rsp),%r8d
   1.62%         0x00007fefbc646bdf:   add    %r10d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
                                                                           ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                           ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                           ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                           ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
                 0x00007fefbc646be2:   vmovd  %r8d,%xmm0                   ; ImmutableOopMap {rbx=NarrowOop rbp=Oop r13=Oop [4]=NarrowOop [8]=Oop [16]=Oop [36]=NarrowOop }
....................................................................................................
  16.54%  <total for region 2>

....[Hottest Region 3]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

                                                                                                                                                                                                                                                                      0x00007fefbc0e92d9:   vpshufb %xmm1,%xmm3,%xmm3
   1.62%                                                                                                                                                                                                                                                              0x00007fefbc0e92de:   cmp    $0x34,%eax
          ╭                                                                                                                                                                                                                                                           0x00007fefbc0e92e1:   je     0x00007fefbc0e9307
          │                                                                                                                                                                                                                                                           0x00007fefbc0e92e3:   vaesenc %xmm2,%xmm0,%xmm0
          │                                                                                                                                                                                                                                                           0x00007fefbc0e92e8:   vaesenc %xmm3,%xmm0,%xmm0
          │                                                                                                                                                                                                                                                           0x00007fefbc0e92ed:   vmovdqu 0xd0(%rdx),%xmm2
          │                                                                                                                                                                                                                                                           0x00007fefbc0e92f5:   vpshufb %xmm1,%xmm2,%xmm2
          │                                                                                                                                                                                                                                                           0x00007fefbc0e92fa:   vmovdqu 0xe0(%rdx),%xmm3
          │                                                                                                                                                                                                                                                           0x00007fefbc0e9302:   vpshufb %xmm1,%xmm3,%xmm3
          ↘                                                                                                                                                                                                                                                           0x00007fefbc0e9307:   vaesenc %xmm2,%xmm0,%xmm0
   4.85%                                                                                                                                                                                                                                                              0x00007fefbc0e930c:   vaesenclast %xmm3,%xmm0,%xmm0
   6.35%                                                                                                                                                                                                                                                              0x00007fefbc0e9311:   vmovdqu %xmm0,(%rsi)
   1.64%                                                                                                                                                                                                                                                              0x00007fefbc0e9315:   xor    %rax,%rax
                                                                                                                                                                                                                                                                      0x00007fefbc0e9318:   leave  
   1.62%                                                                                                                                                                                                                                                              0x00007fefbc0e9319:   ret    
                                                                                                                                                                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                                                                                                                                                                    - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                    Decoding RuntimeStub - dtrace_object_alloc Runtime1 stub 0x00007fefbc186e10
                                                                                                                                                                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                                                                                                                                                                      0x00007fefbc186e80:   push   %rbp
                                                                                                                                                                                                                                                                      0x00007fefbc186e81:   mov    %rsp,%rbp
                                                                                                                                                                                                                                                                      0x00007fefbc186e84:   sub    $0x80,%rsp
                                                                                                                                                                                                                                                                      0x00007fefbc186e8b:   mov    %rax,0x78(%rsp)
                                                                                                                                                                                                                                                                      0x00007fefbc186e90:   mov    %rcx,0x70(%rsp)
....................................................................................................
  14.46%  <total for region 3>

....[Hottest Regions]...............................................................................
  62.44%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  16.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 672 
  14.46%        runtime stub  StubRoutines::aescrypt_encryptBlock 
   3.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 672 
   0.59%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%        libc-2.31.so  __memset_avx2_erms 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 713 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 672 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   1.26%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  76.89%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  20.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 672 
   1.77%              kernel  [unknown] 
   0.10%        libc-2.31.so  __memset_avx2_erms 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 713 
   0.05%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.36%  <...other 139 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  76.89%        runtime stub
  20.65%         c2, level 4
   1.77%              kernel
   0.34%           libjvm.so
   0.18%        libc-2.31.so
   0.05%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%         c1, level 3
   0.00%    perf-1930879.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 192, transformation = AES/ECB/PKCS5Padding)

# Run progress: 75.00% complete, ETA 00:05:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.087 us/op
# Warmup Iteration   2: 24.842 us/op
# Warmup Iteration   3: 24.890 us/op
# Warmup Iteration   4: 24.671 us/op
# Warmup Iteration   5: 24.677 us/op
Iteration   1: 24.673 us/op
Iteration   2: 24.676 us/op
Iteration   3: 24.652 us/op
Iteration   4: 24.685 us/op
Iteration   5: 24.677 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  24.673 ±(99.9%) 0.047 us/op [Average]
  (min, avg, max) = (24.652, 24.673, 24.685), stdev = 0.012
  CI (99.9%): [24.626, 24.720] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 151847 total address lines.
Perf output processed (skipped 56.814 seconds):
 Column 1: cycles (50990 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::aescrypt_encryptBlock [0x00007f2f0c0e8d40, 0x00007f2f0c0e8e5a] (282 bytes)
            --------------------------------------------------------------------------------
   0.00%      0x00007f2f0c0e8d40:   push   %rbp
   1.52%      0x00007f2f0c0e8d41:   mov    %rsp,%rbp
   0.00%      0x00007f2f0c0e8d44:   mov    -0x4(%rdx),%eax
   0.00%      0x00007f2f0c0e8d47:   vmovdqu 0x18a72231(%rip),%xmm1        # 0x00007f2f24b5af80
   1.46%      0x00007f2f0c0e8d4f:   vmovdqu (%rdi),%xmm0
   0.03%      0x00007f2f0c0e8d53:   vmovdqu (%rdx),%xmm2
              0x00007f2f0c0e8d57:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f2f0c0e8d5c:   vpxor  %xmm2,%xmm0,%xmm0
   1.50%      0x00007f2f0c0e8d60:   vmovdqu 0x10(%rdx),%xmm2
              0x00007f2f0c0e8d65:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f2f0c0e8d6a:   vmovdqu 0x20(%rdx),%xmm3
              0x00007f2f0c0e8d6f:   vpshufb %xmm1,%xmm3,%xmm3
   1.55%      0x00007f2f0c0e8d74:   vmovdqu 0x30(%rdx),%xmm4
              0x00007f2f0c0e8d79:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f2f0c0e8d7e:   vmovdqu 0x40(%rdx),%xmm5
   0.00%      0x00007f2f0c0e8d83:   vpshufb %xmm1,%xmm5,%xmm5
   1.54%      0x00007f2f0c0e8d88:   vaesenc %xmm2,%xmm0,%xmm0
              0x00007f2f0c0e8d8d:   vaesenc %xmm3,%xmm0,%xmm0
   0.16%      0x00007f2f0c0e8d92:   vaesenc %xmm4,%xmm0,%xmm0
   4.62%      0x00007f2f0c0e8d97:   vaesenc %xmm5,%xmm0,%xmm0
   6.03%      0x00007f2f0c0e8d9c:   vmovdqu 0x50(%rdx),%xmm2
              0x00007f2f0c0e8da1:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f2f0c0e8da6:   vmovdqu 0x60(%rdx),%xmm3
              0x00007f2f0c0e8dab:   vpshufb %xmm1,%xmm3,%xmm3
   1.58%      0x00007f2f0c0e8db0:   vmovdqu 0x70(%rdx),%xmm4
              0x00007f2f0c0e8db5:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f2f0c0e8dba:   vmovdqu 0x80(%rdx),%xmm5
              0x00007f2f0c0e8dc2:   vpshufb %xmm1,%xmm5,%xmm5
   1.65%      0x00007f2f0c0e8dc7:   vaesenc %xmm2,%xmm0,%xmm0
   9.28%      0x00007f2f0c0e8dcc:   vaesenc %xmm3,%xmm0,%xmm0
   0.13%      0x00007f2f0c0e8dd1:   vaesenc %xmm4,%xmm0,%xmm0
   6.12%      0x00007f2f0c0e8dd6:   vaesenc %xmm5,%xmm0,%xmm0
   6.35%      0x00007f2f0c0e8ddb:   vmovdqu 0x90(%rdx),%xmm2
              0x00007f2f0c0e8de3:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f2f0c0e8de8:   vmovdqu 0xa0(%rdx),%xmm3
              0x00007f2f0c0e8df0:   vpshufb %xmm1,%xmm3,%xmm3
   1.51%      0x00007f2f0c0e8df5:   cmp    $0x2c,%eax
          ╭   0x00007f2f0c0e8df8:   je     0x00007f2f0c0e8e47
          │   0x00007f2f0c0e8dfa:   vaesenc %xmm2,%xmm0,%xmm0
   4.70%  │   0x00007f2f0c0e8dff:   vaesenc %xmm3,%xmm0,%xmm0
   6.23%  │   0x00007f2f0c0e8e04:   vmovdqu 0xb0(%rdx),%xmm2
          │   0x00007f2f0c0e8e0c:   vpshufb %xmm1,%xmm2,%xmm2
          │   0x00007f2f0c0e8e11:   vmovdqu 0xc0(%rdx),%xmm3
          │   0x00007f2f0c0e8e19:   vpshufb %xmm1,%xmm3,%xmm3
   1.59%  │   0x00007f2f0c0e8e1e:   cmp    $0x34,%eax
          │╭  0x00007f2f0c0e8e21:   je     0x00007f2f0c0e8e47
          ││  0x00007f2f0c0e8e23:   vaesenc %xmm2,%xmm0,%xmm0
          ││  0x00007f2f0c0e8e28:   vaesenc %xmm3,%xmm0,%xmm0
          ││  0x00007f2f0c0e8e2d:   vmovdqu 0xd0(%rdx),%xmm2
          ││  0x00007f2f0c0e8e35:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f2f0c0e8e3a:   vmovdqu 0xe0(%rdx),%xmm3
          ││  0x00007f2f0c0e8e42:   vpshufb %xmm1,%xmm3,%xmm3
          ↘↘  0x00007f2f0c0e8e47:   vaesenc %xmm2,%xmm0,%xmm0
   4.74%      0x00007f2f0c0e8e4c:   vaesenclast %xmm3,%xmm0,%xmm0
   6.35%      0x00007f2f0c0e8e51:   vmovdqu %xmm0,(%rsi)
....................................................................................................
  57.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

             0x00007f2f0c0e8e19:   vpshufb %xmm1,%xmm3,%xmm3
   1.59%     0x00007f2f0c0e8e1e:   cmp    $0x34,%eax
          ╭  0x00007f2f0c0e8e21:   je     0x00007f2f0c0e8e47
          │  0x00007f2f0c0e8e23:   vaesenc %xmm2,%xmm0,%xmm0
          │  0x00007f2f0c0e8e28:   vaesenc %xmm3,%xmm0,%xmm0
          │  0x00007f2f0c0e8e2d:   vmovdqu 0xd0(%rdx),%xmm2
          │  0x00007f2f0c0e8e35:   vpshufb %xmm1,%xmm2,%xmm2
          │  0x00007f2f0c0e8e3a:   vmovdqu 0xe0(%rdx),%xmm3
          │  0x00007f2f0c0e8e42:   vpshufb %xmm1,%xmm3,%xmm3
          ↘  0x00007f2f0c0e8e47:   vaesenc %xmm2,%xmm0,%xmm0
   4.74%     0x00007f2f0c0e8e4c:   vaesenclast %xmm3,%xmm0,%xmm0
   6.35%     0x00007f2f0c0e8e51:   vmovdqu %xmm0,(%rsi)
   1.69%     0x00007f2f0c0e8e55:   xor    %rax,%rax
             0x00007f2f0c0e8e58:   leave  
   1.53%     0x00007f2f0c0e8e59:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::aescrypt_decryptBlock [0x00007f2f0c0e8e60, 0x00007f2f0c0e8f7a] (282 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  14.31%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 

                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                        ;   {no_reloc}
              0x00007f2f0c644df2:   lea    (%r12,%r10,8),%r9            ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              0x00007f2f0c644df6:   mov    %r8d,%r14d
   0.00%      0x00007f2f0c644df9:   xor    %ebp,%ebp
              0x00007f2f0c644dfb:   xor    %r8d,%r8d
              0x00007f2f0c644dfe:   xchg   %ax,%ax
          ╭   0x00007f2f0c644e00:   jmp    0x00007f2f0c644e13
          │↗  0x00007f2f0c644e02:   mov    (%rsp),%r10d
          ││  0x00007f2f0c644e06:   mov    0x10(%r12,%r10,8),%ecx       ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@13 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.56%  ││  0x00007f2f0c644e0b:   mov    0x8(%rsp),%r9
          ││  0x00007f2f0c644e10:   mov    %edi,%r8d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@12 (line 103)
          ││                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  ↘│  0x00007f2f0c644e13:   mov    0x18(%r12,%rcx,8),%r11d      ; implicit exception: dispatches to 0x00007f2f0c645788
           │                                                            ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007f2f0c644e18:   mov    %r9,0x8(%rsp)
   1.62%   │  0x00007f2f0c644e1d:   mov    %r10d,(%rsp)                 ;*synchronization entry
           │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@-1 (line 1081)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007f2f0c644e21:   mov    0x50(%rsp),%r10
   0.00%   │  0x00007f2f0c644e26:   lea    0x10(%r10,%rbp,1),%rsi
           │  0x00007f2f0c644e2b:   lea    0x10(%rbx,%r8,1),%rdi
   1.53%   │  0x00007f2f0c644e30:   mov    %r8d,0x4(%rsp)
           │  0x00007f2f0c644e35:   mov    %r11,%r10
   0.00%   │  0x00007f2f0c644e38:   shl    $0x3,%r10
   0.00%   │  0x00007f2f0c644e3c:   lea    0x10(%r12,%r11,8),%rdx
   1.59%   │  0x00007f2f0c644e41:   vzeroupper 
   1.56%   │  0x00007f2f0c644e44:   movabs $0x7f2f0c0e8d40,%r10
           │  0x00007f2f0c644e4e:   call   *%r10
           │  0x00007f2f0c644e51:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ;   {other}
           │  0x00007f2f0c644e59:   mov    (%rsp),%r11d
   1.61%   │  0x00007f2f0c644e5d:   mov    0xc(%r12,%r11,8),%r11d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.Arrays::fill@24 (line 3310)
           │                                                            ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
           │                                                            ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
           │  0x00007f2f0c644e62:   mov    0x458(%r15),%r8
           │  0x00007f2f0c644e69:   sub    %r11d,%r14d                  ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007f2f0c644e6c:   add    %r11d,%ebp                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.66%   │  0x00007f2f0c644e6f:   mov    0x4(%rsp),%r10d
           │  0x00007f2f0c644e74:   add    %r11d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007f2f0c644e77:   mov    %r10d,%edi                   ; ImmutableOopMap {rbx=Oop r13=Oop [0]=NarrowOop [8]=Oop [64]=Oop [80]=Oop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  0x00007f2f0c644e7a:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
           │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
           │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │                                                            ;   {poll}
   1.57%   │  0x00007f2f0c644e7d:   data16 xchg %ax,%ax
           │  0x00007f2f0c644e80:   cmp    %r11d,%r14d
           ╰  0x00007f2f0c644e83:   jge    0x00007f2f0c644e02           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
              0x00007f2f0c644e89:   mov    0x40(%rsp),%r10
              0x00007f2f0c644e8e:   movzbl 0x24(%r10),%ebp              ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%      0x00007f2f0c644e93:   test   %ebp,%ebp
              0x00007f2f0c644e95:   jne    0x00007f2f0c64575c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@9 (line 102)
                                                                        ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                        ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                        ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                        ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%      0x00007f2f0c644e9b:   mov    0x48(%rsp),%r11d
              0x00007f2f0c644ea0:   test   %r11d,%r11d
              0x00007f2f0c644ea3:   jle    0x00007f2f0c645057           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::fill@7 (line 3287)
                                                                        ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@57 (line 947)
....................................................................................................
  12.72%  <total for region 3>

....[Hottest Regions]...............................................................................
  57.58%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  14.31%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  12.72%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   4.29%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   3.93%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   2.09%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.24%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   0.64%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.19%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.09%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 730 
   0.06%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 691 
   1.94%  <...other 432 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.89%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  22.77%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 687 
   2.24%              kernel  [unknown] 
   2.09%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.17%        libc-2.31.so  __memset_avx2_erms 
   0.11%                      <unknown> 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 691 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 730 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%           libjvm.so  ObjArrayAllocator::initialize 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  G1CardSet::clear 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  OptoRuntime::new_array_C 
   0.39%  <...other 129 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.98%        runtime stub
  22.93%         c2, level 4
   2.24%              kernel
   0.38%           libjvm.so
   0.28%        libc-2.31.so
   0.11%                    
   0.04%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/NoPadding)

# Run progress: 83.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.171 us/op
# Warmup Iteration   2: 22.063 us/op
# Warmup Iteration   3: 22.061 us/op
# Warmup Iteration   4: 22.070 us/op
# Warmup Iteration   5: 22.100 us/op
Iteration   1: 22.337 us/op
Iteration   2: 22.366 us/op
Iteration   3: 22.328 us/op
Iteration   4: 22.348 us/op
Iteration   5: 22.373 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  22.350 ±(99.9%) 0.073 us/op [Average]
  (min, avg, max) = (22.328, 22.350, 22.373), stdev = 0.019
  CI (99.9%): [22.277, 22.423] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 151956 total address lines.
Perf output processed (skipped 56.939 seconds):
 Column 1: cycles (50970 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::aescrypt_encryptBlock [0x00007f6d9c0e8d80, 0x00007f6d9c0e8e9a] (282 bytes)
            --------------------------------------------------------------------------------
   0.00%      0x00007f6d9c0e8d80:   push   %rbp
   0.00%      0x00007f6d9c0e8d81:   mov    %rsp,%rbp
   1.69%      0x00007f6d9c0e8d84:   mov    -0x4(%rdx),%eax
              0x00007f6d9c0e8d87:   vmovdqu 0x15ad81f1(%rip),%xmm1        # 0x00007f6db1bc0f80
   0.00%      0x00007f6d9c0e8d8f:   vmovdqu (%rdi),%xmm0
   1.69%      0x00007f6d9c0e8d93:   vmovdqu (%rdx),%xmm2
              0x00007f6d9c0e8d97:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f6d9c0e8d9c:   vpxor  %xmm2,%xmm0,%xmm0
   0.01%      0x00007f6d9c0e8da0:   vmovdqu 0x10(%rdx),%xmm2
   1.67%      0x00007f6d9c0e8da5:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%      0x00007f6d9c0e8daa:   vmovdqu 0x20(%rdx),%xmm3
              0x00007f6d9c0e8daf:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%      0x00007f6d9c0e8db4:   vmovdqu 0x30(%rdx),%xmm4
   1.78%      0x00007f6d9c0e8db9:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f6d9c0e8dbe:   vmovdqu 0x40(%rdx),%xmm5
              0x00007f6d9c0e8dc3:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%      0x00007f6d9c0e8dc8:   vaesenc %xmm2,%xmm0,%xmm0
   1.74%      0x00007f6d9c0e8dcd:   vaesenc %xmm3,%xmm0,%xmm0
   0.01%      0x00007f6d9c0e8dd2:   vaesenc %xmm4,%xmm0,%xmm0
   0.04%      0x00007f6d9c0e8dd7:   vaesenc %xmm5,%xmm0,%xmm0
   0.07%      0x00007f6d9c0e8ddc:   vmovdqu 0x50(%rdx),%xmm2
   1.73%      0x00007f6d9c0e8de1:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f6d9c0e8de6:   vmovdqu 0x60(%rdx),%xmm3
              0x00007f6d9c0e8deb:   vpshufb %xmm1,%xmm3,%xmm3
   0.02%      0x00007f6d9c0e8df0:   vmovdqu 0x70(%rdx),%xmm4
   1.66%      0x00007f6d9c0e8df5:   vpshufb %xmm1,%xmm4,%xmm4
              0x00007f6d9c0e8dfa:   vmovdqu 0x80(%rdx),%xmm5
              0x00007f6d9c0e8e02:   vpshufb %xmm1,%xmm5,%xmm5
   0.01%      0x00007f6d9c0e8e07:   vaesenc %xmm2,%xmm0,%xmm0
   1.85%      0x00007f6d9c0e8e0c:   vaesenc %xmm3,%xmm0,%xmm0
   2.89%      0x00007f6d9c0e8e11:   vaesenc %xmm4,%xmm0,%xmm0
   6.38%      0x00007f6d9c0e8e16:   vaesenc %xmm5,%xmm0,%xmm0
   6.86%      0x00007f6d9c0e8e1b:   vmovdqu 0x90(%rdx),%xmm2
              0x00007f6d9c0e8e23:   vpshufb %xmm1,%xmm2,%xmm2
              0x00007f6d9c0e8e28:   vmovdqu 0xa0(%rdx),%xmm3
              0x00007f6d9c0e8e30:   vpshufb %xmm1,%xmm3,%xmm3
   1.78%      0x00007f6d9c0e8e35:   cmp    $0x2c,%eax
          ╭   0x00007f6d9c0e8e38:   je     0x00007f6d9c0e8e87
   0.01%  │   0x00007f6d9c0e8e3a:   vaesenc %xmm2,%xmm0,%xmm0
   5.12%  │   0x00007f6d9c0e8e3f:   vaesenc %xmm3,%xmm0,%xmm0
   6.73%  │   0x00007f6d9c0e8e44:   vmovdqu 0xb0(%rdx),%xmm2
          │   0x00007f6d9c0e8e4c:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%  │   0x00007f6d9c0e8e51:   vmovdqu 0xc0(%rdx),%xmm3
   0.00%  │   0x00007f6d9c0e8e59:   vpshufb %xmm1,%xmm3,%xmm3
   1.67%  │   0x00007f6d9c0e8e5e:   cmp    $0x34,%eax
          │╭  0x00007f6d9c0e8e61:   je     0x00007f6d9c0e8e87
          ││  0x00007f6d9c0e8e63:   vaesenc %xmm2,%xmm0,%xmm0
   5.26%  ││  0x00007f6d9c0e8e68:   vaesenc %xmm3,%xmm0,%xmm0
   6.96%  ││  0x00007f6d9c0e8e6d:   vmovdqu 0xd0(%rdx),%xmm2
          ││  0x00007f6d9c0e8e75:   vpshufb %xmm1,%xmm2,%xmm2
          ││  0x00007f6d9c0e8e7a:   vmovdqu 0xe0(%rdx),%xmm3
          ││  0x00007f6d9c0e8e82:   vpshufb %xmm1,%xmm3,%xmm3
   1.70%  ↘↘  0x00007f6d9c0e8e87:   vaesenc %xmm2,%xmm0,%xmm0
   5.34%      0x00007f6d9c0e8e8c:   vaesenclast %xmm3,%xmm0,%xmm0
   6.88%      0x00007f6d9c0e8e91:   vmovdqu %xmm0,(%rsi)
   1.69%      0x00007f6d9c0e8e95:   xor    %rax,%rax
              0x00007f6d9c0e8e98:   leave  
   1.72%      0x00007f6d9c0e8e99:   ret    
            --------------------------------------------------------------------------------
            - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            StubRoutines::aescrypt_decryptBlock [0x00007f6d9c0e8ea0, 0x00007f6d9c0e8fba] (282 bytes)
            --------------------------------------------------------------------------------
....................................................................................................
  74.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 665 

                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f6d9c648328:   lea    (%r12,%r9,8),%rdx            ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f6d9c64832c:   mov    %esi,0x20(%rsp)
             0x00007f6d9c648330:   xor    %ebp,%ebp
   0.00%     0x00007f6d9c648332:   xor    %edi,%edi
          ╭  0x00007f6d9c648334:   jmp    0x00007f6d9c648366
          │  0x00007f6d9c648336:   data16 nopw 0x0(%rax,%rax,1)
   1.80%  │  0x00007f6d9c648340:   mov    0x4(%rsp),%r9d
          │  0x00007f6d9c648345:   mov    0x10(%r12,%r9,8),%r8d        ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@13 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.00%  │  0x00007f6d9c64834a:   mov    %r14d,%esi
          │  0x00007f6d9c64834d:   mov    (%rsp),%r10d
   1.68%  │  0x00007f6d9c648351:   mov    0x8(%rsp),%r14
          │  0x00007f6d9c648356:   mov    %rbp,%r11
          │  0x00007f6d9c648359:   mov    0x10(%rsp),%rdx
          │  0x00007f6d9c64835e:   vmovd  %xmm0,%ebp
   1.71%  │  0x00007f6d9c648362:   mov    %ecx,0x20(%rsp)              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@12 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
          ↘  0x00007f6d9c648366:   mov    0x18(%r12,%r8,8),%r8d        ; implicit exception: dispatches to 0x00007f6d9c648868
                                                                       ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
   0.00%     0x00007f6d9c64836b:   mov    %rdx,0x10(%rsp)
   0.00%     0x00007f6d9c648370:   mov    %r9d,0x4(%rsp)
   1.81%     0x00007f6d9c648375:   mov    %r14,0x8(%rsp)
             0x00007f6d9c64837a:   mov    %r10d,(%rsp)
   0.00%     0x00007f6d9c64837e:   mov    %esi,%r14d                   ;*synchronization entry
                                                                       ; - com.sun.crypto.provider.AESCrypt::encryptBlock@-1 (line 1081)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   0.01%     0x00007f6d9c648381:   lea    0x10(%r13,%rdi,1),%rsi
   1.68%     0x00007f6d9c648386:   mov    %edi,0x1c(%rsp)
             0x00007f6d9c64838a:   lea    0x10(%r11,%rbp,1),%rdi
             0x00007f6d9c64838f:   mov    %ebp,0x18(%rsp)
             0x00007f6d9c648393:   mov    %r11,%rbp
   1.71%     0x00007f6d9c648396:   mov    %r8,%r10
             0x00007f6d9c648399:   shl    $0x3,%r10
   0.00%     0x00007f6d9c64839d:   lea    0x10(%r12,%r8,8),%rdx
             0x00007f6d9c6483a2:   movabs $0x7f6d9c0e8d80,%r10
   1.78%     0x00007f6d9c6483ac:   call   *%r10
             0x00007f6d9c6483af:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
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
                                                                       ;   {other}
             0x00007f6d9c6483b7:   mov    0x4(%rsp),%r11d
   1.70%     0x00007f6d9c6483bc:   mov    0xc(%r12,%r11,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f6d9c6483c1:   mov    0x458(%r15),%r9
             0x00007f6d9c6483c8:   mov    0x20(%rsp),%ecx
             0x00007f6d9c6483cc:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
   1.76%     0x00007f6d9c6483cf:   mov    0x1c(%rsp),%r11d
             0x00007f6d9c6483d4:   add    %r10d,%r11d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f6d9c6483d7:   mov    %r11d,%edi
             0x00007f6d9c6483da:   mov    0x18(%rsp),%r8d
   1.75%     0x00007f6d9c6483df:   add    %r10d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@30 (line 104)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt@8 (line 108)
             0x00007f6d9c6483e2:   vmovd  %r8d,%xmm0                   ; ImmutableOopMap {rbx=NarrowOop rbp=Oop r13=Oop [4]=NarrowOop [8]=Oop [16]=Oop [36]=NarrowOop }
....................................................................................................
  17.39%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.97%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  17.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 665 
   4.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 665 
   0.68%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 665 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 665 
   0.08%        libc-2.31.so  __memset_avx2_erms 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 705 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 665 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.36%  <...other 359 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.97%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  22.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 665 
   2.32%              kernel  [unknown] 
   0.08%        libc-2.31.so  __memset_avx2_erms 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 705 
   0.07%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  TypeArrayKlass::allocate_common 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.27%  <...other 109 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.97%        runtime stub
  22.12%         c2, level 4
   2.32%              kernel
   0.29%           libjvm.so
   0.17%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = AES/ECB/PKCS5Padding)

# Run progress: 91.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.325 us/op
# Warmup Iteration   2: 24.089 us/op
# Warmup Iteration   3: 23.943 us/op
# Warmup Iteration   4: 23.693 us/op
# Warmup Iteration   5: 23.673 us/op
Iteration   1: 23.709 us/op
Iteration   2: 23.692 us/op
Iteration   3: 23.702 us/op
Iteration   4: 23.727 us/op
Iteration   5: 23.717 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt":
  23.710 ±(99.9%) 0.053 us/op [Average]
  (min, avg, max) = (23.692, 23.710, 23.727), stdev = 0.014
  CI (99.9%): [23.657, 23.762] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 161102 total address lines.
Perf output processed (skipped 57.256 seconds):
 Column 1: cycles (50736 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::aescrypt_encryptBlock 

                                                                                                                                                                                                                                                                                                 0x00007f9e7018976d:   ret    
                                                                                                                                                                                                                                                                                                 0x00007f9e7018976e:   xchg   %ax,%ax
                                                                                                                                                                                                                                                                                               --------------------------------------------------------------------------------
                                                                                                                                                                                                                                                                                               - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                                               ImmutableOopMapSet contains 1 OopMaps
                                                                                                                                                                                                                                                                                               ImmutableOopMap {[1128]=Callers_rax [1120]=Callers_rcx [1112]=Callers_rdx [1104]=Callers_rbx [1080]=Callers_rsi [1072]=Callers_rdi [1064]=Callers_r8 [1056]=Callers_r9 [1048]=Callers_r10 [1040]=Callers_r11 [1032]=Callers_r12 [1024]=Callers_r13 [1016]=Callers_r14 [1008]=Callers_r15 [1132]=Callers_rax [1124]=Callers_rcx [1116]=Callers_rdx [1108]=Callers_rbx [1084]=Callers_rsi [1076]=Callers_rdi [1068]=Callers_r8 [1060]=Callers_r9 [1052]=Callers_r10 [1044]=Callers_r11 [1036]=Callers_r12 [1028]=Callers_r13 [1020]=Callers_r14 [1012]=Callers_r15 [8]=Callers_xmm0 [12]=Callers_xmm0 [16]=Callers_xmm1 [20]=Callers_xmm1 [24]=Callers_xmm2 [28]=Callers_xmm2 [32]=Callers_xmm3 [36]=Callers_xmm3 [40]=Callers_xmm4 [44]=Callers_xmm4 [48]=Callers_xmm5 [52]=Callers_xmm5 [56]=Callers_xmm6 [60]=Callers_xmm6 [64]=Callers_xmm7 [68]=Callers_xmm7 [72]=Callers_xmm8 [76]=Callers_xmm8 [80]=Callers_xmm9 [84]=Callers_xmm9 [88]=Callers_xmm10 [92]=Callers_xmm10 [96]=Callers_xmm11 [100]=Callers_xmm11 [104]=Callers_xmm12 [108]=Callers_xmm12 [112]=Callers_xmm13 [116]=Callers_xmm13 [120]=Callers_xmm14 [124]=Callers_xmm14 [128]=Callers_xmm15 [132]=Callers_xmm15 } pc offsets: 225 
                                                                                                                                                                                                                                                                                               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                                               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                                               StubRoutines::aescrypt_encryptBlock [0x00007f9e700e9640, 0x00007f9e700e975a] (282 bytes)
                                                                                                                                                                                                                                                                                               --------------------------------------------------------------------------------
   1.53%                                                                                                                                                                                                                                                                                         0x00007f9e700e9640:   push   %rbp
   0.00%                                                                                                                                                                                                                                                                                         0x00007f9e700e9641:   mov    %rsp,%rbp
   1.71%                                                                                                                                                                                                                                                                                         0x00007f9e700e9644:   mov    -0x4(%rdx),%eax
   0.01%                                                                                                                                                                                                                                                                                         0x00007f9e700e9647:   vmovdqu 0x175d6931(%rip),%xmm1        # 0x00007f9e876bff80
   0.00%                                                                                                                                                                                                                                                                                         0x00007f9e700e964f:   vmovdqu (%rdi),%xmm0
                                                                                                                                                                                                                                                                                                 0x00007f9e700e9653:   vmovdqu (%rdx),%xmm2
   1.62%                                                                                                                                                                                                                                                                                         0x00007f9e700e9657:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%                                                                                                                                                                                                                                                                                         0x00007f9e700e965c:   vpxor  %xmm2,%xmm0,%xmm0
   0.02%                                                                                                                                                                                                                                                                                         0x00007f9e700e9660:   vmovdqu 0x10(%rdx),%xmm2
   0.00%                                                                                                                                                                                                                                                                                         0x00007f9e700e9665:   vpshufb %xmm1,%xmm2,%xmm2
   1.58%                                                                                                                                                                                                                                                                                         0x00007f9e700e966a:   vmovdqu 0x20(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                 0x00007f9e700e966f:   vpshufb %xmm1,%xmm3,%xmm3
   0.00%                                                                                                                                                                                                                                                                                         0x00007f9e700e9674:   vmovdqu 0x30(%rdx),%xmm4
                                                                                                                                                                                                                                                                                                 0x00007f9e700e9679:   vpshufb %xmm1,%xmm4,%xmm4
   1.67%                                                                                                                                                                                                                                                                                         0x00007f9e700e967e:   vmovdqu 0x40(%rdx),%xmm5
                                                                                                                                                                                                                                                                                                 0x00007f9e700e9683:   vpshufb %xmm1,%xmm5,%xmm5
   0.00%                                                                                                                                                                                                                                                                                         0x00007f9e700e9688:   vaesenc %xmm2,%xmm0,%xmm0
                                                                                                                                                                                                                                                                                                 0x00007f9e700e968d:   vaesenc %xmm3,%xmm0,%xmm0
   1.68%                                                                                                                                                                                                                                                                                         0x00007f9e700e9692:   vaesenc %xmm4,%xmm0,%xmm0
   0.02%                                                                                                                                                                                                                                                                                         0x00007f9e700e9697:   vaesenc %xmm5,%xmm0,%xmm0
   0.09%                                                                                                                                                                                                                                                                                         0x00007f9e700e969c:   vmovdqu 0x50(%rdx),%xmm2
                                                                                                                                                                                                                                                                                                 0x00007f9e700e96a1:   vpshufb %xmm1,%xmm2,%xmm2
   1.66%                                                                                                                                                                                                                                                                                         0x00007f9e700e96a6:   vmovdqu 0x60(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                 0x00007f9e700e96ab:   vpshufb %xmm1,%xmm3,%xmm3
   0.04%                                                                                                                                                                                                                                                                                         0x00007f9e700e96b0:   vmovdqu 0x70(%rdx),%xmm4
                                                                                                                                                                                                                                                                                                 0x00007f9e700e96b5:   vpshufb %xmm1,%xmm4,%xmm4
   1.58%                                                                                                                                                                                                                                                                                         0x00007f9e700e96ba:   vmovdqu 0x80(%rdx),%xmm5
                                                                                                                                                                                                                                                                                                 0x00007f9e700e96c2:   vpshufb %xmm1,%xmm5,%xmm5
   0.04%                                                                                                                                                                                                                                                                                         0x00007f9e700e96c7:   vaesenc %xmm2,%xmm0,%xmm0
   0.13%                                                                                                                                                                                                                                                                                         0x00007f9e700e96cc:   vaesenc %xmm3,%xmm0,%xmm0
   2.82%                                                                                                                                                                                                                                                                                         0x00007f9e700e96d1:   vaesenc %xmm4,%xmm0,%xmm0
   5.96%                                                                                                                                                                                                                                                                                         0x00007f9e700e96d6:   vaesenc %xmm5,%xmm0,%xmm0
   6.52%                                                                                                                                                                                                                                                                                         0x00007f9e700e96db:   vmovdqu 0x90(%rdx),%xmm2
                                                                                                                                                                                                                                                                                                 0x00007f9e700e96e3:   vpshufb %xmm1,%xmm2,%xmm2
                                                                                                                                                                                                                                                                                                 0x00007f9e700e96e8:   vmovdqu 0xa0(%rdx),%xmm3
                                                                                                                                                                                                                                                                                                 0x00007f9e700e96f0:   vpshufb %xmm1,%xmm3,%xmm3
   1.75%                                                                                                                                                                                                                                                                                         0x00007f9e700e96f5:   cmp    $0x2c,%eax
          ╭                                                                                                                                                                                                                                                                                      0x00007f9e700e96f8:   je     0x00007f9e700e9747
          │                                                                                                                                                                                                                                                                                      0x00007f9e700e96fa:   vaesenc %xmm2,%xmm0,%xmm0
   4.91%  │                                                                                                                                                                                                                                                                                      0x00007f9e700e96ff:   vaesenc %xmm3,%xmm0,%xmm0
   6.56%  │                                                                                                                                                                                                                                                                                      0x00007f9e700e9704:   vmovdqu 0xb0(%rdx),%xmm2
          │                                                                                                                                                                                                                                                                                      0x00007f9e700e970c:   vpshufb %xmm1,%xmm2,%xmm2
   0.00%  │                                                                                                                                                                                                                                                                                      0x00007f9e700e9711:   vmovdqu 0xc0(%rdx),%xmm3
          │                                                                                                                                                                                                                                                                                      0x00007f9e700e9719:   vpshufb %xmm1,%xmm3,%xmm3
   1.57%  │                                                                                                                                                                                                                                                                                      0x00007f9e700e971e:   cmp    $0x34,%eax
          │╭                                                                                                                                                                                                                                                                                     0x00007f9e700e9721:   je     0x00007f9e700e9747
          ││                                                                                                                                                                                                                                                                                     0x00007f9e700e9723:   vaesenc %xmm2,%xmm0,%xmm0
   4.98%  ││                                                                                                                                                                                                                                                                                     0x00007f9e700e9728:   vaesenc %xmm3,%xmm0,%xmm0
   6.54%  ││                                                                                                                                                                                                                                                                                     0x00007f9e700e972d:   vmovdqu 0xd0(%rdx),%xmm2
          ││                                                                                                                                                                                                                                                                                     0x00007f9e700e9735:   vpshufb %xmm1,%xmm2,%xmm2
          ││                                                                                                                                                                                                                                                                                     0x00007f9e700e973a:   vmovdqu 0xe0(%rdx),%xmm3
          ││                                                                                                                                                                                                                                                                                     0x00007f9e700e9742:   vpshufb %xmm1,%xmm3,%xmm3
   1.63%  ↘↘                                                                                                                                                                                                                                                                                     0x00007f9e700e9747:   vaesenc %xmm2,%xmm0,%xmm0
   4.82%                                                                                                                                                                                                                                                                                         0x00007f9e700e974c:   vaesenclast %xmm3,%xmm0,%xmm0
   6.56%                                                                                                                                                                                                                                                                                         0x00007f9e700e9751:   vmovdqu %xmm0,(%rsi)
   1.63%                                                                                                                                                                                                                                                                                         0x00007f9e700e9755:   xor    %rax,%rax
                                                                                                                                                                                                                                                                                                 0x00007f9e700e9758:   leave  
   1.65%                                                                                                                                                                                                                                                                                         0x00007f9e700e9759:   ret    
                                                                                                                                                                                                                                                                                               --------------------------------------------------------------------------------
                                                                                                                                                                                                                                                                                               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                                               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                                                                                                                                                               StubRoutines::aescrypt_decryptBlock [0x00007f9e700e9760, 0x00007f9e700e987a] (282 bytes)
                                                                                                                                                                                                                                                                                               --------------------------------------------------------------------------------
....................................................................................................
  71.27%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, javax.crypto.Cipher::doFinal, version 2, compile id 686 

                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             0x00007f9e706457bf:   lea    (%r12,%r10,8),%rdi           ;*getfield cipher {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@154 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             0x00007f9e706457c3:   mov    %r8d,%ebp
             0x00007f9e706457c6:   xor    %r14d,%r14d
   0.00%     0x00007f9e706457c9:   xor    %r13d,%r13d
          ╭  0x00007f9e706457cc:   jmp    0x00007f9e706457ed
          │  0x00007f9e706457ce:   xchg   %ax,%ax                      ;   {no_reloc}
   1.71%  │  0x00007f9e706457d0:   mov    0x10(%rsp),%r10d
          │  0x00007f9e706457d5:   mov    0x10(%r12,%r10,8),%ecx       ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@13 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  0x00007f9e706457da:   mov    (%rsp),%r9d
          │  0x00007f9e706457de:   mov    0x4(%rsp),%r11d
   1.70%  │  0x00007f9e706457e3:   mov    0x20(%rsp),%r8d
   0.00%  │  0x00007f9e706457e8:   mov    0x18(%rsp),%rdi              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@12 (line 103)
          │                                                            ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
          │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │                                                            ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
          │                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%  ↘  0x00007f9e706457ed:   mov    0x18(%r12,%rcx,8),%edx       ; implicit exception: dispatches to 0x00007f9e70646218
                                                                       ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%     0x00007f9e706457f2:   mov    %rdi,0x18(%rsp)
   1.68%     0x00007f9e706457f7:   mov    %r10d,0x10(%rsp)
             0x00007f9e706457fc:   mov    %r8d,0x20(%rsp)
             0x00007f9e70645801:   mov    %r11d,0x4(%rsp)
             0x00007f9e70645806:   mov    %r9d,(%rsp)                  ;*synchronization entry
                                                                       ; - com.sun.crypto.provider.AESCrypt::encryptBlock@-1 (line 1081)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.70%     0x00007f9e7064580a:   mov    0x30(%rsp),%r10
             0x00007f9e7064580f:   lea    0x10(%r10,%r13,1),%rsi
             0x00007f9e70645814:   lea    0x10(%rbx,%r14,1),%rdi
             0x00007f9e70645819:   mov    %rdx,%r10
   1.70%     0x00007f9e7064581c:   shl    $0x3,%r10
             0x00007f9e70645820:   lea    0x10(%r12,%rdx,8),%rdx
             0x00007f9e70645825:   vzeroupper 
   1.66%     0x00007f9e70645828:   movabs $0x7f9e700e9640,%r10
             0x00007f9e70645832:   call   *%r10
             0x00007f9e70645835:   nopl   0x0(%rax,%rax,1)             ;*invokevirtual implEncryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.AESCrypt::encryptBlock@6 (line 1081)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@22 (line 103)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                       ;   {other}
             0x00007f9e7064583d:   mov    0x10(%rsp),%r11d
   1.60%     0x00007f9e70645842:   mov    0xc(%r12,%r11,8),%r10d       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Arrays::fill@24 (line 3310)
                                                                       ; - com.sun.crypto.provider.PKCS5Padding::padWithLen@43 (line 73)
                                                                       ; - com.sun.crypto.provider.CipherCore::prepareInputBuffer@305 (line 924)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@17 (line 729)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%     0x00007f9e70645847:   mov    0x458(%r15),%r11
             0x00007f9e7064584e:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@47 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
             0x00007f9e70645851:   add    %r10d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@38 (line 105)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   1.61%     0x00007f9e70645854:   add    %r10d,%r14d                  ; ImmutableOopMap {rbx=Oop [0]=NarrowOop [8]=Oop [16]=NarrowOop [24]=Oop [40]=Oop [48]=Oop }
                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::encrypt@30 (line 131)
                                                                       ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                       ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                       ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                       ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                                                                       ; - com.sun.crypto.provider.AESCipher::engineDoFinal@7 (line 446)
                                                                       ; - javax.crypto.Cipher::doFinal@31 (line 2244)
   0.00%     0x00007f9e70645857:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.ElectronicCodeBook::implECBEncrypt@50 (line 102)
....................................................................................................
  13.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.27%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  13.36%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   4.40%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   3.96%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   2.30%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.36%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   0.42%              kernel  [unknown] 
   0.21%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.17%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   0.10%              kernel  [unknown] 
   0.08%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   0.07%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 732 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 696 
   1.78%  <...other 429 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.27%        runtime stub  StubRoutines::aescrypt_encryptBlock 
  23.71%         c2, level 4  javax.crypto.Cipher::doFinal, version 2, compile id 686 
   2.32%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.72%              kernel  [unknown] 
   0.20%        libc-2.31.so  __memset_avx2_erms 
   0.09%                      <unknown> 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.AesEcbCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 5, compile id 732 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.AesEcbCryptoBenchmark::encrypt, version 2, compile id 696 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.01%           libjvm.so  G1MonotonicArena::num_segments 
   0.01%           libjvm.so  G1CardSet::clear 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.41%  <...other 138 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.60%        runtime stub
  23.81%         c2, level 4
   1.72%              kernel
   0.42%           libjvm.so
   0.29%        libc-2.31.so
   0.09%                    
   0.03%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-1931073.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:21:58

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
AesEcbCryptoBenchmark.decrypt           16384        128     AES/ECB/NoPadding  avgt    5  22.949 ± 0.058  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        128     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        128  AES/ECB/PKCS5Padding  avgt    5  24.498 ± 0.044  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        128  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        192     AES/ECB/NoPadding  avgt    5  22.151 ± 0.068  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        192     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        192  AES/ECB/PKCS5Padding  avgt    5  23.836 ± 0.045  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        192  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        256     AES/ECB/NoPadding  avgt    5  22.936 ± 0.074  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        256     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.decrypt           16384        256  AES/ECB/PKCS5Padding  avgt    5  24.918 ± 0.043  us/op
AesEcbCryptoBenchmark.decrypt:asm       16384        256  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        128     AES/ECB/NoPadding  avgt    5  21.707 ± 0.021  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        128     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        128  AES/ECB/PKCS5Padding  avgt    5  23.864 ± 0.032  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        128  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        192     AES/ECB/NoPadding  avgt    5  23.636 ± 0.024  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        192     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        192  AES/ECB/PKCS5Padding  avgt    5  24.673 ± 0.047  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        192  AES/ECB/PKCS5Padding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        256     AES/ECB/NoPadding  avgt    5  22.350 ± 0.073  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        256     AES/ECB/NoPadding  avgt          NaN            ---
AesEcbCryptoBenchmark.encrypt           16384        256  AES/ECB/PKCS5Padding  avgt    5  23.710 ± 0.053  us/op
AesEcbCryptoBenchmark.encrypt:asm       16384        256  AES/ECB/PKCS5Padding  avgt          NaN            ---
