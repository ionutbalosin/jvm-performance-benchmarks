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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 32, transformation = Blowfish/CBC/NoPadding)

# Run progress: 0.00% complete, ETA 00:16:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 234.619 us/op
# Warmup Iteration   2: 221.112 us/op
# Warmup Iteration   3: 221.024 us/op
# Warmup Iteration   4: 220.983 us/op
# Warmup Iteration   5: 220.764 us/op
Iteration   1: 220.702 us/op
Iteration   2: 220.650 us/op
Iteration   3: 221.175 us/op
Iteration   4: 221.367 us/op
Iteration   5: 221.312 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  221.041 ±(99.9%) 1.314 us/op [Average]
  (min, avg, max) = (220.650, 221.041, 221.367), stdev = 0.341
  CI (99.9%): [219.727, 222.355] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 256827 total address lines.
Perf output processed (skipped 61.608 seconds):
 Column 1: cycles (50706 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1059 

 <region is too big to display, has 1120 lines, but threshold is 1000>
....................................................................................................
  72.00%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1094 

                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@2 (line 210)
                 0x00007f02d725b73f:   mov    %eax,0x4c(%rsp)
                 0x00007f02d725b743:   mov    %edi,0x48(%rsp)
                 0x00007f02d725b747:   mov    %ecx,%r11d
                 0x00007f02d725b74a:   jmp    0x00007f02d725bc58           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f02d725b74f:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f02d725b75a:   data16 data16 xchg %ax,%ax
                 0x00007f02d725b75e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
   0.33%         0x00007f02d725b760:   mov    %r11d,0x44(%rsp)
   0.00%         0x00007f02d725b765:   mov    0x10(%rsi),%ebp              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
   0.00%         0x00007f02d725b768:   mov    %ebp,0x24(%rsp)              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f02d725b76c:   cmpl   $0x10cf768,0x8(,%rbp,8)      ; implicit exception: dispatches to 0x00007f02d725bfbd
                                                                           ;   {metadata(&apos;com/sun/crypto/provider/BlowfishCrypt&apos;)}
   0.34%         0x00007f02d725b777:   jne    0x00007f02d725be7d           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b77d:   data16 xchg %ax,%ax
                 0x00007f02d725b780:   cmp    %r11d,%r10d
                 0x00007f02d725b783:   jbe    0x00007f02d725bdc0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f02d725b789:   mov    %r11d,%r13d
                 0x00007f02d725b78c:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@14 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b78f:   cmp    %r13d,%r10d
                 0x00007f02d725b792:   jbe    0x00007f02d725bea5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b798:   lea    0x2(%r11),%r14d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@27 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.37%         0x00007f02d725b79c:   nopl   0x0(%rax)
                 0x00007f02d725b7a0:   cmp    %r14d,%r10d
                 0x00007f02d725b7a3:   jbe    0x00007f02d725bed5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b7a9:   lea    0x3(%r11),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@40 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b7ad:   cmp    %r8d,%r10d
                 0x00007f02d725b7b0:   jbe    0x00007f02d725bde2           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@41 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.44%         0x00007f02d725b7b6:   mov    0x24(,%rbp,8),%r9d           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f02d725b7be:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f02d725bfe0
   0.00%         0x00007f02d725b7c6:   lea    0x4(%r11),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@56 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b7ca:   cmp    %ebx,%r10d
                 0x00007f02d725b7cd:   jbe    0x00007f02d725be03           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007f02d725b7d3:   lea    0x5(%r11),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@64 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b7d7:   cmp    %edi,%r10d
                 0x00007f02d725b7da:   jbe    0x00007f02d725bf4e           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b7e0:   lea    0x6(%r11),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@78 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b7e4:   cmp    %eax,%r10d
                 0x00007f02d725b7e7:   jbe    0x00007f02d725bd6c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007f02d725b7ed:   lea    0x7(%r11),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@92 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b7f1:   cmp    %ebp,%r10d
                 0x00007f02d725b7f4:   jbe    0x00007f02d725bf28           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@93 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b7fa:   mov    0x1c(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f02d725b7fe:   mov    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007f02d725c003
   0.37%         0x00007f02d725b806:   cmp    $0x2,%ecx
                 0x00007f02d725b809:   jb     0x00007f02d725be52           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b80f:   cmp    $0x8,%esi
                 0x00007f02d725b812:   jb     0x00007f02d725be27           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b818:   mov    0x24(%rsp),%esi
                 0x00007f02d725b81c:   movsbl 0x10(%rdx,%r11,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.39%         0x00007f02d725b822:   movzbl 0x10(%rdx,%r13,1),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b828:   movzbl 0x10(%rdx,%r14,1),%r14d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b82e:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b831:   shl    $0x10,%r13d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.38%         0x00007f02d725b835:   or     %r13d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b838:   shl    $0x8,%r14d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b83c:   or     %r14d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b83f:   movzbl 0x10(%rdx,%r8,1),%r8d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f02d725b845:   or     %r8d,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b848:   mov    %ecx,0x10(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f02d725b850:   movsbl 0x10(%rdx,%rbx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b856:   movzbl 0x10(%rdx,%rdi,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.30%         0x00007f02d725b85b:   movzbl 0x10(%rdx,%rax,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b860:   shl    $0x18,%r8d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f02d725b864:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b867:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f02d725b86a:   shl    $0x8,%ebx                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b86d:   or     %ebx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f02d725b870:   movzbl 0x10(%rdx,%rbp,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {no_reloc}
                 0x00007f02d725b875:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f02d725b878:   mov    %r8d,0x14(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b880:   mov    %r10d,%r8d
   0.00%         0x00007f02d725b883:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 0x00007f02d725b887:   shl    $0x3,%r9                     ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007f02d725b88b:   mov    %esi,%ebp
                 0x00007f02d725b88d:   shl    $0x3,%rbp                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 0x00007f02d725b891:   cmpb   $0x0,0xc(,%rsi,8)
   0.37%         0x00007f02d725b899:   je     0x00007f02d725bc7d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b89f:   mov    %r8,0x10(%rsp)
   0.01%         0x00007f02d725b8a4:   mov    %r10d,0xc(%rsp)
                 0x00007f02d725b8a9:   mov    %rbp,%rsi
   0.33%         0x00007f02d725b8ac:   mov    %r9,%rdx                     ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b8af:   mov    %rbp,0x18(%rsp)
   0.00%         0x00007f02d725b8b4:   data16 xchg %ax,%ax
                 0x00007f02d725b8b7:   call   0x00007f02d724ddc0           ; ImmutableOopMap {[12]=NarrowOop [16]=Oop [24]=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {optimized virtual_call}
                 0x00007f02d725b8bc:   nopl   0x40003ac(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {other}
                 0x00007f02d725b8c4:   mov    0x24(%rsp),%ebp
   0.35%         0x00007f02d725b8c8:   mov    0x24(,%rbp,8),%edi           ; ImmutableOopMap {rdi=NarrowOop [12]=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b8cf:   cmpl   $0x2,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007f02d725c026
                 0x00007f02d725b8d7:   jb     0x00007f02d725bcf5
   0.33%         0x00007f02d725b8dd:   mov    0xc(%rsp),%r10d
                 0x00007f02d725b8e2:   mov    0x38(%rsp),%rsi
                 0x00007f02d725b8e7:   mov    0x10(,%rdi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b8ee:   mov    %edx,%r11d
   0.33%         0x00007f02d725b8f1:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b8f5:   mov    %r11b,0x10(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b8fd:   mov    %edx,%r11d
                 0x00007f02d725b900:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f02d725b904:   mov    %r11b,0x11(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f02d725b90c:   mov    %edx,%r11d
                 0x00007f02d725b90f:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b913:   mov    %r11b,0x12(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007f02d725b91b:   mov    %dl,0x13(,%r10,8)            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b923:   mov    0x14(,%rdi,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f02d725b92b:   mov    %r11d,%edi
                 0x00007f02d725b92e:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f02d725b931:   mov    %dil,0x14(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.07%         0x00007f02d725b939:   mov    %r11d,%edi
                 0x00007f02d725b93c:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b93f:   mov    %dil,0x15(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007f02d725b947:   mov    %r11d,%edi
   0.01%         0x00007f02d725b94a:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f02d725b94d:   mov    %dil,0x16(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.06%         0x00007f02d725b955:   mov    %r11b,0x17(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.28%         0x00007f02d725b95d:   mov    0x18(%rsi),%edi              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
   0.01%         0x00007f02d725b960:   mov    0xc(%rsi),%r10d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
   0.00%         0x00007f02d725b964:   cmp    $0x1,%r10d
                 0x00007f02d725b968:   jl     0x00007f02d725bca9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.05%         0x00007f02d725b96e:   mov    %r10d,%edx
   0.29%         0x00007f02d725b971:   dec    %edx
   0.01%         0x00007f02d725b973:   mov    0x48(%rsp),%r8d
   0.00%         0x00007f02d725b978:   inc    %r8d
   0.07%         0x00007f02d725b97b:   nopl   0x0(%rax,%rax,1)
   0.26%         0x00007f02d725b980:   cmp    $0x2,%r10d
                 0x00007f02d725b984:   jl     0x00007f02d725bc6e
   0.01%         0x00007f02d725b98a:   mov    0x50(%rsp),%rbx
   0.00%         0x00007f02d725b98f:   movslq 0x48(%rsp),%r9
   0.05%         0x00007f02d725b994:   mov    %edx,%ecx
   0.30%         0x00007f02d725b996:   add    %rcx,%r9
   0.01%         0x00007f02d725b999:   nopl   0x0(%rax)
   0.01%         0x00007f02d725b9a0:   cmp    %r9,%rbx
                 0x00007f02d725b9a3:   jbe    0x00007f02d725bdb4
   0.05%         0x00007f02d725b9a9:   mov    0x5c(%rsp),%r9d
   0.28%         0x00007f02d725b9ae:   cmp    %r8d,%r9d
                 0x00007f02d725b9b1:   jbe    0x00007f02d725bec9           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.01%         0x00007f02d725b9b7:   mov    0x1c(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f02d725b9ba:   mov    0xc(,%rcx,8),%eax            ; implicit exception: dispatches to 0x00007f02d725c04d
                                                                           ;   {no_reloc}
   0.07%         0x00007f02d725b9c1:   cmp    $0x2,%r10d
          ╭      0x00007f02d725b9c5:   jl     0x00007f02d725b9dc
   0.28%  │      0x00007f02d725b9cb:   cmp    %edx,%eax
          │      0x00007f02d725b9cd:   jbe    0x00007f02d725bd63           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%  │      0x00007f02d725b9d3:   cmp    $0x2,%eax
          │      0x00007f02d725b9d6:   jb     0x00007f02d725bd5a           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
          │                                                                ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
          │                                                                ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
          ↘      0x00007f02d725b9dc:   mov    0xc(,%rdi,8),%ebp            ; implicit exception: dispatches to 0x00007f02d725c070
   0.07%         0x00007f02d725b9e3:   cmp    $0x2,%r10d
           ╭     0x00007f02d725b9e7:   jl     0x00007f02d725b9fe
   0.28%   │     0x00007f02d725b9ed:   cmp    %edx,%ebp
           │     0x00007f02d725b9ef:   jbe    0x00007f02d725bd48
   0.02%   │     0x00007f02d725b9f5:   cmp    $0x2,%ebp
           │     0x00007f02d725b9f8:   jb     0x00007f02d725bd18           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
           ↘     0x00007f02d725b9fe:   xchg   %ax,%ax
   0.04%         0x00007f02d725ba00:   cmp    0x48(%rsp),%r9d
                 0x00007f02d725ba05:   jbe    0x00007f02d725bd51           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.26%         0x00007f02d725ba0b:   test   %eax,%eax
                 0x00007f02d725ba0d:   je     0x00007f02d725bda8           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.01%         0x00007f02d725ba13:   test   %ebp,%ebp
                 0x00007f02d725ba15:   je     0x00007f02d725bf1c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
   0.00%         0x00007f02d725ba1b:   mov    0x48(%rsp),%eax
   0.04%         0x00007f02d725ba1f:   mov    0x28(%rsp),%r11
   0.30%         0x00007f02d725ba24:   movsbl 0x10(,%rcx,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%         0x00007f02d725ba2c:   movsbl 0x10(,%rdi,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007f02d725ba34:   xor    %ebp,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
   0.04%         0x00007f02d725ba36:   mov    %dl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.26%         0x00007f02d725ba3b:   cmp    $0x3,%r10d
   0.03%         0x00007f02d725ba3f:   mov    $0x2,%edx
                 0x00007f02d725ba44:   cmovl  %r10d,%edx
   0.09%         0x00007f02d725ba48:   mov    $0x1,%ebp
   0.27%    ╭    0x00007f02d725ba4d:   jmp    0x00007f02d725ba7c           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@28 (line 215)
            │    0x00007f02d725ba52:   data16 nopw 0x0(%rax,%rax,1)
            │    0x00007f02d725ba5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.35%    │↗   0x00007f02d725ba60:   movsbl 0x10(%rbp,%rdi,8),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
            ││   0x00007f02d725ba66:   mov    %eax,%r14d
            ││   0x00007f02d725ba69:   add    %ebp,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
            ││   0x00007f02d725ba6c:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.36%    ││   0x00007f02d725ba72:   xor    %r13d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
            ││   0x00007f02d725ba75:   mov    %r9b,0x10(%r11,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
            ││   0x00007f02d725ba7a:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
   0.02%    ↘│   0x00007f02d725ba7c:   cmp    %ebp,%edx
             ╰   0x00007f02d725ba7e:   jg     0x00007f02d725ba60
   0.34%         0x00007f02d725ba80:   lea    -0x8(%r10),%edx
                 0x00007f02d725ba84:   jmp    0x00007f02d725bbc0
                 0x00007f02d725ba89:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f02d725ba94:   data16 data16 xchg %ax,%ax
                 0x00007f02d725ba98:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   1.01%      ↗  0x00007f02d725baa0:   movsbl 0x10(%rbp,%rdi,8),%edx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
              │  0x00007f02d725baa5:   mov    %eax,%r8d
   1.10%      │  0x00007f02d725baa8:   add    %ebp,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
              │  0x00007f02d725baab:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   1.03%      │  0x00007f02d725bab1:   xor    %edx,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
              │  0x00007f02d725bab4:   mov    %r9b,0x10(%r11,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   1.12%      │  0x00007f02d725bab9:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
              │                                                            ;   {no_reloc}
              │  0x00007f02d725babb:   nopl   0x0(%rax,%rax,1)
   1.43%      │  0x00007f02d725bac0:   cmp    %ebp,%r10d
              │  0x00007f02d725bac3:   jle    0x00007f02d725bbcd
              ╰  0x00007f02d725bac9:   jmp    0x00007f02d725baa0
                 0x00007f02d725bacb:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f02d725bad6:   data16 data16 xchg %ax,%ax
                 0x00007f02d725bada:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                 0x00007f02d725bae0:   movsbl 0x10(%rbp,%rdi,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007f02d725bae6:   mov    %eax,%r13d
                 0x00007f02d725bae9:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  19.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.00%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1059 
  19.18%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1094 
   2.83%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.79%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1094 
   0.72%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.36%              kernel  [unknown] 
   0.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1092 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.14%  <...other 376 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.00%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1059 
  21.98%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1094 
   3.55%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.74%              kernel  [unknown] 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1092 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 1120 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  syscall 
   0.20%  <...other 80 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.28%      jvmci, level 4
   3.55%        runtime stub
   1.74%              kernel
   0.16%           libjvm.so
   0.12%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 64, transformation = Blowfish/CBC/NoPadding)

# Run progress: 10.00% complete, ETA 00:17:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 232.559 us/op
# Warmup Iteration   2: 221.608 us/op
# Warmup Iteration   3: 221.518 us/op
# Warmup Iteration   4: 221.298 us/op
# Warmup Iteration   5: 221.264 us/op
Iteration   1: 221.121 us/op
Iteration   2: 220.710 us/op
Iteration   3: 220.645 us/op
Iteration   4: 220.456 us/op
Iteration   5: 220.408 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  220.668 ±(99.9%) 1.090 us/op [Average]
  (min, avg, max) = (220.408, 220.668, 221.121), stdev = 0.283
  CI (99.9%): [219.579, 221.758] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 261745 total address lines.
Perf output processed (skipped 61.789 seconds):
 Column 1: cycles (50645 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1064 

 <region is too big to display, has 1114 lines, but threshold is 1000>
....................................................................................................
  71.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 

                 0x00007f2cbf2591a3:   je     0x00007f2cbf259979
                 0x00007f2cbf2591a9:   mov    0xc(%r9),%r11d               ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                 0x00007f2cbf2591ad:   mov    %r11d,0x5c(%rsp)
                 0x00007f2cbf2591b2:   mov    %r11d,%ebx
                 0x00007f2cbf2591b5:   mov    %rbx,0x50(%rsp)
                 0x00007f2cbf2591ba:   mov    %ecx,%eax
                 0x00007f2cbf2591bc:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@2 (line 210)
                 0x00007f2cbf2591bf:   mov    %eax,0x4c(%rsp)
   0.00%         0x00007f2cbf2591c3:   mov    %edi,0x48(%rsp)
                 0x00007f2cbf2591c7:   mov    %ecx,%r11d
                 0x00007f2cbf2591ca:   jmp    0x00007f2cbf2596d8           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f2cbf2591cf:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f2cbf2591da:   data16 data16 xchg %ax,%ax
                 0x00007f2cbf2591de:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
   0.32%         0x00007f2cbf2591e0:   mov    %r11d,0x44(%rsp)
   0.00%         0x00007f2cbf2591e5:   mov    0x10(%rsi),%ebp              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 0x00007f2cbf2591e8:   mov    %ebp,0x24(%rsp)              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f2cbf2591ec:   cmpl   $0x10cfa00,0x8(,%rbp,8)      ; implicit exception: dispatches to 0x00007f2cbf259a3d
                                                                           ;   {metadata(&apos;com/sun/crypto/provider/BlowfishCrypt&apos;)}
   0.35%         0x00007f2cbf2591f7:   jne    0x00007f2cbf2598fd           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2591fd:   data16 xchg %ax,%ax
                 0x00007f2cbf259200:   cmp    %r11d,%r10d
                 0x00007f2cbf259203:   jbe    0x00007f2cbf259840           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f2cbf259209:   mov    %r11d,%r13d
                 0x00007f2cbf25920c:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@14 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf25920f:   cmp    %r13d,%r10d
                 0x00007f2cbf259212:   jbe    0x00007f2cbf259925           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259218:   lea    0x2(%r11),%r14d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@27 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f2cbf25921c:   nopl   0x0(%rax)
                 0x00007f2cbf259220:   cmp    %r14d,%r10d
                 0x00007f2cbf259223:   jbe    0x00007f2cbf259955           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf259229:   lea    0x3(%r11),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@40 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf25922d:   cmp    %r8d,%r10d
                 0x00007f2cbf259230:   jbe    0x00007f2cbf259862           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@41 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f2cbf259236:   mov    0x24(,%rbp,8),%r9d           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f2cbf25923e:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f2cbf259a60
   0.00%         0x00007f2cbf259246:   lea    0x4(%r11),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@56 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf25924a:   cmp    %ebx,%r10d
                 0x00007f2cbf25924d:   jbe    0x00007f2cbf259883           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007f2cbf259253:   lea    0x5(%r11),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@64 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259257:   cmp    %edi,%r10d
                 0x00007f2cbf25925a:   jbe    0x00007f2cbf2599ce           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259260:   lea    0x6(%r11),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@78 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259264:   cmp    %eax,%r10d
                 0x00007f2cbf259267:   jbe    0x00007f2cbf2597ec           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f2cbf25926d:   lea    0x7(%r11),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@92 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259271:   cmp    %ebp,%r10d
                 0x00007f2cbf259274:   jbe    0x00007f2cbf2599a8           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@93 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf25927a:   mov    0x1c(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f2cbf25927e:   mov    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007f2cbf259a83
   0.37%         0x00007f2cbf259286:   cmp    $0x2,%ecx
                 0x00007f2cbf259289:   jb     0x00007f2cbf2598d2           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf25928f:   cmp    $0x8,%esi
                 0x00007f2cbf259292:   jb     0x00007f2cbf2598a7           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259298:   mov    0x24(%rsp),%esi
                 0x00007f2cbf25929c:   movsbl 0x10(%rdx,%r11,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f2cbf2592a2:   movzbl 0x10(%rdx,%r13,1),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592a8:   movzbl 0x10(%rdx,%r14,1),%r14d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf2592ae:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592b1:   shl    $0x10,%r13d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.38%         0x00007f2cbf2592b5:   or     %r13d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592b8:   shl    $0x8,%r14d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592bc:   or     %r14d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592bf:   movzbl 0x10(%rdx,%r8,1),%r8d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007f2cbf2592c5:   or     %r8d,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592c8:   mov    %ecx,0x10(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf2592d0:   movsbl 0x10(%rdx,%rbx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592d6:   movzbl 0x10(%rdx,%rdi,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.31%         0x00007f2cbf2592db:   movzbl 0x10(%rdx,%rax,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf2592e0:   shl    $0x18,%r8d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf2592e4:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592e7:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f2cbf2592ea:   shl    $0x8,%ebx                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2592ed:   or     %ebx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf2592f0:   movzbl 0x10(%rdx,%rbp,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {no_reloc}
                 0x00007f2cbf2592f5:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.38%         0x00007f2cbf2592f8:   mov    %r8d,0x14(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f2cbf259300:   mov    %r10d,%r8d
   0.00%         0x00007f2cbf259303:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 0x00007f2cbf259307:   shl    $0x3,%r9                     ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007f2cbf25930b:   mov    %esi,%ebp
                 0x00007f2cbf25930d:   shl    $0x3,%rbp                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
   0.00%         0x00007f2cbf259311:   cmpb   $0x0,0xc(,%rsi,8)
   0.37%         0x00007f2cbf259319:   je     0x00007f2cbf2596fd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf25931f:   mov    %r8,0x10(%rsp)
                 0x00007f2cbf259324:   mov    %r10d,0xc(%rsp)
                 0x00007f2cbf259329:   mov    %rbp,%rsi
   0.36%         0x00007f2cbf25932c:   mov    %r9,%rdx                     ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf25932f:   mov    %rbp,0x18(%rsp)
   0.00%         0x00007f2cbf259334:   data16 xchg %ax,%ax
                 0x00007f2cbf259337:   call   0x00007f2cbf24fc40           ; ImmutableOopMap {[12]=NarrowOop [16]=Oop [24]=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {optimized virtual_call}
                 0x00007f2cbf25933c:   nopl   0x40003ac(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {other}
                 0x00007f2cbf259344:   mov    0x24(%rsp),%ebp
   0.35%         0x00007f2cbf259348:   mov    0x24(,%rbp,8),%edi           ; ImmutableOopMap {rdi=NarrowOop [12]=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf25934f:   cmpl   $0x2,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007f2cbf259aa6
   0.00%         0x00007f2cbf259357:   jb     0x00007f2cbf259775
   0.34%         0x00007f2cbf25935d:   mov    0xc(%rsp),%r10d
                 0x00007f2cbf259362:   mov    0x38(%rsp),%rsi
                 0x00007f2cbf259367:   mov    0x10(,%rdi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f2cbf25936e:   mov    %edx,%r11d
   0.34%         0x00007f2cbf259371:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259375:   mov    %r11b,0x10(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f2cbf25937d:   mov    %edx,%r11d
                 0x00007f2cbf259380:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007f2cbf259384:   mov    %r11b,0x11(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f2cbf25938c:   mov    %edx,%r11d
   0.01%         0x00007f2cbf25938f:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf259393:   mov    %r11b,0x12(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.29%         0x00007f2cbf25939b:   mov    %dl,0x13(,%r10,8)            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2593a3:   mov    0x14(,%rdi,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f2cbf2593ab:   mov    %r11d,%edi
                 0x00007f2cbf2593ae:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f2cbf2593b1:   mov    %dil,0x14(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.07%         0x00007f2cbf2593b9:   mov    %r11d,%edi
   0.00%         0x00007f2cbf2593bc:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2593bf:   mov    %dil,0x15(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.31%         0x00007f2cbf2593c7:   mov    %r11d,%edi
   0.01%         0x00007f2cbf2593ca:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf2593cd:   mov    %dil,0x16(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.07%         0x00007f2cbf2593d5:   mov    %r11b,0x17(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.27%         0x00007f2cbf2593dd:   mov    0x18(%rsi),%edi              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
   0.00%         0x00007f2cbf2593e0:   mov    0xc(%rsi),%r10d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
   0.00%         0x00007f2cbf2593e4:   cmp    $0x1,%r10d
                 0x00007f2cbf2593e8:   jl     0x00007f2cbf259729           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.06%         0x00007f2cbf2593ee:   mov    %r10d,%edx
   0.26%         0x00007f2cbf2593f1:   dec    %edx
   0.01%         0x00007f2cbf2593f3:   mov    0x48(%rsp),%r8d
                 0x00007f2cbf2593f8:   inc    %r8d
   0.06%         0x00007f2cbf2593fb:   nopl   0x0(%rax,%rax,1)
   0.27%         0x00007f2cbf259400:   cmp    $0x2,%r10d
                 0x00007f2cbf259404:   jl     0x00007f2cbf2596ee
   0.01%         0x00007f2cbf25940a:   mov    0x50(%rsp),%rbx
                 0x00007f2cbf25940f:   movslq 0x48(%rsp),%r9
   0.06%         0x00007f2cbf259414:   mov    %edx,%ecx
   0.32%         0x00007f2cbf259416:   add    %rcx,%r9
   0.02%         0x00007f2cbf259419:   nopl   0x0(%rax)
                 0x00007f2cbf259420:   cmp    %r9,%rbx
                 0x00007f2cbf259423:   jbe    0x00007f2cbf259834
   0.06%         0x00007f2cbf259429:   mov    0x5c(%rsp),%r9d
   0.28%         0x00007f2cbf25942e:   cmp    %r8d,%r9d
                 0x00007f2cbf259431:   jbe    0x00007f2cbf259949           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.01%         0x00007f2cbf259437:   mov    0x1c(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f2cbf25943a:   mov    0xc(,%rcx,8),%eax            ; implicit exception: dispatches to 0x00007f2cbf259acd
                                                                           ;   {no_reloc}
   0.06%         0x00007f2cbf259441:   cmp    $0x2,%r10d
          ╭      0x00007f2cbf259445:   jl     0x00007f2cbf25945c
   0.25%  │      0x00007f2cbf25944b:   cmp    %edx,%eax
          │      0x00007f2cbf25944d:   jbe    0x00007f2cbf2597e3           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.01%  │      0x00007f2cbf259453:   cmp    $0x2,%eax
          │      0x00007f2cbf259456:   jb     0x00007f2cbf2597da           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
          │                                                                ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
          │                                                                ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%  ↘      0x00007f2cbf25945c:   mov    0xc(,%rdi,8),%ebp            ; implicit exception: dispatches to 0x00007f2cbf259af0
   0.05%         0x00007f2cbf259463:   cmp    $0x2,%r10d
           ╭     0x00007f2cbf259467:   jl     0x00007f2cbf25947e
   0.30%   │     0x00007f2cbf25946d:   cmp    %edx,%ebp
           │     0x00007f2cbf25946f:   jbe    0x00007f2cbf2597c8
   0.01%   │     0x00007f2cbf259475:   cmp    $0x2,%ebp
           │     0x00007f2cbf259478:   jb     0x00007f2cbf259798           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
           ↘     0x00007f2cbf25947e:   xchg   %ax,%ax
   0.06%         0x00007f2cbf259480:   cmp    0x48(%rsp),%r9d
                 0x00007f2cbf259485:   jbe    0x00007f2cbf2597d1           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.31%         0x00007f2cbf25948b:   test   %eax,%eax
                 0x00007f2cbf25948d:   je     0x00007f2cbf259828           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.00%         0x00007f2cbf259493:   test   %ebp,%ebp
                 0x00007f2cbf259495:   je     0x00007f2cbf25999c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
   0.00%         0x00007f2cbf25949b:   mov    0x48(%rsp),%eax
   0.07%         0x00007f2cbf25949f:   mov    0x28(%rsp),%r11
   0.32%         0x00007f2cbf2594a4:   movsbl 0x10(,%rcx,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.01%         0x00007f2cbf2594ac:   movsbl 0x10(,%rdi,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007f2cbf2594b4:   xor    %ebp,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
   0.06%         0x00007f2cbf2594b6:   mov    %dl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.29%         0x00007f2cbf2594bb:   cmp    $0x3,%r10d
   0.01%         0x00007f2cbf2594bf:   mov    $0x2,%edx
                 0x00007f2cbf2594c4:   cmovl  %r10d,%edx
   0.06%         0x00007f2cbf2594c8:   mov    $0x1,%ebp
   0.30%    ╭    0x00007f2cbf2594cd:   jmp    0x00007f2cbf2594fc           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@28 (line 215)
            │    0x00007f2cbf2594d2:   data16 nopw 0x0(%rax,%rax,1)
            │    0x00007f2cbf2594dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.35%    │↗   0x00007f2cbf2594e0:   movsbl 0x10(%rbp,%rdi,8),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
            ││   0x00007f2cbf2594e6:   mov    %eax,%r14d
            ││   0x00007f2cbf2594e9:   add    %ebp,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
            ││   0x00007f2cbf2594ec:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.38%    ││   0x00007f2cbf2594f2:   xor    %r13d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
            ││   0x00007f2cbf2594f5:   mov    %r9b,0x10(%r11,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
            ││   0x00007f2cbf2594fa:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
   0.01%    ↘│   0x00007f2cbf2594fc:   cmp    %ebp,%edx
             ╰   0x00007f2cbf2594fe:   jg     0x00007f2cbf2594e0
   0.39%         0x00007f2cbf259500:   lea    -0x8(%r10),%edx
                 0x00007f2cbf259504:   jmp    0x00007f2cbf259640
                 0x00007f2cbf259509:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f2cbf259514:   data16 data16 xchg %ax,%ax
                 0x00007f2cbf259518:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   1.10%      ↗  0x00007f2cbf259520:   movsbl 0x10(%rbp,%rdi,8),%edx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
              │  0x00007f2cbf259525:   mov    %eax,%r8d
   0.96%      │  0x00007f2cbf259528:   add    %ebp,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
              │  0x00007f2cbf25952b:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   1.10%      │  0x00007f2cbf259531:   xor    %edx,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
              │  0x00007f2cbf259534:   mov    %r9b,0x10(%r11,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   1.02%      │  0x00007f2cbf259539:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
              │                                                            ;   {no_reloc}
              │  0x00007f2cbf25953b:   nopl   0x0(%rax,%rax,1)
   1.42%      │  0x00007f2cbf259540:   cmp    %ebp,%r10d
              │  0x00007f2cbf259543:   jle    0x00007f2cbf25964d
              ╰  0x00007f2cbf259549:   jmp    0x00007f2cbf259520
                 0x00007f2cbf25954b:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f2cbf259556:   data16 data16 xchg %ax,%ax
                 0x00007f2cbf25955a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                 0x00007f2cbf259560:   movsbl 0x10(%rbp,%rdi,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007f2cbf259566:   mov    %eax,%r13d
                 0x00007f2cbf259569:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  19.10%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.87%       jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1064 
  19.10%       jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 
   2.83%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.79%       jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 
   0.71%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1097 
   0.30%       jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1064 
   0.28%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.17%  <...other 376 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.17%       jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1064 
  21.89%       jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 
   3.54%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.63%               kernel  [unknown] 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1097 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __memset_avx2_erms 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.24%  <...other 108 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.41%       jvmci, level 4
   3.54%         runtime stub
   1.63%               kernel
   0.17%            libjvm.so
   0.10%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%     perf-2104419.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = Blowfish/CBC/NoPadding)

# Run progress: 20.00% complete, ETA 00:15:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 234.732 us/op
# Warmup Iteration   2: 221.573 us/op
# Warmup Iteration   3: 221.503 us/op
# Warmup Iteration   4: 221.475 us/op
# Warmup Iteration   5: 221.582 us/op
Iteration   1: 221.469 us/op
Iteration   2: 221.534 us/op
Iteration   3: 221.316 us/op
Iteration   4: 221.041 us/op
Iteration   5: 220.975 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  221.267 ±(99.9%) 0.964 us/op [Average]
  (min, avg, max) = (220.975, 221.267, 221.534), stdev = 0.250
  CI (99.9%): [220.303, 222.231] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 254168 total address lines.
Perf output processed (skipped 61.528 seconds):
 Column 1: cycles (50705 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1063 

 <region is too big to display, has 1090 lines, but threshold is 1000>
....................................................................................................
  70.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 

                 0x00007fc70f254ba0:   test   %r9,%r9
                 0x00007fc70f254ba3:   je     0x00007fc70f255379
                 0x00007fc70f254ba9:   mov    0xc(%r9),%r11d               ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
                 0x00007fc70f254bad:   mov    %r11d,0x5c(%rsp)
                 0x00007fc70f254bb2:   mov    %r11d,%ebx
                 0x00007fc70f254bb5:   mov    %rbx,0x50(%rsp)
                 0x00007fc70f254bba:   mov    %ecx,%eax
                 0x00007fc70f254bbc:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@2 (line 210)
   0.00%         0x00007fc70f254bbf:   mov    %eax,0x4c(%rsp)
                 0x00007fc70f254bc3:   mov    %edi,0x48(%rsp)
   0.00%         0x00007fc70f254bc7:   mov    %ecx,%r11d
                 0x00007fc70f254bca:   jmp    0x00007fc70f2550d8           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007fc70f254bcf:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007fc70f254bda:   data16 data16 xchg %ax,%ax
                 0x00007fc70f254bde:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
   0.35%         0x00007fc70f254be0:   mov    %r11d,0x44(%rsp)
                 0x00007fc70f254be5:   mov    0x10(%rsi),%ebp              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 0x00007fc70f254be8:   mov    %ebp,0x24(%rsp)              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007fc70f254bec:   cmpl   $0x10cf768,0x8(,%rbp,8)      ; implicit exception: dispatches to 0x00007fc70f25543d
                                                                           ;   {metadata(&apos;com/sun/crypto/provider/BlowfishCrypt&apos;)}
   0.41%         0x00007fc70f254bf7:   jne    0x00007fc70f2552fd           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254bfd:   data16 xchg %ax,%ax
                 0x00007fc70f254c00:   cmp    %r11d,%r10d
                 0x00007fc70f254c03:   jbe    0x00007fc70f255240           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007fc70f254c09:   mov    %r11d,%r13d
                 0x00007fc70f254c0c:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@14 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c0f:   cmp    %r13d,%r10d
                 0x00007fc70f254c12:   jbe    0x00007fc70f255325           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c18:   lea    0x2(%r11),%r14d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@27 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007fc70f254c1c:   nopl   0x0(%rax)
                 0x00007fc70f254c20:   cmp    %r14d,%r10d
                 0x00007fc70f254c23:   jbe    0x00007fc70f255355           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c29:   lea    0x3(%r11),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@40 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c2d:   cmp    %r8d,%r10d
                 0x00007fc70f254c30:   jbe    0x00007fc70f255262           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@41 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.37%         0x00007fc70f254c36:   mov    0x24(,%rbp,8),%r9d           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007fc70f254c3e:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fc70f255460
   0.00%         0x00007fc70f254c46:   lea    0x4(%r11),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@56 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c4a:   cmp    %ebx,%r10d
                 0x00007fc70f254c4d:   jbe    0x00007fc70f255283           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.37%         0x00007fc70f254c53:   lea    0x5(%r11),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@64 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c57:   cmp    %edi,%r10d
                 0x00007fc70f254c5a:   jbe    0x00007fc70f2553ce           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c60:   lea    0x6(%r11),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@78 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c64:   cmp    %eax,%r10d
                 0x00007fc70f254c67:   jbe    0x00007fc70f2551ec           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007fc70f254c6d:   lea    0x7(%r11),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@92 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c71:   cmp    %ebp,%r10d
                 0x00007fc70f254c74:   jbe    0x00007fc70f2553a8           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@93 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c7a:   mov    0x1c(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007fc70f254c7e:   mov    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007fc70f255483
   0.32%         0x00007fc70f254c86:   cmp    $0x2,%ecx
                 0x00007fc70f254c89:   jb     0x00007fc70f2552d2           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c8f:   cmp    $0x8,%esi
                 0x00007fc70f254c92:   jb     0x00007fc70f2552a7           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254c98:   mov    0x24(%rsp),%esi
                 0x00007fc70f254c9c:   movsbl 0x10(%rdx,%r11,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007fc70f254ca2:   movzbl 0x10(%rdx,%r13,1),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254ca8:   movzbl 0x10(%rdx,%r14,1),%r14d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254cae:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254cb1:   shl    $0x10,%r13d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.39%         0x00007fc70f254cb5:   or     %r13d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254cb8:   shl    $0x8,%r14d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254cbc:   or     %r14d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007fc70f254cbf:   movzbl 0x10(%rdx,%r8,1),%r8d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007fc70f254cc5:   or     %r8d,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007fc70f254cc8:   mov    %ecx,0x10(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007fc70f254cd0:   movsbl 0x10(%rdx,%rbx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254cd6:   movzbl 0x10(%rdx,%rdi,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007fc70f254cdb:   movzbl 0x10(%rdx,%rax,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254ce0:   shl    $0x18,%r8d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254ce4:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254ce7:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007fc70f254cea:   shl    $0x8,%ebx                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254ced:   or     %ebx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007fc70f254cf0:   movzbl 0x10(%rdx,%rbp,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {no_reloc}
                 0x00007fc70f254cf5:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007fc70f254cf8:   mov    %r8d,0x14(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254d00:   mov    %r10d,%r8d
   0.00%         0x00007fc70f254d03:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 0x00007fc70f254d07:   shl    $0x3,%r9                     ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007fc70f254d0b:   mov    %esi,%ebp
   0.00%         0x00007fc70f254d0d:   shl    $0x3,%rbp                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
   0.00%         0x00007fc70f254d11:   cmpb   $0x0,0xc(,%rsi,8)
   0.35%         0x00007fc70f254d19:   je     0x00007fc70f2550fd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254d1f:   mov    %r8,0x10(%rsp)
                 0x00007fc70f254d24:   mov    %r10d,0xc(%rsp)
                 0x00007fc70f254d29:   mov    %rbp,%rsi
   0.36%         0x00007fc70f254d2c:   mov    %r9,%rdx                     ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254d2f:   mov    %rbp,0x18(%rsp)
                 0x00007fc70f254d34:   data16 xchg %ax,%ax
                 0x00007fc70f254d37:   call   0x00007fc70f24bc40           ; ImmutableOopMap {[12]=NarrowOop [16]=Oop [24]=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {optimized virtual_call}
                 0x00007fc70f254d3c:   nopl   0x40003ac(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {other}
                 0x00007fc70f254d44:   mov    0x24(%rsp),%ebp
   0.35%         0x00007fc70f254d48:   mov    0x24(,%rbp,8),%edi           ; ImmutableOopMap {rdi=NarrowOop [12]=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254d4f:   cmpl   $0x2,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007fc70f2554a6
                 0x00007fc70f254d57:   jb     0x00007fc70f255175
   0.32%         0x00007fc70f254d5d:   mov    0xc(%rsp),%r10d
                 0x00007fc70f254d62:   mov    0x38(%rsp),%rsi
                 0x00007fc70f254d67:   mov    0x10(,%rdi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007fc70f254d6e:   mov    %edx,%r11d
   0.33%         0x00007fc70f254d71:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254d75:   mov    %r11b,0x10(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007fc70f254d7d:   mov    %edx,%r11d
                 0x00007fc70f254d80:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007fc70f254d84:   mov    %r11b,0x11(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007fc70f254d8c:   mov    %edx,%r11d
   0.00%         0x00007fc70f254d8f:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254d93:   mov    %r11b,0x12(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007fc70f254d9b:   mov    %dl,0x13(,%r10,8)            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007fc70f254da3:   mov    0x14(,%rdi,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007fc70f254dab:   mov    %r11d,%edi
                 0x00007fc70f254dae:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007fc70f254db1:   mov    %dil,0x14(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.09%         0x00007fc70f254db9:   mov    %r11d,%edi
   0.00%         0x00007fc70f254dbc:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254dbf:   mov    %dil,0x15(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007fc70f254dc7:   mov    %r11d,%edi
   0.02%         0x00007fc70f254dca:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007fc70f254dcd:   mov    %dil,0x16(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.06%         0x00007fc70f254dd5:   mov    %r11b,0x17(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.25%         0x00007fc70f254ddd:   mov    0x18(%rsi),%edi              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
   0.01%         0x00007fc70f254de0:   mov    0xc(%rsi),%r10d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
   0.00%         0x00007fc70f254de4:   cmp    $0x1,%r10d
                 0x00007fc70f254de8:   jl     0x00007fc70f255129           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.06%         0x00007fc70f254dee:   mov    %r10d,%edx
   0.29%         0x00007fc70f254df1:   dec    %edx
   0.01%         0x00007fc70f254df3:   mov    0x48(%rsp),%r8d
                 0x00007fc70f254df8:   inc    %r8d
   0.06%         0x00007fc70f254dfb:   nopl   0x0(%rax,%rax,1)
   0.27%         0x00007fc70f254e00:   cmp    $0x2,%r10d
                 0x00007fc70f254e04:   jl     0x00007fc70f2550ee
   0.01%         0x00007fc70f254e0a:   mov    0x50(%rsp),%rbx
   0.00%         0x00007fc70f254e0f:   movslq 0x48(%rsp),%r9
   0.06%         0x00007fc70f254e14:   mov    %edx,%ecx
   0.30%         0x00007fc70f254e16:   add    %rcx,%r9
   0.01%         0x00007fc70f254e19:   nopl   0x0(%rax)
                 0x00007fc70f254e20:   cmp    %r9,%rbx
                 0x00007fc70f254e23:   jbe    0x00007fc70f255234
   0.07%         0x00007fc70f254e29:   mov    0x5c(%rsp),%r9d
   0.29%         0x00007fc70f254e2e:   cmp    %r8d,%r9d
                 0x00007fc70f254e31:   jbe    0x00007fc70f255349           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.01%         0x00007fc70f254e37:   mov    0x1c(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007fc70f254e3a:   mov    0xc(,%rcx,8),%eax            ; implicit exception: dispatches to 0x00007fc70f2554cd
                                                                           ;   {no_reloc}
   0.05%         0x00007fc70f254e41:   cmp    $0x2,%r10d
          ╭      0x00007fc70f254e45:   jl     0x00007fc70f254e5c
   0.29%  │      0x00007fc70f254e4b:   cmp    %edx,%eax
          │      0x00007fc70f254e4d:   jbe    0x00007fc70f2551e3           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%  │      0x00007fc70f254e53:   cmp    $0x2,%eax
          │      0x00007fc70f254e56:   jb     0x00007fc70f2551da           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
          │                                                                ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
          │                                                                ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
          ↘      0x00007fc70f254e5c:   mov    0xc(,%rdi,8),%ebp            ; implicit exception: dispatches to 0x00007fc70f2554f0
   0.05%         0x00007fc70f254e63:   cmp    $0x2,%r10d
           ╭     0x00007fc70f254e67:   jl     0x00007fc70f254e7e
   0.27%   │     0x00007fc70f254e6d:   cmp    %edx,%ebp
           │     0x00007fc70f254e6f:   jbe    0x00007fc70f2551c8
   0.01%   │     0x00007fc70f254e75:   cmp    $0x2,%ebp
           │     0x00007fc70f254e78:   jb     0x00007fc70f255198           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
           ↘     0x00007fc70f254e7e:   xchg   %ax,%ax
   0.05%         0x00007fc70f254e80:   cmp    0x48(%rsp),%r9d
                 0x00007fc70f254e85:   jbe    0x00007fc70f2551d1           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.35%         0x00007fc70f254e8b:   test   %eax,%eax
                 0x00007fc70f254e8d:   je     0x00007fc70f255228           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%         0x00007fc70f254e93:   test   %ebp,%ebp
                 0x00007fc70f254e95:   je     0x00007fc70f25539c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007fc70f254e9b:   mov    0x48(%rsp),%eax
   0.05%         0x00007fc70f254e9f:   mov    0x28(%rsp),%r11
   0.27%         0x00007fc70f254ea4:   movsbl 0x10(,%rcx,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.01%         0x00007fc70f254eac:   movsbl 0x10(,%rdi,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007fc70f254eb4:   xor    %ebp,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
   0.07%         0x00007fc70f254eb6:   mov    %dl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.31%         0x00007fc70f254ebb:   cmp    $0x3,%r10d
   0.01%         0x00007fc70f254ebf:   mov    $0x2,%edx
   0.01%         0x00007fc70f254ec4:   cmovl  %r10d,%edx
   0.07%         0x00007fc70f254ec8:   mov    $0x1,%ebp
   0.29%    ╭    0x00007fc70f254ecd:   jmp    0x00007fc70f254efc           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@28 (line 215)
            │    0x00007fc70f254ed2:   data16 nopw 0x0(%rax,%rax,1)
            │    0x00007fc70f254edc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.36%    │↗   0x00007fc70f254ee0:   movsbl 0x10(%rbp,%rdi,8),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
            ││   0x00007fc70f254ee6:   mov    %eax,%r14d
            ││   0x00007fc70f254ee9:   add    %ebp,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
            ││   0x00007fc70f254eec:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.34%    ││   0x00007fc70f254ef2:   xor    %r13d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
            ││   0x00007fc70f254ef5:   mov    %r9b,0x10(%r11,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
            ││   0x00007fc70f254efa:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
   0.01%    ↘│   0x00007fc70f254efc:   cmp    %ebp,%edx
             ╰   0x00007fc70f254efe:   jg     0x00007fc70f254ee0
   0.35%         0x00007fc70f254f00:   lea    -0x8(%r10),%edx
                 0x00007fc70f254f04:   jmp    0x00007fc70f255040
                 0x00007fc70f254f09:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007fc70f254f14:   data16 data16 xchg %ax,%ax
                 0x00007fc70f254f18:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   1.12%      ↗  0x00007fc70f254f20:   movsbl 0x10(%rbp,%rdi,8),%edx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
              │  0x00007fc70f254f25:   mov    %eax,%r8d
   1.08%      │  0x00007fc70f254f28:   add    %ebp,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
              │  0x00007fc70f254f2b:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   1.01%      │  0x00007fc70f254f31:   xor    %edx,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
              │  0x00007fc70f254f34:   mov    %r9b,0x10(%r11,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   1.06%      │  0x00007fc70f254f39:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
              │                                                            ;   {no_reloc}
              │  0x00007fc70f254f3b:   nopl   0x0(%rax,%rax,1)
   1.41%      │  0x00007fc70f254f40:   cmp    %ebp,%r10d
              │  0x00007fc70f254f43:   jle    0x00007fc70f25504d
              ╰  0x00007fc70f254f49:   jmp    0x00007fc70f254f20
                 0x00007fc70f254f4b:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007fc70f254f56:   data16 data16 xchg %ax,%ax
                 0x00007fc70f254f5a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                 0x00007fc70f254f60:   movsbl 0x10(%rbp,%rdi,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007fc70f254f66:   mov    %eax,%r13d
                 0x00007fc70f254f69:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  19.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.19%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1063 
  19.08%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 
   2.84%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 
   2.77%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.37%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1063 
   0.74%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.45%              kernel  [unknown] 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1098 
   0.32%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1063 
   0.20%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.15%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.89%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1063 
  21.92%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1095 
   3.51%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.89%              kernel  [unknown] 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1098 
   0.05%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 1132 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.25%      jvmci, level 4
   3.51%        runtime stub
   1.89%              kernel
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.05%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = Blowfish/CBC/NoPadding)

# Run progress: 30.00% complete, ETA 00:13:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 232.332 us/op
# Warmup Iteration   2: 220.658 us/op
# Warmup Iteration   3: 220.985 us/op
# Warmup Iteration   4: 220.971 us/op
# Warmup Iteration   5: 221.046 us/op
Iteration   1: 220.666 us/op
Iteration   2: 220.945 us/op
Iteration   3: 221.055 us/op
Iteration   4: 221.001 us/op
Iteration   5: 220.880 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  220.909 ±(99.9%) 0.581 us/op [Average]
  (min, avg, max) = (220.666, 220.909, 221.055), stdev = 0.151
  CI (99.9%): [220.328, 221.491] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 252997 total address lines.
Perf output processed (skipped 61.518 seconds):
 Column 1: cycles (50946 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1066 

 <region is too big to display, has 1114 lines, but threshold is 1000>
....................................................................................................
  71.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1098 

                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@2 (line 210)
                 0x00007f6903259cbf:   mov    %eax,0x4c(%rsp)
                 0x00007f6903259cc3:   mov    %edi,0x48(%rsp)
                 0x00007f6903259cc7:   mov    %ecx,%r11d
                 0x00007f6903259cca:   jmp    0x00007f690325a1d8           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f6903259ccf:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f6903259cda:   data16 data16 xchg %ax,%ax
                 0x00007f6903259cde:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
   0.29%         0x00007f6903259ce0:   mov    %r11d,0x44(%rsp)
   0.01%         0x00007f6903259ce5:   mov    0x10(%rsi),%ebp              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
   0.00%         0x00007f6903259ce8:   mov    %ebp,0x24(%rsp)              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f6903259cec:   cmpl   $0x10cea48,0x8(,%rbp,8)      ; implicit exception: dispatches to 0x00007f690325a541
                                                                           ;   {metadata(&apos;com/sun/crypto/provider/BlowfishCrypt&apos;)}
   0.34%         0x00007f6903259cf7:   jne    0x00007f690325a275           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259cfd:   data16 xchg %ax,%ax
                 0x00007f6903259d00:   cmp    %r11d,%r10d
                 0x00007f6903259d03:   jbe    0x00007f690325a33e           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f6903259d09:   mov    %r11d,%r13d
                 0x00007f6903259d0c:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@14 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259d0f:   cmp    %r13d,%r10d
                 0x00007f6903259d12:   jbe    0x00007f690325a411           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d18:   lea    0x2(%r11),%r14d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@27 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.41%         0x00007f6903259d1c:   nopl   0x0(%rax)
                 0x00007f6903259d20:   cmp    %r14d,%r10d
                 0x00007f6903259d23:   jbe    0x00007f690325a445           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259d29:   lea    0x3(%r11),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@40 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d2d:   cmp    %r8d,%r10d
                 0x00007f6903259d30:   jbe    0x00007f690325a365           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@41 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.39%         0x00007f6903259d36:   mov    0x24(,%rbp,8),%r9d           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f6903259d3e:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007f690325a564
   0.00%         0x00007f6903259d46:   lea    0x4(%r11),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@56 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d4a:   cmp    %ebx,%r10d
                 0x00007f6903259d4d:   jbe    0x00007f690325a389           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007f6903259d53:   lea    0x5(%r11),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@64 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d57:   cmp    %edi,%r10d
                 0x00007f6903259d5a:   jbe    0x00007f690325a4d6           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259d60:   lea    0x6(%r11),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@78 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d64:   cmp    %eax,%r10d
                 0x00007f6903259d67:   jbe    0x00007f690325a303           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f6903259d6d:   lea    0x7(%r11),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@92 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d71:   cmp    %ebp,%r10d
                 0x00007f6903259d74:   jbe    0x00007f690325a4b0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@93 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d7a:   mov    0x1c(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007f6903259d7e:   mov    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007f690325a587
   0.35%         0x00007f6903259d86:   cmp    $0x2,%ecx
                 0x00007f6903259d89:   jb     0x00007f690325a3d8           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259d8f:   cmp    $0x8,%esi
                 0x00007f6903259d92:   jb     0x00007f690325a3ad           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259d98:   mov    0x24(%rsp),%esi
                 0x00007f6903259d9c:   movsbl 0x10(%rdx,%r11,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f6903259da2:   movzbl 0x10(%rdx,%r13,1),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259da8:   movzbl 0x10(%rdx,%r14,1),%r14d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259dae:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259db1:   shl    $0x10,%r13d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f6903259db5:   or     %r13d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259db8:   shl    $0x8,%r14d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259dbc:   or     %r14d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259dbf:   movzbl 0x10(%rdx,%r8,1),%r8d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007f6903259dc5:   or     %r8d,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259dc8:   mov    %ecx,0x10(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259dd0:   movsbl 0x10(%rdx,%rbx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259dd6:   movzbl 0x10(%rdx,%rdi,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.31%         0x00007f6903259ddb:   movzbl 0x10(%rdx,%rax,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259de0:   shl    $0x18,%r8d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259de4:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259de7:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007f6903259dea:   shl    $0x8,%ebx                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259ded:   or     %ebx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f6903259df0:   movzbl 0x10(%rdx,%rbp,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {no_reloc}
                 0x00007f6903259df5:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007f6903259df8:   mov    %r8d,0x14(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259e00:   mov    %r10d,%r8d
   0.00%         0x00007f6903259e03:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 0x00007f6903259e07:   shl    $0x3,%r9                     ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f6903259e0b:   mov    %esi,%ebp
                 0x00007f6903259e0d:   shl    $0x3,%rbp                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
   0.00%         0x00007f6903259e11:   cmpb   $0x0,0xc(,%rsi,8)
   0.35%         0x00007f6903259e19:   je     0x00007f690325a1fd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259e1f:   mov    %r8,0x10(%rsp)
   0.01%         0x00007f6903259e24:   mov    %r10d,0xc(%rsp)
                 0x00007f6903259e29:   mov    %rbp,%rsi
   0.34%         0x00007f6903259e2c:   mov    %r9,%rdx                     ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259e2f:   mov    %rbp,0x18(%rsp)
   0.00%         0x00007f6903259e34:   data16 xchg %ax,%ax
                 0x00007f6903259e37:   call   0x00007f690324e0c0           ; ImmutableOopMap {[12]=NarrowOop [16]=Oop [24]=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {optimized virtual_call}
                 0x00007f6903259e3c:   nopl   0x40003ac(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {other}
                 0x00007f6903259e44:   mov    0x24(%rsp),%ebp
   0.33%         0x00007f6903259e48:   mov    0x24(,%rbp,8),%edi           ; ImmutableOopMap {rdi=NarrowOop [12]=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259e4f:   cmpl   $0x2,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007f690325a5ad
   0.00%         0x00007f6903259e57:   jb     0x00007f690325a48d
   0.37%         0x00007f6903259e5d:   mov    0xc(%rsp),%r10d
                 0x00007f6903259e62:   mov    0x38(%rsp),%rsi
                 0x00007f6903259e67:   mov    0x10(,%rdi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259e6e:   mov    %edx,%r11d
   0.34%         0x00007f6903259e71:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259e75:   mov    %r11b,0x10(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f6903259e7d:   mov    %edx,%r11d
                 0x00007f6903259e80:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007f6903259e84:   mov    %r11b,0x11(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259e8c:   mov    %edx,%r11d
   0.00%         0x00007f6903259e8f:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259e93:   mov    %r11b,0x12(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007f6903259e9b:   mov    %dl,0x13(,%r10,8)            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259ea3:   mov    0x14(,%rdi,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007f6903259eab:   mov    %r11d,%edi
                 0x00007f6903259eae:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007f6903259eb1:   mov    %dil,0x14(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.09%         0x00007f6903259eb9:   mov    %r11d,%edi
                 0x00007f6903259ebc:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259ebf:   mov    %dil,0x15(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007f6903259ec7:   mov    %r11d,%edi
   0.02%         0x00007f6903259eca:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007f6903259ecd:   mov    %dil,0x16(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.07%         0x00007f6903259ed5:   mov    %r11b,0x17(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.31%         0x00007f6903259edd:   mov    0x18(%rsi),%edi              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
   0.02%         0x00007f6903259ee0:   mov    0xc(%rsi),%r10d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
   0.00%         0x00007f6903259ee4:   cmp    $0x1,%r10d
                 0x00007f6903259ee8:   jl     0x00007f690325a229           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.06%         0x00007f6903259eee:   mov    %r10d,%edx
   0.24%         0x00007f6903259ef1:   dec    %edx
   0.01%         0x00007f6903259ef3:   mov    0x48(%rsp),%r8d
   0.00%         0x00007f6903259ef8:   inc    %r8d
   0.05%         0x00007f6903259efb:   nopl   0x0(%rax,%rax,1)
   0.26%         0x00007f6903259f00:   cmp    $0x2,%r10d
                 0x00007f6903259f04:   jl     0x00007f690325a1ee
   0.01%         0x00007f6903259f0a:   mov    0x50(%rsp),%rbx
                 0x00007f6903259f0f:   movslq 0x48(%rsp),%r9
   0.05%         0x00007f6903259f14:   mov    %edx,%ecx
   0.28%         0x00007f6903259f16:   add    %rcx,%r9
   0.01%         0x00007f6903259f19:   nopl   0x0(%rax)
                 0x00007f6903259f20:   cmp    %r9,%rbx
                 0x00007f6903259f23:   jbe    0x00007f690325a332
   0.06%         0x00007f6903259f29:   mov    0x5c(%rsp),%r9d
   0.24%         0x00007f6903259f2e:   cmp    %r8d,%r9d
                 0x00007f6903259f31:   jbe    0x00007f690325a435           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.01%         0x00007f6903259f37:   mov    0x1c(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007f6903259f3a:   mov    0xc(,%rcx,8),%eax            ; implicit exception: dispatches to 0x00007f690325a5d0
                                                                           ;   {no_reloc}
   0.06%         0x00007f6903259f41:   cmp    $0x2,%r10d
          ╭      0x00007f6903259f45:   jl     0x00007f6903259f5c
   0.27%  │      0x00007f6903259f4b:   cmp    %edx,%eax
          │      0x00007f6903259f4d:   jbe    0x00007f690325a2fa           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%  │      0x00007f6903259f53:   cmp    $0x2,%eax
          │      0x00007f6903259f56:   jb     0x00007f690325a2f1           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
          │                                                                ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
          │                                                                ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
          ↘      0x00007f6903259f5c:   mov    0xc(,%rdi,8),%ebp            ; implicit exception: dispatches to 0x00007f690325a5f3
   0.05%         0x00007f6903259f63:   cmp    $0x2,%r10d
           ╭     0x00007f6903259f67:   jl     0x00007f6903259f7e
   0.23%   │     0x00007f6903259f6d:   cmp    %edx,%ebp
           │     0x00007f6903259f6f:   jbe    0x00007f690325a2df
   0.01%   │     0x00007f6903259f75:   cmp    $0x2,%ebp
           │     0x00007f6903259f78:   jb     0x00007f690325a2af           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
   0.01%   ↘     0x00007f6903259f7e:   xchg   %ax,%ax
   0.06%         0x00007f6903259f80:   cmp    0x48(%rsp),%r9d
                 0x00007f6903259f85:   jbe    0x00007f690325a2e8           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.30%         0x00007f6903259f8b:   test   %eax,%eax
                 0x00007f6903259f8d:   je     0x00007f690325a329           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%         0x00007f6903259f93:   test   %ebp,%ebp
                 0x00007f6903259f95:   je     0x00007f690325a405           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007f6903259f9b:   mov    0x48(%rsp),%eax
   0.05%         0x00007f6903259f9f:   mov    0x28(%rsp),%r11
   0.29%         0x00007f6903259fa4:   movsbl 0x10(,%rcx,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%         0x00007f6903259fac:   movsbl 0x10(,%rdi,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007f6903259fb4:   xor    %ebp,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
   0.05%         0x00007f6903259fb6:   mov    %dl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.31%         0x00007f6903259fbb:   cmp    $0x3,%r10d
   0.01%         0x00007f6903259fbf:   mov    $0x2,%edx
   0.00%         0x00007f6903259fc4:   cmovl  %r10d,%edx
   0.05%         0x00007f6903259fc8:   mov    $0x1,%ebp
   0.28%    ╭    0x00007f6903259fcd:   jmp    0x00007f6903259ffc           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@28 (line 215)
            │    0x00007f6903259fd2:   data16 nopw 0x0(%rax,%rax,1)
            │    0x00007f6903259fdc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.35%    │↗   0x00007f6903259fe0:   movsbl 0x10(%rbp,%rdi,8),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
            ││   0x00007f6903259fe6:   mov    %eax,%r14d
            ││   0x00007f6903259fe9:   add    %ebp,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
            ││   0x00007f6903259fec:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.41%    ││   0x00007f6903259ff2:   xor    %r13d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
            ││   0x00007f6903259ff5:   mov    %r9b,0x10(%r11,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
            ││   0x00007f6903259ffa:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
   0.01%    ↘│   0x00007f6903259ffc:   cmp    %ebp,%edx
             ╰   0x00007f6903259ffe:   jg     0x00007f6903259fe0
   0.36%         0x00007f690325a000:   lea    -0x8(%r10),%edx
                 0x00007f690325a004:   jmp    0x00007f690325a140
                 0x00007f690325a009:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f690325a014:   data16 data16 xchg %ax,%ax
                 0x00007f690325a018:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   1.03%      ↗  0x00007f690325a020:   movsbl 0x10(%rbp,%rdi,8),%edx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
              │  0x00007f690325a025:   mov    %eax,%r8d
   1.01%      │  0x00007f690325a028:   add    %ebp,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
              │  0x00007f690325a02b:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.95%      │  0x00007f690325a031:   xor    %edx,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
              │  0x00007f690325a034:   mov    %r9b,0x10(%r11,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   1.05%      │  0x00007f690325a039:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
              │                                                            ;   {no_reloc}
              │  0x00007f690325a03b:   nopl   0x0(%rax,%rax,1)
   1.42%      │  0x00007f690325a040:   cmp    %ebp,%r10d
              │  0x00007f690325a043:   jle    0x00007f690325a14d
              ╰  0x00007f690325a049:   jmp    0x00007f690325a020
                 0x00007f690325a04b:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f690325a056:   data16 data16 xchg %ax,%ax
                 0x00007f690325a05a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                 0x00007f690325a060:   movsbl 0x10(%rbp,%rdi,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007f690325a066:   mov    %eax,%r13d
                 0x00007f690325a069:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  18.86%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.37%       jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1066 
  18.86%       jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1098 
   2.90%       jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1098 
   2.74%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.98%               kernel  [unknown] 
   0.72%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.37%       jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1066 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1096 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%               kernel  [unknown] 
   1.24%  <...other 382 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.73%       jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1066 
  21.77%       jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 6, compile id 1098 
   3.46%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.19%               kernel  [unknown] 
   0.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1096 
   0.04%                       <unknown> 
   0.03%            libjvm.so  xmlStream::write_text 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __memset_avx2_erms 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 1124 
   0.26%  <...other 108 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.90%       jvmci, level 4
   3.46%         runtime stub
   2.19%               kernel
   0.15%            libjvm.so
   0.14%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 448, transformation = Blowfish/CBC/NoPadding)

# Run progress: 40.00% complete, ETA 00:11:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 232.204 us/op
# Warmup Iteration   2: 225.589 us/op
# Warmup Iteration   3: 220.407 us/op
# Warmup Iteration   4: 225.501 us/op
# Warmup Iteration   5: 221.151 us/op
Iteration   1: 220.699 us/op
Iteration   2: 220.867 us/op
Iteration   3: 220.637 us/op
Iteration   4: 220.438 us/op
Iteration   5: 220.408 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  220.610 ±(99.9%) 0.734 us/op [Average]
  (min, avg, max) = (220.408, 220.610, 220.867), stdev = 0.191
  CI (99.9%): [219.876, 221.343] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 261274 total address lines.
Perf output processed (skipped 61.826 seconds):
 Column 1: cycles (50573 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1083 

 <region is too big to display, has 1120 lines, but threshold is 1000>
....................................................................................................
  71.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 7, compile id 1116 

                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@2 (line 210)
                 0x00007ff50f25ab3f:   mov    %eax,0x4c(%rsp)
                 0x00007ff50f25ab43:   mov    %edi,0x48(%rsp)
                 0x00007ff50f25ab47:   mov    %ecx,%r11d
                 0x00007ff50f25ab4a:   jmp    0x00007ff50f25b058           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007ff50f25ab4f:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007ff50f25ab5a:   data16 data16 xchg %ax,%ax
                 0x00007ff50f25ab5e:   xchg   %ax,%ax                      ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@8 (line 212)
   0.34%         0x00007ff50f25ab60:   mov    %r11d,0x44(%rsp)
   0.00%         0x00007ff50f25ab65:   mov    0x10(%rsi),%ebp              ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 0x00007ff50f25ab68:   mov    %ebp,0x24(%rsp)              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007ff50f25ab6c:   cmpl   $0x10cfa00,0x8(,%rbp,8)      ; implicit exception: dispatches to 0x00007ff50f25b3bd
                                                                           ;   {metadata(&apos;com/sun/crypto/provider/BlowfishCrypt&apos;)}
   0.36%         0x00007ff50f25ab77:   jne    0x00007ff50f25b27d           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ab7d:   data16 xchg %ax,%ax
                 0x00007ff50f25ab80:   cmp    %r11d,%r10d
                 0x00007ff50f25ab83:   jbe    0x00007ff50f25b1c0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007ff50f25ab89:   mov    %r11d,%r13d
                 0x00007ff50f25ab8c:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@14 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ab8f:   cmp    %r13d,%r10d
                 0x00007ff50f25ab92:   jbe    0x00007ff50f25b2a5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ab98:   lea    0x2(%r11),%r14d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@27 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.38%         0x00007ff50f25ab9c:   nopl   0x0(%rax)
                 0x00007ff50f25aba0:   cmp    %r14d,%r10d
                 0x00007ff50f25aba3:   jbe    0x00007ff50f25b2d5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25aba9:   lea    0x3(%r11),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@40 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25abad:   cmp    %r8d,%r10d
                 0x00007ff50f25abb0:   jbe    0x00007ff50f25b1e2           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@41 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007ff50f25abb6:   mov    0x24(,%rbp,8),%r9d           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007ff50f25abbe:   mov    0xc(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007ff50f25b3e0
   0.00%         0x00007ff50f25abc6:   lea    0x4(%r11),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@56 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25abca:   cmp    %ebx,%r10d
                 0x00007ff50f25abcd:   jbe    0x00007ff50f25b203           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.38%         0x00007ff50f25abd3:   lea    0x5(%r11),%edi               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@64 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25abd7:   cmp    %edi,%r10d
                 0x00007ff50f25abda:   jbe    0x00007ff50f25b34e           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25abe0:   lea    0x6(%r11),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@78 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25abe4:   cmp    %eax,%r10d
                 0x00007ff50f25abe7:   jbe    0x00007ff50f25b16c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007ff50f25abed:   lea    0x7(%r11),%ebp               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@92 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25abf1:   cmp    %ebp,%r10d
                 0x00007ff50f25abf4:   jbe    0x00007ff50f25b328           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@93 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25abfa:   mov    0x1c(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=NarrowOop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implDecrypt@5 (line 212)
                 0x00007ff50f25abfe:   mov    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007ff50f25b403
   0.36%         0x00007ff50f25ac06:   cmp    $0x2,%ecx
                 0x00007ff50f25ac09:   jb     0x00007ff50f25b252           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac0f:   cmp    $0x8,%esi
                 0x00007ff50f25ac12:   jb     0x00007ff50f25b227           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac18:   mov    0x24(%rsp),%esi
                 0x00007ff50f25ac1c:   movsbl 0x10(%rdx,%r11,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.34%         0x00007ff50f25ac22:   movzbl 0x10(%rdx,%r13,1),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ac28:   movzbl 0x10(%rdx,%r14,1),%r14d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac2e:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac31:   shl    $0x10,%r13d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007ff50f25ac35:   or     %r13d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ac38:   shl    $0x8,%r14d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac3c:   or     %r14d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ac3f:   movzbl 0x10(%rdx,%r8,1),%r8d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007ff50f25ac45:   or     %r8d,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac48:   mov    %ecx,0x10(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007ff50f25ac50:   movsbl 0x10(%rdx,%rbx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac56:   movzbl 0x10(%rdx,%rdi,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.35%         0x00007ff50f25ac5b:   movzbl 0x10(%rdx,%rax,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac60:   shl    $0x18,%r8d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ac64:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac67:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.38%         0x00007ff50f25ac6a:   shl    $0x8,%ebx                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ac6d:   or     %ebx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007ff50f25ac70:   movzbl 0x10(%rdx,%rbp,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {no_reloc}
                 0x00007ff50f25ac75:   or     %ecx,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.38%         0x00007ff50f25ac78:   mov    %r8d,0x14(,%r9,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ac80:   mov    %r10d,%r8d
                 0x00007ff50f25ac83:   shl    $0x3,%r8                     ;*getfield k {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@18 (line 214)
                 0x00007ff50f25ac87:   shl    $0x3,%r9                     ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.36%         0x00007ff50f25ac8b:   mov    %esi,%ebp
   0.00%         0x00007ff50f25ac8d:   shl    $0x3,%rbp                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@12 (line 214)
                 0x00007ff50f25ac91:   cmpb   $0x0,0xc(,%rsi,8)
   0.38%         0x00007ff50f25ac99:   je     0x00007ff50f25b07d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ac9f:   mov    %r8,0x10(%rsp)
   0.00%         0x00007ff50f25aca4:   mov    %r10d,0xc(%rsp)
                 0x00007ff50f25aca9:   mov    %rbp,%rsi
   0.35%         0x00007ff50f25acac:   mov    %r9,%rdx                     ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25acaf:   mov    %rbp,0x18(%rsp)
   0.00%         0x00007ff50f25acb4:   data16 xchg %ax,%ax
                 0x00007ff50f25acb7:   call   0x00007ff50ec2f380           ; ImmutableOopMap {[12]=NarrowOop [16]=Oop [24]=Oop [36]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*invokevirtual decryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@112 (line 181)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {optimized virtual_call}
                 0x00007ff50f25acbc:   nopl   0x40003ac(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                                                                           ;   {other}
                 0x00007ff50f25acc4:   mov    0x24(%rsp),%ebp
   0.34%         0x00007ff50f25acc8:   mov    0x24(,%rbp,8),%edi           ; ImmutableOopMap {rdi=NarrowOop [12]=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25accf:   cmpl   $0x2,0xc(,%rdi,8)            ; implicit exception: dispatches to 0x00007ff50f25b426
   0.00%         0x00007ff50f25acd7:   jb     0x00007ff50f25b0f5
   0.36%         0x00007ff50f25acdd:   mov    0xc(%rsp),%r10d
                 0x00007ff50f25ace2:   mov    0x38(%rsp),%rsi
                 0x00007ff50f25ace7:   mov    0x10(,%rdi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25acee:   mov    %edx,%r11d
   0.32%         0x00007ff50f25acf1:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25acf5:   mov    %r11b,0x10(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007ff50f25acfd:   mov    %edx,%r11d
                 0x00007ff50f25ad00:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.32%         0x00007ff50f25ad04:   mov    %r11b,0x11(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007ff50f25ad0c:   mov    %edx,%r11d
                 0x00007ff50f25ad0f:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ad13:   mov    %r11b,0x12(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.33%         0x00007ff50f25ad1b:   mov    %dl,0x13(,%r10,8)            ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ad23:   mov    0x14(,%rdi,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.01%         0x00007ff50f25ad2b:   mov    %r11d,%edi
                 0x00007ff50f25ad2e:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.30%         0x00007ff50f25ad31:   mov    %dil,0x14(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.09%         0x00007ff50f25ad39:   mov    %r11d,%edi
                 0x00007ff50f25ad3c:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
                 0x00007ff50f25ad3f:   mov    %dil,0x15(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.31%         0x00007ff50f25ad47:   mov    %r11d,%edi
   0.02%         0x00007ff50f25ad4a:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25ad4d:   mov    %dil,0x16(,%r10,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.06%         0x00007ff50f25ad55:   mov    %r11b,0x17(,%r10,8)          ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.30%         0x00007ff50f25ad5d:   mov    0x18(%rsi),%edi              ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@52 (line 216)
   0.01%         0x00007ff50f25ad60:   mov    0xc(%rsi),%r10d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@31 (line 215)
                 0x00007ff50f25ad64:   cmp    $0x1,%r10d
                 0x00007ff50f25ad68:   jl     0x00007ff50f25b0a9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.06%         0x00007ff50f25ad6e:   mov    %r10d,%edx
   0.25%         0x00007ff50f25ad71:   dec    %edx
   0.01%         0x00007ff50f25ad73:   mov    0x48(%rsp),%r8d
                 0x00007ff50f25ad78:   inc    %r8d
   0.05%         0x00007ff50f25ad7b:   nopl   0x0(%rax,%rax,1)
   0.29%         0x00007ff50f25ad80:   cmp    $0x2,%r10d
                 0x00007ff50f25ad84:   jl     0x00007ff50f25b06e
   0.03%         0x00007ff50f25ad8a:   mov    0x50(%rsp),%rbx
                 0x00007ff50f25ad8f:   movslq 0x48(%rsp),%r9
   0.07%         0x00007ff50f25ad94:   mov    %edx,%ecx
   0.30%         0x00007ff50f25ad96:   add    %rcx,%r9
   0.01%         0x00007ff50f25ad99:   nopl   0x0(%rax)
   0.00%         0x00007ff50f25ada0:   cmp    %r9,%rbx
                 0x00007ff50f25ada3:   jbe    0x00007ff50f25b1b4
   0.07%         0x00007ff50f25ada9:   mov    0x5c(%rsp),%r9d
   0.30%         0x00007ff50f25adae:   cmp    %r8d,%r9d
                 0x00007ff50f25adb1:   jbe    0x00007ff50f25b2c9           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.01%         0x00007ff50f25adb7:   mov    0x1c(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                                           ;*return {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
                                                                           ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
   0.00%         0x00007ff50f25adba:   mov    0xc(,%rcx,8),%eax            ; implicit exception: dispatches to 0x00007ff50f25b44d
                                                                           ;   {no_reloc}
   0.06%         0x00007ff50f25adc1:   cmp    $0x2,%r10d
          ╭      0x00007ff50f25adc5:   jl     0x00007ff50f25addc
   0.30%  │      0x00007ff50f25adcb:   cmp    %edx,%eax
          │      0x00007ff50f25adcd:   jbe    0x00007ff50f25b163           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.03%  │      0x00007ff50f25add3:   cmp    $0x2,%eax
          │      0x00007ff50f25add6:   jb     0x00007ff50f25b15a           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop [56]=Oop }
          │                                                                ;*return {reexecute=1 rethrow=0 return_oop=0}
          │                                                                ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@232 (line 197)
          │                                                                ; - com.sun.crypto.provider.BlowfishCrypt::decryptBlock@6 (line 162)
          │                                                                ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@22 (line 214)
          ↘      0x00007ff50f25addc:   mov    0xc(,%rdi,8),%ebp            ; implicit exception: dispatches to 0x00007ff50f25b470
   0.07%         0x00007ff50f25ade3:   cmp    $0x2,%r10d
           ╭     0x00007ff50f25ade7:   jl     0x00007ff50f25adfe
   0.30%   │     0x00007ff50f25aded:   cmp    %edx,%ebp
           │     0x00007ff50f25adef:   jbe    0x00007ff50f25b148
   0.01%   │     0x00007ff50f25adf5:   cmp    $0x2,%ebp
           │     0x00007ff50f25adf8:   jb     0x00007ff50f25b118           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
           ↘     0x00007ff50f25adfe:   xchg   %ax,%ax
   0.08%         0x00007ff50f25ae00:   cmp    0x48(%rsp),%r9d
                 0x00007ff50f25ae05:   jbe    0x00007ff50f25b151           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.31%         0x00007ff50f25ae0b:   test   %eax,%eax
                 0x00007ff50f25ae0d:   je     0x00007ff50f25b1a8           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.01%         0x00007ff50f25ae13:   test   %ebp,%ebp
                 0x00007ff50f25ae15:   je     0x00007ff50f25b31c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
   0.00%         0x00007ff50f25ae1b:   mov    0x48(%rsp),%eax
   0.05%         0x00007ff50f25ae1f:   mov    0x28(%rsp),%r11
   0.28%         0x00007ff50f25ae24:   movsbl 0x10(,%rcx,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.02%         0x00007ff50f25ae2c:   movsbl 0x10(,%rdi,8),%ebp           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007ff50f25ae34:   xor    %ebp,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
   0.07%         0x00007ff50f25ae36:   mov    %dl,0x10(%r11,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   0.28%         0x00007ff50f25ae3b:   cmp    $0x3,%r10d
   0.02%         0x00007ff50f25ae3f:   mov    $0x2,%edx
                 0x00007ff50f25ae44:   cmovl  %r10d,%edx
   0.05%         0x00007ff50f25ae48:   mov    $0x1,%ebp
   0.31%    ╭    0x00007ff50f25ae4d:   jmp    0x00007ff50f25ae7c           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@28 (line 215)
            │    0x00007ff50f25ae52:   data16 nopw 0x0(%rax,%rax,1)
            │    0x00007ff50f25ae5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   0.34%    │↗   0x00007ff50f25ae60:   movsbl 0x10(%rbp,%rdi,8),%r13d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
            ││   0x00007ff50f25ae66:   mov    %eax,%r14d
            ││   0x00007ff50f25ae69:   add    %ebp,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
            ││   0x00007ff50f25ae6c:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   0.31%    ││   0x00007ff50f25ae72:   xor    %r13d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
            ││   0x00007ff50f25ae75:   mov    %r9b,0x10(%r11,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
            ││   0x00007ff50f25ae7a:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
   0.01%    ↘│   0x00007ff50f25ae7c:   cmp    %ebp,%edx
             ╰   0x00007ff50f25ae7e:   jg     0x00007ff50f25ae60
   0.33%         0x00007ff50f25ae80:   lea    -0x8(%r10),%edx
                 0x00007ff50f25ae84:   jmp    0x00007ff50f25afc0
                 0x00007ff50f25ae89:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007ff50f25ae94:   data16 data16 xchg %ax,%ax
                 0x00007ff50f25ae98:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
   1.08%      ↗  0x00007ff50f25aea0:   movsbl 0x10(%rbp,%rdi,8),%edx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
              │  0x00007ff50f25aea5:   mov    %eax,%r8d
   1.03%      │  0x00007ff50f25aea8:   add    %ebp,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@43 (line 216)
              │  0x00007ff50f25aeab:   movsbl 0x10(%rbp,%rcx,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@50 (line 216)
   1.00%      │  0x00007ff50f25aeb1:   xor    %edx,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@58 (line 216)
              │  0x00007ff50f25aeb4:   mov    %r9b,0x10(%r11,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@60 (line 216)
   1.05%      │  0x00007ff50f25aeb9:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@61 (line 215)
              │                                                            ;   {no_reloc}
              │  0x00007ff50f25aebb:   nopl   0x0(%rax,%rax,1)
   1.48%      │  0x00007ff50f25aec0:   cmp    %ebp,%r10d
              │  0x00007ff50f25aec3:   jle    0x00007ff50f25afcd
              ╰  0x00007ff50f25aec9:   jmp    0x00007ff50f25aea0
                 0x00007ff50f25aecb:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007ff50f25aed6:   data16 data16 xchg %ax,%ax
                 0x00007ff50f25aeda:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@34 (line 215)
                 0x00007ff50f25aee0:   movsbl 0x10(%rbp,%rdi,8),%r9d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.sun.crypto.provider.CipherBlockChaining::implDecrypt@57 (line 216)
                 0x00007ff50f25aee6:   mov    %eax,%r13d
                 0x00007ff50f25aee9:   add    %ebp,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  19.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.47%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1083 
  19.28%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 7, compile id 1116 
   2.97%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 7, compile id 1116 
   2.79%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.69%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1120 
   0.20%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.51%  <...other 449 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  71.47%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::decryptBlock, version 2, compile id 1083 
  22.25%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implDecrypt, version 7, compile id 1116 
   3.48%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.01%              kernel  [unknown] 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1120 
   0.08%                      <unknown> 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 1149 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.19%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.11%      jvmci, level 4
   3.48%        runtime stub
   2.01%              kernel
   0.19%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 32, transformation = Blowfish/CBC/NoPadding)

# Run progress: 50.00% complete, ETA 00:09:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 234.630 us/op
# Warmup Iteration   2: 223.234 us/op
# Warmup Iteration   3: 223.147 us/op
# Warmup Iteration   4: 223.184 us/op
# Warmup Iteration   5: 222.942 us/op
Iteration   1: 222.948 us/op
Iteration   2: 222.806 us/op
Iteration   3: 222.875 us/op
Iteration   4: 222.506 us/op
Iteration   5: 222.506 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  222.728 ±(99.9%) 0.805 us/op [Average]
  (min, avg, max) = (222.506, 222.728, 222.948), stdev = 0.209
  CI (99.9%): [221.923, 223.534] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 250055 total address lines.
Perf output processed (skipped 61.255 seconds):
 Column 1: cycles (50957 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1053 

 <region is too big to display, has 1090 lines, but threshold is 1000>
....................................................................................................
  66.17%  <total for region 1>

....[Hottest Regions]...............................................................................
  66.17%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1053 
   9.50%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1083 
   5.62%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1083 
   3.84%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1083 
   3.18%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.13%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1083 
   1.71%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.48%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1083 
   1.47%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.35%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1053 
   0.91%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1083 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1085 
   0.32%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1053 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.18%  <...other 374 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.85%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1053 
  22.94%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1083 
   6.37%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.99%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1085 
   0.08%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_fflush 
   0.22%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.16%      jvmci, level 4
   6.37%        runtime stub
   1.99%              kernel
   0.19%           libjvm.so
   0.15%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 64, transformation = Blowfish/CBC/NoPadding)

# Run progress: 60.00% complete, ETA 00:07:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 235.693 us/op
# Warmup Iteration   2: 225.146 us/op
# Warmup Iteration   3: 226.745 us/op
# Warmup Iteration   4: 223.485 us/op
# Warmup Iteration   5: 223.145 us/op
Iteration   1: 222.806 us/op
Iteration   2: 222.854 us/op
Iteration   3: 223.032 us/op
Iteration   4: 223.018 us/op
Iteration   5: 222.899 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  222.922 ±(99.9%) 0.385 us/op [Average]
  (min, avg, max) = (222.806, 222.922, 223.032), stdev = 0.100
  CI (99.9%): [222.537, 223.307] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 258700 total address lines.
Perf output processed (skipped 61.629 seconds):
 Column 1: cycles (50854 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1076 

 <region is too big to display, has 1090 lines, but threshold is 1000>
....................................................................................................
  66.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  66.21%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1076 
   9.26%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1109 
   5.39%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1109 
   5.32%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1109 
   3.38%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.15%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1109 
   1.81%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.38%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.31%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1076 
   0.44%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1076 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.35%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1109 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.71%  <...other 433 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.89%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1076 
  22.47%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1109 
   6.57%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.20%              kernel  [unknown] 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.26%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.75%      jvmci, level 4
   6.57%        runtime stub
   2.20%              kernel
   0.22%           libjvm.so
   0.11%        libc-2.31.so
   0.04%                    
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%              [vdso]
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    perf-2104756.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = Blowfish/CBC/NoPadding)

# Run progress: 70.00% complete, ETA 00:05:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 233.740 us/op
# Warmup Iteration   2: 224.535 us/op
# Warmup Iteration   3: 224.148 us/op
# Warmup Iteration   4: 224.240 us/op
# Warmup Iteration   5: 222.053 us/op
Iteration   1: 221.826 us/op
Iteration   2: 221.849 us/op
Iteration   3: 222.317 us/op
Iteration   4: 222.331 us/op
Iteration   5: 222.701 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  222.205 ±(99.9%) 1.421 us/op [Average]
  (min, avg, max) = (221.826, 222.205, 222.701), stdev = 0.369
  CI (99.9%): [220.784, 223.626] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 252115 total address lines.
Perf output processed (skipped 61.334 seconds):
 Column 1: cycles (51005 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1061 

 <region is too big to display, has 1090 lines, but threshold is 1000>
....................................................................................................
  66.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1090 

             0x00007fb01325b3c0:   cmp    $0x8,%ecx
             0x00007fb01325b3c3:   jb     0x00007fb01325b7ed           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b3c9:   cmp    $0x2,%edi
             0x00007fb01325b3cc:   jb     0x00007fb01325b8a6           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%     0x00007fb01325b3d2:   movsbl 0x10(,%rbp,8),%ecx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b3da:   movzbl 0x11(,%rbp,8),%edi           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b3e2:   movzbl 0x12(,%rbp,8),%r11d          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007fb01325b3eb:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%     0x00007fb01325b3ee:   shl    $0x10,%edi                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b3f1:   or     %edi,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b3f3:   shl    $0x8,%r11d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007fb01325b3f7:   or     %r11d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.31%     0x00007fb01325b3fa:   movzbl 0x13(,%rbp,8),%r11d          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b403:   or     %r11d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007fb01325b406:   mov    %ecx,0x10(,%rbx,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007fb01325b40d:   movsbl 0x14(,%rbp,8),%r11d          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
                                                                       ;   {no_reloc}
   0.35%     0x00007fb01325b416:   movzbl 0x15(,%rbp,8),%ecx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b41e:   movzbl 0x16(,%rbp,8),%edi           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b426:   shl    $0x18,%r11d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.01%     0x00007fb01325b42a:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.37%     0x00007fb01325b42d:   or     %ecx,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b430:   shl    $0x8,%edi                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b433:   or     %edi,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007fb01325b436:   movzbl 0x17(,%rbp,8),%ecx           ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%     0x00007fb01325b43e:   or     %ecx,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b441:   mov    %r11d,0x14(,%rbx,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b449:   shl    $0x3,%rbx                    ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b44d:   mov    %r10d,%r11d
   0.33%     0x00007fb01325b450:   shl    $0x3,%r11                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
             0x00007fb01325b454:   nopl   0x0(%rax,%rax,1)
             0x00007fb01325b45c:   data16 data16 xchg %ax,%ax
             0x00007fb01325b460:   cmpb   $0x0,0xc(,%r10,8)
   0.35%     0x00007fb01325b469:   jne    0x00007fb01325b72e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b46f:   mov    %r8d,0x44(%rsp)
   0.00%     0x00007fb01325b474:   mov    %r14d,0x40(%rsp)
   0.36%     0x00007fb01325b479:   mov    %r13d,0x3c(%rsp)
   0.00%     0x00007fb01325b47e:   mov    %eax,0x38(%rsp)
   0.01%     0x00007fb01325b482:   mov    %r10d,0x14(%rsp)
             0x00007fb01325b487:   mov    %r11,%rsi
   0.33%     0x00007fb01325b48a:   mov    %rbx,%rdx                    ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@123 (line 183)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b48d:   mov    %r11,0x8(%rsp)
   0.00%     0x00007fb01325b492:   nop
             0x00007fb01325b493:   call   0x00007fb01324e1c0           ; ImmutableOopMap {[8]=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@123 (line 183)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
                                                                       ;   {optimized virtual_call}
             0x00007fb01325b498:   nopl   0x6000508(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
                                                                       ;   {other}
             0x00007fb01325b4a0:   mov    0x14(%rsp),%r10d
   0.33%     0x00007fb01325b4a5:   mov    0x28(%rsp),%rsi
             0x00007fb01325b4aa:   mov    0x24(,%r10,8),%edi           ; ImmutableOopMap {rsi=Oop rdi=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b4b2:   mov    0xc(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007fb01325ba65
             0x00007fb01325b4b9:   mov    0x18(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop rdi=NarrowOop r10=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%     0x00007fb01325b4bd:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fb01325ba88
             0x00007fb01325b4c5:   cmp    $0x2,%edx
             0x00007fb01325b4c8:   jb     0x00007fb01325b85a
             0x00007fb01325b4ce:   mov    %r11d,0x34(%rsp)
             0x00007fb01325b4d3:   mov    %r10d,0x14(%rsp)
   0.34%     0x00007fb01325b4d8:   mov    0x44(%rsp),%ebp
             0x00007fb01325b4dc:   mov    0x48(%rsp),%ebx
             0x00007fb01325b4e0:   mov    0x4c(%rsp),%ecx
             0x00007fb01325b4e4:   mov    0x50(%rsp),%edx
   0.37%     0x00007fb01325b4e8:   mov    0x40(%rsp),%r14d
             0x00007fb01325b4ed:   mov    0x3c(%rsp),%r13d
             0x00007fb01325b4f2:   mov    0x38(%rsp),%eax
             0x00007fb01325b4f6:   mov    0x54(%rsp),%r8d
   0.36%     0x00007fb01325b4fb:   mov    0x18(%rsp),%r9
             0x00007fb01325b500:   mov    0x10(,%rdi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b508:   mov    %r10d,%r11d
             0x00007fb01325b50b:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.37%     0x00007fb01325b50f:   mov    %r11b,0x10(%r9,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b514:   mov    %r10d,%r11d
             0x00007fb01325b517:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b51b:   mov    %r11b,0x10(%r9,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.37%     0x00007fb01325b520:   mov    %r10d,%r11d
             0x00007fb01325b523:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b527:   mov    %r11b,0x10(%r9,%r13,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b52c:   mov    %r10b,0x10(%r9,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%     0x00007fb01325b531:   mov    0x14(,%rdi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b539:   mov    %r10d,%edi
             0x00007fb01325b53c:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b53f:   mov    %dil,0x10(%r9,%rdx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%     0x00007fb01325b544:   mov    %r10d,%edi
             0x00007fb01325b547:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b54a:   mov    %dil,0x10(%r9,%rcx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b54f:   mov    %r10d,%edi
   0.33%     0x00007fb01325b552:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007fb01325b555:   mov    %dil,0x10(%r9,%rbx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007fb01325b55a:   mov    %r10b,0x10(%r9,%rbp,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007fb01325b55f:   mov    0xc(%rsi),%r11d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
   0.32%     0x00007fb01325b563:   test   %r11d,%r11d
             0x00007fb01325b566:   jl     0x00007fb01325b78e
   0.00%     0x00007fb01325b56c:   mov    0x6c(%rsp),%ecx
   0.00%     0x00007fb01325b570:   mov    %ecx,%edi
   0.00%     0x00007fb01325b572:   sub    %r11d,%edi
   0.34%     0x00007fb01325b575:   cmp    %edi,%r8d
             0x00007fb01325b578:   jg     0x00007fb01325b78e
             0x00007fb01325b57e:   mov    0x34(%rsp),%edi
   0.00%     0x00007fb01325b582:   cmp    %edi,%r11d
             0x00007fb01325b585:   ja     0x00007fb01325b78e
             0x00007fb01325b58b:   mov    0x14(%rsp),%r10d
   0.36%     0x00007fb01325b590:   mov    %r9,%rdi                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.System::arraycopy@-3
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
             0x00007fb01325b593:   shl    $0x3,%r10                    ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
             0x00007fb01325b597:   mov    %r11d,%edx                   ;   {no_reloc}
             0x00007fb01325b59a:   lea    0x10(%rdi,%r8,1),%rdi
   0.36%     0x00007fb01325b59f:   lea    0x10(%r10),%rsi              ;* unwind (locked if synchronized)
                                                                       ; - java.lang.System::arraycopy@-3
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
             0x00007fb01325b5a3:   mov    %r11d,0x34(%rsp)
             0x00007fb01325b5a8:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
             0x00007fb01325b5ad:   nop
             0x00007fb01325b5ae:   mov    0x458(%r15),%rax             ; ImmutableOopMap {[24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@83 (line 163)
             0x00007fb01325b5b5:   test   %eax,(%rax)                  ;   {poll}
   0.27%     0x00007fb01325b5b7:   mov    0x54(%rsp),%r9d
             0x00007fb01325b5bc:   add    0x34(%rsp),%r9d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@96 (line 163)
             0x00007fb01325b5c1:   mov    0x58(%rsp),%r8d
   0.38%     0x00007fb01325b5c6:   add    0x34(%rsp),%r8d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
             0x00007fb01325b5cb:   mov    0x5c(%rsp),%eax
             0x00007fb01325b5cf:   mov    0x60(%rsp),%rbx
             0x00007fb01325b5d4:   mov    0x70(%rsp),%r10d
   0.35%     0x00007fb01325b5d9:   mov    0x20(%rsp),%rdx
             0x00007fb01325b5de:   mov    0x28(%rsp),%rsi              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@5 (line 162)
             0x00007fb01325b5e3:   cmp    %r8d,%eax
             0x00007fb01325b5e6:   jg     0x00007fb01325b1e0
             0x00007fb01325b5ec:   jmp    0x00007fb01325b765           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
             0x00007fb01325b5f1:   lea    -0x8(%r13),%r10d
   0.00%     0x00007fb01325b5f5:   jmp    0x00007fb01325b71f
             0x00007fb01325b5fa:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
   1.05%  ↗  0x00007fb01325b600:   movsbl 0x10(%rax,%rdi,8),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
   0.01%  │  0x00007fb01325b606:   mov    %r8d,%r11d
   1.07%  │  0x00007fb01325b609:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@33 (line 165)
          │  0x00007fb01325b60c:   movsbl 0x10(%rdx,%r11,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
   0.97%  │  0x00007fb01325b612:   xor    %r10d,%r11d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@42 (line 165)
   0.00%  │  0x00007fb01325b615:   mov    %r11b,0x10(%rax,%rbp,8)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
   1.10%  │  0x00007fb01325b61a:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
          │  0x00007fb01325b61c:   nopl   0x0(%rax)
   1.31%  │  0x00007fb01325b620:   cmp    %eax,%r13d
          │  0x00007fb01325b623:   jle    0x00007fb01325b30a
          ╰  0x00007fb01325b629:   jmp    0x00007fb01325b600
             0x00007fb01325b62b:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007fb01325b636:   data16 data16 xchg %ax,%ax
             0x00007fb01325b63a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
             0x00007fb01325b640:   movsbl 0x10(%rax,%rdi,8),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
             0x00007fb01325b645:   mov    %r8d,%r14d
             0x00007fb01325b648:   add    %eax,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.68%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1061 
  14.95%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1090 
   3.62%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1090 
   3.14%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.11%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1090 
   1.77%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.39%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1090 
   1.37%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1061 
   1.36%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.11%              kernel  [unknown] 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1095 
   0.35%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1061 
   0.32%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1090 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.01%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.40%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1061 
  22.38%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1090 
   6.27%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.15%              kernel  [unknown] 
   0.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1095 
   0.05%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.19%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.19%      jvmci, level 4
   6.27%        runtime stub
   2.15%              kernel
   0.15%           libjvm.so
   0.13%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = Blowfish/CBC/NoPadding)

# Run progress: 80.00% complete, ETA 00:03:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 234.722 us/op
# Warmup Iteration   2: 223.967 us/op
# Warmup Iteration   3: 224.478 us/op
# Warmup Iteration   4: 224.525 us/op
# Warmup Iteration   5: 223.314 us/op
Iteration   1: 223.235 us/op
Iteration   2: 223.273 us/op
Iteration   3: 223.521 us/op
Iteration   4: 223.899 us/op
Iteration   5: 223.860 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  223.558 ±(99.9%) 1.209 us/op [Average]
  (min, avg, max) = (223.235, 223.558, 223.899), stdev = 0.314
  CI (99.9%): [222.349, 224.767] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 258953 total address lines.
Perf output processed (skipped 61.618 seconds):
 Column 1: cycles (51111 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1070 

 <region is too big to display, has 1090 lines, but threshold is 1000>
....................................................................................................
  66.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1101 

                                                                          ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@14 (line 164)
                0x00007f5e8b25c147:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f5e8b25c152:   data16 data16 xchg %ax,%ax
                0x00007f5e8b25c156:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
           ↗    0x00007f5e8b25c160:   movsbl 0x10(%rax,%rdi,8),%r14d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
           │    0x00007f5e8b25c166:   mov    %r8d,%r10d
           │    0x00007f5e8b25c169:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@33 (line 165)
   0.31%   │    0x00007f5e8b25c16c:   movsbl 0x10(%rdx,%r10,1),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
           │    0x00007f5e8b25c172:   xor    %r14d,%r10d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@42 (line 165)
           │    0x00007f5e8b25c175:   mov    %r10b,0x10(%rax,%rbp,8)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
   0.00%   │    0x00007f5e8b25c17a:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
   0.32%   │    0x00007f5e8b25c17c:   nopl   0x0(%rax)
           │    0x00007f5e8b25c180:   cmp    %eax,%ebx
          ╭│    0x00007f5e8b25c182:   jle    0x00007f5e8b25c471
   0.36%  │╰    0x00007f5e8b25c188:   jmp    0x00007f5e8b25c160           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
          │ ↗   0x00007f5e8b25c18a:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r10=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          │ │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@51 (line 167)
   0.35%  │ │   0x00007f5e8b25c18e:   cmpl   $0x10cf768,0x8(,%r10,8)      ; implicit exception: dispatches to 0x00007f5e8b25c878
          │ │                                                             ;   {metadata(&apos;com/sun/crypto/provider/BlowfishCrypt&apos;)}
          │ │   0x00007f5e8b25c19a:   jne    0x00007f5e8b25c732           ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c1a0:   mov    0x6c(%rsp),%r11d             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r10=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          │ │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@51 (line 167)
   0.34%  │ │   0x00007f5e8b25c1a5:   mov    0xc(,%rbp,8),%ecx            ; implicit exception: dispatches to 0x00007f5e8b25c89b
          │ │   0x00007f5e8b25c1ac:   mov    0x24(,%r10,8),%ebx           ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rbp=NarrowOop rsi=Oop r10=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          │ │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@51 (line 167)
          │ │   0x00007f5e8b25c1b4:   mov    0xc(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007f5e8b25c8be
   0.00%  │ │   0x00007f5e8b25c1bb:   nopl   0x0(%rax,%rax,1)
   0.31%  │ │   0x00007f5e8b25c1c0:   cmp    %r9d,%r11d
          │ │   0x00007f5e8b25c1c3:   jbe    0x00007f5e8b25c714           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c1c9:   mov    %r9d,%eax
          │ │   0x00007f5e8b25c1cc:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@148 (line 188)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c1ce:   cmp    %eax,%r11d
          │ │   0x00007f5e8b25c1d1:   jbe    0x00007f5e8b25c702           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.34%  │ │   0x00007f5e8b25c1d7:   lea    0x2(%r9),%r13d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@160 (line 189)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c1db:   nopl   0x0(%rax,%rax,1)
          │ │   0x00007f5e8b25c1e0:   cmp    %r13d,%r11d
          │ │   0x00007f5e8b25c1e3:   jbe    0x00007f5e8b25c77d           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c1e9:   lea    0x3(%r9),%r14d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@172 (line 190)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.34%  │ │   0x00007f5e8b25c1ed:   cmp    %r14d,%r11d
          │ │   0x00007f5e8b25c1f0:   jbe    0x00007f5e8b25c6cb           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c1f6:   lea    0x4(%r9),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@189 (line 193)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c1fa:   mov    %r8d,0x50(%rsp)
   0.00%  │ │   0x00007f5e8b25c1ff:   nop
   0.37%  │ │   0x00007f5e8b25c200:   cmp    %r8d,%r11d
          │ │   0x00007f5e8b25c203:   jbe    0x00007f5e8b25c6bc           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c209:   lea    0x5(%r9),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@201 (line 194)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c20d:   mov    %r8d,0x4c(%rsp)
          │ │   0x00007f5e8b25c212:   cmp    %r8d,%r11d
          │ │   0x00007f5e8b25c215:   jbe    0x00007f5e8b25c6ad           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.39%  │ │   0x00007f5e8b25c21b:   lea    0x6(%r9),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@214 (line 195)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c21f:   mov    %r8d,0x48(%rsp)
          │ │   0x00007f5e8b25c224:   cmp    %r8d,%r11d
          │ │   0x00007f5e8b25c227:   jbe    0x00007f5e8b25c7be           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c22d:   lea    0x7(%r9),%r8d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@227 (line 196)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.32%  │ │   0x00007f5e8b25c231:   cmp    %r8d,%r11d
          │ │   0x00007f5e8b25c234:   jbe    0x00007f5e8b25c695           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c23a:   nopw   0x0(%rax,%rax,1)
          │ │   0x00007f5e8b25c240:   cmp    $0x8,%ecx
          │ │   0x00007f5e8b25c243:   jb     0x00007f5e8b25c66d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.01%  │ │   0x00007f5e8b25c249:   cmp    $0x2,%edi
          │ │   0x00007f5e8b25c24c:   jb     0x00007f5e8b25c745           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.37%  │ │   0x00007f5e8b25c252:   movsbl 0x10(,%rbp,8),%ecx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c25a:   movzbl 0x11(,%rbp,8),%edi           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c262:   movzbl 0x12(,%rbp,8),%r11d          ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c26b:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.32%  │ │   0x00007f5e8b25c26e:   shl    $0x10,%edi                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c271:   or     %edi,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c273:   shl    $0x8,%r11d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c277:   or     %r11d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.32%  │ │   0x00007f5e8b25c27a:   movzbl 0x13(,%rbp,8),%r11d          ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c283:   or     %r11d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c286:   mov    %ecx,0x10(,%rbx,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c28d:   movsbl 0x14(,%rbp,8),%r11d          ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │                                                             ;   {no_reloc}
   0.27%  │ │   0x00007f5e8b25c296:   movzbl 0x15(,%rbp,8),%ecx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c29e:   movzbl 0x16(,%rbp,8),%edi           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c2a6:   shl    $0x18,%r11d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c2aa:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%  │ │   0x00007f5e8b25c2ad:   or     %ecx,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c2b0:   shl    $0x8,%edi                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c2b3:   or     %edi,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c2b6:   movzbl 0x17(,%rbp,8),%ecx           ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.40%  │ │   0x00007f5e8b25c2be:   or     %ecx,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c2c1:   mov    %r11d,0x14(,%rbx,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.01%  │ │   0x00007f5e8b25c2c9:   shl    $0x3,%rbx                    ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c2cd:   mov    %r10d,%r11d
   0.39%  │ │   0x00007f5e8b25c2d0:   shl    $0x3,%r11                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
          │ │   0x00007f5e8b25c2d4:   nopl   0x0(%rax,%rax,1)
          │ │   0x00007f5e8b25c2dc:   data16 data16 xchg %ax,%ax
          │ │   0x00007f5e8b25c2e0:   cmpb   $0x0,0xc(,%r10,8)
   0.34%  │ │   0x00007f5e8b25c2e9:   jne    0x00007f5e8b25c5ae           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.01%  │ │   0x00007f5e8b25c2ef:   mov    %r8d,0x44(%rsp)
          │ │   0x00007f5e8b25c2f4:   mov    %r14d,0x40(%rsp)
   0.34%  │ │   0x00007f5e8b25c2f9:   mov    %r13d,0x3c(%rsp)
          │ │   0x00007f5e8b25c2fe:   mov    %eax,0x38(%rsp)
          │ │   0x00007f5e8b25c302:   mov    %r10d,0x14(%rsp)
          │ │   0x00007f5e8b25c307:   mov    %r11,%rsi
   0.36%  │ │   0x00007f5e8b25c30a:   mov    %rbx,%rdx                    ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@123 (line 183)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c30d:   mov    %r11,0x8(%rsp)
          │ │   0x00007f5e8b25c312:   nop
          │ │   0x00007f5e8b25c313:   call   0x00007f5e8b24eac0           ; ImmutableOopMap {[8]=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          │ │                                                             ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@123 (line 183)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │                                                             ;   {optimized virtual_call}
          │ │   0x00007f5e8b25c318:   nopl   0x6000508(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │                                                             ;   {other}
          │ │   0x00007f5e8b25c320:   mov    0x14(%rsp),%r10d
   0.31%  │ │   0x00007f5e8b25c325:   mov    0x28(%rsp),%rsi
          │ │   0x00007f5e8b25c32a:   mov    0x24(,%r10,8),%edi           ; ImmutableOopMap {rsi=Oop rdi=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │ │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c332:   mov    0xc(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f5e8b25c8e1
          │ │   0x00007f5e8b25c339:   mov    0x18(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop rdi=NarrowOop r10=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │ │                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%  │ │   0x00007f5e8b25c33d:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f5e8b25c904
          │ │   0x00007f5e8b25c345:   cmp    $0x2,%edx
          │ │   0x00007f5e8b25c348:   jb     0x00007f5e8b25c6da
          │ │   0x00007f5e8b25c34e:   mov    %r11d,0x34(%rsp)
          │ │   0x00007f5e8b25c353:   mov    %r10d,0x14(%rsp)
   0.33%  │ │   0x00007f5e8b25c358:   mov    0x44(%rsp),%ebp
          │ │   0x00007f5e8b25c35c:   mov    0x48(%rsp),%ebx
          │ │   0x00007f5e8b25c360:   mov    0x4c(%rsp),%ecx
          │ │   0x00007f5e8b25c364:   mov    0x50(%rsp),%edx
   0.34%  │ │   0x00007f5e8b25c368:   mov    0x40(%rsp),%r14d
          │ │   0x00007f5e8b25c36d:   mov    0x3c(%rsp),%r13d
          │ │   0x00007f5e8b25c372:   mov    0x38(%rsp),%eax
          │ │   0x00007f5e8b25c376:   mov    0x54(%rsp),%r8d
   0.36%  │ │   0x00007f5e8b25c37b:   mov    0x18(%rsp),%r9
          │ │   0x00007f5e8b25c380:   mov    0x10(,%rdi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c388:   mov    %r10d,%r11d
          │ │   0x00007f5e8b25c38b:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%  │ │   0x00007f5e8b25c38f:   mov    %r11b,0x10(%r9,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c394:   mov    %r10d,%r11d
          │ │   0x00007f5e8b25c397:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c39b:   mov    %r11b,0x10(%r9,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.37%  │ │   0x00007f5e8b25c3a0:   mov    %r10d,%r11d
          │ │   0x00007f5e8b25c3a3:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3a7:   mov    %r11b,0x10(%r9,%r13,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3ac:   mov    %r10b,0x10(%r9,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.37%  │ │   0x00007f5e8b25c3b1:   mov    0x14(,%rdi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3b9:   mov    %r10d,%edi
          │ │   0x00007f5e8b25c3bc:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3bf:   mov    %dil,0x10(%r9,%rdx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%  │ │   0x00007f5e8b25c3c4:   mov    %r10d,%edi
          │ │   0x00007f5e8b25c3c7:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3ca:   mov    %dil,0x10(%r9,%rcx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3cf:   mov    %r10d,%edi
   0.37%  │ │   0x00007f5e8b25c3d2:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3d5:   mov    %dil,0x10(%r9,%rbx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%  │ │   0x00007f5e8b25c3da:   mov    %r10b,0x10(%r9,%rbp,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
          │ │                                                             ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
          │ │   0x00007f5e8b25c3df:   mov    0xc(%rsi),%r11d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
   0.34%  │ │   0x00007f5e8b25c3e3:   test   %r11d,%r11d
          │ │   0x00007f5e8b25c3e6:   jl     0x00007f5e8b25c60e
          │ │   0x00007f5e8b25c3ec:   mov    0x6c(%rsp),%ecx
   0.00%  │ │   0x00007f5e8b25c3f0:   mov    %ecx,%edi
          │ │   0x00007f5e8b25c3f2:   sub    %r11d,%edi
   0.32%  │ │   0x00007f5e8b25c3f5:   cmp    %edi,%r8d
          │ │   0x00007f5e8b25c3f8:   jg     0x00007f5e8b25c60e
          │ │   0x00007f5e8b25c3fe:   mov    0x34(%rsp),%edi
          │ │   0x00007f5e8b25c402:   cmp    %edi,%r11d
          │ │   0x00007f5e8b25c405:   ja     0x00007f5e8b25c60e
   0.00%  │ │   0x00007f5e8b25c40b:   mov    0x14(%rsp),%r10d
   0.35%  │ │   0x00007f5e8b25c410:   mov    %r9,%rdi                     ;* unwind (locked if synchronized)
          │ │                                                             ; - java.lang.System::arraycopy@-3
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          │ │   0x00007f5e8b25c413:   shl    $0x3,%r10                    ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
          │ │   0x00007f5e8b25c417:   mov    %r11d,%edx                   ;   {no_reloc}
   0.00%  │ │   0x00007f5e8b25c41a:   lea    0x10(%rdi,%r8,1),%rdi
   0.32%  │ │   0x00007f5e8b25c41f:   lea    0x10(%r10),%rsi              ;* unwind (locked if synchronized)
          │ │                                                             ; - java.lang.System::arraycopy@-3
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
          │ │   0x00007f5e8b25c423:   mov    %r11d,0x34(%rsp)
          │ │   0x00007f5e8b25c428:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
          │ │   0x00007f5e8b25c42d:   nop
          │ │   0x00007f5e8b25c42e:   mov    0x458(%r15),%rax             ; ImmutableOopMap {[24]=Oop [32]=Oop [40]=Oop }
          │ │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                             ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@83 (line 163)
          │ │   0x00007f5e8b25c435:   test   %eax,(%rax)                  ;   {poll}
   0.32%  │ │   0x00007f5e8b25c437:   mov    0x54(%rsp),%r9d
          │ │   0x00007f5e8b25c43c:   add    0x34(%rsp),%r9d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@96 (line 163)
          │ │   0x00007f5e8b25c441:   mov    0x58(%rsp),%r8d
   0.34%  │ │   0x00007f5e8b25c446:   add    0x34(%rsp),%r8d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
          │ │   0x00007f5e8b25c44b:   mov    0x5c(%rsp),%eax
          │ │   0x00007f5e8b25c44f:   mov    0x60(%rsp),%rbx
          │ │   0x00007f5e8b25c454:   mov    0x70(%rsp),%r10d
   0.37%  │ │   0x00007f5e8b25c459:   mov    0x20(%rsp),%rdx
          │ │   0x00007f5e8b25c45e:   mov    0x28(%rsp),%rsi              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@5 (line 162)
          │ │   0x00007f5e8b25c463:   cmp    %r8d,%eax
          │ │   0x00007f5e8b25c466:   jg     0x00007f5e8b25c060
          │ │   0x00007f5e8b25c46c:   jmp    0x00007f5e8b25c5e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
          ↘ │   0x00007f5e8b25c471:   lea    -0x8(%r13),%r10d
   0.01%    │   0x00007f5e8b25c475:   jmp    0x00007f5e8b25c59f
            │   0x00007f5e8b25c47a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
   1.05%    │↗  0x00007f5e8b25c480:   movsbl 0x10(%rax,%rdi,8),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
   0.01%    ││  0x00007f5e8b25c486:   mov    %r8d,%r11d
   1.11%    ││  0x00007f5e8b25c489:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@33 (line 165)
            ││  0x00007f5e8b25c48c:   movsbl 0x10(%rdx,%r11,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
   1.02%    ││  0x00007f5e8b25c492:   xor    %r10d,%r11d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@42 (line 165)
   0.00%    ││  0x00007f5e8b25c495:   mov    %r11b,0x10(%rax,%rbp,8)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
   1.04%    ││  0x00007f5e8b25c49a:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
            ││  0x00007f5e8b25c49c:   nopl   0x0(%rax)
   1.33%    ││  0x00007f5e8b25c4a0:   cmp    %eax,%r13d
            ╰│  0x00007f5e8b25c4a3:   jle    0x00007f5e8b25c18a
             ╰  0x00007f5e8b25c4a9:   jmp    0x00007f5e8b25c480
                0x00007f5e8b25c4ab:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f5e8b25c4b6:   data16 data16 xchg %ax,%ax
                0x00007f5e8b25c4ba:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
                0x00007f5e8b25c4c0:   movsbl 0x10(%rax,%rdi,8),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
                0x00007f5e8b25c4c5:   mov    %r8d,%r14d
                0x00007f5e8b25c4c8:   add    %eax,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  18.72%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.32%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1070 
  18.72%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1101 
   3.20%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.03%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1101 
   1.70%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.44%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1070 
   1.41%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.40%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1101 
   0.97%              kernel  [unknown] 
   0.36%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1101 
   0.34%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1070 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.32%  <...other 382 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.10%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1070 
  22.51%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1101 
   6.31%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.27%              kernel  [unknown] 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  fileStream::write 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_mutex_lock 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.23%  <...other 86 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.94%      jvmci, level 4
   6.31%        runtime stub
   2.27%              kernel
   0.18%           libjvm.so
   0.12%        libc-2.31.so
   0.09%                    
   0.04%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-2104887.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 448, transformation = Blowfish/CBC/NoPadding)

# Run progress: 90.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 235.465 us/op
# Warmup Iteration   2: 223.056 us/op
# Warmup Iteration   3: 223.078 us/op
# Warmup Iteration   4: 222.907 us/op
# Warmup Iteration   5: 222.156 us/op
Iteration   1: 222.624 us/op
Iteration   2: 221.948 us/op
Iteration   3: 222.851 us/op
Iteration   4: 223.546 us/op
Iteration   5: 223.491 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  222.892 ±(99.9%) 2.547 us/op [Average]
  (min, avg, max) = (221.948, 222.892, 223.546), stdev = 0.662
  CI (99.9%): [220.345, 225.439] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 262554 total address lines.
Perf output processed (skipped 61.832 seconds):
 Column 1: cycles (51088 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1080 

 <region is too big to display, has 1114 lines, but threshold is 1000>
....................................................................................................
  67.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1111 

             0x00007f456b259640:   cmp    $0x8,%ecx
             0x00007f456b259643:   jb     0x00007f456b259a6d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259649:   cmp    $0x2,%edi
             0x00007f456b25964c:   jb     0x00007f456b259b45           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.30%     0x00007f456b259652:   movsbl 0x10(,%rbp,8),%ecx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@7 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b25965a:   movzbl 0x11(,%rbp,8),%edi           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@15 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259662:   movzbl 0x12(,%rbp,8),%r11d          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@28 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007f456b25966b:   shl    $0x18,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@10 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.37%     0x00007f456b25966e:   shl    $0x10,%edi                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@22 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259671:   or     %edi,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@23 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259673:   shl    $0x8,%r11d                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@35 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007f456b259677:   or     %r11d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@36 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.32%     0x00007f456b25967a:   movzbl 0x13(,%rbp,8),%r11d          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@45 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259683:   or     %r11d,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@46 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259686:   mov    %ecx,0x10(,%rbx,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@47 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b25968d:   movsbl 0x14(,%rbp,8),%r11d          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@57 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
                                                                       ;   {no_reloc}
   0.34%     0x00007f456b259696:   movzbl 0x15(,%rbp,8),%ecx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@65 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007f456b25969e:   movzbl 0x16(,%rbp,8),%edi           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@79 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2596a6:   shl    $0x18,%r11d                  ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@60 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2596aa:   shl    $0x10,%ecx                   ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@72 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%     0x00007f456b2596ad:   or     %ecx,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@73 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2596b0:   shl    $0x8,%edi                    ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@86 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2596b3:   or     %edi,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@87 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.01%     0x00007f456b2596b6:   movzbl 0x17(,%rbp,8),%ecx           ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@97 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%     0x00007f456b2596be:   or     %ecx,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@98 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007f456b2596c1:   mov    %r11d,0x14(,%rbx,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@99 (line 175)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007f456b2596c9:   shl    $0x3,%rbx                    ;*getfield temp {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@1 (line 170)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2596cd:   mov    %r10d,%r11d
   0.34%     0x00007f456b2596d0:   shl    $0x3,%r11                    ;*getfield embeddedCipher {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@52 (line 167)
             0x00007f456b2596d4:   nopl   0x0(%rax,%rax,1)
   0.00%     0x00007f456b2596dc:   data16 data16 xchg %ax,%ax
             0x00007f456b2596e0:   cmpb   $0x0,0xc(,%r10,8)
   0.37%     0x00007f456b2596e9:   jne    0x00007f456b2599ae           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@104 (line 180)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.00%     0x00007f456b2596ef:   mov    %r8d,0x44(%rsp)
             0x00007f456b2596f4:   mov    %r14d,0x40(%rsp)
   0.34%     0x00007f456b2596f9:   mov    %r13d,0x3c(%rsp)
             0x00007f456b2596fe:   mov    %eax,0x38(%rsp)
   0.00%     0x00007f456b259702:   mov    %r10d,0x14(%rsp)
             0x00007f456b259707:   mov    %r11,%rsi
   0.34%     0x00007f456b25970a:   mov    %rbx,%rdx                    ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@123 (line 183)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b25970d:   mov    %r11,0x8(%rsp)
             0x00007f456b259712:   nop
             0x00007f456b259713:   call   0x00007f456b24bc40           ; ImmutableOopMap {[8]=Oop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*invokevirtual encryptBlock {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@123 (line 183)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
                                                                       ;   {optimized virtual_call}
             0x00007f456b259718:   nopl   0x6000508(%rax,%rax,1)       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
                                                                       ;   {other}
             0x00007f456b259720:   mov    0x14(%rsp),%r10d
   0.32%     0x00007f456b259725:   mov    0x28(%rsp),%rsi
             0x00007f456b25972a:   mov    0x24(,%r10,8),%edi           ; ImmutableOopMap {rsi=Oop rdi=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259732:   mov    0xc(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f456b259ce1
             0x00007f456b259739:   mov    0x18(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop rdi=NarrowOop r10=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.sun.crypto.provider.BlowfishCrypt::cipherBlock@126 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%     0x00007f456b25973d:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f456b259d04
             0x00007f456b259745:   cmp    $0x2,%edx
             0x00007f456b259748:   jb     0x00007f456b259ada
             0x00007f456b25974e:   mov    %r11d,0x34(%rsp)
             0x00007f456b259753:   mov    %r10d,0x14(%rsp)
   0.35%     0x00007f456b259758:   mov    0x44(%rsp),%ebp
             0x00007f456b25975c:   mov    0x48(%rsp),%ebx
             0x00007f456b259760:   mov    0x4c(%rsp),%ecx
             0x00007f456b259764:   mov    0x50(%rsp),%edx
   0.35%     0x00007f456b259768:   mov    0x40(%rsp),%r14d
             0x00007f456b25976d:   mov    0x3c(%rsp),%r13d
             0x00007f456b259772:   mov    0x38(%rsp),%eax
             0x00007f456b259776:   mov    0x54(%rsp),%r8d
   0.32%     0x00007f456b25977b:   mov    0x18(%rsp),%r9
             0x00007f456b259780:   mov    0x10(,%rdi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@131 (line 186)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259788:   mov    %r10d,%r11d
             0x00007f456b25978b:   sar    $0x18,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@141 (line 187)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%     0x00007f456b25978f:   mov    %r11b,0x10(%r9,%r8,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@143 (line 187)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b259794:   mov    %r10d,%r11d
             0x00007f456b259797:   sar    $0x10,%r11d                  ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@153 (line 188)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b25979b:   mov    %r11b,0x10(%r9,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@155 (line 188)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.39%     0x00007f456b2597a0:   mov    %r10d,%r11d
             0x00007f456b2597a3:   sar    $0x8,%r11d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@165 (line 189)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597a7:   mov    %r11b,0x10(%r9,%r13,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@167 (line 189)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597ac:   mov    %r10b,0x10(%r9,%r14,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@176 (line 190)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.35%     0x00007f456b2597b1:   mov    0x14(,%rdi,8),%r10d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@182 (line 192)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597b9:   mov    %r10d,%edi
             0x00007f456b2597bc:   sar    $0x18,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@194 (line 193)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597bf:   mov    %dil,0x10(%r9,%rdx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@196 (line 193)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
   0.36%     0x00007f456b2597c4:   mov    %r10d,%edi
             0x00007f456b2597c7:   sar    $0x10,%edi                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@206 (line 194)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597ca:   mov    %dil,0x10(%r9,%rcx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@208 (line 194)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597cf:   mov    %r10d,%edi
   0.33%     0x00007f456b2597d2:   sar    $0x8,%edi                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@219 (line 195)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597d5:   mov    %dil,0x10(%r9,%rbx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@221 (line 195)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597da:   mov    %r10b,0x10(%r9,%rbp,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::cipherBlock@231 (line 196)
                                                                       ; - com.sun.crypto.provider.BlowfishCrypt::encryptBlock@6 (line 139)
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@64 (line 167)
             0x00007f456b2597df:   mov    0xc(%rsi),%r11d              ;*getfield blockSize {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@77 (line 168)
   0.39%     0x00007f456b2597e3:   test   %r11d,%r11d
             0x00007f456b2597e6:   jl     0x00007f456b259a0e
             0x00007f456b2597ec:   mov    0x6c(%rsp),%ecx
   0.00%     0x00007f456b2597f0:   mov    %ecx,%edi
             0x00007f456b2597f2:   sub    %r11d,%edi
   0.38%     0x00007f456b2597f5:   cmp    %edi,%r8d
             0x00007f456b2597f8:   jg     0x00007f456b259a0e
             0x00007f456b2597fe:   mov    0x34(%rsp),%edi
   0.00%     0x00007f456b259802:   cmp    %edi,%r11d
             0x00007f456b259805:   ja     0x00007f456b259a0e
   0.00%     0x00007f456b25980b:   mov    0x14(%rsp),%r10d
   0.34%     0x00007f456b259810:   mov    %r9,%rdi                     ;* unwind (locked if synchronized)
                                                                       ; - java.lang.System::arraycopy@-3
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
             0x00007f456b259813:   shl    $0x3,%r10                    ;*getfield r {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@72 (line 168)
             0x00007f456b259817:   mov    %r11d,%edx                   ;   {no_reloc}
   0.00%     0x00007f456b25981a:   lea    0x10(%rdi,%r8,1),%rdi
   0.36%     0x00007f456b25981f:   lea    0x10(%r10),%rsi              ;* unwind (locked if synchronized)
                                                                       ; - java.lang.System::arraycopy@-3
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@80 (line 168)
             0x00007f456b259823:   mov    %r11d,0x34(%rsp)
   0.00%     0x00007f456b259828:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
             0x00007f456b25982d:   nop
             0x00007f456b25982e:   mov    0x458(%r15),%rax             ; ImmutableOopMap {[24]=Oop [32]=Oop [40]=Oop }
                                                                       ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.sun.crypto.provider.CipherBlockChaining::implEncrypt@83 (line 163)
   0.00%     0x00007f456b259835:   test   %eax,(%rax)                  ;   {poll}
   0.33%     0x00007f456b259837:   mov    0x54(%rsp),%r9d
             0x00007f456b25983c:   add    0x34(%rsp),%r9d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@96 (line 163)
             0x00007f456b259841:   mov    0x58(%rsp),%r8d
   0.33%     0x00007f456b259846:   add    0x34(%rsp),%r8d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@88 (line 163)
             0x00007f456b25984b:   mov    0x5c(%rsp),%eax
             0x00007f456b25984f:   mov    0x60(%rsp),%rbx
             0x00007f456b259854:   mov    0x70(%rsp),%r10d
   0.36%     0x00007f456b259859:   mov    0x20(%rsp),%rdx
             0x00007f456b25985e:   mov    0x28(%rsp),%rsi              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@5 (line 162)
   0.00%     0x00007f456b259863:   cmp    %r8d,%eax
             0x00007f456b259866:   jg     0x00007f456b259460
             0x00007f456b25986c:   jmp    0x00007f456b2599e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@8 (line 162)
             0x00007f456b259871:   lea    -0x8(%r13),%r10d
   0.00%     0x00007f456b259875:   jmp    0x00007f456b25999f
             0x00007f456b25987a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
   1.00%  ↗  0x00007f456b259880:   movsbl 0x10(%rax,%rdi,8),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
   0.01%  │  0x00007f456b259886:   mov    %r8d,%r11d
   1.02%  │  0x00007f456b259889:   add    %eax,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@33 (line 165)
          │  0x00007f456b25988c:   movsbl 0x10(%rdx,%r11,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@34 (line 165)
   1.04%  │  0x00007f456b259892:   xor    %r10d,%r11d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@42 (line 165)
          │  0x00007f456b259895:   mov    %r11b,0x10(%rax,%rbp,8)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@44 (line 165)
   1.03%  │  0x00007f456b25989a:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@45 (line 164)
          │  0x00007f456b25989c:   nopl   0x0(%rax)
   1.31%  │  0x00007f456b2598a0:   cmp    %eax,%r13d
          │  0x00007f456b2598a3:   jle    0x00007f456b25958a
          ╰  0x00007f456b2598a9:   jmp    0x00007f456b259880
             0x00007f456b2598ab:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f456b2598b6:   data16 data16 xchg %ax,%ax
             0x00007f456b2598ba:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@20 (line 164)
             0x00007f456b2598c0:   movsbl 0x10(%rax,%rdi,8),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.sun.crypto.provider.CipherBlockChaining::implEncrypt@41 (line 165)
             0x00007f456b2598c5:   mov    %r8d,%r14d
             0x00007f456b2598c8:   add    %eax,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.86%  <total for region 2>

....[Hottest Regions]...............................................................................
  67.51%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1080 
  14.86%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1111 
   3.80%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1111 
   3.24%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.15%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1111 
   1.82%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.46%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1111 
   1.35%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.16%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1111 
   0.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1109 
   0.34%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1080 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.11%  <...other 370 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.85%      jvmci, level 4  com.sun.crypto.provider.BlowfishCrypt::encryptBlock, version 2, compile id 1080 
  22.64%      jvmci, level 4  com.sun.crypto.provider.CipherBlockChaining::implEncrypt, version 6, compile id 1111 
   6.41%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.26%              kernel  [unknown] 
   0.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1109 
   0.11%                      <unknown> 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _int_malloc 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.21%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.87%      jvmci, level 4
   6.41%        runtime stub
   2.26%              kernel
   0.16%           libjvm.so
   0.14%        libc-2.31.so
   0.11%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:19:08

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
BlowfishCbcCryptoBenchmark.decrypt           16384         32  Blowfish/CBC/NoPadding  avgt    5  221.041 ± 1.314  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384         32  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384         64  Blowfish/CBC/NoPadding  avgt    5  220.668 ± 1.090  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384         64  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        128  Blowfish/CBC/NoPadding  avgt    5  221.267 ± 0.964  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        128  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        256  Blowfish/CBC/NoPadding  avgt    5  220.909 ± 0.581  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        256  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        448  Blowfish/CBC/NoPadding  avgt    5  220.610 ± 0.734  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        448  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384         32  Blowfish/CBC/NoPadding  avgt    5  222.728 ± 0.805  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384         32  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384         64  Blowfish/CBC/NoPadding  avgt    5  222.922 ± 0.385  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384         64  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        128  Blowfish/CBC/NoPadding  avgt    5  222.205 ± 1.421  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        128  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        256  Blowfish/CBC/NoPadding  avgt    5  223.558 ± 1.209  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        256  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        448  Blowfish/CBC/NoPadding  avgt    5  222.892 ± 2.547  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        448  Blowfish/CBC/NoPadding  avgt           NaN            ---
