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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 32, transformation = Blowfish/CBC/NoPadding)

# Run progress: 0.00% complete, ETA 00:16:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 347.051 us/op
# Warmup Iteration   2: 334.538 us/op
# Warmup Iteration   3: 334.545 us/op
# Warmup Iteration   4: 334.655 us/op
# Warmup Iteration   5: 334.662 us/op
Iteration   1: 334.548 us/op
Iteration   2: 334.987 us/op
Iteration   3: 335.062 us/op
Iteration   4: 334.863 us/op
Iteration   5: 334.692 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  334.830 ±(99.9%) 0.813 us/op [Average]
  (min, avg, max) = (334.548, 334.830, 335.062), stdev = 0.211
  CI (99.9%): [334.017, 335.644] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 149024 total address lines.
Perf output processed (skipped 56.861 seconds):
 Column 1: cycles (50705 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 636 

 <region is too big to display, has 1053 lines, but threshold is 1000>
....................................................................................................
  74.62%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 664 

                       0x00007f49ec650d09:   mov    %r14,(%rsp)
                       0x00007f49ec650d0d:   mov    %r13,0x18(%rsp)
                       0x00007f49ec650d12:   mov    %rsi,0x20(%rsp)
                       0x00007f49ec650d17:   mov    %r8,0x38(%rsp)
                       0x00007f49ec650d1c:   mov    %ebx,0x28(%rsp)
                       0x00007f49ec650d20:   mov    %edx,0x2c(%rsp)
          ╭            0x00007f49ec650d24:   jmp    0x00007f49ec650ef9
          │ ↗          0x00007f49ec650d29:   vmovd  %xmm1,%edi
          │ │          0x00007f49ec650d2d:   vmovd  %xmm0,%edx
          │ │          0x00007f49ec650d31:   vmovq  %xmm2,%rax
   0.13%  │ │      ↗   0x00007f49ec650d36:   mov    %r14d,%r11d
   0.01%  │ │      │   0x00007f49ec650d39:   sub    %ebx,%r11d
   0.06%  │ │      │   0x00007f49ec650d3c:   xor    %ebp,%ebp
          │ │      │   0x00007f49ec650d3e:   cmp    %ebx,%r14d
   0.15%  │ │      │   0x00007f49ec650d41:   cmovl  %ebp,%r11d
   0.01%  │ │      │   0x00007f49ec650d45:   cmp    $0xfa0,%r11d
   0.04%  │ │      │   0x00007f49ec650d4c:   mov    $0xfa0,%ebp
   0.01%  │ │      │   0x00007f49ec650d51:   cmova  %ebp,%r11d
   0.18%  │ │      │   0x00007f49ec650d55:   add    %ebx,%r11d
   0.05%  │ │      │   0x00007f49ec650d58:   vmovd  %edi,%xmm1
   0.01%  │ │      │   0x00007f49ec650d5c:   vmovd  %edx,%xmm0
   0.15%  │ │      │   0x00007f49ec650d60:   vmovq  %rax,%xmm2
   0.01%  │ │      │   0x00007f49ec650d65:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.05%  │↗│      │   0x00007f49ec650d70:   movslq %ebx,%rax                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │││      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │││      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%  │││      │   0x00007f49ec650d73:   movsbl 0x10(%rsi,%rax,1),%r10d
   0.17%  │││      │   0x00007f49ec650d79:   movsbl 0x10(%r8,%rax,1),%ebp
   0.01%  │││      │   0x00007f49ec650d7f:   lea    (%rax,%r13,1),%rdi
   0.04%  │││      │   0x00007f49ec650d83:   xor    %ebp,%r10d
   0.00%  │││      │   0x00007f49ec650d86:   mov    0x38(%rsp),%rcx
   0.18%  │││      │   0x00007f49ec650d8b:   mov    %r10b,0x10(%rcx,%rdi,1)
   0.02%  │││      │   0x00007f49ec650d90:   movsbl 0x11(%rsi,%rax,1),%r10d
   0.04%  │││      │   0x00007f49ec650d96:   movsbl 0x11(%r8,%rax,1),%ebp
   0.01%  │││      │   0x00007f49ec650d9c:   lea    (%r9,%rax,1),%rcx            ;   {no_reloc}
   0.15%  │││      │   0x00007f49ec650da0:   xor    %ebp,%r10d
   0.02%  │││      │   0x00007f49ec650da3:   mov    0x38(%rsp),%rdx
   0.04%  │││      │   0x00007f49ec650da8:   mov    %r10b,0x11(%rdx,%rdi,1)
   0.01%  │││      │   0x00007f49ec650dad:   movsbl 0x12(%rsi,%rax,1),%r10d
   0.15%  │││      │   0x00007f49ec650db3:   movsbl 0x12(%r8,%rax,1),%ebp
   0.00%  │││      │   0x00007f49ec650db9:   xor    %ebp,%r10d
   0.06%  │││      │   0x00007f49ec650dbc:   mov    %r10b,0x10(%rdx,%rcx,1)
   0.01%  │││      │   0x00007f49ec650dc1:   movsbl 0x13(%rsi,%rax,1),%r10d
   0.15%  │││      │   0x00007f49ec650dc7:   movsbl 0x13(%r8,%rax,1),%ebp
   0.00%  │││      │   0x00007f49ec650dcd:   xor    %ebp,%r10d
   0.05%  │││      │   0x00007f49ec650dd0:   mov    %r10b,0x11(%rdx,%rcx,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │││      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │││      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.00%  │││      │   0x00007f49ec650dd5:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │││      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │││      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.17%  │││      │   0x00007f49ec650dd8:   cmp    %r11d,%ebx
   0.01%  │││      │   0x00007f49ec650ddb:   nopl   0x0(%rax,%rax,1)
   0.06%  │╰│      │   0x00007f49ec650de0:   jl     0x00007f49ec650d70           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.00%  │ │      │   0x00007f49ec650de2:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop rsi=Oop xmm0=NarrowOop [16]=Oop [24]=Oop [32]=Oop [56]=Oop [64]=NarrowOop [72]=NarrowOop }
          │ │      │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │      │                                                             ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.19%  │ │      │   0x00007f49ec650de9:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │ │      │                                                             ;   {poll}
   0.00%  │ │      │   0x00007f49ec650dec:   cmp    %r14d,%ebx
          │ ╰      │   0x00007f49ec650def:   jl     0x00007f49ec650d29
   0.06%  │        │   0x00007f49ec650df5:   vmovd  %xmm1,%edi
   0.01%  │        │   0x00007f49ec650df9:   vmovd  %xmm0,%edx
   0.20%  │        │   0x00007f49ec650dfd:   vmovq  %xmm2,%rax
   0.01%  │        │   0x00007f49ec650e02:   cmp    %edi,%ebx
          │  ╭     │   0x00007f49ec650e04:   jge    0x00007f49ec650e44
   0.05%  │  │     │   0x00007f49ec650e06:   xchg   %ax,%ax                      ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  │     │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  │     │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.17%  │  │↗    │   0x00007f49ec650e08:   mov    %ebx,%r10d
   0.20%  │  ││    │   0x00007f49ec650e0b:   add    0x28(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.06%  │  ││    │   0x00007f49ec650e10:   movslq %ebx,%r9                     ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.21%  │  ││    │   0x00007f49ec650e13:   movsbl 0x10(%rsi,%r9,1),%r11d
   0.21%  │  ││    │   0x00007f49ec650e19:   movsbl 0x10(%r8,%r9,1),%ebp
   0.20%  │  ││    │   0x00007f49ec650e1f:   xor    %ebp,%r11d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.06%  │  ││    │   0x00007f49ec650e22:   cmp    0x8(%rsp),%r10d
          │  ││    │   0x00007f49ec650e27:   jae    0x00007f49ec651166
   0.20%  │  ││    │   0x00007f49ec650e2d:   add    %r13,%r9
   0.21%  │  ││    │   0x00007f49ec650e30:   mov    0x38(%rsp),%r10
   0.21%  │  ││    │   0x00007f49ec650e35:   mov    %r11b,0x10(%r10,%r9,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.08%  │  ││    │   0x00007f49ec650e3a:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.22%  │  ││    │   0x00007f49ec650e3c:   nopl   0x0(%rax)
   0.16%  │  ││    │   0x00007f49ec650e40:   cmp    %edi,%ebx
          │  │╰    │   0x00007f49ec650e42:   jl     0x00007f49ec650e08           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  │     │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  │     │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.07%  │  ↘     │↗  0x00007f49ec650e44:   mov    0x2c(%rsp),%r10d
   0.02%  │        ││  0x00007f49ec650e49:   test   %r10d,%r10d
          │        ││  0x00007f49ec650e4c:   jl     0x00007f49ec6511b8
   0.17%  │        ││  0x00007f49ec650e52:   mov    0x2c(%rsp),%r11d
   0.02%  │        ││  0x00007f49ec650e57:   add    %edi,%r11d
   0.05%  │        ││  0x00007f49ec650e5a:   mov    0x30(%rsp),%r10d
   0.01%  │        ││  0x00007f49ec650e5f:   nop
   0.19%  │        ││  0x00007f49ec650e60:   cmp    %r11d,%r10d
          │        ││  0x00007f49ec650e63:   jb     0x00007f49ec6511b8
   0.01%  │        ││  0x00007f49ec650e69:   mov    0xc(%r12,%rdx,8),%r10d
   0.05%  │        ││  0x00007f49ec650e6e:   cmp    %edi,%r10d
          │        ││  0x00007f49ec650e71:   jb     0x00007f49ec6511b8
   0.01%  │        ││  0x00007f49ec650e77:   test   %edi,%edi
          │        ││  0x00007f49ec650e79:   jl     0x00007f49ec6511b8           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.16%  │        ││  0x00007f49ec650e7f:   nop
   0.00%  │        ││  0x00007f49ec650e80:   test   %edi,%edi
          │    ╭   ││  0x00007f49ec650e82:   je     0x00007f49ec650eb7
   0.06%  │    │   ││  0x00007f49ec650e84:   mov    0x20(%rsp),%r10
   0.02%  │    │   ││  0x00007f49ec650e89:   mov    0x2c(%rsp),%r8d
   0.18%  │    │   ││  0x00007f49ec650e8e:   lea    0x10(%r10,%r8,1),%rdi
   0.01%  │    │   ││  0x00007f49ec650e93:   lea    (%r12,%rdx,8),%r10           ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │    │   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │    │   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.03%  │    │   ││  0x00007f49ec650e97:   lea    0x10(%r12,%rdx,8),%rsi
   0.01%  │    │   ││  0x00007f49ec650e9c:   mov    %rax,%rdx
   0.17%  │    │   ││  0x00007f49ec650e9f:   vzeroupper 
   0.23%  │    │   ││  0x00007f49ec650ea2:   movabs $0x7f49ec0a9080,%r10
   0.01%  │    │   ││  0x00007f49ec650eac:   call   *%r10
   0.03%  │    │   ││  0x00007f49ec650eaf:   nopl   0x0(%rax,%rax,1)             ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │    │   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │    │   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │    │   ││                                                            ;   {other}
          │    ↘   ││  0x00007f49ec650eb7:   mov    0x10(%rsp),%r10
   1.18%  │        ││  0x00007f49ec650ebc:   mov    0xc(%r10),%r11d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   1.05%  │        ││  0x00007f49ec650ec0:   mov    0x458(%r15),%r10
          │        ││  0x00007f49ec650ec7:   mov    0x2c(%rsp),%r8d
          │        ││  0x00007f49ec650ecc:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@86 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.29%  │        ││  0x00007f49ec650ecf:   mov    0x28(%rsp),%r9d
          │        ││  0x00007f49ec650ed4:   add    %r11d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@94 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.15%  │        ││  0x00007f49ec650ed7:   mov    %r9d,0x28(%rsp)              ; ImmutableOopMap {[16]=Oop [24]=Oop [32]=Oop [56]=Oop [64]=NarrowOop [72]=NarrowOop }
          │        ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │        ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.45%  │        ││  0x00007f49ec650edc:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │        ││                                                            ;   {poll}
          │        ││  0x00007f49ec650edf:   nop
          │        ││  0x00007f49ec650ee0:   cmp    0x30(%rsp),%r8d
          │        ││  0x00007f49ec650ee5:   jge    0x00007f49ec651080           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │        ││  0x00007f49ec650eeb:   lea    0x2(%r9),%ebp
   0.23%  │        ││  0x00007f49ec650eef:   mov    %r8d,0x2c(%rsp)
          │        ││  0x00007f49ec650ef4:   mov    0x10(%rsp),%rcx              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@11 (line 214)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          ↘        ││  0x00007f49ec650ef9:   mov    %rcx,0x10(%rsp)
   0.02%           ││  0x00007f49ec650efe:   mov    0x1c(%rcx),%r8d              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.29%           ││  0x00007f49ec650f02:   mov    0x10(%rcx),%r10d             ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││  0x00007f49ec650f06:   test   %r10d,%r10d
                   ││  0x00007f49ec650f09:   je     0x00007f49ec65119c           ;*synchronization entry
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@-1 (line 162)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││  0x00007f49ec650f0f:   lea    (%r12,%r10,8),%rsi           ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││  0x00007f49ec650f13:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.22%           ││  0x00007f49ec650f17:   mov    0x20(%rsp),%rdx
                   ││  0x00007f49ec650f1c:   mov    0x2c(%rsp),%ecx
   0.34%           ││  0x00007f49ec650f20:   xor    %r9d,%r9d
                   ││  0x00007f49ec650f23:   nop
                   ││  0x00007f49ec650f24:   vzeroupper 
   0.26%           ││  0x00007f49ec650f27:   call   0x00007f49ec640940           ; ImmutableOopMap {[16]=Oop [24]=Oop [32]=Oop [56]=Oop [64]=NarrowOop [72]=NarrowOop }
                   ││                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││                                                            ;   {optimized virtual_call}
   0.15%           ││  0x00007f49ec650f2c:   nopl   0x200071c(%rax,%rax,1)       ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││                                                            ;   {other}
   0.02%           ││  0x00007f49ec650f34:   mov    0x10(%rsp),%r10
   0.06%           ││  0x00007f49ec650f39:   mov    0xc(%r10),%edi               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.14%           ││  0x00007f49ec650f3d:   mov    0x18(%r10),%edx              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%           ││  0x00007f49ec650f41:   movslq %edi,%rax
   0.06%           ││  0x00007f49ec650f44:   test   %edi,%edi
                ╭  ││  0x00007f49ec650f46:   jle    0x00007f49ec651059           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │  ││  0x00007f49ec650f4c:   mov    0x1c(%r10),%r10d             ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@45 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.18%        │  ││  0x00007f49ec650f50:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f49ec65120c
                │  ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │  ││  0x00007f49ec650f55:   test   %r11d,%r11d
                │  ││  0x00007f49ec650f58:   jbe    0x00007f49ec65120c
   0.05%        │  ││  0x00007f49ec650f5e:   movslq %r11d,%r8
   0.01%        │  ││  0x00007f49ec650f61:   mov    %rax,%r11
   0.19%        │  ││  0x00007f49ec650f64:   dec    %r11
   0.01%        │  ││  0x00007f49ec650f67:   cmp    %r8,%r11
                │  ││  0x00007f49ec650f6a:   jae    0x00007f49ec65120c
   0.05%        │  ││  0x00007f49ec650f70:   mov    0xc(%r12,%rdx,8),%r8d        ; implicit exception: dispatches to 0x00007f49ec65120c
                │  ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.00%        │  ││  0x00007f49ec650f75:   test   %r8d,%r8d
                │  ││  0x00007f49ec650f78:   jbe    0x00007f49ec65120c
   0.16%        │  ││  0x00007f49ec650f7e:   movslq %r8d,%r8
   0.02%        │  ││  0x00007f49ec650f81:   cmp    %r8,%r11
                │  ││  0x00007f49ec650f84:   jae    0x00007f49ec65120c
   0.06%        │  ││  0x00007f49ec650f8a:   lea    (%r12,%rdx,8),%r8
   0.01%        │  ││  0x00007f49ec650f8e:   movslq 0x28(%rsp),%r13
   0.18%        │  ││  0x00007f49ec650f93:   lea    (%r12,%r10,8),%rsi
   0.00%        │  ││  0x00007f49ec650f97:   mov    %r13,%r11
   0.05%        │  ││  0x00007f49ec650f9a:   neg    %r11
   0.01%        │  ││  0x00007f49ec650f9d:   cmp    $0x7fffffff,%r11
   0.16%        │  ││  0x00007f49ec650fa4:   mov    $0x7fffffff,%r10d
   0.01%        │  ││  0x00007f49ec650faa:   cmovg  %r10,%r11
   0.05%        │  ││  0x00007f49ec650fae:   cmp    $0x1,%r11
   0.01%        │  ││  0x00007f49ec650fb2:   mov    $0x1,%r10d
   0.16%        │  ││  0x00007f49ec650fb8:   cmovl  %r10,%r11
   0.02%        │  ││  0x00007f49ec650fbc:   mov    %r11d,%ecx
   0.06%        │  ││  0x00007f49ec650fbf:   cmp    %edi,%ecx
   0.01%        │  ││  0x00007f49ec650fc1:   cmovg  %edi,%ecx
   0.17%        │  ││  0x00007f49ec650fc4:   xor    %ebx,%ebx                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │ ↗││  0x00007f49ec650fc6:   mov    %ebx,%r10d
   0.05%        │ │││  0x00007f49ec650fc9:   add    0x28(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │ │││  0x00007f49ec650fce:   movslq %ebx,%r14                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.18%        │ │││  0x00007f49ec650fd1:   movsbl 0x10(%rsi,%r14,1),%r11d
   0.01%        │ │││  0x00007f49ec650fd7:   movsbl 0x10(%r8,%r14,1),%r9d        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.07%        │ │││  0x00007f49ec650fdd:   xor    %r9d,%r11d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │ │││  0x00007f49ec650fe0:   cmp    0x8(%rsp),%r10d
                │ │││  0x00007f49ec650fe5:   jae    0x00007f49ec651166
   0.15%        │ │││  0x00007f49ec650feb:   add    %r13,%r14
   0.00%        │ │││  0x00007f49ec650fee:   mov    0x38(%rsp),%r10
   0.06%        │ │││  0x00007f49ec650ff3:   mov    %r11b,0x10(%r10,%r14,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │ │││  0x00007f49ec650ff8:   mov    %ebx,%r10d
   0.15%        │ │││  0x00007f49ec650ffb:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │ │││  0x00007f49ec650ffe:   xchg   %ax,%ax
   0.04%        │ │││  0x00007f49ec651000:   cmp    %ecx,%r10d
                │╭│││  0x00007f49ec651003:   jge    0x00007f49ec65100a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                │││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │││││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                │││││  0x00007f49ec651005:   mov    %r10d,%ebx
                ││╰││  0x00007f49ec651008:   jmp    0x00007f49ec650fc6
   0.01%        │↘ ││  0x00007f49ec65100a:   mov    (%rsp),%r9
   0.17%        │  ││  0x00007f49ec65100e:   sub    %r13,%r9
   0.02%        │  ││  0x00007f49ec651011:   cmp    $0xffffffff80000000,%r9
   0.06%        │  ││  0x00007f49ec651018:   mov    $0xffffffff80000000,%r11
   0.01%        │  ││  0x00007f49ec65101f:   cmovl  %r11,%r9
   0.16%        │  ││  0x00007f49ec651023:   cmp    %rax,%r9
   0.01%        │  ││  0x00007f49ec651026:   mov    %rax,%r11
   0.06%        │  ││  0x00007f49ec651029:   cmovl  %r9,%r11                     ;   {no_reloc}
   0.00%        │  ││  0x00007f49ec65102d:   add    $0xfffffffffffffffd,%r11
   0.16%        │  ││  0x00007f49ec651031:   cmp    $0xffffffff80000000,%r11
   0.01%        │  ││  0x00007f49ec651038:   mov    $0xffffffff80000000,%r9
   0.04%        │  ││  0x00007f49ec65103f:   cmovl  %r9,%r11
   0.00%        │  ││  0x00007f49ec651043:   mov    %r11d,%r14d
   0.15%        │  ││  0x00007f49ec651046:   cmp    %r14d,%r10d
                │  ││  0x00007f49ec651049:   jge    0x00007f49ec651254
   0.01%        │  ││  0x00007f49ec65104f:   movslq %ebp,%r9
   0.04%        │  ││  0x00007f49ec651052:   inc    %ebx
   0.01%        │  ╰│  0x00007f49ec651054:   jmp    0x00007f49ec650d36
                ↘   │  0x00007f49ec651059:   test   %edx,%edx
                    │  0x00007f49ec65105b:   nopl   0x0(%rax,%rax,1)
                    ╰  0x00007f49ec651060:   jne    0x00007f49ec650e44
                       0x00007f49ec651066:   mov    $0xfffffff6,%esi
                       0x00007f49ec65106b:   mov    %edi,0xc(%rsp)
                       0x00007f49ec65106f:   nop
                       0x00007f49ec651070:   vzeroupper 
                       0x00007f49ec651073:   call   0x00007f49ec0c9f00           ; ImmutableOopMap {[56]=Oop [64]=NarrowOop [72]=NarrowOop }
                                                                                 ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
....................................................................................................
  14.66%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.62%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 636 
  14.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 664 
   5.41%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 636 
   1.65%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.90%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.74%              kernel  [unknown] 
   0.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 664 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.19%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.03%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 636 
  15.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 664 
   2.55%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.10%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 710 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  __GI___libc_write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.10%         c2, level 4
   2.55%        runtime stub
   2.10%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 64, transformation = Blowfish/CBC/NoPadding)

# Run progress: 10.00% complete, ETA 00:16:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 346.988 us/op
# Warmup Iteration   2: 334.319 us/op
# Warmup Iteration   3: 333.362 us/op
# Warmup Iteration   4: 333.274 us/op
# Warmup Iteration   5: 333.116 us/op
Iteration   1: 333.183 us/op
Iteration   2: 333.264 us/op
Iteration   3: 333.106 us/op
Iteration   4: 333.161 us/op
Iteration   5: 333.517 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  333.246 ±(99.9%) 0.622 us/op [Average]
  (min, avg, max) = (333.106, 333.246, 333.517), stdev = 0.162
  CI (99.9%): [332.624, 333.868] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 153755 total address lines.
Perf output processed (skipped 56.981 seconds):
 Column 1: cycles (50790 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 641 

 <region is too big to display, has 1053 lines, but threshold is 1000>
....................................................................................................
  74.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 670 

                                                                                 ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                       0x00007fdac064dff1:   mov    $0x2,%ebp
                       0x00007fdac064dff6:   xor    %ebx,%ebx
                       0x00007fdac064dff8:   xor    %edx,%edx
                       0x00007fdac064dffa:   mov    %r11d,0x30(%rsp)
                       0x00007fdac064dfff:   mov    %r10d,0x40(%rsp)
                       0x00007fdac064e004:   mov    %r9d,0x8(%rsp)
                       0x00007fdac064e009:   mov    %r14,(%rsp)
                       0x00007fdac064e00d:   mov    %r13,0x18(%rsp)
   0.00%               0x00007fdac064e012:   mov    %rsi,0x20(%rsp)
   0.00%               0x00007fdac064e017:   mov    %r8,0x38(%rsp)
                       0x00007fdac064e01c:   mov    %ebx,0x28(%rsp)
                       0x00007fdac064e020:   mov    %edx,0x2c(%rsp)
          ╭            0x00007fdac064e024:   jmp    0x00007fdac064e1f9
          │ ↗          0x00007fdac064e029:   vmovd  %xmm1,%edi
          │ │          0x00007fdac064e02d:   vmovd  %xmm0,%edx
          │ │          0x00007fdac064e031:   vmovq  %xmm2,%rax
   0.15%  │ │      ↗   0x00007fdac064e036:   mov    %r14d,%r11d
   0.02%  │ │      │   0x00007fdac064e039:   sub    %ebx,%r11d
   0.03%  │ │      │   0x00007fdac064e03c:   xor    %ebp,%ebp
   0.01%  │ │      │   0x00007fdac064e03e:   cmp    %ebx,%r14d
   0.20%  │ │      │   0x00007fdac064e041:   cmovl  %ebp,%r11d
   0.02%  │ │      │   0x00007fdac064e045:   cmp    $0xfa0,%r11d
   0.06%  │ │      │   0x00007fdac064e04c:   mov    $0xfa0,%ebp
   0.00%  │ │      │   0x00007fdac064e051:   cmova  %ebp,%r11d
   0.18%  │ │      │   0x00007fdac064e055:   add    %ebx,%r11d
   0.03%  │ │      │   0x00007fdac064e058:   vmovd  %edi,%xmm1
   0.00%  │ │      │   0x00007fdac064e05c:   vmovd  %edx,%xmm0
   0.15%  │ │      │   0x00007fdac064e060:   vmovq  %rax,%xmm2
   0.01%  │ │      │   0x00007fdac064e065:   data16 data16 nopw 0x0(%rax,%rax,1) ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.03%  │↗│      │   0x00007fdac064e070:   movslq %ebx,%rax                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │││      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │││      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%  │││      │   0x00007fdac064e073:   movsbl 0x10(%rsi,%rax,1),%r10d
   0.20%  │││      │   0x00007fdac064e079:   movsbl 0x10(%r8,%rax,1),%ebp
   0.02%  │││      │   0x00007fdac064e07f:   lea    (%rax,%r13,1),%rdi
   0.04%  │││      │   0x00007fdac064e083:   xor    %ebp,%r10d
   0.01%  │││      │   0x00007fdac064e086:   mov    0x38(%rsp),%rcx
   0.18%  │││      │   0x00007fdac064e08b:   mov    %r10b,0x10(%rcx,%rdi,1)
   0.02%  │││      │   0x00007fdac064e090:   movsbl 0x11(%rsi,%rax,1),%r10d
   0.04%  │││      │   0x00007fdac064e096:   movsbl 0x11(%r8,%rax,1),%ebp
   0.01%  │││      │   0x00007fdac064e09c:   lea    (%r9,%rax,1),%rcx            ;   {no_reloc}
   0.17%  │││      │   0x00007fdac064e0a0:   xor    %ebp,%r10d
   0.01%  │││      │   0x00007fdac064e0a3:   mov    0x38(%rsp),%rdx
   0.02%  │││      │   0x00007fdac064e0a8:   mov    %r10b,0x11(%rdx,%rdi,1)
   0.01%  │││      │   0x00007fdac064e0ad:   movsbl 0x12(%rsi,%rax,1),%r10d
   0.18%  │││      │   0x00007fdac064e0b3:   movsbl 0x12(%r8,%rax,1),%ebp
   0.03%  │││      │   0x00007fdac064e0b9:   xor    %ebp,%r10d
   0.03%  │││      │   0x00007fdac064e0bc:   mov    %r10b,0x10(%rdx,%rcx,1)
   0.01%  │││      │   0x00007fdac064e0c1:   movsbl 0x13(%rsi,%rax,1),%r10d
   0.18%  │││      │   0x00007fdac064e0c7:   movsbl 0x13(%r8,%rax,1),%ebp
   0.02%  │││      │   0x00007fdac064e0cd:   xor    %ebp,%r10d
   0.04%  │││      │   0x00007fdac064e0d0:   mov    %r10b,0x11(%rdx,%rcx,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │││      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │││      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%  │││      │   0x00007fdac064e0d5:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │││      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │││      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │││      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.19%  │││      │   0x00007fdac064e0d8:   cmp    %r11d,%ebx
   0.02%  │││      │   0x00007fdac064e0db:   nopl   0x0(%rax,%rax,1)
   0.03%  │╰│      │   0x00007fdac064e0e0:   jl     0x00007fdac064e070           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%  │ │      │   0x00007fdac064e0e2:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop rsi=Oop xmm0=NarrowOop [16]=Oop [24]=Oop [32]=Oop [56]=Oop [64]=NarrowOop [72]=NarrowOop }
          │ │      │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │      │                                                             ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.17%  │ │      │   0x00007fdac064e0e9:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │      │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │      │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │ │      │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │ │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │ │      │                                                             ;   {poll}
   0.02%  │ │      │   0x00007fdac064e0ec:   cmp    %r14d,%ebx
          │ ╰      │   0x00007fdac064e0ef:   jl     0x00007fdac064e029
   0.02%  │        │   0x00007fdac064e0f5:   vmovd  %xmm1,%edi
   0.01%  │        │   0x00007fdac064e0f9:   vmovd  %xmm0,%edx
   0.18%  │        │   0x00007fdac064e0fd:   vmovq  %xmm2,%rax
   0.02%  │        │   0x00007fdac064e102:   cmp    %edi,%ebx
          │  ╭     │   0x00007fdac064e104:   jge    0x00007fdac064e144
   0.05%  │  │     │   0x00007fdac064e106:   xchg   %ax,%ax                      ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  │     │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  │     │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.20%  │  │↗    │   0x00007fdac064e108:   mov    %ebx,%r10d
   0.20%  │  ││    │   0x00007fdac064e10b:   add    0x28(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.07%  │  ││    │   0x00007fdac064e110:   movslq %ebx,%r9                     ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.19%  │  ││    │   0x00007fdac064e113:   movsbl 0x10(%rsi,%r9,1),%r11d
   0.16%  │  ││    │   0x00007fdac064e119:   movsbl 0x10(%r8,%r9,1),%ebp
   0.22%  │  ││    │   0x00007fdac064e11f:   xor    %ebp,%r11d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.06%  │  ││    │   0x00007fdac064e122:   cmp    0x8(%rsp),%r10d
          │  ││    │   0x00007fdac064e127:   jae    0x00007fdac064e466
   0.21%  │  ││    │   0x00007fdac064e12d:   add    %r13,%r9
   0.18%  │  ││    │   0x00007fdac064e130:   mov    0x38(%rsp),%r10
   0.21%  │  ││    │   0x00007fdac064e135:   mov    %r11b,0x10(%r10,%r9,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.06%  │  ││    │   0x00007fdac064e13a:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  ││    │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  ││    │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  ││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.19%  │  ││    │   0x00007fdac064e13c:   nopl   0x0(%rax)
   0.20%  │  ││    │   0x00007fdac064e140:   cmp    %edi,%ebx
          │  │╰    │   0x00007fdac064e142:   jl     0x00007fdac064e108           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │  │     │                                                             ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │  │     │                                                             ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │  │     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.03%  │  ↘     │↗  0x00007fdac064e144:   mov    0x2c(%rsp),%r10d
   0.01%  │        ││  0x00007fdac064e149:   test   %r10d,%r10d
          │        ││  0x00007fdac064e14c:   jl     0x00007fdac064e4b8
   0.16%  │        ││  0x00007fdac064e152:   mov    0x2c(%rsp),%r11d
   0.02%  │        ││  0x00007fdac064e157:   add    %edi,%r11d
   0.04%  │        ││  0x00007fdac064e15a:   mov    0x30(%rsp),%r10d
   0.01%  │        ││  0x00007fdac064e15f:   nop
   0.17%  │        ││  0x00007fdac064e160:   cmp    %r11d,%r10d
          │        ││  0x00007fdac064e163:   jb     0x00007fdac064e4b8
   0.02%  │        ││  0x00007fdac064e169:   mov    0xc(%r12,%rdx,8),%r10d
   0.04%  │        ││  0x00007fdac064e16e:   cmp    %edi,%r10d
          │        ││  0x00007fdac064e171:   jb     0x00007fdac064e4b8
   0.01%  │        ││  0x00007fdac064e177:   test   %edi,%edi
          │        ││  0x00007fdac064e179:   jl     0x00007fdac064e4b8           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.18%  │        ││  0x00007fdac064e17f:   nop
   0.02%  │        ││  0x00007fdac064e180:   test   %edi,%edi
          │    ╭   ││  0x00007fdac064e182:   je     0x00007fdac064e1b7
   0.02%  │    │   ││  0x00007fdac064e184:   mov    0x20(%rsp),%r10
   0.01%  │    │   ││  0x00007fdac064e189:   mov    0x2c(%rsp),%r8d
   0.17%  │    │   ││  0x00007fdac064e18e:   lea    0x10(%r10,%r8,1),%rdi
   0.03%  │    │   ││  0x00007fdac064e193:   lea    (%r12,%rdx,8),%r10           ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │    │   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │    │   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.05%  │    │   ││  0x00007fdac064e197:   lea    0x10(%r12,%rdx,8),%rsi
   0.01%  │    │   ││  0x00007fdac064e19c:   mov    %rax,%rdx
   0.16%  │    │   ││  0x00007fdac064e19f:   vzeroupper 
   0.21%  │    │   ││  0x00007fdac064e1a2:   movabs $0x7fdac00a9080,%r10
   0.02%  │    │   ││  0x00007fdac064e1ac:   call   *%r10
   0.01%  │    │   ││  0x00007fdac064e1af:   nopl   0x0(%rax,%rax,1)             ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │    │   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │    │   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │    │   ││                                                            ;   {other}
          │    ↘   ││  0x00007fdac064e1b7:   mov    0x10(%rsp),%r10
   0.96%  │        ││  0x00007fdac064e1bc:   mov    0xc(%r10),%r11d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   1.08%  │        ││  0x00007fdac064e1c0:   mov    0x458(%r15),%r10
          │        ││  0x00007fdac064e1c7:   mov    0x2c(%rsp),%r8d
          │        ││  0x00007fdac064e1cc:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@86 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.26%  │        ││  0x00007fdac064e1cf:   mov    0x28(%rsp),%r9d
          │        ││  0x00007fdac064e1d4:   add    %r11d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@94 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.15%  │        ││  0x00007fdac064e1d7:   mov    %r9d,0x28(%rsp)              ; ImmutableOopMap {[16]=Oop [24]=Oop [32]=Oop [56]=Oop [64]=NarrowOop [72]=NarrowOop }
          │        ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │        ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.41%  │        ││  0x00007fdac064e1dc:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │        ││                                                            ;   {poll}
          │        ││  0x00007fdac064e1df:   nop
          │        ││  0x00007fdac064e1e0:   cmp    0x30(%rsp),%r8d
          │        ││  0x00007fdac064e1e5:   jge    0x00007fdac064e380           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          │        ││  0x00007fdac064e1eb:   lea    0x2(%r9),%ebp
   0.23%  │        ││  0x00007fdac064e1ef:   mov    %r8d,0x2c(%rsp)
   0.00%  │        ││  0x00007fdac064e1f4:   mov    0x10(%rsp),%rcx              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@11 (line 214)
          │        ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │        ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │        ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
          │        ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
          │        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
          ↘        ││  0x00007fdac064e1f9:   mov    %rcx,0x10(%rsp)
   0.02%           ││  0x00007fdac064e1fe:   mov    0x1c(%rcx),%r8d              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.32%           ││  0x00007fdac064e202:   mov    0x10(%rcx),%r10d             ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││  0x00007fdac064e206:   test   %r10d,%r10d
                   ││  0x00007fdac064e209:   je     0x00007fdac064e49c           ;*synchronization entry
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@-1 (line 162)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││  0x00007fdac064e20f:   lea    (%r12,%r10,8),%rsi           ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││  0x00007fdac064e213:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.23%           ││  0x00007fdac064e217:   mov    0x20(%rsp),%rdx
                   ││  0x00007fdac064e21c:   mov    0x2c(%rsp),%ecx
   0.34%           ││  0x00007fdac064e220:   xor    %r9d,%r9d
                   ││  0x00007fdac064e223:   nop
                   ││  0x00007fdac064e224:   vzeroupper 
   0.27%           ││  0x00007fdac064e227:   call   0x00007fdac063e9c0           ; ImmutableOopMap {[16]=Oop [24]=Oop [32]=Oop [56]=Oop [64]=NarrowOop [72]=NarrowOop }
                   ││                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││                                                            ;   {optimized virtual_call}
   0.18%           ││  0x00007fdac064e22c:   nopl   0x200071c(%rax,%rax,1)       ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                   ││                                                            ;   {other}
   0.02%           ││  0x00007fdac064e234:   mov    0x10(%rsp),%r10
   0.04%           ││  0x00007fdac064e239:   mov    0xc(%r10),%edi               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.17%           ││  0x00007fdac064e23d:   mov    0x18(%r10),%edx              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
                   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                   ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                   ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.02%           ││  0x00007fdac064e241:   movslq %edi,%rax
   0.03%           ││  0x00007fdac064e244:   test   %edi,%edi
                ╭  ││  0x00007fdac064e246:   jle    0x00007fdac064e359           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │  ││  0x00007fdac064e24c:   mov    0x1c(%r10),%r10d             ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@45 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.20%        │  ││  0x00007fdac064e250:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fdac064e50c
                │  ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.02%        │  ││  0x00007fdac064e255:   test   %r11d,%r11d
                │  ││  0x00007fdac064e258:   jbe    0x00007fdac064e50c
   0.04%        │  ││  0x00007fdac064e25e:   movslq %r11d,%r8
   0.00%        │  ││  0x00007fdac064e261:   mov    %rax,%r11
   0.17%        │  ││  0x00007fdac064e264:   dec    %r11
   0.02%        │  ││  0x00007fdac064e267:   cmp    %r8,%r11
                │  ││  0x00007fdac064e26a:   jae    0x00007fdac064e50c
   0.04%        │  ││  0x00007fdac064e270:   mov    0xc(%r12,%rdx,8),%r8d        ; implicit exception: dispatches to 0x00007fdac064e50c
                │  ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │  ││  0x00007fdac064e275:   test   %r8d,%r8d
                │  ││  0x00007fdac064e278:   jbe    0x00007fdac064e50c
   0.19%        │  ││  0x00007fdac064e27e:   movslq %r8d,%r8
   0.02%        │  ││  0x00007fdac064e281:   cmp    %r8,%r11
                │  ││  0x00007fdac064e284:   jae    0x00007fdac064e50c
   0.04%        │  ││  0x00007fdac064e28a:   lea    (%r12,%rdx,8),%r8
   0.00%        │  ││  0x00007fdac064e28e:   movslq 0x28(%rsp),%r13
   0.15%        │  ││  0x00007fdac064e293:   lea    (%r12,%r10,8),%rsi
   0.02%        │  ││  0x00007fdac064e297:   mov    %r13,%r11
   0.03%        │  ││  0x00007fdac064e29a:   neg    %r11
   0.01%        │  ││  0x00007fdac064e29d:   cmp    $0x7fffffff,%r11
   0.17%        │  ││  0x00007fdac064e2a4:   mov    $0x7fffffff,%r10d
   0.02%        │  ││  0x00007fdac064e2aa:   cmovg  %r10,%r11
   0.03%        │  ││  0x00007fdac064e2ae:   cmp    $0x1,%r11
   0.01%        │  ││  0x00007fdac064e2b2:   mov    $0x1,%r10d
   0.18%        │  ││  0x00007fdac064e2b8:   cmovl  %r10,%r11
   0.01%        │  ││  0x00007fdac064e2bc:   mov    %r11d,%ecx
   0.03%        │  ││  0x00007fdac064e2bf:   cmp    %edi,%ecx
   0.01%        │  ││  0x00007fdac064e2c1:   cmovg  %edi,%ecx
   0.19%        │  ││  0x00007fdac064e2c4:   xor    %ebx,%ebx                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
                │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  ││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │  ││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.02%        │ ↗││  0x00007fdac064e2c6:   mov    %ebx,%r10d
   0.04%        │ │││  0x00007fdac064e2c9:   add    0x28(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │ │││  0x00007fdac064e2ce:   movslq %ebx,%r14                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.19%        │ │││  0x00007fdac064e2d1:   movsbl 0x10(%rsi,%r14,1),%r11d
   0.02%        │ │││  0x00007fdac064e2d7:   movsbl 0x10(%r8,%r14,1),%r9d        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.05%        │ │││  0x00007fdac064e2dd:   xor    %r9d,%r11d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.00%        │ │││  0x00007fdac064e2e0:   cmp    0x8(%rsp),%r10d
                │ │││  0x00007fdac064e2e5:   jae    0x00007fdac064e466
   0.18%        │ │││  0x00007fdac064e2eb:   add    %r13,%r14
   0.03%        │ │││  0x00007fdac064e2ee:   mov    0x38(%rsp),%r10
   0.04%        │ │││  0x00007fdac064e2f3:   mov    %r11b,0x10(%r10,%r14,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.01%        │ │││  0x00007fdac064e2f8:   mov    %ebx,%r10d
   0.17%        │ │││  0x00007fdac064e2fb:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
                │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ │││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │ │││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
   0.02%        │ │││  0x00007fdac064e2fe:   xchg   %ax,%ax
   0.03%        │ │││  0x00007fdac064e300:   cmp    %ecx,%r10d
                │╭│││  0x00007fdac064e303:   jge    0x00007fdac064e30a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                │││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │││││                                                            ; - com.sun.crypto.provider.BlowfishCipher::engineDoFinal@7 (line 321)
                │││││                                                            ; - javax.crypto.Cipher::doFinal@31 (line 2244)
                │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt@8 (line 117)
                │││││  0x00007fdac064e305:   mov    %r10d,%ebx
                ││╰││  0x00007fdac064e308:   jmp    0x00007fdac064e2c6
   0.00%        │↘ ││  0x00007fdac064e30a:   mov    (%rsp),%r9
   0.19%        │  ││  0x00007fdac064e30e:   sub    %r13,%r9
   0.01%        │  ││  0x00007fdac064e311:   cmp    $0xffffffff80000000,%r9
   0.03%        │  ││  0x00007fdac064e318:   mov    $0xffffffff80000000,%r11
   0.01%        │  ││  0x00007fdac064e31f:   cmovl  %r11,%r9
   0.18%        │  ││  0x00007fdac064e323:   cmp    %rax,%r9
   0.02%        │  ││  0x00007fdac064e326:   mov    %rax,%r11
   0.05%        │  ││  0x00007fdac064e329:   cmovl  %r9,%r11                     ;   {no_reloc}
   0.00%        │  ││  0x00007fdac064e32d:   add    $0xfffffffffffffffd,%r11
   0.17%        │  ││  0x00007fdac064e331:   cmp    $0xffffffff80000000,%r11
   0.01%        │  ││  0x00007fdac064e338:   mov    $0xffffffff80000000,%r9
   0.05%        │  ││  0x00007fdac064e33f:   cmovl  %r9,%r11
   0.01%        │  ││  0x00007fdac064e343:   mov    %r11d,%r14d
   0.15%        │  ││  0x00007fdac064e346:   cmp    %r14d,%r10d
                │  ││  0x00007fdac064e349:   jge    0x00007fdac064e554
   0.03%        │  ││  0x00007fdac064e34f:   movslq %ebp,%r9
   0.03%        │  ││  0x00007fdac064e352:   inc    %ebx
   0.01%        │  ╰│  0x00007fdac064e354:   jmp    0x00007fdac064e036
                ↘   │  0x00007fdac064e359:   test   %edx,%edx
                    │  0x00007fdac064e35b:   nopl   0x0(%rax,%rax,1)
                    ╰  0x00007fdac064e360:   jne    0x00007fdac064e144
                       0x00007fdac064e366:   mov    $0xfffffff6,%esi
                       0x00007fdac064e36b:   mov    %edi,0xc(%rsp)
                       0x00007fdac064e36f:   nop
                       0x00007fdac064e370:   vzeroupper 
                       0x00007fdac064e373:   call   0x00007fdac00c9f00           ; ImmutableOopMap {[56]=Oop [64]=NarrowOop [72]=NarrowOop }
                                                                                 ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
....................................................................................................
  14.55%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.86%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 641 
  14.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 670 
   5.32%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 641 
   1.78%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.99%              kernel  [unknown] 
   0.82%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 670 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.78%  <...other 239 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.17%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 641 
  15.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 670 
   2.61%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.93%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 728 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.21%         c2, level 4
   2.61%        runtime stub
   1.93%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = Blowfish/CBC/NoPadding)

# Run progress: 20.00% complete, ETA 00:14:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 340.251 us/op
# Warmup Iteration   2: 326.122 us/op
# Warmup Iteration   3: 326.481 us/op
# Warmup Iteration   4: 326.080 us/op
# Warmup Iteration   5: 326.363 us/op
Iteration   1: 326.502 us/op
Iteration   2: 326.662 us/op
Iteration   3: 326.583 us/op
Iteration   4: 326.188 us/op
Iteration   5: 326.252 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  326.437 ±(99.9%) 0.799 us/op [Average]
  (min, avg, max) = (326.188, 326.437, 326.662), stdev = 0.207
  CI (99.9%): [325.639, 327.236] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 151043 total address lines.
Perf output processed (skipped 57.118 seconds):
 Column 1: cycles (50628 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 648 

 <region is too big to display, has 1053 lines, but threshold is 1000>
....................................................................................................
  76.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 679 

                                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                      0x00007f71c064f088:   movslq %r9d,%r9
                      0x00007f71c064f08b:   xor    %r14d,%r14d
                      0x00007f71c064f08e:   mov    $0x2,%ebp
          ╭           0x00007f71c064f093:   jmp    0x00007f71c064f26a
          │ ↗         0x00007f71c064f098:   vmovd  %xmm2,%r14d
          │ │         0x00007f71c064f09d:   vmovd  %xmm1,%r8d
          │ │         0x00007f71c064f0a2:   vmovd  %xmm4,%r9d
          │ │         0x00007f71c064f0a7:   vmovq  %xmm3,%rbx
   0.02%  │ │     ↗   0x00007f71c064f0ac:   mov    %r13d,%edx
   0.04%  │ │     │   0x00007f71c064f0af:   sub    %ecx,%edx
   0.02%  │ │     │   0x00007f71c064f0b1:   xor    %r10d,%r10d
   0.16%  │ │     │   0x00007f71c064f0b4:   cmp    %ecx,%r13d
   0.03%  │ │     │   0x00007f71c064f0b7:   cmovl  %r10d,%edx
   0.04%  │ │     │   0x00007f71c064f0bb:   cmp    $0xfa0,%edx
   0.02%  │ │     │   0x00007f71c064f0c1:   mov    $0xfa0,%r10d
   0.15%  │ │     │   0x00007f71c064f0c7:   cmova  %r10d,%edx
   0.08%  │ │     │   0x00007f71c064f0cb:   add    %ecx,%edx
   0.01%  │ │     │   0x00007f71c064f0cd:   vmovd  %r14d,%xmm2
   0.14%  │ │     │   0x00007f71c064f0d2:   vmovd  %r8d,%xmm1
   0.03%  │ │     │   0x00007f71c064f0d7:   vmovd  %r9d,%xmm4
   0.05%  │ │     │   0x00007f71c064f0dc:   vmovq  %rbx,%xmm3                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │     │                                                             ;   {no_reloc}
   0.01%  │↗│     │   0x00007f71c064f0e1:   movslq %ecx,%rbx                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.15%  │││     │   0x00007f71c064f0e4:   movsbl 0x10(%r11,%rbx,1),%r10d
   0.03%  │││     │   0x00007f71c064f0ea:   movsbl 0x10(%rdi,%rbx,1),%r14d
   0.04%  │││     │   0x00007f71c064f0f0:   lea    (%rax,%rbx,1),%r9
   0.01%  │││     │   0x00007f71c064f0f4:   xor    %r14d,%r10d
   0.15%  │││     │   0x00007f71c064f0f7:   mov    0x48(%rsp),%r8
   0.02%  │││     │   0x00007f71c064f0fc:   mov    %r10b,0x10(%r8,%r9,1)
   0.05%  │││     │   0x00007f71c064f101:   movsbl 0x11(%rdi,%rbx,1),%r10d
   0.01%  │││     │   0x00007f71c064f107:   movsbl 0x11(%r11,%rbx,1),%r14d
   0.19%  │││     │   0x00007f71c064f10d:   lea    (%rsi,%rbx,1),%r8
   0.02%  │││     │   0x00007f71c064f111:   xor    %r14d,%r10d
   0.04%  │││     │   0x00007f71c064f114:   mov    0x48(%rsp),%rbp
   0.02%  │││     │   0x00007f71c064f119:   mov    %r10b,0x11(%rbp,%r9,1)
   0.19%  │││     │   0x00007f71c064f11e:   movsbl 0x12(%r11,%rbx,1),%r10d
   0.03%  │││     │   0x00007f71c064f124:   movsbl 0x12(%rdi,%rbx,1),%r14d
   0.03%  │││     │   0x00007f71c064f12a:   xor    %r14d,%r10d
   0.01%  │││     │   0x00007f71c064f12d:   mov    %r10b,0x10(%rbp,%r8,1)
   0.17%  │││     │   0x00007f71c064f132:   movsbl 0x13(%rdi,%rbx,1),%r10d
   0.01%  │││     │   0x00007f71c064f138:   movsbl 0x13(%r11,%rbx,1),%r14d
   0.04%  │││     │   0x00007f71c064f13e:   xor    %r14d,%r10d
   0.03%  │││     │   0x00007f71c064f141:   mov    %r10b,0x11(%rbp,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.14%  │││     │   0x00007f71c064f146:   add    $0x4,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%  │││     │   0x00007f71c064f149:   cmp    %edx,%ecx
          │╰│     │   0x00007f71c064f14b:   jl     0x00007f71c064f0e1           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%  │ │     │   0x00007f71c064f14d:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=Oop rdi=Oop rbp=Oop xmm0=Oop xmm4=NarrowOop [48]=Oop [56]=Oop [72]=Oop }
          │ │     │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │     │                                                             ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%  │ │     │   0x00007f71c064f154:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │     │                                                             ;   {poll}
   0.12%  │ │     │   0x00007f71c064f157:   cmp    %r13d,%ecx
   0.02%  │ │     │   0x00007f71c064f15a:   nopw   0x0(%rax,%rax,1)
   0.07%  │ ╰     │   0x00007f71c064f160:   jl     0x00007f71c064f098
   0.01%  │       │   0x00007f71c064f166:   vmovd  %xmm2,%r14d
   0.15%  │       │   0x00007f71c064f16b:   vmovd  %xmm1,%r8d
   0.02%  │       │   0x00007f71c064f170:   vmovd  %xmm4,%r9d
   0.03%  │       │   0x00007f71c064f175:   vmovq  %xmm3,%rbx
   0.02%  │       │   0x00007f71c064f17a:   nopw   0x0(%rax,%rax,1)
   0.18%  │       │   0x00007f71c064f180:   cmp    %r8d,%ecx
          │  ╭    │   0x00007f71c064f183:   jge    0x00007f71c064f1ae
   0.02%  │  │    │   0x00007f71c064f185:   data16 xchg %ax,%ax                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%  │  │↗   │   0x00007f71c064f188:   movslq %ecx,%rsi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││   │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.18%  │  ││   │   0x00007f71c064f18b:   movsbl 0x10(%r11,%rsi,1),%r10d
   0.23%  │  ││   │   0x00007f71c064f191:   movsbl 0x10(%rdi,%rsi,1),%edx
   0.08%  │  ││   │   0x00007f71c064f196:   lea    (%rax,%rsi,1),%rbp
   0.21%  │  ││   │   0x00007f71c064f19a:   xor    %edx,%r10d
   0.19%  │  ││   │   0x00007f71c064f19d:   mov    0x48(%rsp),%rdx
   0.26%  │  ││   │   0x00007f71c064f1a2:   mov    %r10b,0x10(%rdx,%rbp,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││   │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.09%  │  ││   │   0x00007f71c064f1a7:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││   │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││   │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%  │  ││   │   0x00007f71c064f1a9:   cmp    %r8d,%ecx
          │  │╰   │   0x00007f71c064f1ac:   jl     0x00007f71c064f188           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │    │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │    │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%  │  ↘    │   0x00007f71c064f1ae:   vmovq  %xmm0,%r11                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
          │       │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │       │                                                             ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │       │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │       │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │       │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%  │       │↗  0x00007f71c064f1b3:   mov    0x40(%rsp),%ebp
   0.02%  │       ││  0x00007f71c064f1b7:   test   %ebp,%ebp
          │       ││  0x00007f71c064f1b9:   jl     0x00007f71c064f4d8
   0.16%  │       ││  0x00007f71c064f1bf:   mov    0x40(%rsp),%ecx
   0.01%  │       ││  0x00007f71c064f1c3:   add    %r8d,%ecx
   0.03%  │       ││  0x00007f71c064f1c6:   mov    (%rsp),%r13d
   0.02%  │       ││  0x00007f71c064f1ca:   cmp    %ecx,%r13d
          │       ││  0x00007f71c064f1cd:   jb     0x00007f71c064f4d8
   0.18%  │       ││  0x00007f71c064f1d3:   mov    0xc(%r12,%r9,8),%r10d
   0.02%  │       ││  0x00007f71c064f1d8:   cmp    %r8d,%r10d
   0.03%  │       ││  0x00007f71c064f1db:   nopl   0x0(%rax,%rax,1)
   0.02%  │       ││  0x00007f71c064f1e0:   jb     0x00007f71c064f4d8
   0.19%  │       ││  0x00007f71c064f1e6:   test   %r8d,%r8d
          │       ││  0x00007f71c064f1e9:   jl     0x00007f71c064f4d8           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%  │       ││  0x00007f71c064f1ef:   test   %r8d,%r8d
          │    ╭  ││  0x00007f71c064f1f2:   je     0x00007f71c064f22a
   0.05%  │    │  ││  0x00007f71c064f1f4:   mov    %r11,(%rsp)
   0.01%  │    │  ││  0x00007f71c064f1f8:   mov    0x38(%rsp),%r10
   0.14%  │    │  ││  0x00007f71c064f1fd:   lea    0x10(%r10,%rbp,1),%rdi
   0.03%  │    │  ││  0x00007f71c064f202:   lea    (%r12,%r9,8),%r10            ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%  │    │  ││  0x00007f71c064f206:   lea    0x10(%r12,%r9,8),%rsi
   0.03%  │    │  ││  0x00007f71c064f20b:   mov    %rbx,%rdx
   0.16%  │    │  ││  0x00007f71c064f20e:   vzeroupper 
   0.27%  │    │  ││  0x00007f71c064f211:   movabs $0x7f71c00a9080,%r10
   0.02%  │    │  ││  0x00007f71c064f21b:   call   *%r10
   0.02%  │    │  ││  0x00007f71c064f21e:   nopl   0x0(%rax,%rax,1)             ;   {other}
          │    │  ││  0x00007f71c064f226:   mov    (%rsp),%r11                  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.64%  │    ↘  ││  0x00007f71c064f22a:   mov    0xc(%r11),%r10d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.97%  │       ││  0x00007f71c064f22e:   mov    0x458(%r15),%r9
          │       ││  0x00007f71c064f235:   add    %r10d,%r14d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@94 (line 213)
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%  │       ││  0x00007f71c064f238:   mov    0x40(%rsp),%r8d
   0.01%  │       ││  0x00007f71c064f23d:   add    %r10d,%r8d                   ; ImmutableOopMap {r11=Oop [48]=Oop [56]=Oop [72]=Oop }
          │       ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │       ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │       ││  0x00007f71c064f240:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │       ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │       ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │       ││                                                            ;   {poll}
          │       ││  0x00007f71c064f243:   cmp    0x50(%rsp),%r8d
          │     ╭ ││  0x00007f71c064f248:   jge    0x00007f71c064f3b3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │     │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%  │     │ ││  0x00007f71c064f24e:   lea    0x2(%r14),%ebp
   0.02%  │     │ ││  0x00007f71c064f252:   mov    %r8d,0x40(%rsp)
   0.24%  │     │ ││  0x00007f71c064f257:   mov    0x38(%rsp),%r10
          │     │ ││  0x00007f71c064f25c:   mov    0x48(%rsp),%rbx
          │     │ ││  0x00007f71c064f261:   mov    0x50(%rsp),%ecx
   0.01%  │     │ ││  0x00007f71c064f265:   mov    0x10(%rsp),%r9               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@11 (line 214)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │     │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │     │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%  ↘     │ ││  0x00007f71c064f26a:   mov    0x1c(%r11),%r8d              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ ││  0x00007f71c064f26e:   mov    0x10(%r11),%edi              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ ││  0x00007f71c064f272:   test   %edi,%edi
                │ ││  0x00007f71c064f274:   je     0x00007f71c064f4a7           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%        │ ││  0x00007f71c064f27a:   mov    %r14d,0x4(%rsp)
   0.24%        │ ││  0x00007f71c064f27f:   mov    %r9,0x10(%rsp)
                │ ││  0x00007f71c064f284:   mov    %ecx,0x50(%rsp)
                │ ││  0x00007f71c064f288:   mov    %r11,0x8(%rsp)
   0.02%        │ ││  0x00007f71c064f28d:   mov    %r13d,(%rsp)
   0.48%        │ ││  0x00007f71c064f291:   mov    %rbx,0x48(%rsp)
   0.10%        │ ││  0x00007f71c064f296:   mov    %r10,0x38(%rsp)              ;*synchronization entry
                │ ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@-1 (line 162)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%        │ ││  0x00007f71c064f29b:   lea    (%r12,%rdi,8),%rsi           ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%        │ ││  0x00007f71c064f29f:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%        │ ││  0x00007f71c064f2a3:   mov    %r10,%rdx
   0.13%        │ ││  0x00007f71c064f2a6:   mov    0x40(%rsp),%ecx
   0.29%        │ ││  0x00007f71c064f2aa:   xor    %r9d,%r9d
   0.01%        │ ││  0x00007f71c064f2ad:   data16 xchg %ax,%ax
   0.06%        │ ││  0x00007f71c064f2b0:   vzeroupper 
   0.26%        │ ││  0x00007f71c064f2b3:   call   0x00007f71c063eb40           ; ImmutableOopMap {[8]=Oop [48]=Oop [56]=Oop [72]=Oop }
                │ ││                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ ││                                                            ;   {optimized virtual_call}
   0.18%        │ ││  0x00007f71c064f2b8:   nopl   0x2000728(%rax,%rax,1)       ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │ ││                                                            ;   {other}
   0.02%        │ ││  0x00007f71c064f2c0:   mov    0x8(%rsp),%r11
   0.07%        │ ││  0x00007f71c064f2c5:   mov    0xc(%r11),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.17%        │ ││  0x00007f71c064f2c9:   mov    0x18(%r11),%r9d              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
                │ ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │ ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%        │ ││  0x00007f71c064f2cd:   movslq %r8d,%rbx
   0.04%        │ ││  0x00007f71c064f2d0:   test   %r8d,%r8d
                │╭││  0x00007f71c064f2d3:   jle    0x00007f71c064f39c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%        ││││  0x00007f71c064f2d9:   vmovq  %r11,%xmm0
   0.19%        ││││  0x00007f71c064f2de:   mov    0x1c(%r11),%r10d             ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@45 (line 216)
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%        ││││  0x00007f71c064f2e2:   mov    0xc(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f71c064f52f
                ││││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%        ││││  0x00007f71c064f2e7:   test   %ecx,%ecx
                ││││  0x00007f71c064f2e9:   jbe    0x00007f71c064f5ac
   0.01%        ││││  0x00007f71c064f2ef:   mov    %rbx,%rdi
   0.18%        ││││  0x00007f71c064f2f2:   dec    %rdi
   0.02%        ││││  0x00007f71c064f2f5:   movslq %ecx,%r11
   0.04%        ││││  0x00007f71c064f2f8:   cmp    %r11,%rdi
   0.01%        ││││  0x00007f71c064f2fb:   nopl   0x0(%rax,%rax,1)
   0.19%        ││││  0x00007f71c064f300:   jae    0x00007f71c064f528
   0.01%        ││││  0x00007f71c064f306:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f71c064faf8
                ││││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%        ││││  0x00007f71c064f30b:   test   %r11d,%r11d
                ││││  0x00007f71c064f30e:   jbe    0x00007f71c064f5b6
   0.01%        ││││  0x00007f71c064f314:   movslq %r11d,%r11
   0.18%        ││││  0x00007f71c064f317:   cmp    %r11,%rdi
   0.03%        ││││  0x00007f71c064f31a:   nopw   0x0(%rax,%rax,1)
   0.03%        ││││  0x00007f71c064f320:   jae    0x00007f71c064f598
   0.02%        ││││  0x00007f71c064f326:   mov    0x4(%rsp),%r14d
   0.18%        ││││  0x00007f71c064f32b:   cmp    0x58(%rsp),%r14d
                ││││  0x00007f71c064f330:   jae    0x00007f71c064f534
   0.01%        ││││  0x00007f71c064f336:   movslq %r14d,%rax                   ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%        ││││  0x00007f71c064f339:   lea    (%rbx,%rax,1),%r11
   0.02%        ││││  0x00007f71c064f33d:   dec    %r11
   0.15%        ││││  0x00007f71c064f340:   cmp    0x10(%rsp),%r11
                ││││  0x00007f71c064f345:   jae    0x00007f71c064f534
   0.02%        ││││  0x00007f71c064f34b:   movsbl 0x10(%r12,%r9,8),%ecx
   0.03%        ││││  0x00007f71c064f351:   movsbl 0x10(%r12,%r10,8),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%        ││││  0x00007f71c064f357:   xor    %r11d,%ecx
   0.17%        ││││  0x00007f71c064f35a:   mov    0x48(%rsp),%r11
   0.03%        ││││  0x00007f71c064f35f:   mov    %cl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.05%        ││││  0x00007f71c064f364:   lea    -0x3(%rbx),%rcx
   0.02%        ││││  0x00007f71c064f368:   lea    (%r12,%r9,8),%r11
   0.17%        ││││  0x00007f71c064f36c:   cmp    $0xffffffff80000000,%rcx
   0.03%        ││││  0x00007f71c064f373:   mov    $0xffffffff80000000,%rdi
   0.03%        ││││  0x00007f71c064f37a:   cmovl  %rdi,%rcx
   0.01%        ││││  0x00007f71c064f37e:   lea    (%r12,%r10,8),%rdi
   0.16%        ││││  0x00007f71c064f382:   mov    %ecx,%r13d
   0.02%        ││││  0x00007f71c064f385:   cmp    $0x1,%r13d
                ││││  0x00007f71c064f389:   jle    0x00007f71c064f5a2
   0.03%        ││││  0x00007f71c064f38f:   movslq %ebp,%rsi
   0.01%        ││││  0x00007f71c064f392:   mov    $0x1,%ecx
   0.17%        ││╰│  0x00007f71c064f397:   jmp    0x00007f71c064f0ac
                │↘ │  0x00007f71c064f39c:   nopl   0x0(%rax)
                │  │  0x00007f71c064f3a0:   test   %r9d,%r9d
                │  │  0x00007f71c064f3a3:   je     0x00007f71c064f5c5           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
                │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                │  │  0x00007f71c064f3a9:   mov    0x4(%rsp),%r14d
                │  ╰  0x00007f71c064f3ae:   jmp    0x00007f71c064f1b3
   0.00%        ↘     0x00007f71c064f3b3:   mov    0x30(%rsp),%r10              ;   {no_reloc}
                      0x00007f71c064f3b8:   movzbl 0x24(%r10),%ebp              ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%              0x00007f71c064f3bd:   data16 xchg %ax,%ax
                      0x00007f71c064f3c0:   test   %ebp,%ebp
                      0x00007f71c064f3c2:   je     0x00007f71c064fa8c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                      0x00007f71c064f3c8:   mov    0x2c(%r10),%ebp              ;*getfield padding {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@21 (line 940)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                      0x00007f71c064f3cc:   test   %ebp,%ebp
                      0x00007f71c064f3ce:   jne    0x00007f71c064fab0           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@24 (line 940)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                      0x00007f71c064f3d4:   mov    0xc(%r10),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
   0.00%              0x00007f71c064f3d8:   mov    0x20(%r10),%r14d             ;*getfield cipherMode {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::endDoFinal@14 (line 852)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                      0x00007f71c064f3dc:   mov    0x48(%rsp),%rbx              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                                ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                      0x00007f71c064f3e1:   mov    0x30(%rsp),%r10
                      0x00007f71c064f3e6:   mov    %r8d,0x1c(%r10)              ;*putfield diffBlocksize {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.sun.crypto.provider.CipherCore::endDoFinal@10 (line 851)
....................................................................................................
  13.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  76.97%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 648 
  13.35%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 679 
   4.96%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 648 
   1.72%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.89%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.51%              kernel  [unknown] 
   0.24%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 679 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.89%  <...other 263 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.93%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 648 
  13.61%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 679 
   2.62%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.54%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 680 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%           libjvm.so  os::write 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.15%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.55%         c2, level 4
   2.62%        runtime stub
   1.54%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.03%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = Blowfish/CBC/NoPadding)

# Run progress: 30.00% complete, ETA 00:12:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 348.429 us/op
# Warmup Iteration   2: 360.780 us/op
# Warmup Iteration   3: 334.829 us/op
# Warmup Iteration   4: 328.173 us/op
# Warmup Iteration   5: 328.719 us/op
Iteration   1: 329.010 us/op
Iteration   2: 328.813 us/op
Iteration   3: 328.696 us/op
Iteration   4: 328.792 us/op
Iteration   5: 328.444 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  328.751 ±(99.9%) 0.793 us/op [Average]
  (min, avg, max) = (328.444, 328.751, 329.010), stdev = 0.206
  CI (99.9%): [327.958, 329.544] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 154998 total address lines.
Perf output processed (skipped 57.140 seconds):
 Column 1: cycles (50632 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 657 

 <region is too big to display, has 1053 lines, but threshold is 1000>
....................................................................................................
  77.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 690 

                                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                    0x00007f7764650608:   movslq %r9d,%r9
                    0x00007f776465060b:   xor    %r14d,%r14d
                    0x00007f776465060e:   mov    $0x2,%ebp
          ╭         0x00007f7764650613:   jmp    0x00007f77646507ea
          │ ↗       0x00007f7764650618:   vmovd  %xmm2,%r14d
          │ │       0x00007f776465061d:   vmovd  %xmm1,%r8d
          │ │       0x00007f7764650622:   vmovd  %xmm4,%r9d
          │ │       0x00007f7764650627:   vmovq  %xmm3,%rbx
   0.06%  │ │    ↗  0x00007f776465062c:   mov    %r13d,%edx
   0.04%  │ │    │  0x00007f776465062f:   sub    %ecx,%edx
   0.02%  │ │    │  0x00007f7764650631:   xor    %r10d,%r10d
   0.16%  │ │    │  0x00007f7764650634:   cmp    %ecx,%r13d
   0.03%  │ │    │  0x00007f7764650637:   cmovl  %r10d,%edx
   0.02%  │ │    │  0x00007f776465063b:   cmp    $0xfa0,%edx
   0.01%  │ │    │  0x00007f7764650641:   mov    $0xfa0,%r10d
   0.16%  │ │    │  0x00007f7764650647:   cmova  %r10d,%edx
   0.05%  │ │    │  0x00007f776465064b:   add    %ecx,%edx
   0.02%  │ │    │  0x00007f776465064d:   vmovd  %r14d,%xmm2
   0.16%  │ │    │  0x00007f7764650652:   vmovd  %r8d,%xmm1
   0.02%  │ │    │  0x00007f7764650657:   vmovd  %r9d,%xmm4
   0.05%  │ │    │  0x00007f776465065c:   vmovq  %rbx,%xmm3                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │    │                                                            ;   {no_reloc}
   0.02%  │↗│    │  0x00007f7764650661:   movslq %ecx,%rbx                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.17%  │││    │  0x00007f7764650664:   movsbl 0x10(%r11,%rbx,1),%r10d
   0.03%  │││    │  0x00007f776465066a:   movsbl 0x10(%rdi,%rbx,1),%r14d
   0.03%  │││    │  0x00007f7764650670:   lea    (%rax,%rbx,1),%r9
   0.02%  │││    │  0x00007f7764650674:   xor    %r14d,%r10d
   0.17%  │││    │  0x00007f7764650677:   mov    0x48(%rsp),%r8
   0.03%  │││    │  0x00007f776465067c:   mov    %r10b,0x10(%r8,%r9,1)
   0.03%  │││    │  0x00007f7764650681:   movsbl 0x11(%rdi,%rbx,1),%r10d
   0.02%  │││    │  0x00007f7764650687:   movsbl 0x11(%r11,%rbx,1),%r14d
   0.14%  │││    │  0x00007f776465068d:   lea    (%rsi,%rbx,1),%r8
   0.03%  │││    │  0x00007f7764650691:   xor    %r14d,%r10d
   0.04%  │││    │  0x00007f7764650694:   mov    0x48(%rsp),%rbp
   0.03%  │││    │  0x00007f7764650699:   mov    %r10b,0x11(%rbp,%r9,1)
   0.15%  │││    │  0x00007f776465069e:   movsbl 0x12(%r11,%rbx,1),%r10d
   0.04%  │││    │  0x00007f77646506a4:   movsbl 0x12(%rdi,%rbx,1),%r14d
   0.04%  │││    │  0x00007f77646506aa:   xor    %r14d,%r10d
   0.02%  │││    │  0x00007f77646506ad:   mov    %r10b,0x10(%rbp,%r8,1)
   0.16%  │││    │  0x00007f77646506b2:   movsbl 0x13(%rdi,%rbx,1),%r10d
   0.04%  │││    │  0x00007f77646506b8:   movsbl 0x13(%r11,%rbx,1),%r14d
   0.02%  │││    │  0x00007f77646506be:   xor    %r14d,%r10d
   0.02%  │││    │  0x00007f77646506c1:   mov    %r10b,0x11(%rbp,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.19%  │││    │  0x00007f77646506c6:   add    $0x4,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%  │││    │  0x00007f77646506c9:   cmp    %edx,%ecx
          │╰│    │  0x00007f77646506cb:   jl     0x00007f7764650661           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%  │ │    │  0x00007f77646506cd:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=Oop rdi=Oop rbp=Oop xmm0=Oop xmm4=NarrowOop [48]=Oop [56]=Oop [72]=Oop }
          │ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │    │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%  │ │    │  0x00007f77646506d4:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │    │                                                            ;   {poll}
   0.15%  │ │    │  0x00007f77646506d7:   cmp    %r13d,%ecx
   0.03%  │ │    │  0x00007f77646506da:   nopw   0x0(%rax,%rax,1)
   0.04%  │ ╰    │  0x00007f77646506e0:   jl     0x00007f7764650618
   0.03%  │      │  0x00007f77646506e6:   vmovd  %xmm2,%r14d
   0.14%  │      │  0x00007f77646506eb:   vmovd  %xmm1,%r8d
   0.04%  │      │  0x00007f77646506f0:   vmovd  %xmm4,%r9d
   0.02%  │      │  0x00007f77646506f5:   vmovq  %xmm3,%rbx
   0.03%  │      │  0x00007f77646506fa:   nopw   0x0(%rax,%rax,1)
   0.15%  │      │  0x00007f7764650700:   cmp    %r8d,%ecx
          │  ╭   │  0x00007f7764650703:   jge    0x00007f776465072e
   0.04%  │  │   │  0x00007f7764650705:   data16 xchg %ax,%ax                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.22%  │  │↗  │  0x00007f7764650708:   movslq %ecx,%rsi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%  │  ││  │  0x00007f776465070b:   movsbl 0x10(%r11,%rsi,1),%r10d
   0.22%  │  ││  │  0x00007f7764650711:   movsbl 0x10(%rdi,%rsi,1),%edx
   0.08%  │  ││  │  0x00007f7764650716:   lea    (%rax,%rsi,1),%rbp
   0.24%  │  ││  │  0x00007f776465071a:   xor    %edx,%r10d
   0.20%  │  ││  │  0x00007f776465071d:   mov    0x48(%rsp),%rdx
   0.21%  │  ││  │  0x00007f7764650722:   mov    %r10b,0x10(%rdx,%rbp,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.09%  │  ││  │  0x00007f7764650727:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%  │  ││  │  0x00007f7764650729:   cmp    %r8d,%ecx
          │  │╰  │  0x00007f776465072c:   jl     0x00007f7764650708           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.06%  │  ↘   │  0x00007f776465072e:   vmovq  %xmm0,%r11                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │      │  0x00007f7764650733:   mov    0x40(%rsp),%ebp
   0.02%  │      │  0x00007f7764650737:   test   %ebp,%ebp
          │      │  0x00007f7764650739:   jl     0x00007f7764650a58
   0.14%  │      │  0x00007f776465073f:   mov    0x40(%rsp),%ecx
   0.04%  │      │  0x00007f7764650743:   add    %r8d,%ecx
   0.03%  │      │  0x00007f7764650746:   mov    (%rsp),%r13d
   0.01%  │      │  0x00007f776465074a:   cmp    %ecx,%r13d
          │      │  0x00007f776465074d:   jb     0x00007f7764650a58
   0.13%  │      │  0x00007f7764650753:   mov    0xc(%r12,%r9,8),%r10d
   0.04%  │      │  0x00007f7764650758:   cmp    %r8d,%r10d
   0.04%  │      │  0x00007f776465075b:   nopl   0x0(%rax,%rax,1)
   0.02%  │      │  0x00007f7764650760:   jb     0x00007f7764650a58
   0.13%  │      │  0x00007f7764650766:   test   %r8d,%r8d
          │      │  0x00007f7764650769:   jl     0x00007f7764650a58           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%  │      │  0x00007f776465076f:   test   %r8d,%r8d
          │    ╭ │  0x00007f7764650772:   je     0x00007f77646507aa
   0.03%  │    │ │  0x00007f7764650774:   mov    %r11,(%rsp)
   0.02%  │    │ │  0x00007f7764650778:   mov    0x38(%rsp),%r10
   0.18%  │    │ │  0x00007f776465077d:   lea    0x10(%r10,%rbp,1),%rdi
   0.04%  │    │ │  0x00007f7764650782:   lea    (%r12,%r9,8),%r10            ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%  │    │ │  0x00007f7764650786:   lea    0x10(%r12,%r9,8),%rsi
   0.02%  │    │ │  0x00007f776465078b:   mov    %rbx,%rdx
   0.10%  │    │ │  0x00007f776465078e:   vzeroupper 
   0.24%  │    │ │  0x00007f7764650791:   movabs $0x7f77640a9080,%r10
   0.05%  │    │ │  0x00007f776465079b:   call   *%r10
   0.00%  │    │ │  0x00007f776465079e:   nopl   0x0(%rax,%rax,1)             ;   {other}
          │    │ │  0x00007f77646507a6:   mov    (%rsp),%r11                  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.47%  │    ↘ │  0x00007f77646507aa:   mov    0xc(%r11),%r10d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.78%  │      │  0x00007f77646507ae:   mov    0x458(%r15),%r9
          │      │  0x00007f77646507b5:   add    %r10d,%r14d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@94 (line 213)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%  │      │  0x00007f77646507b8:   mov    0x40(%rsp),%r8d
   0.03%  │      │  0x00007f77646507bd:   add    %r10d,%r8d                   ; ImmutableOopMap {r11=Oop [48]=Oop [56]=Oop [72]=Oop }
          │      │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │      │  0x00007f77646507c0:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │      │                                                            ;   {poll}
          │      │  0x00007f77646507c3:   cmp    0x50(%rsp),%r8d
          │      │  0x00007f77646507c8:   jge    0x00007f7764650933           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.17%  │      │  0x00007f77646507ce:   lea    0x2(%r14),%ebp
   0.02%  │      │  0x00007f77646507d2:   mov    %r8d,0x40(%rsp)
   0.16%  │      │  0x00007f77646507d7:   mov    0x38(%rsp),%r10
          │      │  0x00007f77646507dc:   mov    0x48(%rsp),%rbx
          │      │  0x00007f77646507e1:   mov    0x50(%rsp),%ecx
   0.03%  │      │  0x00007f77646507e5:   mov    0x10(%rsp),%r9               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@11 (line 214)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%  ↘      │  0x00007f77646507ea:   mov    0x1c(%r11),%r8d              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │  0x00007f77646507ee:   mov    0x10(%r11),%edi              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │  0x00007f77646507f2:   test   %edi,%edi
                 │  0x00007f77646507f4:   je     0x00007f7764650a27           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%         │  0x00007f77646507fa:   mov    %r14d,0x4(%rsp)
   0.20%         │  0x00007f77646507ff:   mov    %r9,0x10(%rsp)
                 │  0x00007f7764650804:   mov    %ecx,0x50(%rsp)
                 │  0x00007f7764650808:   mov    %r11,0x8(%rsp)
   0.02%         │  0x00007f776465080d:   mov    %r13d,(%rsp)
   0.54%         │  0x00007f7764650811:   mov    %rbx,0x48(%rsp)
   0.09%         │  0x00007f7764650816:   mov    %r10,0x38(%rsp)              ;*synchronization entry
                 │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@-1 (line 162)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.25%         │  0x00007f776465081b:   lea    (%r12,%rdi,8),%rsi           ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%         │  0x00007f776465081f:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%         │  0x00007f7764650823:   mov    %r10,%rdx
   0.08%         │  0x00007f7764650826:   mov    0x40(%rsp),%ecx
   0.25%         │  0x00007f776465082a:   xor    %r9d,%r9d
   0.01%         │  0x00007f776465082d:   data16 xchg %ax,%ax
   0.06%         │  0x00007f7764650830:   vzeroupper 
   0.28%         │  0x00007f7764650833:   call   0x00007f776463f440           ; ImmutableOopMap {[8]=Oop [48]=Oop [56]=Oop [72]=Oop }
                 │                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │                                                            ;   {optimized virtual_call}
   0.15%         │  0x00007f7764650838:   nopl   0x2000728(%rax,%rax,1)       ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │                                                            ;   {other}
   0.03%         │  0x00007f7764650840:   mov    0x8(%rsp),%r11
   0.05%         │  0x00007f7764650845:   mov    0xc(%r11),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.16%         │  0x00007f7764650849:   mov    0x18(%r11),%r9d              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%         │  0x00007f776465084d:   movslq %r8d,%rbx
   0.04%         │  0x00007f7764650850:   test   %r8d,%r8d
                ╭│  0x00007f7764650853:   jle    0x00007f776465091c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%        ││  0x00007f7764650859:   vmovq  %r11,%xmm0
   0.15%        ││  0x00007f776465085e:   mov    0x1c(%r11),%r10d             ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@45 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%        ││  0x00007f7764650862:   mov    0xc(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f7764650aaf
                ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%        ││  0x00007f7764650867:   test   %ecx,%ecx
                ││  0x00007f7764650869:   jbe    0x00007f7764650b2c
   0.03%        ││  0x00007f776465086f:   mov    %rbx,%rdi
   0.15%        ││  0x00007f7764650872:   dec    %rdi
   0.04%        ││  0x00007f7764650875:   movslq %ecx,%r11
   0.04%        ││  0x00007f7764650878:   cmp    %r11,%rdi
   0.02%        ││  0x00007f776465087b:   nopl   0x0(%rax,%rax,1)
   0.17%        ││  0x00007f7764650880:   jae    0x00007f7764650aa8
   0.04%        ││  0x00007f7764650886:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f7764651078
                ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%        ││  0x00007f776465088b:   test   %r11d,%r11d
                ││  0x00007f776465088e:   jbe    0x00007f7764650b36
   0.02%        ││  0x00007f7764650894:   movslq %r11d,%r11
   0.13%        ││  0x00007f7764650897:   cmp    %r11,%rdi
   0.05%        ││  0x00007f776465089a:   nopw   0x0(%rax,%rax,1)
   0.03%        ││  0x00007f77646508a0:   jae    0x00007f7764650b18
   0.03%        ││  0x00007f77646508a6:   mov    0x4(%rsp),%r14d
   0.13%        ││  0x00007f77646508ab:   cmp    0x58(%rsp),%r14d
                ││  0x00007f77646508b0:   jae    0x00007f7764650ab4
   0.04%        ││  0x00007f77646508b6:   movslq %r14d,%rax                   ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%        ││  0x00007f77646508b9:   lea    (%rbx,%rax,1),%r11
   0.03%        ││  0x00007f77646508bd:   dec    %r11
   0.13%        ││  0x00007f77646508c0:   cmp    0x10(%rsp),%r11
                ││  0x00007f77646508c5:   jae    0x00007f7764650ab4
   0.05%        ││  0x00007f77646508cb:   movsbl 0x10(%r12,%r9,8),%ecx
   0.04%        ││  0x00007f77646508d1:   movsbl 0x10(%r12,%r10,8),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%        ││  0x00007f77646508d7:   xor    %r11d,%ecx
   0.15%        ││  0x00007f77646508da:   mov    0x48(%rsp),%r11
   0.04%        ││  0x00007f77646508df:   mov    %cl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%        ││  0x00007f77646508e4:   lea    -0x3(%rbx),%rcx
   0.01%        ││  0x00007f77646508e8:   lea    (%r12,%r9,8),%r11
   0.14%        ││  0x00007f77646508ec:   cmp    $0xffffffff80000000,%rcx
   0.04%        ││  0x00007f77646508f3:   mov    $0xffffffff80000000,%rdi
   0.03%        ││  0x00007f77646508fa:   cmovl  %rdi,%rcx
   0.02%        ││  0x00007f77646508fe:   lea    (%r12,%r10,8),%rdi
   0.16%        ││  0x00007f7764650902:   mov    %ecx,%r13d
   0.03%        ││  0x00007f7764650905:   cmp    $0x1,%r13d
                ││  0x00007f7764650909:   jle    0x00007f7764650b22
   0.03%        ││  0x00007f776465090f:   movslq %ebp,%rsi
   0.03%        ││  0x00007f7764650912:   mov    $0x1,%ecx
   0.13%        │╰  0x00007f7764650917:   jmp    0x00007f776465062c
                ↘   0x00007f776465091c:   nopl   0x0(%rax)
                    0x00007f7764650920:   test   %r9d,%r9d
                    0x00007f7764650923:   je     0x00007f7764650b45           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
                                                                              ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                                                                              ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                              ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                    0x00007f7764650929:   mov    0x4(%rsp),%r14d
....................................................................................................
  12.84%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.22%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 657 
  12.84%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 690 
   5.19%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 657 
   1.82%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.86%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.47%              kernel  [unknown] 
   0.23%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 690 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.88%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.41%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 657 
  13.08%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 690 
   2.68%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.55%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 743 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%    perf-1931437.map  [unknown] 
   0.14%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.49%         c2, level 4
   2.68%        runtime stub
   1.55%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%    perf-1931437.map
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 448, transformation = Blowfish/CBC/NoPadding)

# Run progress: 40.00% complete, ETA 00:11:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 343.673 us/op
# Warmup Iteration   2: 329.601 us/op
# Warmup Iteration   3: 327.478 us/op
# Warmup Iteration   4: 327.339 us/op
# Warmup Iteration   5: 327.625 us/op
Iteration   1: 328.215 us/op
Iteration   2: 328.910 us/op
Iteration   3: 328.892 us/op
Iteration   4: 328.848 us/op
Iteration   5: 328.990 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  328.771 ±(99.9%) 1.214 us/op [Average]
  (min, avg, max) = (328.215, 328.771, 328.990), stdev = 0.315
  CI (99.9%): [327.557, 329.984] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 152295 total address lines.
Perf output processed (skipped 57.186 seconds):
 Column 1: cycles (50543 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 651 

 <region is too big to display, has 1053 lines, but threshold is 1000>
....................................................................................................
  77.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 684 

                                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                    0x00007fa954650288:   movslq %r9d,%r9
                    0x00007fa95465028b:   xor    %r14d,%r14d
                    0x00007fa95465028e:   mov    $0x2,%ebp
          ╭         0x00007fa954650293:   jmp    0x00007fa95465046a
          │ ↗       0x00007fa954650298:   vmovd  %xmm2,%r14d
          │ │       0x00007fa95465029d:   vmovd  %xmm1,%r8d
          │ │       0x00007fa9546502a2:   vmovd  %xmm4,%r9d
          │ │       0x00007fa9546502a7:   vmovq  %xmm3,%rbx
   0.01%  │ │    ↗  0x00007fa9546502ac:   mov    %r13d,%edx
   0.20%  │ │    │  0x00007fa9546502af:   sub    %ecx,%edx
   0.00%  │ │    │  0x00007fa9546502b1:   xor    %r10d,%r10d
   0.03%  │ │    │  0x00007fa9546502b4:   cmp    %ecx,%r13d
   0.00%  │ │    │  0x00007fa9546502b7:   cmovl  %r10d,%edx
   0.18%  │ │    │  0x00007fa9546502bb:   cmp    $0xfa0,%edx
   0.00%  │ │    │  0x00007fa9546502c1:   mov    $0xfa0,%r10d
   0.02%  │ │    │  0x00007fa9546502c7:   cmova  %r10d,%edx
   0.23%  │ │    │  0x00007fa9546502cb:   add    %ecx,%edx
   0.01%  │ │    │  0x00007fa9546502cd:   vmovd  %r14d,%xmm2
   0.01%  │ │    │  0x00007fa9546502d2:   vmovd  %r8d,%xmm1
   0.01%  │ │    │  0x00007fa9546502d7:   vmovd  %r9d,%xmm4
   0.21%  │ │    │  0x00007fa9546502dc:   vmovq  %rbx,%xmm3                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │    │                                                            ;   {no_reloc}
   0.00%  │↗│    │  0x00007fa9546502e1:   movslq %ecx,%rbx                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%  │││    │  0x00007fa9546502e4:   movsbl 0x10(%r11,%rbx,1),%r10d
   0.01%  │││    │  0x00007fa9546502ea:   movsbl 0x10(%rdi,%rbx,1),%r14d
   0.18%  │││    │  0x00007fa9546502f0:   lea    (%rax,%rbx,1),%r9
   0.00%  │││    │  0x00007fa9546502f4:   xor    %r14d,%r10d
   0.03%  │││    │  0x00007fa9546502f7:   mov    0x48(%rsp),%r8
   0.01%  │││    │  0x00007fa9546502fc:   mov    %r10b,0x10(%r8,%r9,1)
   0.22%  │││    │  0x00007fa954650301:   movsbl 0x11(%rdi,%rbx,1),%r10d
   0.00%  │││    │  0x00007fa954650307:   movsbl 0x11(%r11,%rbx,1),%r14d
   0.03%  │││    │  0x00007fa95465030d:   lea    (%rsi,%rbx,1),%r8
   0.00%  │││    │  0x00007fa954650311:   xor    %r14d,%r10d
   0.21%  │││    │  0x00007fa954650314:   mov    0x48(%rsp),%rbp
          │││    │  0x00007fa954650319:   mov    %r10b,0x11(%rbp,%r9,1)
   0.04%  │││    │  0x00007fa95465031e:   movsbl 0x12(%r11,%rbx,1),%r10d
   0.00%  │││    │  0x00007fa954650324:   movsbl 0x12(%rdi,%rbx,1),%r14d
   0.20%  │││    │  0x00007fa95465032a:   xor    %r14d,%r10d
          │││    │  0x00007fa95465032d:   mov    %r10b,0x10(%rbp,%r8,1)
   0.02%  │││    │  0x00007fa954650332:   movsbl 0x13(%rdi,%rbx,1),%r10d
   0.00%  │││    │  0x00007fa954650338:   movsbl 0x13(%r11,%rbx,1),%r14d
   0.19%  │││    │  0x00007fa95465033e:   xor    %r14d,%r10d
   0.00%  │││    │  0x00007fa954650341:   mov    %r10b,0x11(%rbp,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%  │││    │  0x00007fa954650346:   add    $0x4,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │││    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │││    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │││    │  0x00007fa954650349:   cmp    %edx,%ecx
          │╰│    │  0x00007fa95465034b:   jl     0x00007fa9546502e1           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.16%  │ │    │  0x00007fa95465034d:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=Oop rdi=Oop rbp=Oop xmm0=Oop xmm4=NarrowOop [48]=Oop [56]=Oop [72]=Oop }
          │ │    │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │    │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │ │    │  0x00007fa954650354:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │    │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │    │                                                            ;   {poll}
   0.04%  │ │    │  0x00007fa954650357:   cmp    %r13d,%ecx
   0.00%  │ │    │  0x00007fa95465035a:   nopw   0x0(%rax,%rax,1)
   0.18%  │ ╰    │  0x00007fa954650360:   jl     0x00007fa954650298
   0.00%  │      │  0x00007fa954650366:   vmovd  %xmm2,%r14d
   0.03%  │      │  0x00007fa95465036b:   vmovd  %xmm1,%r8d
   0.00%  │      │  0x00007fa954650370:   vmovd  %xmm4,%r9d
   0.19%  │      │  0x00007fa954650375:   vmovq  %xmm3,%rbx
   0.00%  │      │  0x00007fa95465037a:   nopw   0x0(%rax,%rax,1)
   0.04%  │      │  0x00007fa954650380:   cmp    %r8d,%ecx
          │  ╭   │  0x00007fa954650383:   jge    0x00007fa9546503ae
   0.00%  │  │   │  0x00007fa954650385:   data16 xchg %ax,%ax                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%  │  │↗  │  0x00007fa954650388:   movslq %ecx,%rsi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%  │  ││  │  0x00007fa95465038b:   movsbl 0x10(%r11,%rsi,1),%r10d
   0.26%  │  ││  │  0x00007fa954650391:   movsbl 0x10(%rdi,%rsi,1),%edx
   0.21%  │  ││  │  0x00007fa954650396:   lea    (%rax,%rsi,1),%rbp
   0.25%  │  ││  │  0x00007fa95465039a:   xor    %edx,%r10d
   0.07%  │  ││  │  0x00007fa95465039d:   mov    0x48(%rsp),%rdx
   0.23%  │  ││  │  0x00007fa9546503a2:   mov    %r10b,0x10(%rdx,%rbp,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.22%  │  ││  │  0x00007fa9546503a7:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%  │  ││  │  0x00007fa9546503a9:   cmp    %r8d,%ecx
          │  │╰  │  0x00007fa9546503ac:   jl     0x00007fa954650388           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@37 (line 216)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  ↘   │  0x00007fa9546503ae:   vmovq  %xmm0,%r11                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.18%  │      │  0x00007fa9546503b3:   mov    0x40(%rsp),%ebp
   0.01%  │      │  0x00007fa9546503b7:   test   %ebp,%ebp
          │      │  0x00007fa9546503b9:   jl     0x00007fa9546506d8
   0.04%  │      │  0x00007fa9546503bf:   mov    0x40(%rsp),%ecx
   0.00%  │      │  0x00007fa9546503c3:   add    %r8d,%ecx
   0.19%  │      │  0x00007fa9546503c6:   mov    (%rsp),%r13d
   0.00%  │      │  0x00007fa9546503ca:   cmp    %ecx,%r13d
          │      │  0x00007fa9546503cd:   jb     0x00007fa9546506d8
   0.03%  │      │  0x00007fa9546503d3:   mov    0xc(%r12,%r9,8),%r10d
   0.01%  │      │  0x00007fa9546503d8:   cmp    %r8d,%r10d
   0.18%  │      │  0x00007fa9546503db:   nopl   0x0(%rax,%rax,1)
   0.00%  │      │  0x00007fa9546503e0:   jb     0x00007fa9546506d8
   0.03%  │      │  0x00007fa9546503e6:   test   %r8d,%r8d
          │      │  0x00007fa9546503e9:   jl     0x00007fa9546506d8           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │      │  0x00007fa9546503ef:   test   %r8d,%r8d
          │    ╭ │  0x00007fa9546503f2:   je     0x00007fa95465042a
   0.20%  │    │ │  0x00007fa9546503f4:   mov    %r11,(%rsp)
          │    │ │  0x00007fa9546503f8:   mov    0x38(%rsp),%r10
   0.05%  │    │ │  0x00007fa9546503fd:   lea    0x10(%r10,%rbp,1),%rdi
   0.00%  │    │ │  0x00007fa954650402:   lea    (%r12,%r9,8),%r10            ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.17%  │    │ │  0x00007fa954650406:   lea    0x10(%r12,%r9,8),%rsi
   0.00%  │    │ │  0x00007fa95465040b:   mov    %rbx,%rdx
   0.04%  │    │ │  0x00007fa95465040e:   vzeroupper 
   0.26%  │    │ │  0x00007fa954650411:   movabs $0x7fa9540a9080,%r10
          │    │ │  0x00007fa95465041b:   call   *%r10
   0.00%  │    │ │  0x00007fa95465041e:   nopl   0x0(%rax,%rax,1)             ;   {other}
          │    │ │  0x00007fa954650426:   mov    (%rsp),%r11                  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │    │ │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.36%  │    ↘ │  0x00007fa95465042a:   mov    0xc(%r11),%r10d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@64 (line 215)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.18%  │      │  0x00007fa95465042e:   mov    0x458(%r15),%r9
          │      │  0x00007fa954650435:   add    %r10d,%r14d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@94 (line 213)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.06%  │      │  0x00007fa954650438:   mov    0x40(%rsp),%r8d
   0.21%  │      │  0x00007fa95465043d:   add    %r10d,%r8d                   ; ImmutableOopMap {r11=Oop [48]=Oop [56]=Oop [72]=Oop }
          │      │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │      │  0x00007fa954650440:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@97 (line 213)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │      │                                                            ;   {poll}
          │      │  0x00007fa954650443:   cmp    0x50(%rsp),%r8d
          │      │  0x00007fa954650448:   jge    0x00007fa9546505b3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.05%  │      │  0x00007fa95465044e:   lea    0x2(%r14),%ebp
   0.17%  │      │  0x00007fa954650452:   mov    %r8d,0x40(%rsp)
   0.03%  │      │  0x00007fa954650457:   mov    0x38(%rsp),%r10
          │      │  0x00007fa95465045c:   mov    0x48(%rsp),%rbx
          │      │  0x00007fa954650461:   mov    0x50(%rsp),%ecx
   0.19%  │      │  0x00007fa954650465:   mov    0x10(%rsp),%r9               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@11 (line 214)
          │      │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.05%  ↘      │  0x00007fa95465046a:   mov    0x1c(%r11),%r8d              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │  0x00007fa95465046e:   mov    0x10(%r11),%edi              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │  0x00007fa954650472:   test   %edi,%edi
                 │  0x00007fa954650474:   je     0x00007fa9546506a7           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%         │  0x00007fa95465047a:   mov    %r14d,0x4(%rsp)
   0.05%         │  0x00007fa95465047f:   mov    %r9,0x10(%rsp)
                 │  0x00007fa954650484:   mov    %ecx,0x50(%rsp)
   0.00%         │  0x00007fa954650488:   mov    %r11,0x8(%rsp)
   0.16%         │  0x00007fa95465048d:   mov    %r13d,(%rsp)
   0.08%         │  0x00007fa954650491:   mov    %rbx,0x48(%rsp)
   0.01%         │  0x00007fa954650496:   mov    %r10,0x38(%rsp)              ;*synchronization entry
                 │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@-1 (line 162)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%         │  0x00007fa95465049b:   lea    (%r12,%rdi,8),%rsi           ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.18%         │  0x00007fa95465049f:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%         │  0x00007fa9546504a3:   mov    %r10,%rdx
   0.02%         │  0x00007fa9546504a6:   mov    0x40(%rsp),%ecx
   0.04%         │  0x00007fa9546504aa:   xor    %r9d,%r9d
   0.19%         │  0x00007fa9546504ad:   data16 xchg %ax,%ax
   0.02%         │  0x00007fa9546504b0:   vzeroupper 
   0.26%         │  0x00007fa9546504b3:   call   0x00007fa95463f040           ; ImmutableOopMap {[8]=Oop [48]=Oop [56]=Oop [72]=Oop }
                 │                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │                                                            ;   {optimized virtual_call}
   0.18%         │  0x00007fa9546504b8:   nopl   0x2000728(%rax,%rax,1)       ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                 │                                                            ;   {other}
   0.02%         │  0x00007fa9546504c0:   mov    0x8(%rsp),%r11
   0.07%         │  0x00007fa9546504c5:   mov    0xc(%r11),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.15%         │  0x00007fa9546504c9:   mov    0x18(%r11),%r9d              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
                 │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                 │                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%         │  0x00007fa9546504cd:   movslq %r8d,%rbx
   0.06%         │  0x00007fa9546504d0:   test   %r8d,%r8d
                ╭│  0x00007fa9546504d3:   jle    0x00007fa95465059c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%        ││  0x00007fa9546504d9:   vmovq  %r11,%xmm0
   0.12%        ││  0x00007fa9546504de:   mov    0x1c(%r11),%r10d             ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@45 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%        ││  0x00007fa9546504e2:   mov    0xc(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007fa95465072f
                ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.06%        ││  0x00007fa9546504e7:   test   %ecx,%ecx
                ││  0x00007fa9546504e9:   jbe    0x00007fa9546507ac
   0.02%        ││  0x00007fa9546504ef:   mov    %rbx,%rdi
   0.14%        ││  0x00007fa9546504f2:   dec    %rdi
   0.02%        ││  0x00007fa9546504f5:   movslq %ecx,%r11
   0.06%        ││  0x00007fa9546504f8:   cmp    %r11,%rdi
   0.01%        ││  0x00007fa9546504fb:   nopl   0x0(%rax,%rax,1)
   0.13%        ││  0x00007fa954650500:   jae    0x00007fa954650728
   0.01%        ││  0x00007fa954650506:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007fa954650cf8
                ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.06%        ││  0x00007fa95465050b:   test   %r11d,%r11d
                ││  0x00007fa95465050e:   jbe    0x00007fa9546507b6
   0.01%        ││  0x00007fa954650514:   movslq %r11d,%r11
   0.15%        ││  0x00007fa954650517:   cmp    %r11,%rdi
   0.02%        ││  0x00007fa95465051a:   nopw   0x0(%rax,%rax,1)
   0.06%        ││  0x00007fa954650520:   jae    0x00007fa954650798
   0.01%        ││  0x00007fa954650526:   mov    0x4(%rsp),%r14d
   0.17%        ││  0x00007fa95465052b:   cmp    0x58(%rsp),%r14d
                ││  0x00007fa954650530:   jae    0x00007fa954650734
   0.02%        ││  0x00007fa954650536:   movslq %r14d,%rax                   ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%        ││  0x00007fa954650539:   lea    (%rbx,%rax,1),%r11
   0.01%        ││  0x00007fa95465053d:   dec    %r11
   0.17%        ││  0x00007fa954650540:   cmp    0x10(%rsp),%r11
                ││  0x00007fa954650545:   jae    0x00007fa954650734
   0.01%        ││  0x00007fa95465054b:   movsbl 0x10(%r12,%r9,8),%ecx
   0.07%        ││  0x00007fa954650551:   movsbl 0x10(%r12,%r10,8),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%        ││  0x00007fa954650557:   xor    %r11d,%ecx
   0.16%        ││  0x00007fa95465055a:   mov    0x48(%rsp),%r11
   1.44%        ││  0x00007fa95465055f:   mov    %cl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   1.31%        ││  0x00007fa954650564:   lea    -0x3(%rbx),%rcx
   0.01%        ││  0x00007fa954650568:   lea    (%r12,%r9,8),%r11
   0.04%        ││  0x00007fa95465056c:   cmp    $0xffffffff80000000,%rcx
   0.02%        ││  0x00007fa954650573:   mov    $0xffffffff80000000,%rdi
   0.20%        ││  0x00007fa95465057a:   cmovl  %rdi,%rcx
   0.00%        ││  0x00007fa95465057e:   lea    (%r12,%r10,8),%rdi
   0.01%        ││  0x00007fa954650582:   mov    %ecx,%r13d
   0.00%        ││  0x00007fa954650585:   cmp    $0x1,%r13d
                ││  0x00007fa954650589:   jle    0x00007fa9546507a2
   0.22%        ││  0x00007fa95465058f:   movslq %ebp,%rsi
   0.00%        ││  0x00007fa954650592:   mov    $0x1,%ecx
   0.02%        │╰  0x00007fa954650597:   jmp    0x00007fa9546502ac
                ↘   0x00007fa95465059c:   nopl   0x0(%rax)
                    0x00007fa9546505a0:   test   %r9d,%r9d
                    0x00007fa9546505a3:   je     0x00007fa9546507c5           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@78 (line 218)
                                                                              ; - com.sun.crypto.provider.CipherBlockChaining::decrypt@36 (line 203)
                                                                              ; - com.sun.crypto.provider.FeedbackCipher::decryptFinal@8 (line 203)
                                                                              ; - com.sun.crypto.provider.CipherCore::finalNoPadding@145 (line 989)
                                                                              ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                              ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                    0x00007fa9546505a9:   mov    0x4(%rsp),%r14d
....................................................................................................
  13.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.32%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 651 
  13.90%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 684 
   4.07%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 651 
   1.77%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.74%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.35%              kernel  [unknown] 
   0.30%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 684 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.05%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.39%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 651 
  14.23%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 684 
   2.51%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.56%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%  libpthread-2.31.so  _pthread_cleanup_pop 
   0.16%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.63%         c2, level 4
   2.51%        runtime stub
   1.56%              kernel
   0.17%           libjvm.so
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 32, transformation = Blowfish/CBC/NoPadding)

# Run progress: 50.00% complete, ETA 00:09:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 323.801 us/op
# Warmup Iteration   2: 310.496 us/op
# Warmup Iteration   3: 309.901 us/op
# Warmup Iteration   4: 310.034 us/op
# Warmup Iteration   5: 310.140 us/op
Iteration   1: 311.914 us/op
Iteration   2: 310.080 us/op
Iteration   3: 310.288 us/op
Iteration   4: 310.298 us/op
Iteration   5: 310.429 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  310.602 ±(99.9%) 2.865 us/op [Average]
  (min, avg, max) = (310.080, 310.602, 311.914), stdev = 0.744
  CI (99.9%): [307.737, 313.466] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 152797 total address lines.
Perf output processed (skipped 57.204 seconds):
 Column 1: cycles (50946 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 

 <region is too big to display, has 1069 lines, but threshold is 1000>
....................................................................................................
  74.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 680 

                     0x00007f666464e07b:   mov    %ebp,0x50(%rsp)
                     0x00007f666464e07f:   xor    %r11d,%r11d
          ╭          0x00007f666464e082:   jmp    0x00007f666464e1e4
          │          0x00007f666464e087:   nop                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@23 (line 165)
          │                                                                    ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │                                                                    ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │                                                                    ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │                                                                    ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │                                                                    ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │↗     ↗   0x00007f666464e088:   movslq %r10d,%r8                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
          ││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          ││     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.63%  ││     │   0x00007f666464e08b:   movsbl 0x10(%rbx,%r8,1),%r11d
   0.10%  ││     │   0x00007f666464e091:   lea    (%rcx,%r8,1),%r9
   0.02%  ││     │   0x00007f666464e095:   movsbl 0x10(%r14,%r9,1),%r9d
   0.00%  ││     │   0x00007f666464e09b:   xor    %r9d,%r11d
   0.65%  ││     │   0x00007f666464e09e:   mov    %r11b,0x10(%rdi,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
          ││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          ││     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.25%  ││     │   0x00007f666464e0a3:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
          ││     │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          ││     │                                                             ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││     │                                                             ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  ││     │   0x00007f666464e0a6:   cmp    %r13d,%r10d
          │╰     │   0x00007f666464e0a9:   jl     0x00007f666464e088
          │      │↗  0x00007f666464e0ab:   mov    %r14,%r10
   0.17%  │      ││  0x00007f666464e0ae:   vmovq  %xmm0,%rbx
   0.06%  │      ││  0x00007f666464e0b3:   vmovd  %xmm1,%r9d
   0.01%  │      ││  0x00007f666464e0b8:   vmovq  %xmm2,%rcx
          │      ││  0x00007f666464e0bd:   vmovd  %xmm4,%edi
   0.18%  │      ││  0x00007f666464e0c1:   mov    (%rsp),%rdx
   0.06%  │      ││  0x00007f666464e0c5:   vmovd  %xmm3,%r11d                  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
          │      ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │      ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │      ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │      ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │      ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%  │   ↗  ││  0x00007f666464e0ca:   mov    0x10(%rcx),%r8d              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │   │  ││  0x00007f666464e0ce:   test   %r8d,%r8d
          │   │  ││  0x00007f666464e0d1:   je     0x00007f666464e467           ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │   │  ││                                                            ;   {no_reloc}
   0.17%  │   │  ││  0x00007f666464e0d7:   mov    %r11d,0x48(%rsp)
   0.07%  │   │  ││  0x00007f666464e0dc:   mov    %rdx,0x8(%rsp)
   0.01%  │   │  ││  0x00007f666464e0e1:   mov    %edi,0x4c(%rsp)
          │   │  ││  0x00007f666464e0e5:   mov    %rcx,(%rsp)
   0.23%  │   │  ││  0x00007f666464e0e9:   mov    %r9d,%ebp
   0.07%  │   │  ││  0x00007f666464e0ec:   mov    %rbx,0x40(%rsp)
   0.01%  │   │  ││  0x00007f666464e0f1:   mov    %r10,0x38(%rsp)              ;*synchronization entry
          │   │  ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@-1 (line 139)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │   │  ││  0x00007f666464e0f6:   mov    %rax,%rdx
   0.16%  │   │  ││  0x00007f666464e0f9:   shl    $0x3,%rdx                    ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.05%  │   │  ││  0x00007f666464e0fd:   lea    (%r12,%r8,8),%rsi            ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │   │  ││  0x00007f666464e101:   xor    %ecx,%ecx
   0.00%  │   │  ││  0x00007f666464e103:   mov    %rbx,%r8
   0.15%  │   │  ││  0x00007f666464e106:   mov    %r11d,%r9d
   0.05%  │   │  ││  0x00007f666464e109:   data16 xchg %ax,%ax
   0.01%  │   │  ││  0x00007f666464e10c:   vzeroupper 
   0.23%  │   │  ││  0x00007f666464e10f:   call   0x00007f666463f140           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │   │  ││                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │   │  ││                                                            ;   {optimized virtual_call}
   0.02%  │   │  ││  0x00007f666464e114:   nopl   0x584(%rax,%rax,1)           ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │   │  ││                                                            ;   {other}
          │   │  ││  0x00007f666464e11c:   mov    (%rsp),%rcx
   0.23%  │   │  ││  0x00007f666464e120:   mov    0x18(%rcx),%r11d             ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │   │  ││  0x00007f666464e124:   mov    0xc(%rcx),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │   │  ││  0x00007f666464e128:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f666464ea78
   0.00%  │   │  ││  0x00007f666464e12d:   mov    0x48(%rsp),%r10d
   0.24%  │   │  ││  0x00007f666464e132:   test   %r10d,%r10d
          │   │  ││  0x00007f666464e135:   jl     0x00007f666464e49c
          │   │  ││  0x00007f666464e13b:   lea    (%r10,%r8,1),%edi
          │   │  ││  0x00007f666464e13f:   mov    0x58(%rsp),%ebx
          │   │  ││  0x00007f666464e143:   cmp    %edi,%ebx
          │   │  ││  0x00007f666464e145:   jb     0x00007f666464e49c
   0.26%  │   │  ││  0x00007f666464e14b:   cmp    %r8d,%r9d
          │   │  ││  0x00007f666464e14e:   jb     0x00007f666464e49c
          │   │  ││  0x00007f666464e154:   test   %r8d,%r8d
          │   │  ││  0x00007f666464e157:   jl     0x00007f666464e49c           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │   │  ││  0x00007f666464e15d:   data16 xchg %ax,%ax
   0.00%  │   │  ││  0x00007f666464e160:   test   %r8d,%r8d
          │ ╭ │  ││  0x00007f666464e163:   je     0x00007f666464e19f
   0.25%  │ │ │  ││  0x00007f666464e165:   mov    %r10d,%r14d
          │ │ │  ││  0x00007f666464e168:   mov    %rcx,%rbx
          │ │ │  ││  0x00007f666464e16b:   mov    0x40(%rsp),%r9
   0.00%  │ │ │  ││  0x00007f666464e170:   lea    0x10(%r9,%r10,1),%rdi
   0.27%  │ │ │  ││  0x00007f666464e175:   movslq %r8d,%rdx
          │ │ │  ││  0x00007f666464e178:   lea    (%r12,%r11,8),%r10           ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │ │  ││  0x00007f666464e17c:   lea    0x10(%r12,%r11,8),%rsi
          │ │ │  ││  0x00007f666464e181:   vzeroupper 
   0.23%  │ │ │  ││  0x00007f666464e184:   movabs $0x7f66640a9080,%r10
   0.26%  │ │ │  ││  0x00007f666464e18e:   call   *%r10
          │ │ │  ││  0x00007f666464e191:   nopl   0x0(%rax,%rax,1)             ;   {other}
          │ │ │  ││  0x00007f666464e199:   mov    %rbx,%rcx
          │ │ │  ││  0x00007f666464e19c:   mov    %r14d,%r10d                  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │ │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.27%  │ ↘ │  ││  0x00007f666464e19f:   mov    0xc(%rcx),%r13d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │   │  ││  0x00007f666464e1a3:   mov    0x458(%r15),%r11
          │   │  ││  0x00007f666464e1aa:   add    %r13d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@96 (line 163)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%  │   │  ││  0x00007f666464e1ad:   mov    0x50(%rsp),%r8d
   0.39%  │   │  ││  0x00007f666464e1b2:   add    %r13d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.09%  │   │  ││  0x00007f666464e1b5:   mov    %r8d,0x50(%rsp)              ; ImmutableOopMap {rcx=Oop [48]=Oop [56]=Oop [64]=Oop }
          │   │  ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.38%  │   │  ││  0x00007f666464e1ba:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │   │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │   │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │   │  ││                                                            ;   {poll}
   0.04%  │   │  ││  0x00007f666464e1bd:   data16 xchg %ax,%ax
          │   │  ││  0x00007f666464e1c0:   cmp    0x4c(%rsp),%r8d
          │  ╭│  ││  0x00007f666464e1c5:   jge    0x00007f666464e377           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │  ││  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │  ││  ││  0x00007f666464e1cb:   mov    %r10d,%r11d
   0.19%  │  ││  ││  0x00007f666464e1ce:   mov    0x38(%rsp),%r10
   0.06%  │  ││  ││  0x00007f666464e1d3:   mov    0x40(%rsp),%rbx
          │  ││  ││  0x00007f666464e1d8:   mov    %ebp,%r9d
          │  ││  ││  0x00007f666464e1db:   mov    0x4c(%rsp),%edi
   0.23%  │  ││  ││  0x00007f666464e1df:   mov    0x8(%rsp),%rdx               ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@11 (line 164)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │  ││  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │  ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%  ↘  ││  ││  0x00007f666464e1e4:   mov    0x1c(%rcx),%eax              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
             ││  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
             ││  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             ││  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             ││  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             ││  ││  0x00007f666464e1e7:   test   %r13d,%r13d
             │╰  ││  0x00007f666464e1ea:   jle    0x00007f666464e0ca           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │   ││  0x00007f666464e1f0:   mov    0x50(%rsp),%ebp
   0.23%     │   ││  0x00007f666464e1f4:   cmp    %r9d,%ebp
             │   ││  0x00007f666464e1f7:   jae    0x00007f666464e500
   0.05%     │   ││  0x00007f666464e1fd:   vmovd  %r11d,%xmm3
             │   ││  0x00007f666464e202:   mov    %rdx,(%rsp)
             │   ││  0x00007f666464e206:   vmovd  %edi,%xmm4
   0.22%     │   ││  0x00007f666464e20a:   vmovq  %rcx,%xmm2
   0.03%     │   ││  0x00007f666464e20f:   vmovd  %r9d,%xmm1
             │   ││  0x00007f666464e214:   vmovq  %rbx,%xmm0
             │   ││  0x00007f666464e219:   mov    %r10,%r14
   0.37%     │   ││  0x00007f666464e21c:   movslq %r13d,%rdx
   0.07%     │   ││  0x00007f666464e21f:   movslq 0x50(%rsp),%rcx              ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.25%     │   ││  0x00007f666464e224:   lea    (%rdx,%rcx,1),%r10
   0.44%     │   ││  0x00007f666464e228:   dec    %r10
   0.23%     │   ││  0x00007f666464e22b:   cmp    (%rsp),%r10
             │   ││  0x00007f666464e22f:   jae    0x00007f666464e4f8
   0.24%     │   ││  0x00007f666464e235:   vmovq  %xmm2,%r10
             │   ││  0x00007f666464e23a:   mov    0x18(%r10),%r9d              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@36 (line 165)
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │   ││  0x00007f666464e23e:   xchg   %ax,%ax
             │   ││  0x00007f666464e240:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f666464eaac
             │   ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.55%     │   ││  0x00007f666464e245:   test   %r11d,%r11d
             │   ││  0x00007f666464e248:   jbe    0x00007f666464e585
   0.23%     │   ││  0x00007f666464e24e:   movslq %r11d,%r11
             │   ││  0x00007f666464e251:   mov    %rdx,%r10
             │   ││  0x00007f666464e254:   dec    %r10
   0.00%     │   ││  0x00007f666464e257:   cmp    %r11,%r10
   0.26%     │   ││  0x00007f666464e25a:   nopw   0x0(%rax,%rax,1)
             │   ││  0x00007f666464e260:   jae    0x00007f666464e558
   0.22%     │   ││  0x00007f666464e266:   mov    0xc(%r12,%rax,8),%r11d       ; implicit exception: dispatches to 0x00007f666464eabe
             │   ││                                                            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     │   ││  0x00007f666464e26b:   test   %r11d,%r11d
             │   ││  0x00007f666464e26e:   jbe    0x00007f666464e597
             │   ││  0x00007f666464e274:   movslq %r11d,%r11
             │   ││  0x00007f666464e277:   cmp    %r11,%r10
   0.22%     │   ││  0x00007f666464e27a:   nopw   0x0(%rax,%rax,1)
   0.01%     │   ││  0x00007f666464e280:   jae    0x00007f666464e567
             │   ││  0x00007f666464e286:   movsbl 0x10(%r14,%rcx,1),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.29%     │   ││  0x00007f666464e28c:   movsbl 0x10(%r12,%r9,8),%r8d
   0.21%     │   ││  0x00007f666464e292:   xor    %r10d,%r8d
   0.04%     │   ││  0x00007f666464e295:   mov    %r8b,0x10(%r12,%rax,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
             │   ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │   ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │   ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%     │   ││  0x00007f666464e29a:   lea    (%r12,%r9,8),%rbx
             │   ││  0x00007f666464e29e:   add    $0xfffffffffffffffd,%rdx
   0.21%     │   ││  0x00007f666464e2a2:   lea    (%r12,%rax,8),%rdi
             │   ││  0x00007f666464e2a6:   cmp    $0xffffffff80000000,%rdx
   0.03%     │   ││  0x00007f666464e2ad:   mov    $0xffffffff80000000,%r10
             │   ││  0x00007f666464e2b4:   cmovl  %r10,%rdx
   0.24%     │   ││  0x00007f666464e2b8:   mov    %edx,%ebp                    ;   {no_reloc}
   0.00%     │   ││  0x00007f666464e2ba:   nopw   0x0(%rax,%rax,1)
   0.03%     │   ││  0x00007f666464e2c0:   cmp    $0x1,%ebp
             │   ││  0x00007f666464e2c3:   jle    0x00007f666464e576
             │   ││  0x00007f666464e2c9:   mov    $0x1,%r10d
   0.23%     │  ↗││  0x00007f666464e2cf:   mov    %ebp,%r11d
   0.00%     │  │││  0x00007f666464e2d2:   sub    %r10d,%r11d
   0.02%     │  │││  0x00007f666464e2d5:   xor    %r9d,%r9d
             │  │││  0x00007f666464e2d8:   cmp    %r10d,%ebp
   0.21%     │  │││  0x00007f666464e2db:   cmovl  %r9d,%r11d
   0.00%     │  │││  0x00007f666464e2df:   cmp    $0xfa0,%r11d
   0.03%     │  │││  0x00007f666464e2e6:   mov    $0xfa0,%r8d
             │  │││  0x00007f666464e2ec:   cmova  %r8d,%r11d
   0.22%     │  │││  0x00007f666464e2f0:   add    %r10d,%r11d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │  │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@23 (line 165)
             │  │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │  │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%     │ ↗│││  0x00007f666464e2f3:   movslq %r10d,%rdx                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │ ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │ ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │ ││││  0x00007f666464e2f6:   movsbl 0x10(%rbx,%rdx,1),%r9d
   0.23%     │ ││││  0x00007f666464e2fc:   lea    (%rcx,%rdx,1),%rsi
   0.00%     │ ││││  0x00007f666464e300:   movsbl 0x10(%r14,%rsi,1),%r8d
   0.03%     │ ││││  0x00007f666464e306:   xor    %r8d,%r9d
             │ ││││  0x00007f666464e309:   mov    %r9b,0x10(%rdi,%rdx,1)
   0.23%     │ ││││  0x00007f666464e30e:   movsbl 0x11(%rbx,%rdx,1),%r9d
   0.00%     │ ││││  0x00007f666464e314:   movsbl 0x11(%r14,%rsi,1),%r8d
   0.03%     │ ││││  0x00007f666464e31a:   xor    %r8d,%r9d
             │ ││││  0x00007f666464e31d:   mov    %r9b,0x11(%rdi,%rdx,1)
   0.26%     │ ││││  0x00007f666464e322:   movsbl 0x12(%rbx,%rdx,1),%r8d
   0.01%     │ ││││  0x00007f666464e328:   movsbl 0x12(%r14,%rsi,1),%r9d
   0.01%     │ ││││  0x00007f666464e32e:   xor    %r9d,%r8d
             │ ││││  0x00007f666464e331:   mov    %r8b,0x12(%rdi,%rdx,1)
   0.24%     │ ││││  0x00007f666464e336:   movsbl 0x13(%rbx,%rdx,1),%r9d
   0.00%     │ ││││  0x00007f666464e33c:   movsbl 0x13(%r14,%rsi,1),%r8d
   0.01%     │ ││││  0x00007f666464e342:   xor    %r8d,%r9d
             │ ││││  0x00007f666464e345:   mov    %r9b,0x13(%rdi,%rdx,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
             │ ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │ ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.34%     │ ││││  0x00007f666464e34a:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │ ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │ ││││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │ ││││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     │ ││││  0x00007f666464e34e:   cmp    %r11d,%r10d
             │ ╰│││  0x00007f666464e351:   jl     0x00007f666464e2f3           ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │  │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
             │  │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │  │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%     │  │││  0x00007f666464e353:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rdi=Oop rax=NarrowOop r14=Oop xmm0=Oop xmm2=Oop [48]=Oop }
             │  │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
             │  │││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
             │  │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │  │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │  │││  0x00007f666464e35a:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │  │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
             │  │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             │  │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             │  │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
             │  │││                                                            ;   {poll}
   1.20%     │  │││  0x00007f666464e35d:   data16 xchg %ax,%ax
             │  │││  0x00007f666464e360:   cmp    %ebp,%r10d
             │  ╰││  0x00007f666464e363:   jl     0x00007f666464e2cf
   0.00%     │   ││  0x00007f666464e369:   cmp    %r13d,%r10d
             │   ╰│  0x00007f666464e36c:   jl     0x00007f666464e088
             │    ╰  0x00007f666464e372:   jmp    0x00007f666464e0ab
   0.00%     ↘       0x00007f666464e377:   mov    0x30(%rsp),%r10
   0.00%             0x00007f666464e37c:   movzbl 0x24(%r10),%ebp              ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%             0x00007f666464e381:   test   %ebp,%ebp
                     0x00007f666464e383:   jne    0x00007f666464ea30           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                     0x00007f666464e389:   mov    0xc(%r10),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                               ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                     0x00007f666464e38d:   mov    0x20(%r10),%r11d             ;*getfield cipherMode {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.sun.crypto.provider.CipherCore::endDoFinal@14 (line 852)
....................................................................................................
  14.94%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.51%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 
  14.94%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 680 
   4.18%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 
   1.86%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.09%              kernel  [unknown] 
   0.92%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.78%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.31%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 680 
   0.14%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.90%  <...other 270 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.69%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 
  15.28%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 680 
   3.57%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.17%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 681 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.15%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.97%         c2, level 4
   3.57%        runtime stub
   2.17%              kernel
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%        libjimage.so
   0.00%    perf-1931569.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 64, transformation = Blowfish/CBC/NoPadding)

# Run progress: 60.00% complete, ETA 00:07:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 298.226 us/op
# Warmup Iteration   2: 288.069 us/op
# Warmup Iteration   3: 287.476 us/op
# Warmup Iteration   4: 287.149 us/op
# Warmup Iteration   5: 287.500 us/op
Iteration   1: 287.444 us/op
Iteration   2: 287.136 us/op
Iteration   3: 287.245 us/op
Iteration   4: 287.463 us/op
Iteration   5: 287.126 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  287.283 ±(99.9%) 0.627 us/op [Average]
  (min, avg, max) = (287.126, 287.283, 287.463), stdev = 0.163
  CI (99.9%): [286.656, 287.910] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 148048 total address lines.
Perf output processed (skipped 56.835 seconds):
 Column 1: cycles (50830 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 637 

             # parm0:    rdx:rdx   = &apos;[I&apos;
             #           [sp+0x50]  (sp of caller)
             0x00007fa49861b440:   mov    0x8(%rsi),%r10d
             0x00007fa49861b444:   movabs $0x7fa417000000,%r11
             0x00007fa49861b44e:   add    %r11,%r10
             0x00007fa49861b451:   cmp    %r10,%rax
             0x00007fa49861b454:   jne    0x00007fa4980a0080           ;   {runtime_call ic_miss_stub}
             0x00007fa49861b45a:   xchg   %ax,%ax
             0x00007fa49861b45c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.03%     0x00007fa49861b460:   mov    %eax,-0x14000(%rsp)
   0.29%     0x00007fa49861b467:   push   %rbp
             0x00007fa49861b468:   sub    $0x40,%rsp
   0.14%     0x00007fa49861b46c:   cmpl   $0x1,0x20(%r15)
   0.18%     0x00007fa49861b474:   jne    0x00007fa49861cb6a           ;*synchronization entry
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@-1 (line 203)
             0x00007fa49861b47a:   vmovq  %rsi,%xmm8
   0.04%     0x00007fa49861b47f:   nop
   0.08%     0x00007fa49861b480:   mov    0xc(%rdx),%r11d              ; implicit exception: dispatches to 0x00007fa49861cad4
   0.15%     0x00007fa49861b484:   cmp    $0x1,%r11d
             0x00007fa49861b488:   jbe    0x00007fa49861c9fc
             0x00007fa49861b48e:   mov    0x10(%rsi),%ecx              ;*getfield p {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@10 (line 206)
   0.04%     0x00007fa49861b491:   mov    0xc(%r12,%rcx,8),%r11d       ; implicit exception: dispatches to 0x00007fa49861cae8
                                                                       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@88 (line 213)
   0.10%     0x00007fa49861b496:   vmovd  %r11d,%xmm9
   0.18%     0x00007fa49861b49b:   mov    0x10(%rdx),%r9d              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@2 (line 203)
             0x00007fa49861b49f:   mov    0x14(%rdx),%eax              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 204)
   0.01%     0x00007fa49861b4a2:   cmp    $0x4,%r11d
             0x00007fa49861b4a6:   jbe    0x00007fa49861ca18
   0.07%     0x00007fa49861b4ac:   xor    0x10(%r12,%rcx,8),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@15 (line 206)
   0.16%     0x00007fa49861b4b1:   mov    0x14(%rsi),%ebx              ;*getfield s0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::F@1 (line 275)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
             0x00007fa49861b4b4:   mov    %r9d,%r11d
   0.02%     0x00007fa49861b4b7:   shr    $0x18,%r11d                  ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.09%     0x00007fa49861b4bb:   nopl   0x0(%rax,%rax,1)
   0.15%     0x00007fa49861b4c0:   mov    0xc(%r12,%rbx,8),%r10d       ; implicit exception: dispatches to 0x00007fa49861cafc
                                                                       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
             0x00007fa49861b4c5:   cmp    %r10d,%r11d
          ╭  0x00007fa49861b4c8:   jae    0x00007fa49861bd4f
   0.05%  │  0x00007fa49861b4ce:   mov    0x18(%rsi),%r13d             ;*getfield s1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@10 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.09%  │  0x00007fa49861b4d2:   mov    %r9d,%edi
   0.13%  │  0x00007fa49861b4d5:   shr    $0x10,%edi
   0.01%  │  0x00007fa49861b4d8:   movzbl %dil,%edi                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.05%  │  0x00007fa49861b4dc:   nopl   0x0(%rax)
   0.11%  │  0x00007fa49861b4e0:   mov    0xc(%r12,%r13,8),%r8d        ; implicit exception: dispatches to 0x00007fa49861cb14
          │                                                            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@21 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.18%  │  0x00007fa49861b4e5:   lea    (%r12,%rbx,8),%r14
          │  0x00007fa49861b4e9:   mov    0x10(%r14,%r11,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.16%  │  0x00007fa49861b4ee:   cmp    %r8d,%edi
          │  0x00007fa49861b4f1:   jae    0x00007fa49861bd7c
   0.08%  │  0x00007fa49861b4f7:   vmovd  %r11d,%xmm2
   0.30%  │  0x00007fa49861b4fc:   mov    %edi,%esi
   0.00%  │  0x00007fa49861b4fe:   vmovd  %r13d,%xmm3
   0.02%  │  0x00007fa49861b503:   vmovd  %ebx,%xmm1
   0.07%  │  0x00007fa49861b507:   mov    %eax,0x10(%rsp)
   0.15%  │  0x00007fa49861b50b:   mov    %r9d,%r13d
          │  0x00007fa49861b50e:   vmovd  %ecx,%xmm0
   0.01%  │  0x00007fa49861b512:   vmovq  %xmm8,%r11
   0.09%  │  0x00007fa49861b517:   mov    0x1c(%r11),%r11d             ;*getfield s2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@24 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.12%  │  0x00007fa49861b51b:   vmovd  %r11d,%xmm5
          │  0x00007fa49861b520:   shr    $0x8,%r9d
   0.02%  │  0x00007fa49861b524:   movzbl %r9b,%r11d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.07%  │  0x00007fa49861b528:   mov    %r11d,%eax
   0.18%  │  0x00007fa49861b52b:   vmovd  %xmm5,%r11d
          │  0x00007fa49861b530:   mov    0xc(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007fa49861cb28
          │                                                            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@35 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.06%  │  0x00007fa49861b535:   vmovd  %xmm3,%r9d
   0.07%  │  0x00007fa49861b53a:   lea    (%r12,%r9,8),%rdi
   0.15%  │  0x00007fa49861b53e:   vmovd  %xmm2,%ecx
          │  0x00007fa49861b542:   add    0x10(%rdi,%rsi,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.06%  │  0x00007fa49861b546:   mov    %ecx,%ebx
   0.08%  │  0x00007fa49861b548:   cmp    %r11d,%eax
          │  0x00007fa49861b54b:   jae    0x00007fa49861bdb0
   0.16%  │  0x00007fa49861b551:   vmovq  %xmm8,%r9                    ;   {no_reloc}
          │  0x00007fa49861b556:   mov    0x20(%r9),%r9d               ;*getfield s3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@38 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.07%  │  0x00007fa49861b55a:   vmovd  %r9d,%xmm4
   0.08%  │  0x00007fa49861b55f:   movzbl %r13b,%r9d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.14%  │  0x00007fa49861b563:   vmovd  %r9d,%xmm6
          │  0x00007fa49861b568:   vmovd  %xmm4,%r9d
   0.06%  │  0x00007fa49861b56d:   mov    0xc(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007fa49861cb3c
          │                                                            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@46 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.10%  │  0x00007fa49861b572:   vmovd  %xmm5,%r9d
   0.14%  │  0x00007fa49861b577:   lea    (%r12,%r9,8),%rsi
          │  0x00007fa49861b57b:   xor    0x10(%rsi,%rax,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@20 (line 208)
   0.02%  │  0x00007fa49861b57f:   mov    %ebx,%eax
   0.12%  │  0x00007fa49861b581:   vmovd  %xmm6,%r9d
   0.13%  │  0x00007fa49861b586:   cmp    %ecx,%r9d
          │  0x00007fa49861b589:   jae    0x00007fa49861bde0
          │  0x00007fa49861b58f:   vmovq  %rdx,%xmm7
   0.02%  │  0x00007fa49861b594:   vmovd  %xmm0,%ebx
   0.14%  │  0x00007fa49861b598:   mov    0x14(%r12,%rbx,8),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@28 (line 208)
   0.15%  │  0x00007fa49861b59d:   vmovd  %xmm4,%r9d
          │  0x00007fa49861b5a2:   lea    (%r12,%r9,8),%rdx
   0.04%  │  0x00007fa49861b5a6:   vmovd  %xmm6,%r9d
   0.09%  │  0x00007fa49861b5ab:   add    0x10(%rdx,%r9,4),%eax
   0.23%  │  0x00007fa49861b5b0:   mov    %eax,%r9d
          │  0x00007fa49861b5b3:   xor    %ebx,%r9d
   0.21%  │  0x00007fa49861b5b6:   xor    0x10(%rsp),%r9d              ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@30 (line 208)
   0.25%  │  0x00007fa49861b5bb:   mov    %r9d,%eax
   0.03%  │  0x00007fa49861b5be:   mov    %r9d,%ebp
          │  0x00007fa49861b5c1:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@35 (line 209)
   0.22%  │  0x00007fa49861b5c4:   cmp    %r10d,%ebp
          │  0x00007fa49861b5c7:   jae    0x00007fa49861be1c
   0.24%  │  0x00007fa49861b5cd:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@35 (line 209)
   0.99%  │  0x00007fa49861b5d2:   mov    %r9d,%ebx
          │  0x00007fa49861b5d5:   mov    %eax,%r9d
          │  0x00007fa49861b5d8:   shr    $0x10,%r9d
          │  0x00007fa49861b5dc:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@35 (line 209)
   0.30%  │  0x00007fa49861b5e0:   cmp    %r8d,%ebp
          │  0x00007fa49861b5e3:   jae    0x00007fa49861be4c
          │  0x00007fa49861b5e9:   mov    %ebx,%r9d
          │  0x00007fa49861b5ec:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@35 (line 209)
   0.44%  │  0x00007fa49861b5f1:   mov    %eax,%ebx
          │  0x00007fa49861b5f3:   shr    $0x8,%ebx
          │  0x00007fa49861b5f6:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@35 (line 209)
   0.00%  │  0x00007fa49861b5f9:   cmp    %r11d,%ebp
   0.27%  │  0x00007fa49861b5fc:   nopl   0x0(%rax)
          │  0x00007fa49861b600:   jae    0x00007fa49861be80
          │  0x00007fa49861b606:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@35 (line 209)
   0.03%  │  0x00007fa49861b60b:   movzbl %al,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@35 (line 209)
   0.25%  │  0x00007fa49861b60e:   cmp    %ecx,%ebp
          │  0x00007fa49861b610:   jae    0x00007fa49861beb4
          │  0x00007fa49861b616:   add    0x10(%rdx,%rbp,4),%r9d
   0.02%  │  0x00007fa49861b61b:   mov    %r9d,%ebp
          │  0x00007fa49861b61e:   vmovd  %xmm0,%r9d
   0.24%  │  0x00007fa49861b623:   mov    0x18(%r12,%r9,8),%r9d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@43 (line 209)
          │  0x00007fa49861b628:   mov    %ebp,%ebx
   0.01%  │  0x00007fa49861b62a:   xor    %r9d,%ebx
          │  0x00007fa49861b62d:   xor    %r13d,%ebx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@45 (line 209)
   0.31%  │  0x00007fa49861b630:   mov    %ebx,%r13d
   0.79%  │  0x00007fa49861b633:   mov    %ebx,%ebp
          │  0x00007fa49861b635:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@50 (line 210)
   0.02%  │  0x00007fa49861b638:   cmp    %r10d,%ebp
   0.06%  │  0x00007fa49861b63b:   nopl   0x0(%rax,%rax,1)
   0.46%  │  0x00007fa49861b640:   jae    0x00007fa49861bee8
          │  0x00007fa49861b646:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@50 (line 210)
   0.60%  │  0x00007fa49861b64b:   vmovd  %r9d,%xmm2
   0.57%  │  0x00007fa49861b650:   mov    %ebx,%r9d                    ;   {no_reloc}
          │  0x00007fa49861b653:   shr    $0x10,%r9d
          │  0x00007fa49861b657:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@50 (line 210)
          │  0x00007fa49861b65b:   nopl   0x0(%rax,%rax,1)
   0.32%  │  0x00007fa49861b660:   cmp    %r8d,%ebp
          │  0x00007fa49861b663:   jae    0x00007fa49861bf14
          │  0x00007fa49861b669:   vmovd  %xmm2,%r9d
   0.21%  │  0x00007fa49861b66e:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@50 (line 210)
   0.27%  │  0x00007fa49861b673:   shr    $0x8,%ebx
          │  0x00007fa49861b676:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@50 (line 210)
          │  0x00007fa49861b679:   cmp    %r11d,%ebp
          │  0x00007fa49861b67c:   nopl   0x0(%rax)
   0.27%  │  0x00007fa49861b680:   jae    0x00007fa49861bf48
          │  0x00007fa49861b686:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@50 (line 210)
          │  0x00007fa49861b68b:   movzbl %r13b,%ebp                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@50 (line 210)
          │  0x00007fa49861b68f:   cmp    %ecx,%ebp
          │  0x00007fa49861b691:   jae    0x00007fa49861bf7c
   0.24%  │  0x00007fa49861b697:   add    0x10(%rdx,%rbp,4),%r9d
   0.00%  │  0x00007fa49861b69c:   mov    %r9d,%ebp
          │  0x00007fa49861b69f:   vmovd  %xmm0,%r9d
          │  0x00007fa49861b6a4:   mov    0x1c(%r12,%r9,8),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@58 (line 210)
   0.22%  │  0x00007fa49861b6a9:   mov    %ebp,%r9d
          │  0x00007fa49861b6ac:   xor    %ebx,%r9d
          │  0x00007fa49861b6af:   xor    %eax,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@60 (line 210)
   0.26%  │  0x00007fa49861b6b2:   mov    %r9d,%eax
          │  0x00007fa49861b6b5:   mov    %r9d,%ebp
          │  0x00007fa49861b6b8:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@65 (line 211)
   0.50%  │  0x00007fa49861b6bb:   nopl   0x0(%rax,%rax,1)
          │  0x00007fa49861b6c0:   cmp    %r10d,%ebp
          │  0x00007fa49861b6c3:   jae    0x00007fa49861bfb0
   0.01%  │  0x00007fa49861b6c9:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@65 (line 211)
   1.05%  │  0x00007fa49861b6ce:   mov    %r9d,%ebx
          │  0x00007fa49861b6d1:   mov    %eax,%r9d
          │  0x00007fa49861b6d4:   shr    $0x10,%r9d
          │  0x00007fa49861b6d8:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@65 (line 211)
   0.23%  │  0x00007fa49861b6dc:   nopl   0x0(%rax)
          │  0x00007fa49861b6e0:   cmp    %r8d,%ebp
          │  0x00007fa49861b6e3:   jae    0x00007fa49861bfe0
   0.00%  │  0x00007fa49861b6e9:   mov    %ebx,%r9d
          │  0x00007fa49861b6ec:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@65 (line 211)
   0.45%  │  0x00007fa49861b6f1:   mov    %eax,%ebx
          │  0x00007fa49861b6f3:   shr    $0x8,%ebx
          │  0x00007fa49861b6f6:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@65 (line 211)
          │  0x00007fa49861b6f9:   cmp    %r11d,%ebp
   0.28%  │  0x00007fa49861b6fc:   nopl   0x0(%rax)
          │  0x00007fa49861b700:   jae    0x00007fa49861c014
          │  0x00007fa49861b706:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@65 (line 211)
   0.09%  │  0x00007fa49861b70b:   movzbl %al,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@65 (line 211)
   0.16%  │  0x00007fa49861b70e:   cmp    %ecx,%ebp
          │  0x00007fa49861b710:   jae    0x00007fa49861c048
          │  0x00007fa49861b716:   add    0x10(%rdx,%rbp,4),%r9d
   0.10%  │  0x00007fa49861b71b:   vmovd  %r9d,%xmm2
   0.54%  │  0x00007fa49861b720:   vmovd  %xmm0,%ebx
          │  0x00007fa49861b724:   mov    0x20(%r12,%rbx,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@73 (line 211)
          │  0x00007fa49861b729:   vmovd  %xmm2,%ebx
   0.51%  │  0x00007fa49861b72d:   xor    %r9d,%ebx
   0.24%  │  0x00007fa49861b730:   xor    %r13d,%ebx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@75 (line 211)
   0.48%  │  0x00007fa49861b733:   mov    %ebx,%r13d
          │  0x00007fa49861b736:   mov    %ebx,%ebp
          │  0x00007fa49861b738:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
   0.19%  │  0x00007fa49861b73b:   nopl   0x0(%rax,%rax,1)
   0.28%  │  0x00007fa49861b740:   cmp    %r10d,%ebp
          │  0x00007fa49861b743:   jae    0x00007fa49861c07c
   0.01%  │  0x00007fa49861b749:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
   0.97%  │  0x00007fa49861b74e:   vmovd  %r9d,%xmm2                   ;   {no_reloc}
   0.53%  │  0x00007fa49861b753:   mov    %ebx,%r9d
          │  0x00007fa49861b756:   shr    $0x10,%r9d
          │  0x00007fa49861b75a:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
          │  0x00007fa49861b75e:   xchg   %ax,%ax
   0.30%  │  0x00007fa49861b760:   cmp    %r8d,%ebp
          │  0x00007fa49861b763:   jae    0x00007fa49861c0a8
          │  0x00007fa49861b769:   vmovd  %xmm2,%r9d
   0.22%  │  0x00007fa49861b76e:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
   0.27%  │  0x00007fa49861b773:   shr    $0x8,%ebx
          │  0x00007fa49861b776:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
          │  0x00007fa49861b779:   cmp    %r11d,%ebp
          │  0x00007fa49861b77c:   nopl   0x0(%rax)
   0.27%  │  0x00007fa49861b780:   jae    0x00007fa49861c0dc
          │  0x00007fa49861b786:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
          │  0x00007fa49861b78b:   movzbl %r13b,%ebp                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
          │  0x00007fa49861b78f:   cmp    %ecx,%ebp
          │  0x00007fa49861b791:   jae    0x00007fa49861c110
   0.31%  │  0x00007fa49861b797:   add    0x10(%rdx,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@47 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@80 (line 213)
          │  0x00007fa49861b79c:   mov    %r9d,%ebx
          │  0x00007fa49861b79f:   vmovd  %xmm9,%r9d
          │  0x00007fa49861b7a4:   cmp    $0x9,%r9d
          │  0x00007fa49861b7a8:   jbe    0x00007fa49861ca40
   0.28%  │  0x00007fa49861b7ae:   vmovd  %xmm0,%r9d
          │  0x00007fa49861b7b3:   xor    0x24(%r12,%r9,8),%ebx
          │  0x00007fa49861b7b8:   xor    %eax,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@90 (line 213)
   0.24%  │  0x00007fa49861b7ba:   mov    %ebx,%eax
          │  0x00007fa49861b7bc:   mov    %ebx,%ebp
          │  0x00007fa49861b7be:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.31%  │  0x00007fa49861b7c1:   cmp    %r10d,%ebp
          │  0x00007fa49861b7c4:   jae    0x00007fa49861c144
   0.28%  │  0x00007fa49861b7ca:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   1.04%  │  0x00007fa49861b7cf:   mov    %r9d,%ebx
          │  0x00007fa49861b7d2:   mov    %eax,%r9d
          │  0x00007fa49861b7d5:   shr    $0x10,%r9d
          │  0x00007fa49861b7d9:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.29%  │  0x00007fa49861b7dd:   data16 xchg %ax,%ax
          │  0x00007fa49861b7e0:   cmp    %r8d,%ebp
          │  0x00007fa49861b7e3:   jae    0x00007fa49861c174
          │  0x00007fa49861b7e9:   mov    %ebx,%r9d
          │  0x00007fa49861b7ec:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.38%  │  0x00007fa49861b7f1:   mov    %eax,%ebx
          │  0x00007fa49861b7f3:   shr    $0x8,%ebx
          │  0x00007fa49861b7f6:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
          │  0x00007fa49861b7f9:   cmp    %r11d,%ebp
   0.25%  │  0x00007fa49861b7fc:   nopl   0x0(%rax)
          │  0x00007fa49861b800:   jae    0x00007fa49861c1a8
          │  0x00007fa49861b806:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.36%  │  0x00007fa49861b80b:   movzbl %al,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@95 (line 214)
   0.10%  │  0x00007fa49861b80e:   cmp    %ecx,%ebp
          │  0x00007fa49861b810:   jae    0x00007fa49861c1dc
          │  0x00007fa49861b816:   add    0x10(%rdx,%rbp,4),%r9d
   0.16%  │  0x00007fa49861b81b:   vmovd  %r9d,%xmm2
   0.56%  │  0x00007fa49861b820:   vmovd  %xmm0,%r9d
          │  0x00007fa49861b825:   mov    0x28(%r12,%r9,8),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@104 (line 214)
          │  0x00007fa49861b82a:   vmovd  %xmm2,%r9d
   0.51%  │  0x00007fa49861b82f:   xor    %ebx,%r9d
   0.26%  │  0x00007fa49861b832:   xor    %r13d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@106 (line 214)
   0.47%  │  0x00007fa49861b835:   mov    %r9d,%r13d
          │  0x00007fa49861b838:   mov    %r9d,%ebp
          │  0x00007fa49861b83b:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@111 (line 215)
   0.09%  │  0x00007fa49861b83e:   xchg   %ax,%ax
   0.33%  │  0x00007fa49861b840:   cmp    %r10d,%ebp
          │  0x00007fa49861b843:   jae    0x00007fa49861c210
   0.00%  │  0x00007fa49861b849:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@111 (line 215)
   0.96%  │  0x00007fa49861b84e:   vmovd  %r9d,%xmm2                   ;   {no_reloc}
   0.54%  │  0x00007fa49861b853:   mov    %r13d,%r9d
          │  0x00007fa49861b856:   shr    $0x10,%r9d
          │  0x00007fa49861b85a:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@111 (line 215)
          │  0x00007fa49861b85e:   xchg   %ax,%ax
   0.34%  │  0x00007fa49861b860:   cmp    %r8d,%ebp
          │  0x00007fa49861b863:   jae    0x00007fa49861c240
          │  0x00007fa49861b869:   vmovd  %xmm2,%r9d
   0.21%  │  0x00007fa49861b86e:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@111 (line 215)
   0.31%  │  0x00007fa49861b873:   mov    %r13d,%ebx
          │  0x00007fa49861b876:   shr    $0x8,%ebx
          │  0x00007fa49861b879:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@111 (line 215)
          │  0x00007fa49861b87c:   nopl   0x0(%rax)
   0.30%  │  0x00007fa49861b880:   cmp    %r11d,%ebp
          │  0x00007fa49861b883:   jae    0x00007fa49861c274
          │  0x00007fa49861b889:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@111 (line 215)
   0.00%  │  0x00007fa49861b88e:   movzbl %r13b,%ebp                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@111 (line 215)
          │  0x00007fa49861b892:   cmp    %ecx,%ebp
          │  0x00007fa49861b894:   jae    0x00007fa49861c2a8
   0.26%  │  0x00007fa49861b89a:   add    0x10(%rdx,%rbp,4),%r9d
   0.00%  │  0x00007fa49861b89f:   mov    %r9d,%ebp
          │  0x00007fa49861b8a2:   vmovd  %xmm0,%ebx
          │  0x00007fa49861b8a6:   mov    0x2c(%r12,%rbx,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@120 (line 215)
   0.23%  │  0x00007fa49861b8ab:   mov    %ebp,%ebx
          │  0x00007fa49861b8ad:   xor    %r9d,%ebx
   0.01%  │  0x00007fa49861b8b0:   xor    %eax,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@122 (line 215)
   0.27%  │  0x00007fa49861b8b2:   mov    %ebx,%eax
          │  0x00007fa49861b8b4:   mov    %ebx,%ebp
   0.25%  │  0x00007fa49861b8b6:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@127 (line 216)
   0.76%  │  0x00007fa49861b8b9:   cmp    %r10d,%ebp
   0.05%  │  0x00007fa49861b8bc:   nopl   0x0(%rax)
          │  0x00007fa49861b8c0:   jae    0x00007fa49861c2dc
   0.09%  │  0x00007fa49861b8c6:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@127 (line 216)
   0.88%  │  0x00007fa49861b8cb:   mov    %r9d,%ebx
          │  0x00007fa49861b8ce:   mov    %eax,%r9d
          │  0x00007fa49861b8d1:   shr    $0x10,%r9d
          │  0x00007fa49861b8d5:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@127 (line 216)
   0.24%  │  0x00007fa49861b8d9:   cmp    %r8d,%ebp
          │  0x00007fa49861b8dc:   nopl   0x0(%rax)
          │  0x00007fa49861b8e0:   jae    0x00007fa49861c30c
          │  0x00007fa49861b8e6:   mov    %ebx,%r9d
   0.31%  │  0x00007fa49861b8e9:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@127 (line 216)
   0.01%  │  0x00007fa49861b8ee:   mov    %eax,%ebx
          │  0x00007fa49861b8f0:   shr    $0x8,%ebx
          │  0x00007fa49861b8f3:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@127 (line 216)
   0.28%  │  0x00007fa49861b8f6:   cmp    %r11d,%ebp
          │  0x00007fa49861b8f9:   jae    0x00007fa49861c340
   0.00%  │  0x00007fa49861b8ff:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@127 (line 216)
   0.20%  │  0x00007fa49861b904:   movzbl %al,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@127 (line 216)
          │  0x00007fa49861b907:   cmp    %ecx,%ebp
          │  0x00007fa49861b909:   jae    0x00007fa49861c374
   0.10%  │  0x00007fa49861b90f:   add    0x10(%rdx,%rbp,4),%r9d
   0.14%  │  0x00007fa49861b914:   vmovd  %r9d,%xmm2
   0.54%  │  0x00007fa49861b919:   vmovd  %xmm0,%r9d
          │  0x00007fa49861b91e:   mov    0x30(%r12,%r9,8),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@136 (line 216)
          │  0x00007fa49861b923:   vmovd  %xmm2,%r9d
   0.53%  │  0x00007fa49861b928:   xor    %ebx,%r9d
   0.28%  │  0x00007fa49861b92b:   xor    %r13d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@138 (line 216)
   0.36%  │  0x00007fa49861b92e:   mov    %r9d,%r13d
          │  0x00007fa49861b931:   mov    %r9d,%ebp
          │  0x00007fa49861b934:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@143 (line 218)
   0.33%  │  0x00007fa49861b937:   cmp    %r10d,%ebp
   0.31%  │  0x00007fa49861b93a:   nopw   0x0(%rax,%rax,1)
          │  0x00007fa49861b940:   jae    0x00007fa49861c3a8
   0.03%  │  0x00007fa49861b946:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@143 (line 218)
   0.84%  │  0x00007fa49861b94b:   vmovd  %r9d,%xmm2                   ;   {no_reloc}
   0.49%  │  0x00007fa49861b950:   mov    %r13d,%r9d
          │  0x00007fa49861b953:   shr    $0x10,%r9d
          │  0x00007fa49861b957:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@143 (line 218)
          │  0x00007fa49861b95b:   nopl   0x0(%rax,%rax,1)
   0.40%  │  0x00007fa49861b960:   cmp    %r8d,%ebp
          │  0x00007fa49861b963:   jae    0x00007fa49861c3d8
          │  0x00007fa49861b969:   vmovd  %xmm2,%r9d
   0.18%  │  0x00007fa49861b96e:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@143 (line 218)
   0.42%  │  0x00007fa49861b973:   mov    %r13d,%ebx
          │  0x00007fa49861b976:   shr    $0x8,%ebx
          │  0x00007fa49861b979:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@143 (line 218)
          │  0x00007fa49861b97c:   nopl   0x0(%rax)
   0.26%  │  0x00007fa49861b980:   cmp    %r11d,%ebp
          │  0x00007fa49861b983:   jae    0x00007fa49861c40c
          │  0x00007fa49861b989:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@143 (line 218)
          │  0x00007fa49861b98e:   movzbl %r13b,%ebp                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@143 (line 218)
          │  0x00007fa49861b992:   cmp    %ecx,%ebp
          │  0x00007fa49861b994:   jae    0x00007fa49861c440
   0.29%  │  0x00007fa49861b99a:   add    0x10(%rdx,%rbp,4),%r9d
   0.00%  │  0x00007fa49861b99f:   mov    %r9d,%ebp
          │  0x00007fa49861b9a2:   vmovd  %xmm0,%ebx
          │  0x00007fa49861b9a6:   mov    0x34(%r12,%rbx,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@152 (line 218)
   0.31%  │  0x00007fa49861b9ab:   mov    %ebp,%ebx
          │  0x00007fa49861b9ad:   xor    %r9d,%ebx
          │  0x00007fa49861b9b0:   xor    %eax,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@154 (line 218)
   0.27%  │  0x00007fa49861b9b2:   mov    %ebx,%eax
          │  0x00007fa49861b9b4:   mov    %ebx,%ebp
   0.24%  │  0x00007fa49861b9b6:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
   0.71%  │  0x00007fa49861b9b9:   cmp    %r10d,%ebp
   0.00%  │  0x00007fa49861b9bc:   nopl   0x0(%rax)
          │  0x00007fa49861b9c0:   jae    0x00007fa49861c474
   0.10%  │  0x00007fa49861b9c6:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
   0.78%  │  0x00007fa49861b9cb:   mov    %r9d,%ebx
          │  0x00007fa49861b9ce:   mov    %eax,%r9d
          │  0x00007fa49861b9d1:   shr    $0x10,%r9d
          │  0x00007fa49861b9d5:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
   0.27%  │  0x00007fa49861b9d9:   cmp    %r8d,%ebp
          │  0x00007fa49861b9dc:   nopl   0x0(%rax)
          │  0x00007fa49861b9e0:   jae    0x00007fa49861c4a4
          │  0x00007fa49861b9e6:   mov    %ebx,%r9d
   0.29%  │  0x00007fa49861b9e9:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
          │  0x00007fa49861b9ee:   mov    %eax,%ebx
          │  0x00007fa49861b9f0:   shr    $0x8,%ebx
          │  0x00007fa49861b9f3:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
   0.30%  │  0x00007fa49861b9f6:   cmp    %r11d,%ebp
          │  0x00007fa49861b9f9:   jae    0x00007fa49861c4d8
          │  0x00007fa49861b9ff:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
   0.01%  │  0x00007fa49861ba04:   movzbl %al,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
          │  0x00007fa49861ba07:   cmp    %ecx,%ebp
          │  0x00007fa49861ba09:   jae    0x00007fa49861c50c
   0.29%  │  0x00007fa49861ba0f:   add    0x10(%rdx,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@47 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@159 (line 219)
   0.01%  │  0x00007fa49861ba14:   vmovd  %r9d,%xmm2
   0.54%  │  0x00007fa49861ba19:   vmovd  %xmm9,%r9d
          │  0x00007fa49861ba1e:   xchg   %ax,%ax
          │  0x00007fa49861ba20:   cmp    $0xe,%r9d
          │  0x00007fa49861ba24:   jbe    0x00007fa49861ca70
          │  0x00007fa49861ba2a:   vmovd  %xmm0,%r9d
   0.41%  │  0x00007fa49861ba2f:   vmovd  %xmm2,%ebx
   0.15%  │  0x00007fa49861ba33:   xor    0x38(%r12,%r9,8),%ebx
   0.30%  │  0x00007fa49861ba38:   xor    %r13d,%ebx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@170 (line 219)
   0.26%  │  0x00007fa49861ba3b:   mov    %ebx,%r13d
          │  0x00007fa49861ba3e:   mov    %ebx,%ebp
          │  0x00007fa49861ba40:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@175 (line 220)
   0.44%  │  0x00007fa49861ba43:   cmp    %r10d,%ebp
          │  0x00007fa49861ba46:   jae    0x00007fa49861c540
   0.06%  │  0x00007fa49861ba4c:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@175 (line 220)
          │                                                            ;   {no_reloc}
   1.04%  │  0x00007fa49861ba51:   vmovd  %r9d,%xmm2
   0.49%  │  0x00007fa49861ba56:   mov    %ebx,%r9d
          │  0x00007fa49861ba59:   shr    $0x10,%r9d
          │  0x00007fa49861ba5d:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@175 (line 220)
          │  0x00007fa49861ba61:   cmp    %r8d,%ebp
          │  0x00007fa49861ba64:   jae    0x00007fa49861c56c
   0.25%  │  0x00007fa49861ba6a:   vmovd  %xmm2,%r9d
   0.25%  │  0x00007fa49861ba6f:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@175 (line 220)
   0.25%  │  0x00007fa49861ba74:   shr    $0x8,%ebx
          │  0x00007fa49861ba77:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@175 (line 220)
          │  0x00007fa49861ba7a:   nopw   0x0(%rax,%rax,1)
          │  0x00007fa49861ba80:   cmp    %r11d,%ebp
          │  0x00007fa49861ba83:   jae    0x00007fa49861c5a0
   0.28%  │  0x00007fa49861ba89:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@175 (line 220)
          │  0x00007fa49861ba8e:   movzbl %r13b,%ebp                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@175 (line 220)
          │  0x00007fa49861ba92:   cmp    %ecx,%ebp
          │  0x00007fa49861ba94:   jae    0x00007fa49861c5d4
          │  0x00007fa49861ba9a:   add    0x10(%rdx,%rbp,4),%r9d
   0.27%  │  0x00007fa49861ba9f:   mov    %r9d,%ebp
          │  0x00007fa49861baa2:   vmovd  %xmm0,%r9d
          │  0x00007fa49861baa7:   mov    0x3c(%r12,%r9,8),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@184 (line 220)
          │  0x00007fa49861baac:   mov    %ebp,%r9d
   0.28%  │  0x00007fa49861baaf:   xor    %ebx,%r9d
          │  0x00007fa49861bab2:   xor    %eax,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@186 (line 220)
   0.54%  │  0x00007fa49861bab5:   mov    %r9d,%eax
          │  0x00007fa49861bab8:   mov    %r9d,%ebp
          │  0x00007fa49861babb:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@191 (line 221)
   0.05%  │  0x00007fa49861babe:   xchg   %ax,%ax
   0.21%  │  0x00007fa49861bac0:   cmp    %r10d,%ebp
          │  0x00007fa49861bac3:   jae    0x00007fa49861c608
   0.01%  │  0x00007fa49861bac9:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@191 (line 221)
   1.13%  │  0x00007fa49861bace:   mov    %r9d,%ebx
          │  0x00007fa49861bad1:   mov    %eax,%r9d
          │  0x00007fa49861bad4:   shr    $0x10,%r9d
          │  0x00007fa49861bad8:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@191 (line 221)
   0.27%  │  0x00007fa49861badc:   nopl   0x0(%rax)
          │  0x00007fa49861bae0:   cmp    %r8d,%ebp
          │  0x00007fa49861bae3:   jae    0x00007fa49861c638
          │  0x00007fa49861bae9:   mov    %ebx,%r9d
          │  0x00007fa49861baec:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@191 (line 221)
   0.39%  │  0x00007fa49861baf1:   mov    %eax,%ebx
          │  0x00007fa49861baf3:   shr    $0x8,%ebx
          │  0x00007fa49861baf6:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@191 (line 221)
          │  0x00007fa49861baf9:   cmp    %r11d,%ebp
   0.25%  │  0x00007fa49861bafc:   nopl   0x0(%rax)
          │  0x00007fa49861bb00:   jae    0x00007fa49861c66c
          │  0x00007fa49861bb06:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@191 (line 221)
   0.29%  │  0x00007fa49861bb0b:   movzbl %al,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@191 (line 221)
   0.06%  │  0x00007fa49861bb0e:   cmp    %ecx,%ebp
          │  0x00007fa49861bb10:   jae    0x00007fa49861c6a0
          │  0x00007fa49861bb16:   add    0x10(%rdx,%rbp,4),%r9d
   0.28%  │  0x00007fa49861bb1b:   vmovd  %r9d,%xmm2
   0.56%  │  0x00007fa49861bb20:   vmovd  %xmm0,%ebx
          │  0x00007fa49861bb24:   mov    0x40(%r12,%rbx,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@200 (line 221)
          │  0x00007fa49861bb29:   vmovd  %xmm2,%ebx
   0.55%  │  0x00007fa49861bb2d:   xor    %r9d,%ebx
   0.30%  │  0x00007fa49861bb30:   xor    %r13d,%ebx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@202 (line 221)
   0.50%  │  0x00007fa49861bb33:   mov    %ebx,%r13d
          │  0x00007fa49861bb36:   mov    %ebx,%ebp
          │  0x00007fa49861bb38:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@207 (line 223)
   0.08%  │  0x00007fa49861bb3b:   nopl   0x0(%rax,%rax,1)
   0.37%  │  0x00007fa49861bb40:   cmp    %r10d,%ebp
          │  0x00007fa49861bb43:   jae    0x00007fa49861c6d4
          │  0x00007fa49861bb49:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@207 (line 223)
          │                                                            ;   {no_reloc}
   0.94%  │  0x00007fa49861bb4e:   vmovd  %r9d,%xmm2
   0.52%  │  0x00007fa49861bb53:   mov    %ebx,%r9d
          │  0x00007fa49861bb56:   shr    $0x10,%r9d
          │  0x00007fa49861bb5a:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@207 (line 223)
          │  0x00007fa49861bb5e:   xchg   %ax,%ax
   0.36%  │  0x00007fa49861bb60:   cmp    %r8d,%ebp
          │  0x00007fa49861bb63:   jae    0x00007fa49861c700
          │  0x00007fa49861bb69:   vmovd  %xmm2,%r9d
   0.22%  │  0x00007fa49861bb6e:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@207 (line 223)
   0.28%  │  0x00007fa49861bb73:   shr    $0x8,%ebx
          │  0x00007fa49861bb76:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@207 (line 223)
          │  0x00007fa49861bb79:   cmp    %r11d,%ebp
          │  0x00007fa49861bb7c:   nopl   0x0(%rax)
   0.27%  │  0x00007fa49861bb80:   jae    0x00007fa49861c734
          │  0x00007fa49861bb86:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@207 (line 223)
          │  0x00007fa49861bb8b:   movzbl %r13b,%ebp                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@207 (line 223)
          │  0x00007fa49861bb8f:   cmp    %ecx,%ebp
          │  0x00007fa49861bb91:   jae    0x00007fa49861c768
   0.28%  │  0x00007fa49861bb97:   add    0x10(%rdx,%rbp,4),%r9d
          │  0x00007fa49861bb9c:   mov    %r9d,%ebp
          │  0x00007fa49861bb9f:   vmovd  %xmm0,%r9d
          │  0x00007fa49861bba4:   mov    0x44(%r12,%r9,8),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@216 (line 223)
   0.25%  │  0x00007fa49861bba9:   mov    %ebp,%r9d
          │  0x00007fa49861bbac:   xor    %ebx,%r9d
          │  0x00007fa49861bbaf:   xor    %eax,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@218 (line 223)
   0.24%  │  0x00007fa49861bbb2:   mov    %r9d,%eax
          │  0x00007fa49861bbb5:   mov    %r9d,%ebp
   0.77%  │  0x00007fa49861bbb8:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@223 (line 224)
   0.06%  │  0x00007fa49861bbbb:   nopl   0x0(%rax,%rax,1)
          │  0x00007fa49861bbc0:   cmp    %r10d,%ebp
          │  0x00007fa49861bbc3:   jae    0x00007fa49861c79c
   0.03%  │  0x00007fa49861bbc9:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@223 (line 224)
   1.12%  │  0x00007fa49861bbce:   mov    %r9d,%ebx
          │  0x00007fa49861bbd1:   mov    %eax,%r9d
          │  0x00007fa49861bbd4:   shr    $0x10,%r9d
          │  0x00007fa49861bbd8:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@223 (line 224)
   0.25%  │  0x00007fa49861bbdc:   nopl   0x0(%rax)
          │  0x00007fa49861bbe0:   cmp    %r8d,%ebp
          │  0x00007fa49861bbe3:   jae    0x00007fa49861c7cc
          │  0x00007fa49861bbe9:   mov    %ebx,%r9d
   0.00%  │  0x00007fa49861bbec:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@223 (line 224)
   0.28%  │  0x00007fa49861bbf1:   mov    %eax,%ebx
          │  0x00007fa49861bbf3:   shr    $0x8,%ebx
          │  0x00007fa49861bbf6:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@223 (line 224)
          │  0x00007fa49861bbf9:   cmp    %r11d,%ebp
   0.26%  │  0x00007fa49861bbfc:   nopl   0x0(%rax)
          │  0x00007fa49861bc00:   jae    0x00007fa49861c800
          │  0x00007fa49861bc06:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@223 (line 224)
   0.07%  │  0x00007fa49861bc0b:   movzbl %al,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@223 (line 224)
   0.24%  │  0x00007fa49861bc0e:   cmp    %ecx,%ebp
          │  0x00007fa49861bc10:   jae    0x00007fa49861c834
          │  0x00007fa49861bc16:   add    0x10(%rdx,%rbp,4),%r9d
   0.06%  │  0x00007fa49861bc1b:   vmovd  %r9d,%xmm2
   0.50%  │  0x00007fa49861bc20:   vmovd  %xmm0,%ebx
          │  0x00007fa49861bc24:   mov    0x48(%r12,%rbx,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@232 (line 224)
          │  0x00007fa49861bc29:   vmovd  %xmm2,%ebx
   0.59%  │  0x00007fa49861bc2d:   xor    %r9d,%ebx
   0.22%  │  0x00007fa49861bc30:   xor    %r13d,%ebx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@234 (line 224)
   0.44%  │  0x00007fa49861bc33:   mov    %ebx,%r13d
          │  0x00007fa49861bc36:   mov    %ebx,%ebp
          │  0x00007fa49861bc38:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
   0.04%  │  0x00007fa49861bc3b:   nopl   0x0(%rax,%rax,1)
   0.50%  │  0x00007fa49861bc40:   cmp    %r10d,%ebp
          │  0x00007fa49861bc43:   jae    0x00007fa49861c868
   0.00%  │  0x00007fa49861bc49:   mov    0x10(%r14,%rbp,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
          │                                                            ;   {no_reloc}
   0.84%  │  0x00007fa49861bc4e:   vmovd  %r9d,%xmm2
   0.49%  │  0x00007fa49861bc53:   mov    %ebx,%r9d
          │  0x00007fa49861bc56:   shr    $0x10,%r9d
          │  0x00007fa49861bc5a:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
          │  0x00007fa49861bc5e:   xchg   %ax,%ax
   0.49%  │  0x00007fa49861bc60:   cmp    %r8d,%ebp
          │  0x00007fa49861bc63:   jae    0x00007fa49861c894
          │  0x00007fa49861bc69:   vmovd  %xmm2,%r9d
   0.02%  │  0x00007fa49861bc6e:   add    0x10(%rdi,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
   0.30%  │  0x00007fa49861bc73:   shr    $0x8,%ebx
          │  0x00007fa49861bc76:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
          │  0x00007fa49861bc79:   cmp    %r11d,%ebp
          │  0x00007fa49861bc7c:   nopl   0x0(%rax)
   0.31%  │  0x00007fa49861bc80:   jae    0x00007fa49861c8c8
          │  0x00007fa49861bc86:   xor    0x10(%rsi,%rbp,4),%r9d       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
          │  0x00007fa49861bc8b:   movzbl %r13b,%ebp                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
          │  0x00007fa49861bc8f:   cmp    %ecx,%ebp
          │  0x00007fa49861bc91:   jae    0x00007fa49861c8fc
   0.28%  │  0x00007fa49861bc97:   add    0x10(%rdx,%rbp,4),%r9d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@47 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@239 (line 225)
          │  0x00007fa49861bc9c:   mov    %r9d,%ebx
          │  0x00007fa49861bc9f:   vmovd  %xmm9,%r9d
          │  0x00007fa49861bca4:   cmp    $0x11,%r9d
          │  0x00007fa49861bca8:   jbe    0x00007fa49861caa4
   0.29%  │  0x00007fa49861bcae:   vmovd  %xmm0,%r9d
          │  0x00007fa49861bcb3:   xor    0x4c(%r12,%r9,8),%ebx
          │  0x00007fa49861bcb8:   xor    %eax,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@250 (line 225)
   0.26%  │  0x00007fa49861bcba:   mov    %ebx,%ebp
          │  0x00007fa49861bcbc:   shr    $0x18,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@7 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
   0.33%  │  0x00007fa49861bcbf:   nop
          │  0x00007fa49861bcc0:   cmp    %r10d,%ebp
          │  0x00007fa49861bcc3:   jae    0x00007fa49861c930
   0.30%  │  0x00007fa49861bcc9:   mov    0x10(%r14,%rbp,4),%r10d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
   1.14%  │  0x00007fa49861bcce:   mov    %ebx,%r9d
          │  0x00007fa49861bcd1:   shr    $0x10,%r9d
          │  0x00007fa49861bcd5:   movzbl %r9b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@20 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
          │  0x00007fa49861bcd9:   cmp    %r8d,%ebp
   0.22%  │  0x00007fa49861bcdc:   nopl   0x0(%rax)
          │  0x00007fa49861bce0:   jae    0x00007fa49861c960
          │  0x00007fa49861bce6:   add    0x10(%rdi,%rbp,4),%r10d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@22 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
   0.18%  │  0x00007fa49861bceb:   mov    %ebx,%r8d
   0.17%  │  0x00007fa49861bcee:   shr    $0x8,%r8d
          │  0x00007fa49861bcf2:   movzbl %r8b,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@34 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
          │  0x00007fa49861bcf6:   cmp    %r11d,%ebp
          │  0x00007fa49861bcf9:   jae    0x00007fa49861c994
   0.15%  │  0x00007fa49861bcff:   xor    0x10(%rsi,%rbp,4),%r10d      ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@36 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
   0.12%  │  0x00007fa49861bd04:   movzbl %bl,%ebp                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@45 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
          │  0x00007fa49861bd07:   cmp    %ecx,%ebp
          │  0x00007fa49861bd09:   jae    0x00007fa49861c9c8
          │  0x00007fa49861bd0f:   mov    0x10(%rdx,%rbp,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::F@46 (line 275)
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@255 (line 226)
   0.16%  │  0x00007fa49861bd14:   add    %r10d,%r11d
   0.14%  │  0x00007fa49861bd17:   vmovd  %xmm0,%r9d
          │  0x00007fa49861bd1c:   mov    0x54(%r12,%r9,8),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@275 (line 228)
          │  0x00007fa49861bd21:   xor    %ebx,%r10d
   0.12%  │  0x00007fa49861bd24:   mov    0x50(%r12,%r9,8),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@264 (line 226)
   0.15%  │  0x00007fa49861bd29:   vmovq  %xmm7,%r9
          │  0x00007fa49861bd2e:   mov    %r10d,0x10(%r9)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@281 (line 230)
          │  0x00007fa49861bd32:   xor    %r8d,%r11d
   0.11%  │  0x00007fa49861bd35:   xor    %r13d,%r11d
   0.17%  │  0x00007fa49861bd38:   mov    %r11d,0x14(%r9)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@285 (line 231)
   0.37%  │  0x00007fa49861bd3c:   add    $0x40,%rsp
          │  0x00007fa49861bd40:   pop    %rbp
          │  0x00007fa49861bd41:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fa49861bd48:   ja     0x00007fa49861cb54
   0.28%  │  0x00007fa49861bd4e:   ret    
          ↘  0x00007fa49861bd4f:   mov    $0xffffffe4,%esi
             0x00007fa49861bd54:   vmovq  %xmm8,%rbp
             0x00007fa49861bd59:   mov    %rdx,(%rsp)
             0x00007fa49861bd5d:   mov    %eax,0x14(%rsp)
             0x00007fa49861bd61:   mov    %r9d,0x18(%rsp)
             0x00007fa49861bd66:   mov    %ebx,0x1c(%rsp)
             0x00007fa49861bd6a:   mov    %r11d,0x20(%rsp)
             0x00007fa49861bd6f:   call   0x00007fa4980a5f00           ; ImmutableOopMap {rbp=Oop [0]=Oop [28]=NarrowOop }
                                                                       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::F@8 (line 275)
....................................................................................................
  70.62%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::fillOutputBuffer, version 2, compile id 665 

                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 0x00007fa49862462c:   movslq %ebx,%rdi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.08%         0x00007fa49862462f:   movsbl 0x10(%r9,%rdi,1),%r10d
   0.70%         0x00007fa498624635:   lea    (%r8,%rdi,1),%r11
   0.03%         0x00007fa498624639:   movsbl 0x10(%r13,%r11,1),%r11d
   0.00%         0x00007fa49862463f:   xor    %r10d,%r11d
   0.48%         0x00007fa498624642:   mov    %r11b,0x10(%rcx,%rdi,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.95%         0x00007fa498624647:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.01%         0x00007fa498624649:   cmp    0x3c(%rsp),%ebx
                 0x00007fa49862464d:   jl     0x00007fa49862462c           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@23 (line 165)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
              ↗  0x00007fa49862464f:   vmovq  %xmm0,%r11
   0.05%      │  0x00007fa498624654:   vmovq  %xmm1,%rbx
   0.27%      │  0x00007fa498624659:   vmovd  %xmm2,%r10d
   0.00%      │  0x00007fa49862465e:   vmovd  %xmm4,%r9d
   0.00%      │  0x00007fa498624663:   vmovq  %xmm3,%r8
   0.04%      │  0x00007fa498624668:   vmovd  %xmm5,%edi
   0.33%      │  0x00007fa49862466c:   vmovd  %xmm7,%edx                   ;   {no_reloc}
   0.00%      │  0x00007fa498624670:   mov    (%rsp),%rax                  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.00%   ↗  │  0x00007fa498624674:   mov    0x10(%r8),%ecx               ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.14%   │  │  0x00007fa498624678:   nopl   0x0(%rax,%rax,1)
   0.20%   │  │  0x00007fa498624680:   mov    0x24(%r12,%rcx,8),%r14d      ; implicit exception: dispatches to 0x00007fa498625140
           │  │                                                            ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.74%   │  │  0x00007fa498624685:   mov    %ecx,0x48(%rsp)
           │  │  0x00007fa498624689:   mov    %rax,0x10(%rsp)
   0.02%   │  │  0x00007fa49862468e:   mov    %edx,0x44(%rsp)
   0.04%   │  │  0x00007fa498624692:   mov    %edi,0xc(%rsp)
   0.22%   │  │  0x00007fa498624696:   mov    %r8,0x20(%rsp)
           │  │  0x00007fa49862469b:   mov    %r9d,0x8(%rsp)
   0.03%   │  │  0x00007fa4986246a0:   mov    %r10d,0x34(%rsp)
   0.02%   │  │  0x00007fa4986246a5:   mov    %rbx,0x58(%rsp)
   0.20%   │  │  0x00007fa4986246aa:   mov    %r11,(%rsp)
           │  │  0x00007fa4986246ae:   mov    %r13,0x28(%rsp)
   0.03%   │  │  0x00007fa4986246b3:   mov    0xc(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007fa498625164
   0.03%   │  │  0x00007fa4986246b8:   nopl   0x0(%rax,%rax,1)
   0.19%   │  │  0x00007fa4986246c0:   cmp    $0x7,%r11d
           │  │  0x00007fa4986246c4:   jbe    0x00007fa498624bd0
           │  │  0x00007fa4986246ca:   movzbl 0x13(%r12,%rbp,8),%r11d
   0.04%   │  │  0x00007fa4986246d0:   movzbl 0x12(%r12,%rbp,8),%r9d
   0.02%   │  │  0x00007fa4986246d6:   movsbl 0x10(%r12,%rbp,8),%r10d
   0.23%   │  │  0x00007fa4986246dc:   movzbl 0x11(%r12,%rbp,8),%r8d
           │  │  0x00007fa4986246e2:   shl    $0x8,%r9d
   0.02%   │  │  0x00007fa4986246e6:   shl    $0x10,%r8d
   0.03%   │  │  0x00007fa4986246ea:   shl    $0x18,%r10d
   0.19%   │  │  0x00007fa4986246ee:   or     %r8d,%r10d
           │  │  0x00007fa4986246f1:   or     %r9d,%r10d
   0.03%   │  │  0x00007fa4986246f4:   or     %r11d,%r10d                  ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.04%   │  │  0x00007fa4986246f7:   nopw   0x0(%rax,%rax,1)
   0.25%   │  │  0x00007fa498624700:   mov    0xc(%r12,%r14,8),%r11d       ; implicit exception: dispatches to 0x00007fa498625180
           │  │  0x00007fa498624705:   cmp    $0x1,%r11d
           │  │  0x00007fa498624709:   jbe    0x00007fa498624c1c
   0.04%   │  │  0x00007fa49862470f:   mov    %r10d,0x10(%r12,%r14,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.16%   │  │  0x00007fa498624714:   movzbl 0x17(%r12,%rbp,8),%r8d       ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.16%   │  │  0x00007fa49862471a:   movzbl 0x16(%r12,%rbp,8),%r10d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@83 (line 175)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.00%   │  │  0x00007fa498624720:   movzbl 0xc(%r12,%rcx,8),%r9d        ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@101 (line 180)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.04%   │  │  0x00007fa498624726:   movzbl 0x15(%r12,%rbp,8),%edi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@69 (line 175)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.07%   │  │  0x00007fa49862472c:   movsbl 0x14(%r12,%rbp,8),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.19%   │  │  0x00007fa498624732:   mov    0x48(%rsp),%r11d
           │  │  0x00007fa498624737:   lea    (%r12,%r11,8),%rbp           ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.04%   │  │  0x00007fa49862473b:   shl    $0x18,%ecx
   0.10%   │  │  0x00007fa49862473e:   shl    $0x10,%edi
   0.15%   │  │  0x00007fa498624741:   or     %edi,%ecx
   0.02%   │  │  0x00007fa498624743:   mov    %r14,%rdx
   0.03%   │  │  0x00007fa498624746:   shl    $0x3,%rdx                    ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.07%   │  │  0x00007fa49862474a:   shl    $0x8,%r10d
   0.19%   │  │  0x00007fa49862474e:   or     %r10d,%ecx
   0.02%   │  │  0x00007fa498624751:   or     %r8d,%ecx
   0.06%   │  │  0x00007fa498624754:   mov    %ecx,0x14(%r12,%r14,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.15%   │  │  0x00007fa498624759:   test   %r9d,%r9d
   0.12%   │  │  0x00007fa49862475c:   nopl   0x0(%rax)
           │  │  0x00007fa498624760:   jne    0x00007fa498624a99           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.05%   │  │  0x00007fa498624766:   mov    %rbp,%rsi
   0.07%   │  │  0x00007fa498624769:   data16 xchg %ax,%ax
   0.14%   │  │  0x00007fa49862476c:   vzeroupper                          ;   {no_reloc}
   0.28%   │  │  0x00007fa49862476f:   call   0x00007fa49861b460           ; ImmutableOopMap {rbp=Oop [0]=Oop [32]=Oop [40]=Oop [72]=NarrowOop [88]=Oop [144]=Oop }
           │  │                                                            ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@123 (line 183)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │                                                            ;   {optimized virtual_call}
           │  │  0x00007fa498624774:   nopl   0x4e4(%rax,%rax,1)           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │                                                            ;   {other}
           │  │  0x00007fa49862477c:   mov    0x48(%rsp),%r11d
   0.28%   │  │  0x00007fa498624781:   mov    0x24(%r12,%r11,8),%r8d       ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@127 (line 186)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa498624786:   mov    0xc(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007fa4986251a0
           │  │  0x00007fa49862478b:   cmp    $0x1,%r10d
           │  │  0x00007fa49862478f:   jbe    0x00007fa498624c6c
           │  │  0x00007fa498624795:   mov    %r11d,%ebx
   0.27%   │  │  0x00007fa498624798:   mov    0x10(%r12,%r8,8),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa49862479d:   mov    %ecx,%r10d
           │  │  0x00007fa4986247a0:   sar    $0x18,%r10d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa4986247a4:   mov    0x68(%rsp),%r11d
   0.27%   │  │  0x00007fa4986247a9:   cmp    0xc(%rsp),%r11d
           │  │  0x00007fa4986247ae:   jae    0x00007fa498624b05
           │  │  0x00007fa4986247b4:   mov    0x58(%rsp),%r11
           │  │  0x00007fa4986247b9:   mov    0x68(%rsp),%edi
           │  │  0x00007fa4986247bd:   lea    0x10(%r11,%rdi,1),%rdi
   0.27%   │  │  0x00007fa4986247c2:   mov    %r10b,(%rdi)                 ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa4986247c5:   mov    0x68(%rsp),%r10d
           │  │  0x00007fa4986247ca:   add    $0x7,%r10d
           │  │  0x00007fa4986247ce:   cmp    0xc(%rsp),%r10d
           │  │  0x00007fa4986247d3:   jae    0x00007fa498624b70
   0.22%   │  │  0x00007fa4986247d9:   mov    0x14(%r12,%r8,8),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa4986247de:   mov    0x20(%rsp),%r10
           │  │  0x00007fa4986247e3:   mov    0xc(%r10),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa4986247e7:   mov    0x18(%r10),%r10d             ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.25%   │  │  0x00007fa4986247eb:   movslq 0x68(%rsp),%r13
           │  │  0x00007fa4986247f0:   mov    %ecx,%r11d
           │  │  0x00007fa4986247f3:   sar    $0x8,%r11d
           │  │  0x00007fa4986247f7:   mov    %ebx,%r9d
   0.26%   │  │  0x00007fa4986247fa:   sar    $0x18,%r9d
           │  │  0x00007fa4986247fe:   mov    %ebx,%esi
           │  │  0x00007fa498624800:   sar    $0x10,%esi
           │  │  0x00007fa498624803:   mov    %ebx,%edx
   0.29%   │  │  0x00007fa498624805:   sar    $0x8,%edx
           │  │  0x00007fa498624808:   mov    %ecx,%ebp
           │  │  0x00007fa49862480a:   sar    $0x10,%ebp
           │  │  0x00007fa49862480d:   mov    0x58(%rsp),%rax
   0.28%   │  │  0x00007fa498624812:   mov    %bpl,0x11(%rax,%r13,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa498624817:   mov    %r11b,0x12(%rax,%r13,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa49862481c:   mov    %cl,0x13(%rax,%r13,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa498624821:   mov    %r9b,0x14(%rax,%r13,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.29%   │  │  0x00007fa498624826:   mov    %sil,0x15(%rax,%r13,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa49862482b:   mov    %dl,0x16(%rax,%r13,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa498624830:   mov    %bl,0x17(%rax,%r13,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
           │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa498624835:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fa4986251bc
   0.29%   │  │  0x00007fa49862483a:   mov    0x68(%rsp),%r9d
           │  │  0x00007fa49862483f:   nop
           │  │  0x00007fa498624840:   test   %r9d,%r9d
           │  │  0x00007fa498624843:   jl     0x00007fa498624cd4
           │  │  0x00007fa498624849:   add    %r8d,%r9d
   0.29%   │  │  0x00007fa49862484c:   mov    0xc(%rsp),%ebx
           │  │  0x00007fa498624850:   cmp    %r9d,%ebx
           │  │  0x00007fa498624853:   jb     0x00007fa498624cd4
           │  │  0x00007fa498624859:   cmp    %r8d,%r11d
           │  │  0x00007fa49862485c:   nopl   0x0(%rax)
   0.26%   │  │  0x00007fa498624860:   jb     0x00007fa498624cd4
           │  │  0x00007fa498624866:   test   %r8d,%r8d
           │  │  0x00007fa498624869:   jl     0x00007fa498624cd4           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.00%   │  │  0x00007fa49862486f:   test   %r8d,%r8d
          ╭│  │  0x00007fa498624872:   je     0x00007fa498624898           ;   {no_reloc}
          ││  │  0x00007fa498624874:   lea    (%r12,%r10,8),%r11           ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
          ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.24%  ││  │  0x00007fa498624878:   lea    0x10(%r12,%r10,8),%rsi
          ││  │  0x00007fa49862487d:   movslq %r8d,%rdx
          ││  │  0x00007fa498624880:   vzeroupper 
   0.30%  ││  │  0x00007fa498624883:   movabs $0x7fa498085080,%r10
          ││  │  0x00007fa49862488d:   call   *%r10
          ││  │  0x00007fa498624890:   nopl   0x0(%rax,%rax,1)             ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          ││  │                                                            ;   {other}
          ↘│  │  0x00007fa498624898:   mov    0x20(%rsp),%r8
   0.24%   │  │  0x00007fa49862489d:   mov    0xc(%r8),%r10d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@85 (line 163)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.01%   │  │  0x00007fa4986248a1:   mov    %r10d,0x3c(%rsp)             ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.09%   │  │  0x00007fa4986248a6:   mov    0x458(%r15),%r10
           │  │  0x00007fa4986248ad:   mov    0x30(%rsp),%ecx
   0.19%   │  │  0x00007fa4986248b1:   add    0x3c(%rsp),%ecx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   1.30%   │  │  0x00007fa4986248b5:   mov    0x68(%rsp),%esi
           │  │  0x00007fa4986248b9:   add    0x3c(%rsp),%esi              ; ImmutableOopMap {r8=Oop [0]=Oop [40]=Oop [88]=Oop [144]=Oop }
           │  │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.20%   │  │  0x00007fa4986248bd:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │                                                            ;   {poll}
   0.00%   │  │  0x00007fa4986248c0:   cmp    0x44(%rsp),%ecx
           │  │  0x00007fa4986248c4:   jge    0x00007fa498624ab9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.18%   │  │  0x00007fa4986248ca:   mov    0x28(%rsp),%r13
   0.00%   │  │  0x00007fa4986248cf:   mov    (%rsp),%r11
   0.10%   │  │  0x00007fa4986248d3:   mov    0x58(%rsp),%rbx
           │  │  0x00007fa4986248d8:   mov    0x34(%rsp),%r10d
   0.15%   │  │  0x00007fa4986248dd:   mov    0x8(%rsp),%r9d
           │  │  0x00007fa4986248e2:   mov    0xc(%rsp),%edi
   0.09%   │  │  0x00007fa4986248e6:   mov    0x44(%rsp),%edx
           │  │  0x00007fa4986248ea:   mov    0x10(%rsp),%rax
   0.16%   │  │  0x00007fa4986248ef:   mov    %esi,0x68(%rsp)
           │  │  0x00007fa4986248f3:   mov    %ecx,0x30(%rsp)              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@17 (line 164)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.10%   │  │  0x00007fa4986248f7:   mov    0x1c(%r8),%ebp               ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
           │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  │  0x00007fa4986248fb:   mov    0x3c(%rsp),%ecx
   0.17%   │  │  0x00007fa4986248ff:   nop
           │  │  0x00007fa498624900:   test   %ecx,%ecx
           ╰  │  0x00007fa498624902:   jle    0x00007fa498624674           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.11%      │  0x00007fa498624908:   mov    0x30(%rsp),%ecx
   0.24%      │  0x00007fa49862490c:   cmp    %r9d,%ecx
              │  0x00007fa49862490f:   jae    0x00007fa498624d4b
   0.20%      │  0x00007fa498624915:   mov    %rax,(%rsp)
              │  0x00007fa498624919:   vmovd  %edx,%xmm7
   0.07%      │  0x00007fa49862491d:   vmovd  %edi,%xmm5
              │  0x00007fa498624921:   vmovq  %r8,%xmm3
   0.23%      │  0x00007fa498624926:   vmovd  %r9d,%xmm4
              │  0x00007fa49862492b:   vmovd  %r10d,%xmm2
   0.06%      │  0x00007fa498624930:   vmovq  %rbx,%xmm1
              │  0x00007fa498624935:   vmovq  %r11,%xmm0
   0.22%      │  0x00007fa49862493a:   movslq 0x30(%rsp),%r8
              │  0x00007fa49862493f:   movslq 0x3c(%rsp),%rbx
   0.05%      │  0x00007fa498624944:   lea    (%rbx,%r8,1),%r10
              │  0x00007fa498624948:   dec    %r10
   0.17%      │  0x00007fa49862494b:   cmp    %rax,%r10
              │  0x00007fa49862494e:   jae    0x00007fa498624d3c
              │  0x00007fa498624954:   vmovq  %xmm3,%r10
   0.06%      │  0x00007fa498624959:   mov    0x18(%r10),%r10d             ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@36 (line 165)
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.02%      │  0x00007fa49862495d:   data16 xchg %ax,%ax
   0.22%      │  0x00007fa498624960:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fa4986251e0
              │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.06%      │  0x00007fa498624965:   test   %r11d,%r11d
              │  0x00007fa498624968:   jbe    0x00007fa498624dc6
   0.07%      │  0x00007fa49862496e:   movslq %r11d,%r9
              │  0x00007fa498624971:   mov    %rbx,%r11
   0.23%      │  0x00007fa498624974:   dec    %r11
              │  0x00007fa498624977:   cmp    %r9,%r11
   0.06%      │  0x00007fa49862497a:   nopw   0x0(%rax,%rax,1)
              │  0x00007fa498624980:   jae    0x00007fa498624d90
   0.24%      │  0x00007fa498624986:   mov    0xc(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007fa4986251f9
              │                                                            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
              │  0x00007fa49862498b:   test   %r9d,%r9d
              │  0x00007fa49862498e:   jbe    0x00007fa498624ddf
   0.04%      │  0x00007fa498624994:   movslq %r9d,%r9
   0.00%      │  0x00007fa498624997:   cmp    %r9,%r11
   0.18%      │  0x00007fa49862499a:   nopw   0x0(%rax,%rax,1)
              │  0x00007fa4986249a0:   jae    0x00007fa498624da6
   0.06%      │  0x00007fa4986249a6:   movsbl 0x10(%r13,%r8,1),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.35%      │  0x00007fa4986249ac:   movsbl 0x10(%r12,%r10,8),%ecx
   0.20%      │  0x00007fa4986249b2:   xor    %ecx,%r11d
   0.03%      │  0x00007fa4986249b5:   mov    %r11b,0x10(%r12,%rbp,8)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
              │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
              │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
              │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.10%      │  0x00007fa4986249ba:   lea    (%r12,%r10,8),%r9            ;   {no_reloc}
              │  0x00007fa4986249be:   add    $0xfffffffffffffffd,%rbx
   0.17%      │  0x00007fa4986249c2:   lea    (%r12,%rbp,8),%rcx
              │  0x00007fa4986249c6:   cmp    $0xffffffff80000000,%rbx
   0.07%      │  0x00007fa4986249cd:   mov    $0xffffffff80000000,%r10
              │  0x00007fa4986249d4:   cmovl  %r10,%rbx
   0.18%      │  0x00007fa4986249d8:   mov    %ebx,%r14d
              │  0x00007fa4986249db:   nopl   0x0(%rax,%rax,1)
   0.09%      │  0x00007fa4986249e0:   cmp    $0x1,%r14d
              │  0x00007fa4986249e4:   jle    0x00007fa498624dbc
              │  0x00007fa4986249ea:   mov    $0x1,%ebx
   0.21%     ↗│  0x00007fa4986249ef:   mov    %r14d,%edi
             ││  0x00007fa4986249f2:   sub    %ebx,%edi
   0.09%     ││  0x00007fa4986249f4:   xor    %r10d,%r10d
             ││  0x00007fa4986249f7:   cmp    %ebx,%r14d
   0.20%     ││  0x00007fa4986249fa:   cmovl  %r10d,%edi
             ││  0x00007fa4986249fe:   cmp    $0xfa0,%edi
   0.08%     ││  0x00007fa498624a04:   mov    $0xfa0,%r11d
             ││  0x00007fa498624a0a:   cmova  %r11d,%edi
   0.19%     ││  0x00007fa498624a0e:   add    %ebx,%edi                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@23 (line 165)
             ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.08%    ↗││  0x00007fa498624a10:   mov    0x30(%rsp),%esi
            │││  0x00007fa498624a14:   add    %ebx,%esi
   0.19%    │││  0x00007fa498624a16:   movslq %ebx,%rax                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
            │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │││  0x00007fa498624a19:   movsbl 0x10(%r9,%rax,1),%r10d
   0.08%    │││  0x00007fa498624a1f:   lea    (%r8,%rax,1),%r11
            │││  0x00007fa498624a23:   movsbl 0x10(%r13,%r11,1),%edx
   0.18%    │││  0x00007fa498624a29:   xor    %edx,%r10d
            │││  0x00007fa498624a2c:   mov    %r10b,0x10(%rcx,%rax,1)
   0.08%    │││  0x00007fa498624a31:   movsbl 0x11(%r9,%rax,1),%r10d
            │││  0x00007fa498624a37:   movsbl 0x11(%r13,%r11,1),%edx
   0.16%    │││  0x00007fa498624a3d:   xor    %edx,%r10d
            │││  0x00007fa498624a40:   mov    %r10b,0x11(%rcx,%rax,1)
   0.06%    │││  0x00007fa498624a45:   movsbl 0x12(%r9,%rax,1),%r10d
            │││  0x00007fa498624a4b:   movsbl 0x12(%r13,%r11,1),%edx
   0.22%    │││  0x00007fa498624a51:   xor    %edx,%r10d
            │││  0x00007fa498624a54:   mov    %r10b,0x12(%rcx,%rax,1)
   0.09%    │││  0x00007fa498624a59:   movsbl 0x13(%r9,%rax,1),%r10d
            │││  0x00007fa498624a5f:   movslq %esi,%r11
   0.20%    │││  0x00007fa498624a62:   movsbl 0x13(%r13,%r11,1),%esi
            │││  0x00007fa498624a68:   xor    %esi,%r10d
   0.08%    │││  0x00007fa498624a6b:   mov    %r10b,0x13(%rcx,%rax,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
            │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.04%    │││  0x00007fa498624a70:   add    $0x4,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
            │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.13%    │││  0x00007fa498624a73:   cmp    %edi,%ebx
            ╰││  0x00007fa498624a75:   jl     0x00007fa498624a10           ;*goto {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
             ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             ││  0x00007fa498624a77:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r9=Oop rcx=Oop rbp=NarrowOop r13=Oop xmm0=Oop xmm1=Oop xmm3=Oop [144]=Oop }
             ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
             ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
   0.10%     ││  0x00007fa498624a7e:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
             ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
             ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
             ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
             ││                                                            ;   {poll}
   0.39%     ││  0x00007fa498624a81:   cmp    %r14d,%ebx
             ╰│  0x00007fa498624a84:   jl     0x00007fa4986249ef
   0.01%      │  0x00007fa498624a8a:   cmp    0x3c(%rsp),%ebx
              │  0x00007fa498624a8e:   jl     0x00007fa49862462c
              ╰  0x00007fa498624a94:   jmp    0x00007fa49862464f           ;*synchronization entry
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@-1 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                           ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                           ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                           ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                 0x00007fa498624a99:   mov    %rbp,%rsi
....................................................................................................
  21.53%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.62%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 637 
  21.53%         c2, level 4  com.sun.crypto.provider.CipherCore::fillOutputBuffer, version 2, compile id 665 
   2.98%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.14%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.89%              kernel  [unknown] 
   0.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 669 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.84%  <...other 243 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.62%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 637 
  21.54%         c2, level 4  com.sun.crypto.provider.CipherCore::fillOutputBuffer, version 2, compile id 665 
   5.21%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.97%              kernel  [unknown] 
   0.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 669 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 715 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __memset_avx2_erms 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.57%         c2, level 4
   5.21%        runtime stub
   1.97%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = Blowfish/CBC/NoPadding)

# Run progress: 70.00% complete, ETA 00:05:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 323.368 us/op
# Warmup Iteration   2: 309.499 us/op
# Warmup Iteration   3: 309.989 us/op
# Warmup Iteration   4: 309.980 us/op
# Warmup Iteration   5: 309.535 us/op
Iteration   1: 309.877 us/op
Iteration   2: 310.539 us/op
Iteration   3: 310.543 us/op
Iteration   4: 310.264 us/op
Iteration   5: 310.597 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  310.364 ±(99.9%) 1.162 us/op [Average]
  (min, avg, max) = (309.877, 310.364, 310.597), stdev = 0.302
  CI (99.9%): [309.202, 311.526] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 152000 total address lines.
Perf output processed (skipped 57.049 seconds):
 Column 1: cycles (50906 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 642 

 <region is too big to display, has 1069 lines, but threshold is 1000>
....................................................................................................
  74.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 672 

                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  0x00007f597864e588:   movslq %r10d,%r8                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.67%          0x00007f597864e58b:   movsbl 0x10(%rbx,%r8,1),%r11d
   0.11%          0x00007f597864e591:   lea    (%rcx,%r8,1),%r9
   0.03%          0x00007f597864e595:   movsbl 0x10(%r14,%r9,1),%r9d
   0.00%          0x00007f597864e59b:   xor    %r9d,%r11d
   0.76%          0x00007f597864e59e:   mov    %r11b,0x10(%rdi,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%          0x00007f597864e5a3:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%          0x00007f597864e5a6:   cmp    %r13d,%r10d
                  0x00007f597864e5a9:   jl     0x00007f597864e588
               ↗  0x00007f597864e5ab:   mov    %r14,%r10
   0.16%       │  0x00007f597864e5ae:   vmovq  %xmm0,%rbx
   0.08%       │  0x00007f597864e5b3:   vmovd  %xmm1,%r9d
   0.01%       │  0x00007f597864e5b8:   vmovq  %xmm2,%rcx
               │  0x00007f597864e5bd:   vmovd  %xmm4,%edi
   0.21%       │  0x00007f597864e5c1:   mov    (%rsp),%rdx
   0.08%       │  0x00007f597864e5c5:   vmovd  %xmm3,%r11d                  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
               │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
               │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
               │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
               │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
               │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%    ↗  │  0x00007f597864e5ca:   mov    0x10(%rcx),%r8d              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%    │  │  0x00007f597864e5ce:   test   %r8d,%r8d
            │  │  0x00007f597864e5d1:   je     0x00007f597864e967           ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {no_reloc}
   0.18%    │  │  0x00007f597864e5d7:   mov    %r11d,0x48(%rsp)
   0.05%    │  │  0x00007f597864e5dc:   mov    %rdx,0x8(%rsp)
   0.01%    │  │  0x00007f597864e5e1:   mov    %edi,0x4c(%rsp)
            │  │  0x00007f597864e5e5:   mov    %rcx,(%rsp)
   0.17%    │  │  0x00007f597864e5e9:   mov    %r9d,%ebp
   0.06%    │  │  0x00007f597864e5ec:   mov    %rbx,0x40(%rsp)
   0.03%    │  │  0x00007f597864e5f1:   mov    %r10,0x38(%rsp)              ;*synchronization entry
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@-1 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f597864e5f6:   mov    %rax,%rdx
   0.14%    │  │  0x00007f597864e5f9:   shl    $0x3,%rdx                    ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.06%    │  │  0x00007f597864e5fd:   lea    (%r12,%r8,8),%rsi            ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%    │  │  0x00007f597864e601:   xor    %ecx,%ecx
   0.00%    │  │  0x00007f597864e603:   mov    %rbx,%r8
   0.17%    │  │  0x00007f597864e606:   mov    %r11d,%r9d
   0.06%    │  │  0x00007f597864e609:   data16 xchg %ax,%ax
   0.02%    │  │  0x00007f597864e60c:   vzeroupper 
   0.26%    │  │  0x00007f597864e60f:   call   0x00007f597863f640           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
            │  │                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {optimized virtual_call}
   0.00%    │  │  0x00007f597864e614:   nopl   0x584(%rax,%rax,1)           ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {other}
   0.00%    │  │  0x00007f597864e61c:   mov    (%rsp),%rcx
   0.23%    │  │  0x00007f597864e620:   mov    0x18(%rcx),%r11d             ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    │  │  0x00007f597864e624:   mov    0xc(%rcx),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f597864e628:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f597864ef78
   0.00%    │  │  0x00007f597864e62d:   mov    0x48(%rsp),%r10d
   0.25%    │  │  0x00007f597864e632:   test   %r10d,%r10d
            │  │  0x00007f597864e635:   jl     0x00007f597864e99c
            │  │  0x00007f597864e63b:   lea    (%r10,%r8,1),%edi
   0.00%    │  │  0x00007f597864e63f:   mov    0x58(%rsp),%ebx
            │  │  0x00007f597864e643:   cmp    %edi,%ebx
            │  │  0x00007f597864e645:   jb     0x00007f597864e99c
   0.28%    │  │  0x00007f597864e64b:   cmp    %r8d,%r9d
            │  │  0x00007f597864e64e:   jb     0x00007f597864e99c
            │  │  0x00007f597864e654:   test   %r8d,%r8d
            │  │  0x00007f597864e657:   jl     0x00007f597864e99c           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f597864e65d:   data16 xchg %ax,%ax
            │  │  0x00007f597864e660:   test   %r8d,%r8d
          ╭ │  │  0x00007f597864e663:   je     0x00007f597864e69f
   0.27%  │ │  │  0x00007f597864e665:   mov    %r10d,%r14d
          │ │  │  0x00007f597864e668:   mov    %rcx,%rbx
   0.00%  │ │  │  0x00007f597864e66b:   mov    0x40(%rsp),%r9
   0.00%  │ │  │  0x00007f597864e670:   lea    0x10(%r9,%r10,1),%rdi
   0.25%  │ │  │  0x00007f597864e675:   movslq %r8d,%rdx
   0.00%  │ │  │  0x00007f597864e678:   lea    (%r12,%r11,8),%r10           ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │  │  0x00007f597864e67c:   lea    0x10(%r12,%r11,8),%rsi
          │ │  │  0x00007f597864e681:   vzeroupper 
   0.28%  │ │  │  0x00007f597864e684:   movabs $0x7f59780a9080,%r10
   0.24%  │ │  │  0x00007f597864e68e:   call   *%r10
          │ │  │  0x00007f597864e691:   nopl   0x0(%rax,%rax,1)             ;   {other}
          │ │  │  0x00007f597864e699:   mov    %rbx,%rcx
          │ │  │  0x00007f597864e69c:   mov    %r14d,%r10d                  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.23%  ↘ │  │  0x00007f597864e69f:   mov    0xc(%rcx),%r13d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%    │  │  0x00007f597864e6a3:   mov    0x458(%r15),%r11
            │  │  0x00007f597864e6aa:   add    %r13d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@96 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%    │  │  0x00007f597864e6ad:   mov    0x50(%rsp),%r8d
   0.33%    │  │  0x00007f597864e6b2:   add    %r13d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.10%    │  │  0x00007f597864e6b5:   mov    %r8d,0x50(%rsp)              ; ImmutableOopMap {rcx=Oop [48]=Oop [56]=Oop [64]=Oop }
            │  │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │  │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.37%    │  │  0x00007f597864e6ba:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {poll}
   0.06%    │  │  0x00007f597864e6bd:   data16 xchg %ax,%ax
            │  │  0x00007f597864e6c0:   cmp    0x4c(%rsp),%r8d
           ╭│  │  0x00007f597864e6c5:   jge    0x00007f597864e877           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││  │  0x00007f597864e6cb:   mov    %r10d,%r11d
   0.18%   ││  │  0x00007f597864e6ce:   mov    0x38(%rsp),%r10
   0.07%   ││  │  0x00007f597864e6d3:   mov    0x40(%rsp),%rbx
           ││  │  0x00007f597864e6d8:   mov    %ebp,%r9d
           ││  │  0x00007f597864e6db:   mov    0x4c(%rsp),%edi
   0.20%   ││  │  0x00007f597864e6df:   mov    0x8(%rsp),%rdx               ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@11 (line 164)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.05%   ││  │  0x00007f597864e6e4:   mov    0x1c(%rcx),%eax              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││  │  0x00007f597864e6e7:   test   %r13d,%r13d
           │╰  │  0x00007f597864e6ea:   jle    0x00007f597864e5ca           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │   │  0x00007f597864e6f0:   mov    0x50(%rsp),%ebp
   0.19%   │   │  0x00007f597864e6f4:   cmp    %r9d,%ebp
           │   │  0x00007f597864e6f7:   jae    0x00007f597864ea00
   0.06%   │   │  0x00007f597864e6fd:   vmovd  %r11d,%xmm3
           │   │  0x00007f597864e702:   mov    %rdx,(%rsp)
           │   │  0x00007f597864e706:   vmovd  %edi,%xmm4
   0.16%   │   │  0x00007f597864e70a:   vmovq  %rcx,%xmm2
   0.06%   │   │  0x00007f597864e70f:   vmovd  %r9d,%xmm1
           │   │  0x00007f597864e714:   vmovq  %rbx,%xmm0
           │   │  0x00007f597864e719:   mov    %r10,%r14
   0.42%   │   │  0x00007f597864e71c:   movslq %r13d,%rdx
   0.12%   │   │  0x00007f597864e71f:   movslq 0x50(%rsp),%rcx              ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.19%   │   │  0x00007f597864e724:   lea    (%rdx,%rcx,1),%r10
   0.44%   │   │  0x00007f597864e728:   dec    %r10
   0.26%   │   │  0x00007f597864e72b:   cmp    (%rsp),%r10
           │   │  0x00007f597864e72f:   jae    0x00007f597864e9f8
   0.27%   │   │  0x00007f597864e735:   vmovq  %xmm2,%r10
           │   │  0x00007f597864e73a:   mov    0x18(%r10),%r9d              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@36 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │   │  0x00007f597864e73e:   xchg   %ax,%ax
   0.00%   │   │  0x00007f597864e740:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f597864efac
           │   │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.51%   │   │  0x00007f597864e745:   test   %r11d,%r11d
           │   │  0x00007f597864e748:   jbe    0x00007f597864ea85
   0.23%   │   │  0x00007f597864e74e:   movslq %r11d,%r11
           │   │  0x00007f597864e751:   mov    %rdx,%r10
           │   │  0x00007f597864e754:   dec    %r10
   0.00%   │   │  0x00007f597864e757:   cmp    %r11,%r10
   0.27%   │   │  0x00007f597864e75a:   nopw   0x0(%rax,%rax,1)
           │   │  0x00007f597864e760:   jae    0x00007f597864ea58
   0.25%   │   │  0x00007f597864e766:   mov    0xc(%r12,%rax,8),%r11d       ; implicit exception: dispatches to 0x00007f597864efbe
           │   │                                                            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │   │  0x00007f597864e76b:   test   %r11d,%r11d
           │   │  0x00007f597864e76e:   jbe    0x00007f597864ea97
           │   │  0x00007f597864e774:   movslq %r11d,%r11
           │   │  0x00007f597864e777:   cmp    %r11,%r10
   0.26%   │   │  0x00007f597864e77a:   nopw   0x0(%rax,%rax,1)
   0.00%   │   │  0x00007f597864e780:   jae    0x00007f597864ea67
           │   │  0x00007f597864e786:   movsbl 0x10(%r14,%rcx,1),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.29%   │   │  0x00007f597864e78c:   movsbl 0x10(%r12,%r9,8),%r8d
   0.22%   │   │  0x00007f597864e792:   xor    %r10d,%r8d
   0.04%   │   │  0x00007f597864e795:   mov    %r8b,0x10(%r12,%rax,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%   │   │  0x00007f597864e79a:   lea    (%r12,%r9,8),%rbx
           │   │  0x00007f597864e79e:   add    $0xfffffffffffffffd,%rdx
   0.24%   │   │  0x00007f597864e7a2:   lea    (%r12,%rax,8),%rdi
   0.00%   │   │  0x00007f597864e7a6:   cmp    $0xffffffff80000000,%rdx
   0.03%   │   │  0x00007f597864e7ad:   mov    $0xffffffff80000000,%r10
           │   │  0x00007f597864e7b4:   cmovl  %r10,%rdx
   0.23%   │   │  0x00007f597864e7b8:   mov    %edx,%ebp                    ;   {no_reloc}
   0.00%   │   │  0x00007f597864e7ba:   nopw   0x0(%rax,%rax,1)
   0.03%   │   │  0x00007f597864e7c0:   cmp    $0x1,%ebp
           │   │  0x00007f597864e7c3:   jle    0x00007f597864ea76
           │   │  0x00007f597864e7c9:   mov    $0x1,%r10d
   0.24%   │  ↗│  0x00007f597864e7cf:   mov    %ebp,%r11d
   0.00%   │  ││  0x00007f597864e7d2:   sub    %r10d,%r11d
   0.03%   │  ││  0x00007f597864e7d5:   xor    %r9d,%r9d
           │  ││  0x00007f597864e7d8:   cmp    %r10d,%ebp
   0.21%   │  ││  0x00007f597864e7db:   cmovl  %r9d,%r11d
   0.00%   │  ││  0x00007f597864e7df:   cmp    $0xfa0,%r11d
   0.02%   │  ││  0x00007f597864e7e6:   mov    $0xfa0,%r8d
           │  ││  0x00007f597864e7ec:   cmova  %r8d,%r11d
   0.19%   │  ││  0x00007f597864e7f0:   add    %r10d,%r11d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@23 (line 165)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%   │ ↗││  0x00007f597864e7f3:   movslq %r10d,%rdx                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │ │││  0x00007f597864e7f6:   movsbl 0x10(%rbx,%rdx,1),%r9d
   0.19%   │ │││  0x00007f597864e7fc:   lea    (%rcx,%rdx,1),%rsi
   0.00%   │ │││  0x00007f597864e800:   movsbl 0x10(%r14,%rsi,1),%r8d
   0.03%   │ │││  0x00007f597864e806:   xor    %r8d,%r9d
           │ │││  0x00007f597864e809:   mov    %r9b,0x10(%rdi,%rdx,1)
   0.19%   │ │││  0x00007f597864e80e:   movsbl 0x11(%rbx,%rdx,1),%r9d
   0.00%   │ │││  0x00007f597864e814:   movsbl 0x11(%r14,%rsi,1),%r8d
   0.02%   │ │││  0x00007f597864e81a:   xor    %r8d,%r9d
           │ │││  0x00007f597864e81d:   mov    %r9b,0x11(%rdi,%rdx,1)
   0.26%   │ │││  0x00007f597864e822:   movsbl 0x12(%rbx,%rdx,1),%r8d
   0.00%   │ │││  0x00007f597864e828:   movsbl 0x12(%r14,%rsi,1),%r9d
   0.00%   │ │││  0x00007f597864e82e:   xor    %r9d,%r8d
           │ │││  0x00007f597864e831:   mov    %r8b,0x12(%rdi,%rdx,1)
   0.25%   │ │││  0x00007f597864e836:   movsbl 0x13(%rbx,%rdx,1),%r9d
   0.01%   │ │││  0x00007f597864e83c:   movsbl 0x13(%r14,%rsi,1),%r8d
   0.01%   │ │││  0x00007f597864e842:   xor    %r8d,%r9d
           │ │││  0x00007f597864e845:   mov    %r9b,0x13(%rdi,%rdx,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.33%   │ │││  0x00007f597864e84a:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │ │││  0x00007f597864e84e:   cmp    %r11d,%r10d
           │ ╰││  0x00007f597864e851:   jl     0x00007f597864e7f3           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │  ││  0x00007f597864e853:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rdi=Oop rax=NarrowOop r14=Oop xmm0=Oop xmm2=Oop [48]=Oop }
           │  ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  ││  0x00007f597864e85a:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  ││                                                            ;   {poll}
   1.09%   │  ││  0x00007f597864e85d:   data16 xchg %ax,%ax
           │  ││  0x00007f597864e860:   cmp    %ebp,%r10d
           │  ╰│  0x00007f597864e863:   jl     0x00007f597864e7cf
   0.01%   │   │  0x00007f597864e869:   cmp    %r13d,%r10d
           │   │  0x00007f597864e86c:   jl     0x00007f597864e588
           │   ╰  0x00007f597864e872:   jmp    0x00007f597864e5ab
   0.00%   ↘      0x00007f597864e877:   mov    0x30(%rsp),%r10
   0.00%          0x00007f597864e87c:   movzbl 0x24(%r10),%ebp              ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  0x00007f597864e881:   test   %ebp,%ebp
                  0x00007f597864e883:   jne    0x00007f597864ef30           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  0x00007f597864e889:   mov    0xc(%r10),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                  0x00007f597864e88d:   mov    0x20(%r10),%r11d             ;*getfield cipherMode {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.10%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.19%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 642 
  15.10%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 672 
   4.18%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 642 
   1.97%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.10%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.05%              kernel  [unknown] 
   0.78%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.27%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 672 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.90%  <...other 268 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.37%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 642 
  15.39%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 672 
   3.85%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.10%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 673 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 724 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.77%         c2, level 4
   3.85%        runtime stub
   2.10%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = Blowfish/CBC/NoPadding)

# Run progress: 80.00% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 325.567 us/op
# Warmup Iteration   2: 310.834 us/op
# Warmup Iteration   3: 309.894 us/op
# Warmup Iteration   4: 309.784 us/op
# Warmup Iteration   5: 310.201 us/op
Iteration   1: 310.399 us/op
Iteration   2: 310.197 us/op
Iteration   3: 310.752 us/op
Iteration   4: 309.947 us/op
Iteration   5: 310.801 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  310.419 ±(99.9%) 1.401 us/op [Average]
  (min, avg, max) = (309.947, 310.419, 310.801), stdev = 0.364
  CI (99.9%): [309.019, 311.820] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 148265 total address lines.
Perf output processed (skipped 56.927 seconds):
 Column 1: cycles (50652 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 624 

 <region is too big to display, has 1069 lines, but threshold is 1000>
....................................................................................................
  74.63%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 652 

                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  0x00007f095064b888:   movslq %r10d,%r8                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.65%          0x00007f095064b88b:   movsbl 0x10(%rbx,%r8,1),%r11d
   0.09%          0x00007f095064b891:   lea    (%rcx,%r8,1),%r9
   0.03%          0x00007f095064b895:   movsbl 0x10(%r14,%r9,1),%r9d
                  0x00007f095064b89b:   xor    %r9d,%r11d
   0.67%          0x00007f095064b89e:   mov    %r11b,0x10(%rdi,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.26%          0x00007f095064b8a3:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%          0x00007f095064b8a6:   cmp    %r13d,%r10d
                  0x00007f095064b8a9:   jl     0x00007f095064b888
   0.00%       ↗  0x00007f095064b8ab:   mov    %r14,%r10
   0.20%       │  0x00007f095064b8ae:   vmovq  %xmm0,%rbx
   0.09%       │  0x00007f095064b8b3:   vmovd  %xmm1,%r9d
   0.01%       │  0x00007f095064b8b8:   vmovq  %xmm2,%rcx
               │  0x00007f095064b8bd:   vmovd  %xmm4,%edi
   0.17%       │  0x00007f095064b8c1:   mov    (%rsp),%rdx
   0.04%       │  0x00007f095064b8c5:   vmovd  %xmm3,%r11d                  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
               │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
               │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
               │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
               │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
               │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            ↗  │  0x00007f095064b8ca:   mov    0x10(%rcx),%r8d              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    │  │  0x00007f095064b8ce:   test   %r8d,%r8d
            │  │  0x00007f095064b8d1:   je     0x00007f095064bc67           ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {no_reloc}
   0.17%    │  │  0x00007f095064b8d7:   mov    %r11d,0x48(%rsp)
   0.07%    │  │  0x00007f095064b8dc:   mov    %rdx,0x8(%rsp)
   0.01%    │  │  0x00007f095064b8e1:   mov    %edi,0x4c(%rsp)
            │  │  0x00007f095064b8e5:   mov    %rcx,(%rsp)
   0.18%    │  │  0x00007f095064b8e9:   mov    %r9d,%ebp
   0.07%    │  │  0x00007f095064b8ec:   mov    %rbx,0x40(%rsp)
   0.01%    │  │  0x00007f095064b8f1:   mov    %r10,0x38(%rsp)              ;*synchronization entry
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@-1 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f095064b8f6:   mov    %rax,%rdx
   0.16%    │  │  0x00007f095064b8f9:   shl    $0x3,%rdx                    ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%    │  │  0x00007f095064b8fd:   lea    (%r12,%r8,8),%rsi            ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%    │  │  0x00007f095064b901:   xor    %ecx,%ecx
            │  │  0x00007f095064b903:   mov    %rbx,%r8
   0.15%    │  │  0x00007f095064b906:   mov    %r11d,%r9d
   0.07%    │  │  0x00007f095064b909:   data16 xchg %ax,%ax
   0.00%    │  │  0x00007f095064b90c:   vzeroupper 
   0.25%    │  │  0x00007f095064b90f:   call   0x00007f095063d9c0           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
            │  │                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {optimized virtual_call}
   0.01%    │  │  0x00007f095064b914:   nopl   0x584(%rax,%rax,1)           ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {other}
            │  │  0x00007f095064b91c:   mov    (%rsp),%rcx
   0.25%    │  │  0x00007f095064b920:   mov    0x18(%rcx),%r11d             ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%    │  │  0x00007f095064b924:   mov    0xc(%rcx),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f095064b928:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f095064c278
            │  │  0x00007f095064b92d:   mov    0x48(%rsp),%r10d
   0.26%    │  │  0x00007f095064b932:   test   %r10d,%r10d
            │  │  0x00007f095064b935:   jl     0x00007f095064bc9c
            │  │  0x00007f095064b93b:   lea    (%r10,%r8,1),%edi
            │  │  0x00007f095064b93f:   mov    0x58(%rsp),%ebx
   0.00%    │  │  0x00007f095064b943:   cmp    %edi,%ebx
            │  │  0x00007f095064b945:   jb     0x00007f095064bc9c
   0.26%    │  │  0x00007f095064b94b:   cmp    %r8d,%r9d
            │  │  0x00007f095064b94e:   jb     0x00007f095064bc9c
            │  │  0x00007f095064b954:   test   %r8d,%r8d
            │  │  0x00007f095064b957:   jl     0x00007f095064bc9c           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f095064b95d:   data16 xchg %ax,%ax
   0.00%    │  │  0x00007f095064b960:   test   %r8d,%r8d
          ╭ │  │  0x00007f095064b963:   je     0x00007f095064b99f
   0.31%  │ │  │  0x00007f095064b965:   mov    %r10d,%r14d
          │ │  │  0x00007f095064b968:   mov    %rcx,%rbx
          │ │  │  0x00007f095064b96b:   mov    0x40(%rsp),%r9
   0.01%  │ │  │  0x00007f095064b970:   lea    0x10(%r9,%r10,1),%rdi
   0.25%  │ │  │  0x00007f095064b975:   movslq %r8d,%rdx
   0.00%  │ │  │  0x00007f095064b978:   lea    (%r12,%r11,8),%r10           ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
          │ │  │  0x00007f095064b97c:   lea    0x10(%r12,%r11,8),%rsi
          │ │  │  0x00007f095064b981:   vzeroupper 
   0.23%  │ │  │  0x00007f095064b984:   movabs $0x7f09500a9080,%r10
   0.28%  │ │  │  0x00007f095064b98e:   call   *%r10
          │ │  │  0x00007f095064b991:   nopl   0x0(%rax,%rax,1)             ;   {other}
          │ │  │  0x00007f095064b999:   mov    %rbx,%rcx
          │ │  │  0x00007f095064b99c:   mov    %r14d,%r10d                  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%  ↘ │  │  0x00007f095064b99f:   mov    0xc(%rcx),%r13d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%    │  │  0x00007f095064b9a3:   mov    0x458(%r15),%r11
            │  │  0x00007f095064b9aa:   add    %r13d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@96 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    │  │  0x00007f095064b9ad:   mov    0x50(%rsp),%r8d
   0.34%    │  │  0x00007f095064b9b2:   add    %r13d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.14%    │  │  0x00007f095064b9b5:   mov    %r8d,0x50(%rsp)              ; ImmutableOopMap {rcx=Oop [48]=Oop [56]=Oop [64]=Oop }
            │  │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │  │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.41%    │  │  0x00007f095064b9ba:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {poll}
   0.03%    │  │  0x00007f095064b9bd:   data16 xchg %ax,%ax
            │  │  0x00007f095064b9c0:   cmp    0x4c(%rsp),%r8d
           ╭│  │  0x00007f095064b9c5:   jge    0x00007f095064bb77           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││  │  0x00007f095064b9cb:   mov    %r10d,%r11d
   0.20%   ││  │  0x00007f095064b9ce:   mov    0x38(%rsp),%r10
   0.04%   ││  │  0x00007f095064b9d3:   mov    0x40(%rsp),%rbx
           ││  │  0x00007f095064b9d8:   mov    %ebp,%r9d
           ││  │  0x00007f095064b9db:   mov    0x4c(%rsp),%edi
   0.20%   ││  │  0x00007f095064b9df:   mov    0x8(%rsp),%rdx               ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@11 (line 164)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.04%   ││  │  0x00007f095064b9e4:   mov    0x1c(%rcx),%eax              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││  │  0x00007f095064b9e7:   test   %r13d,%r13d
           │╰  │  0x00007f095064b9ea:   jle    0x00007f095064b8ca           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │   │  0x00007f095064b9f0:   mov    0x50(%rsp),%ebp
   0.22%   │   │  0x00007f095064b9f4:   cmp    %r9d,%ebp
           │   │  0x00007f095064b9f7:   jae    0x00007f095064bd00
   0.04%   │   │  0x00007f095064b9fd:   vmovd  %r11d,%xmm3
           │   │  0x00007f095064ba02:   mov    %rdx,(%rsp)
   0.00%   │   │  0x00007f095064ba06:   vmovd  %edi,%xmm4
   0.23%   │   │  0x00007f095064ba0a:   vmovq  %rcx,%xmm2
   0.03%   │   │  0x00007f095064ba0f:   vmovd  %r9d,%xmm1
           │   │  0x00007f095064ba14:   vmovq  %rbx,%xmm0
           │   │  0x00007f095064ba19:   mov    %r10,%r14
   0.39%   │   │  0x00007f095064ba1c:   movslq %r13d,%rdx
   0.07%   │   │  0x00007f095064ba1f:   movslq 0x50(%rsp),%rcx              ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.18%   │   │  0x00007f095064ba24:   lea    (%rdx,%rcx,1),%r10
   0.47%   │   │  0x00007f095064ba28:   dec    %r10
   0.23%   │   │  0x00007f095064ba2b:   cmp    (%rsp),%r10
           │   │  0x00007f095064ba2f:   jae    0x00007f095064bcf8
   0.24%   │   │  0x00007f095064ba35:   vmovq  %xmm2,%r10
           │   │  0x00007f095064ba3a:   mov    0x18(%r10),%r9d              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@36 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │   │  0x00007f095064ba3e:   xchg   %ax,%ax
           │   │  0x00007f095064ba40:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f095064c2ac
           │   │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.54%   │   │  0x00007f095064ba45:   test   %r11d,%r11d
           │   │  0x00007f095064ba48:   jbe    0x00007f095064bd85
   0.24%   │   │  0x00007f095064ba4e:   movslq %r11d,%r11
           │   │  0x00007f095064ba51:   mov    %rdx,%r10
           │   │  0x00007f095064ba54:   dec    %r10
   0.00%   │   │  0x00007f095064ba57:   cmp    %r11,%r10
   0.22%   │   │  0x00007f095064ba5a:   nopw   0x0(%rax,%rax,1)
           │   │  0x00007f095064ba60:   jae    0x00007f095064bd58
   0.25%   │   │  0x00007f095064ba66:   mov    0xc(%r12,%rax,8),%r11d       ; implicit exception: dispatches to 0x00007f095064c2be
           │   │                                                            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%   │   │  0x00007f095064ba6b:   test   %r11d,%r11d
           │   │  0x00007f095064ba6e:   jbe    0x00007f095064bd97
           │   │  0x00007f095064ba74:   movslq %r11d,%r11
           │   │  0x00007f095064ba77:   cmp    %r11,%r10
   0.27%   │   │  0x00007f095064ba7a:   nopw   0x0(%rax,%rax,1)
   0.00%   │   │  0x00007f095064ba80:   jae    0x00007f095064bd67
           │   │  0x00007f095064ba86:   movsbl 0x10(%r14,%rcx,1),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.26%   │   │  0x00007f095064ba8c:   movsbl 0x10(%r12,%r9,8),%r8d
   0.22%   │   │  0x00007f095064ba92:   xor    %r10d,%r8d
   0.06%   │   │  0x00007f095064ba95:   mov    %r8b,0x10(%r12,%rax,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.08%   │   │  0x00007f095064ba9a:   lea    (%r12,%r9,8),%rbx
           │   │  0x00007f095064ba9e:   add    $0xfffffffffffffffd,%rdx
   0.18%   │   │  0x00007f095064baa2:   lea    (%r12,%rax,8),%rdi
           │   │  0x00007f095064baa6:   cmp    $0xffffffff80000000,%rdx
   0.02%   │   │  0x00007f095064baad:   mov    $0xffffffff80000000,%r10
           │   │  0x00007f095064bab4:   cmovl  %r10,%rdx
   0.23%   │   │  0x00007f095064bab8:   mov    %edx,%ebp                    ;   {no_reloc}
           │   │  0x00007f095064baba:   nopw   0x0(%rax,%rax,1)
   0.03%   │   │  0x00007f095064bac0:   cmp    $0x1,%ebp
           │   │  0x00007f095064bac3:   jle    0x00007f095064bd76
           │   │  0x00007f095064bac9:   mov    $0x1,%r10d
   0.20%   │  ↗│  0x00007f095064bacf:   mov    %ebp,%r11d
   0.01%   │  ││  0x00007f095064bad2:   sub    %r10d,%r11d
   0.02%   │  ││  0x00007f095064bad5:   xor    %r9d,%r9d
           │  ││  0x00007f095064bad8:   cmp    %r10d,%ebp
   0.22%   │  ││  0x00007f095064badb:   cmovl  %r9d,%r11d
           │  ││  0x00007f095064badf:   cmp    $0xfa0,%r11d
   0.04%   │  ││  0x00007f095064bae6:   mov    $0xfa0,%r8d
           │  ││  0x00007f095064baec:   cmova  %r8d,%r11d
   0.24%   │  ││  0x00007f095064baf0:   add    %r10d,%r11d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@23 (line 165)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%   │ ↗││  0x00007f095064baf3:   movslq %r10d,%rdx                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │ │││  0x00007f095064baf6:   movsbl 0x10(%rbx,%rdx,1),%r9d
   0.23%   │ │││  0x00007f095064bafc:   lea    (%rcx,%rdx,1),%rsi
   0.00%   │ │││  0x00007f095064bb00:   movsbl 0x10(%r14,%rsi,1),%r8d
   0.03%   │ │││  0x00007f095064bb06:   xor    %r8d,%r9d
           │ │││  0x00007f095064bb09:   mov    %r9b,0x10(%rdi,%rdx,1)
   0.24%   │ │││  0x00007f095064bb0e:   movsbl 0x11(%rbx,%rdx,1),%r9d
   0.00%   │ │││  0x00007f095064bb14:   movsbl 0x11(%r14,%rsi,1),%r8d
   0.05%   │ │││  0x00007f095064bb1a:   xor    %r8d,%r9d
           │ │││  0x00007f095064bb1d:   mov    %r9b,0x11(%rdi,%rdx,1)
   0.23%   │ │││  0x00007f095064bb22:   movsbl 0x12(%rbx,%rdx,1),%r8d
   0.01%   │ │││  0x00007f095064bb28:   movsbl 0x12(%r14,%rsi,1),%r9d
   0.01%   │ │││  0x00007f095064bb2e:   xor    %r9d,%r8d
           │ │││  0x00007f095064bb31:   mov    %r8b,0x12(%rdi,%rdx,1)
   0.22%   │ │││  0x00007f095064bb36:   movsbl 0x13(%rbx,%rdx,1),%r9d
   0.00%   │ │││  0x00007f095064bb3c:   movsbl 0x13(%r14,%rsi,1),%r8d
   0.01%   │ │││  0x00007f095064bb42:   xor    %r8d,%r9d
           │ │││  0x00007f095064bb45:   mov    %r9b,0x13(%rdi,%rdx,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.34%   │ │││  0x00007f095064bb4a:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │ │││  0x00007f095064bb4e:   cmp    %r11d,%r10d
           │ ╰││  0x00007f095064bb51:   jl     0x00007f095064baf3           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%   │  ││  0x00007f095064bb53:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rdi=Oop rax=NarrowOop r14=Oop xmm0=Oop xmm2=Oop [48]=Oop }
           │  ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  ││  0x00007f095064bb5a:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  ││                                                            ;   {poll}
   1.14%   │  ││  0x00007f095064bb5d:   data16 xchg %ax,%ax
           │  ││  0x00007f095064bb60:   cmp    %ebp,%r10d
           │  ╰│  0x00007f095064bb63:   jl     0x00007f095064bacf
   0.00%   │   │  0x00007f095064bb69:   cmp    %r13d,%r10d
           │   │  0x00007f095064bb6c:   jl     0x00007f095064b888
           │   ╰  0x00007f095064bb72:   jmp    0x00007f095064b8ab
           ↘      0x00007f095064bb77:   mov    0x30(%rsp),%r10
   0.00%          0x00007f095064bb7c:   movzbl 0x24(%r10),%ebp              ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%          0x00007f095064bb81:   test   %ebp,%ebp
                  0x00007f095064bb83:   jne    0x00007f095064c230           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  0x00007f095064bb89:   mov    0xc(%r10),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@7 (line 851)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@67 (line 737)
                  0x00007f095064bb8d:   mov    0x20(%r10),%r11d             ;*getfield cipherMode {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::endDoFinal@14 (line 852)
....................................................................................................
  14.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.63%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 624 
  14.95%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 652 
   4.27%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 624 
   2.99%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.75%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.32%              kernel  [unknown] 
   0.30%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 652 
   0.17%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   1.15%  <...other 334 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.90%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 624 
  15.26%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 652 
   3.74%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.78%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 703 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 655 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  defaultStream::write 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.18%         c2, level 4
   3.74%        runtime stub
   1.78%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%    perf-1931759.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 448, transformation = Blowfish/CBC/NoPadding)

# Run progress: 90.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 326.756 us/op
# Warmup Iteration   2: 310.818 us/op
# Warmup Iteration   3: 310.244 us/op
# Warmup Iteration   4: 309.746 us/op
# Warmup Iteration   5: 309.550 us/op
Iteration   1: 310.189 us/op
Iteration   2: 309.832 us/op
Iteration   3: 309.874 us/op
Iteration   4: 309.876 us/op
Iteration   5: 310.091 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  309.973 ±(99.9%) 0.608 us/op [Average]
  (min, avg, max) = (309.832, 309.973, 310.189), stdev = 0.158
  CI (99.9%): [309.364, 310.581] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 153030 total address lines.
Perf output processed (skipped 57.131 seconds):
 Column 1: cycles (50848 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 

 <region is too big to display, has 1069 lines, but threshold is 1000>
....................................................................................................
  74.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 677 

                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  0x00007f84b064d108:   movslq %r10d,%r8                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.57%          0x00007f84b064d10b:   movsbl 0x10(%rbx,%r8,1),%r11d
   0.11%          0x00007f84b064d111:   lea    (%rcx,%r8,1),%r9
   0.03%          0x00007f84b064d115:   movsbl 0x10(%r14,%r9,1),%r9d
                  0x00007f84b064d11b:   xor    %r9d,%r11d
   0.71%          0x00007f84b064d11e:   mov    %r11b,0x10(%rdi,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.27%          0x00007f84b064d123:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
                                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
                                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
                                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%          0x00007f84b064d126:   cmp    %r13d,%r10d
                  0x00007f84b064d129:   jl     0x00007f84b064d108
               ↗  0x00007f84b064d12b:   mov    %r14,%r10
   0.17%       │  0x00007f84b064d12e:   vmovq  %xmm0,%rbx
   0.06%       │  0x00007f84b064d133:   vmovd  %xmm1,%r9d
   0.01%       │  0x00007f84b064d138:   vmovq  %xmm2,%rcx
               │  0x00007f84b064d13d:   vmovd  %xmm4,%edi
   0.19%       │  0x00007f84b064d141:   mov    (%rsp),%rdx
   0.09%       │  0x00007f84b064d145:   vmovd  %xmm3,%r11d                  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
               │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
               │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
               │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
               │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
               │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    ↗  │  0x00007f84b064d14a:   mov    0x10(%rcx),%r8d              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%    │  │  0x00007f84b064d14e:   test   %r8d,%r8d
            │  │  0x00007f84b064d151:   je     0x00007f84b064d4e7           ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {no_reloc}
   0.14%    │  │  0x00007f84b064d157:   mov    %r11d,0x48(%rsp)
   0.05%    │  │  0x00007f84b064d15c:   mov    %rdx,0x8(%rsp)
   0.01%    │  │  0x00007f84b064d161:   mov    %edi,0x4c(%rsp)
            │  │  0x00007f84b064d165:   mov    %rcx,(%rsp)
   0.15%    │  │  0x00007f84b064d169:   mov    %r9d,%ebp
   0.06%    │  │  0x00007f84b064d16c:   mov    %rbx,0x40(%rsp)
   0.02%    │  │  0x00007f84b064d171:   mov    %r10,0x38(%rsp)              ;*synchronization entry
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@-1 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    │  │  0x00007f84b064d176:   mov    %rax,%rdx
   0.18%    │  │  0x00007f84b064d179:   shl    $0x3,%rdx                    ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.06%    │  │  0x00007f84b064d17d:   lea    (%r12,%r8,8),%rsi            ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.02%    │  │  0x00007f84b064d181:   xor    %ecx,%ecx
   0.00%    │  │  0x00007f84b064d183:   mov    %rbx,%r8
   0.15%    │  │  0x00007f84b064d186:   mov    %r11d,%r9d
   0.06%    │  │  0x00007f84b064d189:   data16 xchg %ax,%ax
   0.01%    │  │  0x00007f84b064d18c:   vzeroupper 
   0.25%    │  │  0x00007f84b064d18f:   call   0x00007f84b0640040           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
            │  │                                                            ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {optimized virtual_call}
   0.01%    │  │  0x00007f84b064d194:   nopl   0x584(%rax,%rax,1)           ;*invokevirtual cipherBlock {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {other}
            │  │  0x00007f84b064d19c:   mov    (%rsp),%rcx
   0.22%    │  │  0x00007f84b064d1a0:   mov    0x18(%rcx),%r11d             ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    │  │  0x00007f84b064d1a4:   mov    0xc(%rcx),%r8d               ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f84b064d1a8:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f84b064daf8
   0.00%    │  │  0x00007f84b064d1ad:   mov    0x48(%rsp),%r10d
   0.27%    │  │  0x00007f84b064d1b2:   test   %r10d,%r10d
            │  │  0x00007f84b064d1b5:   jl     0x00007f84b064d51c
            │  │  0x00007f84b064d1bb:   lea    (%r10,%r8,1),%edi
            │  │  0x00007f84b064d1bf:   mov    0x58(%rsp),%ebx
            │  │  0x00007f84b064d1c3:   cmp    %edi,%ebx
            │  │  0x00007f84b064d1c5:   jb     0x00007f84b064d51c
   0.27%    │  │  0x00007f84b064d1cb:   cmp    %r8d,%r9d
            │  │  0x00007f84b064d1ce:   jb     0x00007f84b064d51c
            │  │  0x00007f84b064d1d4:   test   %r8d,%r8d
            │  │  0x00007f84b064d1d7:   jl     0x00007f84b064d51c           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │  0x00007f84b064d1dd:   data16 xchg %ax,%ax
            │  │  0x00007f84b064d1e0:   test   %r8d,%r8d
          ╭ │  │  0x00007f84b064d1e3:   je     0x00007f84b064d21f
   0.26%  │ │  │  0x00007f84b064d1e5:   mov    %r10d,%r14d
          │ │  │  0x00007f84b064d1e8:   mov    %rcx,%rbx
          │ │  │  0x00007f84b064d1eb:   mov    0x40(%rsp),%r9
   0.01%  │ │  │  0x00007f84b064d1f0:   lea    0x10(%r9,%r10,1),%rdi
   0.23%  │ │  │  0x00007f84b064d1f5:   movslq %r8d,%rdx
          │ │  │  0x00007f84b064d1f8:   lea    (%r12,%r11,8),%r10           ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%  │ │  │  0x00007f84b064d1fc:   lea    0x10(%r12,%r11,8),%rsi
          │ │  │  0x00007f84b064d201:   vzeroupper 
   0.27%  │ │  │  0x00007f84b064d204:   movabs $0x7f84b00a9080,%r10
   0.22%  │ │  │  0x00007f84b064d20e:   call   *%r10
          │ │  │  0x00007f84b064d211:   nopl   0x0(%rax,%rax,1)             ;   {other}
          │ │  │  0x00007f84b064d219:   mov    %rbx,%rcx
          │ │  │  0x00007f84b064d21c:   mov    %r14d,%r10d                  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
          │ │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
          │ │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%  ↘ │  │  0x00007f84b064d21f:   mov    0xc(%rcx),%r13d              ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    │  │  0x00007f84b064d223:   mov    0x458(%r15),%r11
            │  │  0x00007f84b064d22a:   add    %r13d,%r10d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@96 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%    │  │  0x00007f84b064d22d:   mov    0x50(%rsp),%r8d
   0.32%    │  │  0x00007f84b064d232:   add    %r13d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.08%    │  │  0x00007f84b064d235:   mov    %r8d,0x50(%rsp)              ; ImmutableOopMap {rcx=Oop [48]=Oop [56]=Oop [64]=Oop }
            │  │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │  │                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.32%    │  │  0x00007f84b064d23a:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@99 (line 163)
            │  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
            │  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
            │  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
            │  │                                                            ;   {poll}
   0.06%    │  │  0x00007f84b064d23d:   data16 xchg %ax,%ax
            │  │  0x00007f84b064d240:   cmp    0x4c(%rsp),%r8d
           ╭│  │  0x00007f84b064d245:   jge    0x00007f84b064d3f7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││  │  0x00007f84b064d24b:   mov    %r10d,%r11d
   0.21%   ││  │  0x00007f84b064d24e:   mov    0x38(%rsp),%r10
   0.05%   ││  │  0x00007f84b064d253:   mov    0x40(%rsp),%rbx
           ││  │  0x00007f84b064d258:   mov    %ebp,%r9d
           ││  │  0x00007f84b064d25b:   mov    0x4c(%rsp),%edi
   0.24%   ││  │  0x00007f84b064d25f:   mov    0x8(%rsp),%rdx               ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@11 (line 164)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%   ││  │  0x00007f84b064d264:   mov    0x1c(%rcx),%eax              ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@24 (line 165)
           ││  │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           ││  │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           ││  │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           ││  │  0x00007f84b064d267:   test   %r13d,%r13d
           │╰  │  0x00007f84b064d26a:   jle    0x00007f84b064d14a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │   │  0x00007f84b064d270:   mov    0x50(%rsp),%ebp
   0.19%   │   │  0x00007f84b064d274:   cmp    %r9d,%ebp
           │   │  0x00007f84b064d277:   jae    0x00007f84b064d580
   0.05%   │   │  0x00007f84b064d27d:   vmovd  %r11d,%xmm3
           │   │  0x00007f84b064d282:   mov    %rdx,(%rsp)
           │   │  0x00007f84b064d286:   vmovd  %edi,%xmm4
   0.19%   │   │  0x00007f84b064d28a:   vmovq  %rcx,%xmm2
   0.05%   │   │  0x00007f84b064d28f:   vmovd  %r9d,%xmm1
           │   │  0x00007f84b064d294:   vmovq  %rbx,%xmm0
           │   │  0x00007f84b064d299:   mov    %r10,%r14
   0.38%   │   │  0x00007f84b064d29c:   movslq %r13d,%rdx
   0.11%   │   │  0x00007f84b064d29f:   movslq 0x50(%rsp),%rcx              ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.20%   │   │  0x00007f84b064d2a4:   lea    (%rdx,%rcx,1),%r10
   0.46%   │   │  0x00007f84b064d2a8:   dec    %r10
   0.26%   │   │  0x00007f84b064d2ab:   cmp    (%rsp),%r10
           │   │  0x00007f84b064d2af:   jae    0x00007f84b064d578
   0.26%   │   │  0x00007f84b064d2b5:   vmovq  %xmm2,%r10
           │   │  0x00007f84b064d2ba:   mov    0x18(%r10),%r9d              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@36 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │   │  0x00007f84b064d2be:   xchg   %ax,%ax
           │   │  0x00007f84b064d2c0:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f84b064db2c
           │   │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.49%   │   │  0x00007f84b064d2c5:   test   %r11d,%r11d
           │   │  0x00007f84b064d2c8:   jbe    0x00007f84b064d605
   0.26%   │   │  0x00007f84b064d2ce:   movslq %r11d,%r11
           │   │  0x00007f84b064d2d1:   mov    %rdx,%r10
           │   │  0x00007f84b064d2d4:   dec    %r10
   0.00%   │   │  0x00007f84b064d2d7:   cmp    %r11,%r10
   0.20%   │   │  0x00007f84b064d2da:   nopw   0x0(%rax,%rax,1)
           │   │  0x00007f84b064d2e0:   jae    0x00007f84b064d5d8
   0.23%   │   │  0x00007f84b064d2e6:   mov    0xc(%r12,%rax,8),%r11d       ; implicit exception: dispatches to 0x00007f84b064db3e
           │   │                                                            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │   │  0x00007f84b064d2eb:   test   %r11d,%r11d
           │   │  0x00007f84b064d2ee:   jbe    0x00007f84b064d617
           │   │  0x00007f84b064d2f4:   movslq %r11d,%r11
           │   │  0x00007f84b064d2f7:   cmp    %r11,%r10
   0.22%   │   │  0x00007f84b064d2fa:   nopw   0x0(%rax,%rax,1)
   0.00%   │   │  0x00007f84b064d300:   jae    0x00007f84b064d5e7
           │   │  0x00007f84b064d306:   movsbl 0x10(%r14,%rcx,1),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.24%   │   │  0x00007f84b064d30c:   movsbl 0x10(%r12,%r9,8),%r8d
   0.23%   │   │  0x00007f84b064d312:   xor    %r10d,%r8d
   0.03%   │   │  0x00007f84b064d315:   mov    %r8b,0x10(%r12,%rax,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │   │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │   │                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │   │                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.07%   │   │  0x00007f84b064d31a:   lea    (%r12,%r9,8),%rbx
   0.00%   │   │  0x00007f84b064d31e:   add    $0xfffffffffffffffd,%rdx
   0.22%   │   │  0x00007f84b064d322:   lea    (%r12,%rax,8),%rdi
   0.00%   │   │  0x00007f84b064d326:   cmp    $0xffffffff80000000,%rdx
   0.04%   │   │  0x00007f84b064d32d:   mov    $0xffffffff80000000,%r10
           │   │  0x00007f84b064d334:   cmovl  %r10,%rdx
   0.19%   │   │  0x00007f84b064d338:   mov    %edx,%ebp                    ;   {no_reloc}
           │   │  0x00007f84b064d33a:   nopw   0x0(%rax,%rax,1)
   0.03%   │   │  0x00007f84b064d340:   cmp    $0x1,%ebp
           │   │  0x00007f84b064d343:   jle    0x00007f84b064d5f6
           │   │  0x00007f84b064d349:   mov    $0x1,%r10d
   0.22%   │  ↗│  0x00007f84b064d34f:   mov    %ebp,%r11d
   0.00%   │  ││  0x00007f84b064d352:   sub    %r10d,%r11d
   0.04%   │  ││  0x00007f84b064d355:   xor    %r9d,%r9d
           │  ││  0x00007f84b064d358:   cmp    %r10d,%ebp
   0.21%   │  ││  0x00007f84b064d35b:   cmovl  %r9d,%r11d
   0.01%   │  ││  0x00007f84b064d35f:   cmp    $0xfa0,%r11d
   0.04%   │  ││  0x00007f84b064d366:   mov    $0xfa0,%r8d
           │  ││  0x00007f84b064d36c:   cmova  %r8d,%r11d
   0.23%   │  ││  0x00007f84b064d370:   add    %r10d,%r11d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@23 (line 165)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.03%   │ ↗││  0x00007f84b064d373:   movslq %r10d,%rdx                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │ │││  0x00007f84b064d376:   movsbl 0x10(%rbx,%rdx,1),%r9d
   0.22%   │ │││  0x00007f84b064d37c:   lea    (%rcx,%rdx,1),%rsi
   0.00%   │ │││  0x00007f84b064d380:   movsbl 0x10(%r14,%rsi,1),%r8d
   0.03%   │ │││  0x00007f84b064d386:   xor    %r8d,%r9d
           │ │││  0x00007f84b064d389:   mov    %r9b,0x10(%rdi,%rdx,1)
   0.21%   │ │││  0x00007f84b064d38e:   movsbl 0x11(%rbx,%rdx,1),%r9d
   0.00%   │ │││  0x00007f84b064d394:   movsbl 0x11(%r14,%rsi,1),%r8d
   0.05%   │ │││  0x00007f84b064d39a:   xor    %r8d,%r9d
   0.00%   │ │││  0x00007f84b064d39d:   mov    %r9b,0x11(%rdi,%rdx,1)
   0.21%   │ │││  0x00007f84b064d3a2:   movsbl 0x12(%rbx,%rdx,1),%r8d
   0.00%   │ │││  0x00007f84b064d3a8:   movsbl 0x12(%r14,%rsi,1),%r9d
   0.01%   │ │││  0x00007f84b064d3ae:   xor    %r9d,%r8d
           │ │││  0x00007f84b064d3b1:   mov    %r8b,0x12(%rdi,%rdx,1)
   0.26%   │ │││  0x00007f84b064d3b6:   movsbl 0x13(%rbx,%rdx,1),%r9d
   0.00%   │ │││  0x00007f84b064d3bc:   movsbl 0x13(%r14,%rsi,1),%r8d
   0.01%   │ │││  0x00007f84b064d3c2:   xor    %r8d,%r9d
           │ │││  0x00007f84b064d3c5:   mov    %r9b,0x13(%rdi,%rdx,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.34%   │ │││  0x00007f84b064d3ca:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
           │ │││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │ │││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │ │││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.00%   │ │││  0x00007f84b064d3ce:   cmp    %r11d,%r10d
           │ ╰││  0x00007f84b064d3d1:   jl     0x00007f84b064d373           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
   0.01%   │  ││  0x00007f84b064d3d3:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop rdi=Oop rax=NarrowOop r14=Oop xmm0=Oop xmm2=Oop [48]=Oop }
           │  ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  ││  0x00007f84b064d3da:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@48 (line 164)
           │  ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::encrypt@36 (line 152)
           │  ││                                                            ; - com.sun.crypto.provider.FeedbackCipher::encryptFinal@8 (line 161)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::finalNoPadding@164 (line 991)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@8 (line 938)
           │  ││                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
           │  ││                                                            ;   {poll}
   1.00%   │  ││  0x00007f84b064d3dd:   data16 xchg %ax,%ax
   0.00%   │  ││  0x00007f84b064d3e0:   cmp    %ebp,%r10d
           │  ╰│  0x00007f84b064d3e3:   jl     0x00007f84b064d34f
   0.00%   │   │  0x00007f84b064d3e9:   cmp    %r13d,%r10d
           │   │  0x00007f84b064d3ec:   jl     0x00007f84b064d108
           │   ╰  0x00007f84b064d3f2:   jmp    0x00007f84b064d12b
           ↘      0x00007f84b064d3f7:   mov    0x30(%rsp),%r10
                  0x00007f84b064d3fc:   movzbl 0x24(%r10),%ebp              ;*getfield decrypting {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@14 (line 940)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
                  0x00007f84b064d401:   test   %ebp,%ebp
                  0x00007f84b064d403:   jne    0x00007f84b064dab0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.sun.crypto.provider.CipherCore::fillOutputBuffer@17 (line 940)
                                                                            ; - com.sun.crypto.provider.CipherCore::doFinal@61 (line 734)
....................................................................................................
  14.53%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.79%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 
  14.53%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 677 
   4.31%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 
   2.80%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.84%              kernel  [unknown] 
   0.80%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.27%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 677 
   0.12%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.08%  <...other 327 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  79.10%         c2, level 4  com.sun.crypto.provider.BlowfishCrypt::cipherBlock, version 2, compile id 650 
  14.81%         c2, level 4  com.sun.crypto.provider.CipherCore::doFinal, version 2, compile id 677 
   3.60%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.18%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 680 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%        libc-2.31.so  malloc 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 725 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  AbstractDisassembler::print_location 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.93%         c2, level 4
   3.60%        runtime stub
   2.18%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:18:18

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

Benchmark                               (dataSize)  (keySize)        (transformation)  Mode  Cnt    Score   Error  Units
BlowfishCbcCryptoBenchmark.decrypt           16384         32  Blowfish/CBC/NoPadding  avgt    5  334.830 ± 0.813  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384         32  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384         64  Blowfish/CBC/NoPadding  avgt    5  333.246 ± 0.622  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384         64  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        128  Blowfish/CBC/NoPadding  avgt    5  326.437 ± 0.799  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        128  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        256  Blowfish/CBC/NoPadding  avgt    5  328.751 ± 0.793  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        256  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        448  Blowfish/CBC/NoPadding  avgt    5  328.771 ± 1.214  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        448  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384         32  Blowfish/CBC/NoPadding  avgt    5  310.602 ± 2.865  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384         32  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384         64  Blowfish/CBC/NoPadding  avgt    5  287.283 ± 0.627  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384         64  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        128  Blowfish/CBC/NoPadding  avgt    5  310.364 ± 1.162  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        128  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        256  Blowfish/CBC/NoPadding  avgt    5  310.419 ± 1.401  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        256  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        448  Blowfish/CBC/NoPadding  avgt    5  309.973 ± 0.608  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        448  Blowfish/CBC/NoPadding  avgt           NaN            ---
