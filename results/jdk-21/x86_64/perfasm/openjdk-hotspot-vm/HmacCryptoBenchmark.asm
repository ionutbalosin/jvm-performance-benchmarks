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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacMD5, length = 16384)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 34.404 us/op
# Warmup Iteration   2: 30.989 us/op
# Warmup Iteration   3: 30.986 us/op
# Warmup Iteration   4: 30.986 us/op
# Warmup Iteration   5: 30.986 us/op
Iteration   1: 30.985 us/op
Iteration   2: 30.978 us/op
Iteration   3: 30.986 us/op
Iteration   4: 30.992 us/op
Iteration   5: 30.988 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  30.986 ±(99.9%) 0.020 us/op [Average]
  (min, avg, max) = (30.978, 30.986, 30.992), stdev = 0.005
  CI (99.9%): [30.966, 31.006] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 166087 total address lines.
Perf output processed (skipped 57.020 seconds):
 Column 1: cycles (50550 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::md5_implCompress 

 <region is too big to display, has 1265 lines, but threshold is 1000>
....................................................................................................
  97.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.47%        runtime stub  StubRoutines::md5_implCompress 
   0.33%              kernel  [unknown] 
   0.26%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.12%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.07%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 723 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.02%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 723 
   1.16%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.47%        runtime stub  StubRoutines::md5_implCompress 
   1.38%              kernel  [unknown] 
   0.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.30%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.14%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 723 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.77%        runtime stub
   1.38%              kernel
   0.55%         c2, level 4
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA1, length = 16384)

# Run progress: 8.33% complete, ETA 00:20:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 76.569 us/op
# Warmup Iteration   2: 69.099 us/op
# Warmup Iteration   3: 69.081 us/op
# Warmup Iteration   4: 69.085 us/op
# Warmup Iteration   5: 69.090 us/op
Iteration   1: 69.078 us/op
Iteration   2: 69.047 us/op
Iteration   3: 69.046 us/op
Iteration   4: 69.092 us/op
Iteration   5: 69.085 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  69.070 ±(99.9%) 0.082 us/op [Average]
  (min, avg, max) = (69.046, 69.070, 69.092), stdev = 0.021
  CI (99.9%): [68.988, 69.151] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 159611 total address lines.
Perf output processed (skipped 56.725 seconds):
 Column 1: cycles (50497 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA::implCompress0, version 3, compile id 648 

                                # parm1:    rcx       = int
                                #           [sp+0x50]  (sp of caller)
                                0x00007eff80643540:   mov    0x8(%rsi),%r10d
                                0x00007eff80643544:   movabs $0x7eff07000000,%r11
                                0x00007eff8064354e:   add    %r11,%r10
                                0x00007eff80643551:   cmp    %r10,%rax
                                0x00007eff80643554:   jne    0x00007eff800c4080           ;   {runtime_call ic_miss_stub}
                                0x00007eff8064355a:   xchg   %ax,%ax
                                0x00007eff8064355c:   nopl   0x0(%rax)
                              [Verified Entry Point]
   0.14%                        0x00007eff80643560:   mov    %eax,-0x14000(%rsp)
   0.01%                        0x00007eff80643567:   push   %rbp
   0.14%                        0x00007eff80643568:   sub    $0x40,%rsp
                                0x00007eff8064356c:   cmpl   $0x1,0x20(%r15)
                                0x00007eff80643574:   jne    0x00007eff80643fd6           ;*synchronization entry
                                                                                          ; - sun.security.provider.SHA::implCompress0@-1 (line 151)
   0.16%                        0x00007eff8064357a:   mov    %rsi,%r9
                                0x00007eff8064357d:   mov    0x30(%rsi),%r10d             ;*getfield W {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - sun.security.provider.SHA::implCompress0@1 (line 151)
                                0x00007eff80643581:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007eff80643f9c
                                                                                          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - sun.security.provider.ByteArrayAccess::b2iBig64@10 (line 101)
                                                                                          ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%                        0x00007eff80643586:   mov    %rdx,%r11
   0.13%                        0x00007eff80643589:   mov    0xc(%rdx),%r8d               ; implicit exception: dispatches to 0x00007eff80643f74
   0.00%                        0x00007eff8064358d:   add    $0xfffffffd,%r8d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@4 (line 101)
                                                                                          ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                                          ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                                          ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                                          ; - sun.security.provider.SHA::implCompress0@21 (line 154)
                                0x00007eff80643591:   test   %r8d,%r8d
                                0x00007eff80643594:   jl     0x00007eff80643e3c
                                0x00007eff8064359a:   mov    %ecx,%edx
   0.14%                        0x00007eff8064359c:   nopl   0x0(%rax)
   0.00%                        0x00007eff806435a0:   cmp    %r8d,%ecx
          ╭                     0x00007eff806435a3:   jae    0x00007eff80643de7           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff806435a9:   movslq %ecx,%r13                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@22 (line 118)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff806435ac:   mov    0x10(%r11,%r13,1),%edi
   0.14%  │                     0x00007eff806435b1:   bswap  %edi                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806435b3:   cmp    $0xf,%ebx
          │                     0x00007eff806435b6:   jbe    0x00007eff80643e64
          │                     0x00007eff806435bc:   mov    %edi,0x10(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@10 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806435c1:   add    $0x3c,%edx
   0.14%  │                     0x00007eff806435c4:   cmp    %r8d,%edx
          │                     0x00007eff806435c7:   jae    0x00007eff80643e10
          │                     0x00007eff806435cd:   mov    %edi,(%rsp)
          │                     0x00007eff806435d0:   vmovd  %ebx,%xmm3
   0.00%  │                     0x00007eff806435d4:   vmovd  %r10d,%xmm2
   0.13%  │                     0x00007eff806435d9:   vmovq  %r11,%xmm1
          │                     0x00007eff806435de:   vmovq  %rsi,%xmm0
          │                     0x00007eff806435e3:   mov    0x4c(%r11,%r13,1),%r10d
   0.01%  │                     0x00007eff806435e8:   vmovd  %r10d,%xmm5
   0.13%  │                     0x00007eff806435ed:   mov    0x48(%r11,%r13,1),%r8d
   0.00%  │                     0x00007eff806435f2:   vmovd  %r8d,%xmm6
          │                     0x00007eff806435f7:   mov    0x44(%r11,%r13,1),%esi
   0.01%  │                     0x00007eff806435fc:   mov    0x40(%r11,%r13,1),%ecx
   0.13%  │                     0x00007eff80643601:   mov    0x3c(%r11,%r13,1),%edx
          │                     0x00007eff80643606:   mov    0x38(%r11,%r13,1),%edi
          │                     0x00007eff8064360b:   mov    0x34(%r11,%r13,1),%eax
          │                     0x00007eff80643610:   mov    0x30(%r11,%r13,1),%r10d
   0.15%  │                     0x00007eff80643615:   vmovd  %r10d,%xmm7
   0.00%  │                     0x00007eff8064361a:   mov    0x2c(%r11,%r13,1),%r11d
   0.01%  │                     0x00007eff8064361f:   vmovq  %xmm1,%r10
   0.01%  │                     0x00007eff80643624:   mov    0x28(%r10,%r13,1),%r9d
   0.14%  │                     0x00007eff80643629:   mov    0x24(%r10,%r13,1),%r8d
   0.00%  │                     0x00007eff8064362e:   mov    0x20(%r10,%r13,1),%ebx
          │                     0x00007eff80643633:   mov    0x1c(%r10,%r13,1),%ebp
   0.01%  │                     0x00007eff80643638:   mov    0x18(%r10,%r13,1),%r14d
   0.13%  │                     0x00007eff8064363d:   mov    0x14(%r10,%r13,1),%r13d
   0.00%  │                     0x00007eff80643642:   vmovd  %xmm5,%r10d
   0.00%  │                     0x00007eff80643647:   bswap  %r10d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff8064364a:   vmovd  %r10d,%xmm1
   0.12%  │                     0x00007eff8064364f:   bswap  %r13d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff80643652:   vmovd  %xmm2,%r10d                  ;   {no_reloc}
   0.00%  │                     0x00007eff80643657:   mov    %r13d,0x14(%r12,%r10,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@23 (line 102)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff8064365c:   bswap  %r14d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.15%  │                     0x00007eff8064365f:   mov    %r14d,0x18(%r12,%r10,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@37 (line 103)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff80643664:   bswap  %ebp                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff80643666:   mov    %ebp,0x1c(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@51 (line 104)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff8064366b:   bswap  %ebx                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%  │                     0x00007eff8064366d:   mov    %ebx,0x20(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@65 (line 105)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff80643672:   bswap  %r8d                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff80643675:   mov    %r8d,0x24(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@79 (line 106)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff8064367a:   bswap  %r9d                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.15%  │                     0x00007eff8064367d:   mov    %r9d,0x28(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@94 (line 107)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff80643682:   bswap  %r11d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff80643685:   mov    %r11d,0x2c(%r12,%r10,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@109 (line 108)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff8064368a:   vmovd  %xmm7,%r11d
   0.14%  │                     0x00007eff8064368f:   bswap  %r11d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff80643692:   mov    %r11d,%r10d
          │                     0x00007eff80643695:   vmovd  %xmm2,%r11d
   0.01%  │                     0x00007eff8064369a:   mov    %r10d,0x30(%r12,%r11,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@124 (line 109)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.15%  │                     0x00007eff8064369f:   bswap  %eax                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806436a1:   mov    %eax,0x34(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@139 (line 110)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff806436a6:   bswap  %edi                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806436a8:   mov    %edi,0x38(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@154 (line 111)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%  │                     0x00007eff806436ad:   bswap  %edx                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806436af:   mov    %edx,0x3c(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@169 (line 112)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806436b4:   bswap  %ecx                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff806436b6:   mov    %ecx,0x40(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@184 (line 113)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.15%  │                     0x00007eff806436bb:   bswap  %esi                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007eff806436bd:   mov    %esi,0x44(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@199 (line 114)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806436c2:   vmovd  %xmm6,%r9d
   0.00%  │                     0x00007eff806436c7:   bswap  %r9d                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.16%  │                     0x00007eff806436ca:   mov    %r9d,0x48(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@214 (line 115)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007eff806436cf:   vmovd  %xmm1,%r8d
          │                     0x00007eff806436d4:   mov    %r8d,0x4c(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@229 (line 116)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007eff806436d9:   vmovd  %xmm3,%r8d
   0.11%  │                     0x00007eff806436de:   xchg   %ax,%ax
   0.00%  │                     0x00007eff806436e0:   cmp    $0xd,%r8d
          │                     0x00007eff806436e4:   jbe    0x00007eff80643e8c
          │                     0x00007eff806436ea:   mov    %r8d,%r13d
   0.00%  │                     0x00007eff806436ed:   cmp    $0x4c,%r8d
          │                     0x00007eff806436f1:   jbe    0x00007eff80643e8c
   0.14%  │                     0x00007eff806436f7:   test   %r8d,%r8d
   0.01%  │                     0x00007eff806436fa:   nopw   0x0(%rax,%rax,1)
          │                     0x00007eff80643700:   jbe    0x00007eff80643e8c
   0.01%  │                     0x00007eff80643706:   cmp    $0x3f,%r8d
          │                     0x00007eff8064370a:   jbe    0x00007eff80643e8c
   0.13%  │                     0x00007eff80643710:   cmp    $0x10,%r8d
          │                     0x00007eff80643714:   jbe    0x00007eff80643e8c
   0.00%  │                     0x00007eff8064371a:   nopw   0x0(%rax,%rax,1)
          │                     0x00007eff80643720:   cmp    $0x4f,%r8d
          │                     0x00007eff80643724:   jbe    0x00007eff80643e8c
   0.02%  │                     0x00007eff8064372a:   xor    %r10d,%esi
   0.16%  │                     0x00007eff8064372d:   xor    %r14d,%esi
   0.01%  │                     0x00007eff80643730:   xor    (%rsp),%esi
          │                     0x00007eff80643733:   rorx   $0x1f,%esi,%r11d
   0.01%  │                     0x00007eff80643739:   vmovd  %xmm2,%esi
   0.13%  │                     0x00007eff8064373d:   mov    %r11d,0x50(%r12,%rsi,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   0.01%  │                     0x00007eff80643742:   mov    $0x11,%r8d
          │                     0x00007eff80643748:   lea    (%r12,%rsi,8),%rbx
   0.01%  │╭                    0x00007eff8064374c:   jmp    0x00007eff80643753
          ││                    0x00007eff8064374e:   xchg   %ax,%ax
   0.56%  ││↗                   0x00007eff80643750:   mov    %r10d,%r8d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                             ; - sun.security.provider.SHA::implCompress0@33 (line 158)
          │││                                                                             ;   {no_reloc}
   0.14%  │↘│                   0x00007eff80643753:   mov    -0x10(%rbx,%r8,4),%r11d
   1.50%  │ │                   0x00007eff80643758:   xor    0x4(%rbx,%r8,4),%r11d
   0.48%  │ │                   0x00007eff8064375d:   xor    -0x28(%rbx,%r8,4),%r11d
   0.68%  │ │                   0x00007eff80643762:   xor    -0x30(%rbx,%r8,4),%r11d
   0.58%  │ │                   0x00007eff80643767:   rorx   $0x1f,%r11d,%r11d
   1.37%  │ │                   0x00007eff8064376d:   mov    %r11d,0x10(%rbx,%r8,4)
   2.14%  │ │                   0x00007eff80643772:   mov    -0xc(%rbx,%r8,4),%r10d
   0.41%  │ │                   0x00007eff80643777:   xor    0x8(%rbx,%r8,4),%r10d
   0.61%  │ │                   0x00007eff8064377c:   xor    -0x24(%rbx,%r8,4),%r10d
   0.83%  │ │                   0x00007eff80643781:   xor    -0x2c(%rbx,%r8,4),%r10d
   1.26%  │ │                   0x00007eff80643786:   rorx   $0x1f,%r10d,%r10d
   0.60%  │ │                   0x00007eff8064378c:   mov    %r10d,0x14(%rbx,%r8,4)
   2.53%  │ │                   0x00007eff80643791:   mov    -0x8(%rbx,%r8,4),%r11d
   0.43%  │ │                   0x00007eff80643796:   xor    0xc(%rbx,%r8,4),%r11d
   1.10%  │ │                   0x00007eff8064379b:   xor    -0x20(%rbx,%r8,4),%r11d
   0.23%  │ │                   0x00007eff806437a0:   xor    -0x28(%rbx,%r8,4),%r11d
   1.55%  │ │                   0x00007eff806437a5:   rorx   $0x1f,%r11d,%r11d
   0.67%  │ │                   0x00007eff806437ab:   mov    %r11d,0x18(%rbx,%r8,4)
   2.88%  │ │                   0x00007eff806437b0:   mov    -0x4(%rbx,%r8,4),%r11d
   0.00%  │ │                   0x00007eff806437b5:   xor    0x10(%rbx,%r8,4),%r11d
   1.25%  │ │                   0x00007eff806437ba:   xor    -0x1c(%rbx,%r8,4),%r11d
   0.48%  │ │                   0x00007eff806437bf:   xor    -0x24(%rbx,%r8,4),%r11d
   1.48%  │ │                   0x00007eff806437c4:   rorx   $0x1f,%r11d,%r11d
   0.64%  │ │                   0x00007eff806437ca:   mov    %r11d,0x1c(%rbx,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                             ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   3.04%  │ │                   0x00007eff806437cf:   lea    0x4(%r8),%r10d
   0.02%  │ │                   0x00007eff806437d3:   cmp    $0x4d,%r10d
          │ ╰                   0x00007eff806437d7:   jl     0x00007eff80643750           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@30 (line 157)
   0.05%  │                     0x00007eff806437dd:   add    $0x4,%r8d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@33 (line 158)
          │  ↗                  0x00007eff806437e1:   mov    -0x10(%rbx,%r8,4),%r10d
   0.16%  │  │                  0x00007eff806437e6:   xor    0x4(%rbx,%r8,4),%r10d
   0.20%  │  │                  0x00007eff806437eb:   xor    -0x28(%rbx,%r8,4),%r10d
   0.11%  │  │                  0x00007eff806437f0:   xor    -0x30(%rbx,%r8,4),%r10d
   0.01%  │  │                  0x00007eff806437f5:   rorx   $0x1f,%r10d,%r10d
   0.22%  │  │                  0x00007eff806437fb:   mov    %r10d,0x10(%rbx,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   0.48%  │  │                  0x00007eff80643800:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                            ; - sun.security.provider.SHA::implCompress0@85 (line 157)
   0.03%  │  │                  0x00007eff80643803:   cmp    $0x50,%r8d
          │  ╰                  0x00007eff80643807:   jl     0x00007eff806437e1           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@30 (line 157)
          │                     0x00007eff80643809:   vmovq  %xmm0,%rax
          │                     0x00007eff8064380e:   mov    0x34(%rax),%r10d             ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@424 (line 211)
   0.12%  │                     0x00007eff80643812:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007eff80643f88
          │                     0x00007eff80643817:   cmp    $0x4,%r8d
          │                     0x00007eff8064381b:   nopl   0x0(%rax,%rax,1)
          │                     0x00007eff80643820:   jbe    0x00007eff80643ea4
   0.15%  │                     0x00007eff80643826:   mov    0x20(%r12,%r10,8),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@127 (line 166)
          │                     0x00007eff8064382b:   mov    0x1c(%r12,%r10,8),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@119 (line 165)
          │                     0x00007eff80643830:   mov    0x10(%r12,%r10,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@96 (line 162)
          │                     0x00007eff80643835:   mov    0x18(%r12,%r10,8),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@111 (line 164)
   0.16%  │                     0x00007eff8064383a:   mov    0x14(%r12,%r10,8),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@103 (line 163)
          │                     0x00007eff8064383f:   nop
          │                     0x00007eff80643840:   cmp    $0x13,%r13d
          │                     0x00007eff80643844:   jbe    0x00007eff80643ec0
          │                     0x00007eff8064384a:   andn   %r8d,%ebp,%edx
   0.15%  │                     0x00007eff8064384f:   mov    %ecx,%edi
          │                     0x00007eff80643851:   and    %ebp,%edi                    ;   {no_reloc}
          │                     0x00007eff80643853:   or     %edx,%edi
          │                     0x00007eff80643855:   rorx   $0x2,%ebp,%edx               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@187 (line 174)
   0.13%  │                     0x00007eff8064385b:   rorx   $0x1b,%r9d,%ebp
          │                     0x00007eff80643861:   add    %edi,%ebp
          │                     0x00007eff80643863:   add    %r11d,%ebp
          │                     0x00007eff80643866:   add    0x10(%r12,%rsi,8),%ebp
   0.13%  │                     0x00007eff8064386b:   add    $0x5a827999,%ebp             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@172 (line 170)
          │                     0x00007eff80643871:   mov    $0x1,%edi
          │                     0x00007eff80643876:   vmovd  %esi,%xmm2
          │                     0x00007eff8064387a:   vmovd  %r10d,%xmm3
   0.14%  │                     0x00007eff8064387f:   mov    %r8d,%r14d
          │                     0x00007eff80643882:   mov    %r9d,(%rsp)
          │                     0x00007eff80643886:   mov    %ecx,%r8d
          │   ╭                 0x00007eff80643889:   jmp    0x00007eff8064389b
          │   │                 0x00007eff8064388b:   nopl   0x0(%rax,%rax,1)
   0.37%  │   │↗                0x00007eff80643890:   mov    %edx,%r14d
          │   ││                0x00007eff80643893:   mov    %ecx,%edi
          │   ││                0x00007eff80643895:   mov    %r11d,%edx
   0.06%  │   ││                0x00007eff80643898:   mov    %r10d,%ebp                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                                          ; - sun.security.provider.SHA::implCompress0@140 (line 170)
   0.49%  │   ↘│                0x00007eff8064389b:   andn   %edx,%ebp,%esi
   0.00%  │    │                0x00007eff806438a0:   mov    %r9d,%r11d
          │    │                0x00007eff806438a3:   mov    %edx,%ecx
   0.04%  │    │                0x00007eff806438a5:   and    %edx,%r11d
   0.55%  │    │                0x00007eff806438a8:   andn   %r8d,%r9d,%r10d
          │    │                0x00007eff806438ad:   or     %r10d,%r11d
          │    │                0x00007eff806438b0:   rorx   $0x2,%ebp,%edx
   0.04%  │    │                0x00007eff806438b6:   rorx   $0x2,%r9d,%r10d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@187 (line 174)
   0.51%  │    │                0x00007eff806438bc:   mov    %r10d,%r9d
          │    │                0x00007eff806438bf:   and    %ebp,%r9d
          │    │                0x00007eff806438c2:   or     %esi,%r9d
   0.06%  │    │                0x00007eff806438c5:   rorx   $0x1b,%ebp,%esi
   0.62%  │    │                0x00007eff806438cb:   add    %r11d,%esi
          │    │                0x00007eff806438ce:   add    %r14d,%esi
   0.05%  │    │                0x00007eff806438d1:   add    0x10(%rbx,%rdi,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@169 (line 170)
   0.26%  │    │                0x00007eff806438d5:   mov    $0xa57d8666,%r11d
   0.36%  │    │                0x00007eff806438db:   sub    %esi,%r11d
   0.27%  │    │                0x00007eff806438de:   and    %r10d,%r11d
   0.49%  │    │                0x00007eff806438e1:   add    $0x5a827999,%esi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@172 (line 170)
   0.02%  │    │                0x00007eff806438e7:   mov    %esi,%ebp
   0.14%  │    │                0x00007eff806438e9:   and    %edx,%ebp
   0.20%  │    │                0x00007eff806438eb:   or     %r11d,%ebp
   0.54%  │    │                0x00007eff806438ee:   rorx   $0x1b,%esi,%r11d
   0.02%  │    │                0x00007eff806438f4:   add    %r9d,%r11d
   0.30%  │    │                0x00007eff806438f7:   add    %r8d,%r11d
   0.34%  │    │                0x00007eff806438fa:   add    0x14(%rbx,%rdi,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@169 (line 170)
   0.36%  │    │                0x00007eff806438ff:   mov    $0xa57d8666,%r9d
   0.01%  │    │                0x00007eff80643905:   sub    %r11d,%r9d
   0.48%  │    │                0x00007eff80643908:   and    %edx,%r9d
   0.46%  │    │                0x00007eff8064390b:   rorx   $0x2,%esi,%r8d               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@187 (line 174)
          │    │                0x00007eff80643911:   add    $0x5a827999,%r11d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@172 (line 170)
   0.02%  │    │                0x00007eff80643918:   mov    %r8d,%eax
   0.12%  │    │                0x00007eff8064391b:   and    %r11d,%eax
   0.68%  │    │                0x00007eff8064391e:   or     %r9d,%eax
   0.14%  │    │                0x00007eff80643921:   rorx   $0x1b,%r11d,%r9d
   0.02%  │    │                0x00007eff80643927:   add    %ebp,%r9d
   0.19%  │    │                0x00007eff8064392a:   add    %ecx,%r9d
   0.43%  │    │                0x00007eff8064392d:   add    0x18(%rbx,%rdi,4),%r9d
   0.35%  │    │                0x00007eff80643932:   rorx   $0x2,%r11d,%r11d             ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@187 (line 174)
   0.00%  │    │                0x00007eff80643938:   add    $0x5a827999,%r9d
   0.49%  │    │                0x00007eff8064393f:   rorx   $0x1b,%r9d,%ecx
   0.75%  │    │                0x00007eff80643945:   add    %eax,%ecx
   0.21%  │    │                0x00007eff80643947:   add    %r10d,%ecx
   0.46%  │    │                0x00007eff8064394a:   add    0x1c(%rbx,%rdi,4),%ecx
   0.56%  │    │                0x00007eff8064394e:   add    $0x5a827999,%ecx             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@172 (line 170)
          │    │                                                                          ;   {no_reloc}
   0.50%  │    │                0x00007eff80643954:   mov    %ecx,%r10d
          │    │                0x00007eff80643957:   lea    0x4(%rdi),%ecx
          │    │                0x00007eff8064395a:   nopw   0x0(%rax,%rax,1)
   0.05%  │    │                0x00007eff80643960:   cmp    $0x11,%ecx
          │    ╰                0x00007eff80643963:   jl     0x00007eff80643890           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@137 (line 169)
   0.13%  │                     0x00007eff80643969:   add    $0x4,%edi                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@140 (line 170)
   0.30%  │      ↗              0x00007eff8064396c:   andn   %r8d,%r9d,%ecx
          │      │              0x00007eff80643971:   mov    %r11d,%esi
          │      │              0x00007eff80643974:   and    %r9d,%esi
   0.15%  │      │              0x00007eff80643977:   or     %ecx,%esi
   0.46%  │      │              0x00007eff80643979:   rorx   $0x1b,%r10d,%eax
          │      │              0x00007eff8064397f:   add    %esi,%eax
          │      │              0x00007eff80643981:   add    %edx,%eax
   0.36%  │      │              0x00007eff80643983:   add    0x10(%rbx,%rdi,4),%eax
   0.32%  │      │              0x00007eff80643987:   rorx   $0x2,%r9d,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                        ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │      │                                                                        ; - sun.security.provider.SHA::implCompress0@187 (line 174)
          │      │              0x00007eff8064398d:   add    $0x5a827999,%eax             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                        ; - sun.security.provider.SHA::implCompress0@172 (line 170)
   0.41%  │      │              0x00007eff80643992:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                        ; - sun.security.provider.SHA::implCompress0@198 (line 169)
          │      │              0x00007eff80643994:   cmp    $0x14,%edi
          │     ╭│              0x00007eff80643997:   jge    0x00007eff806439aa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                                        ; - sun.security.provider.SHA::implCompress0@137 (line 169)
          │     ││              0x00007eff80643999:   mov    %r8d,%edx
          │     ││              0x00007eff8064399c:   mov    %r11d,%r8d
   0.27%  │     ││              0x00007eff8064399f:   mov    %r10d,%r9d
          │     ││              0x00007eff806439a2:   mov    %ebp,%r11d
          │     ││              0x00007eff806439a5:   mov    %eax,%r10d
          │     │╰              0x00007eff806439a8:   jmp    0x00007eff8064396c
          │     ↘               0x00007eff806439aa:   cmp    $0x14,%r13d
          │                     0x00007eff806439ae:   jbe    0x00007eff80643eec
          │                     0x00007eff806439b4:   cmp    $0x27,%r13d
          │                     0x00007eff806439b8:   jbe    0x00007eff80643eec
   0.14%  │                     0x00007eff806439be:   mov    %ebp,%edi
          │                     0x00007eff806439c0:   xor    %r10d,%edi
          │                     0x00007eff806439c3:   xor    %r11d,%edi
          │                     0x00007eff806439c6:   rorx   $0x1b,%eax,%edx
   0.13%  │                     0x00007eff806439cc:   add    %edi,%edx
          │                     0x00007eff806439ce:   add    %r8d,%edx
   0.16%  │                     0x00007eff806439d1:   vmovd  %xmm2,%r8d
          │                     0x00007eff806439d6:   add    0x60(%r12,%r8,8),%edx
   0.15%  │                     0x00007eff806439db:   rorx   $0x2,%r10d,%ecx              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@257 (line 185)
          │                     0x00007eff806439e1:   add    $0x6ed9eba1,%edx             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.12%  │                     0x00007eff806439e7:   mov    $0x15,%edi
          │                     0x00007eff806439ec:   mov    %ebp,%r9d
          │       ╭             0x00007eff806439ef:   jmp    0x00007eff806439fa
          │       │↗            0x00007eff806439f1:   mov    %eax,%r11d
   0.45%  │       ││            0x00007eff806439f4:   mov    %r8d,%edi
          │       ││            0x00007eff806439f7:   mov    %r10d,%eax                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                                      ; - sun.security.provider.SHA::implCompress0@215 (line 181)
          │       ↘│            0x00007eff806439fa:   mov    %eax,%r10d
   0.14%  │        │            0x00007eff806439fd:   mov    %eax,%r8d
   0.40%  │        │            0x00007eff80643a00:   xor    %ecx,%r10d
          │        │            0x00007eff80643a03:   xor    %r9d,%r10d
          │        │            0x00007eff80643a06:   rorx   $0x2,%edx,%eax
   0.23%  │        │            0x00007eff80643a0c:   rorx   $0x1b,%edx,%esi
   0.74%  │        │            0x00007eff80643a12:   add    %r10d,%esi
   0.02%  │        │            0x00007eff80643a15:   add    %r11d,%esi
   0.12%  │        │            0x00007eff80643a18:   add    0x10(%rbx,%rdi,4),%esi
   0.35%  │        │            0x00007eff80643a1c:   rorx   $0x2,%r8d,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@257 (line 185)
   0.22%  │        │            0x00007eff80643a22:   mov    %ebp,%r11d
          │        │            0x00007eff80643a25:   xor    %edx,%r11d
          │        │            0x00007eff80643a28:   xor    %ecx,%r11d
   0.40%  │        │            0x00007eff80643a2b:   add    $0x6ed9eba1,%esi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.31%  │        │            0x00007eff80643a31:   mov    %esi,%r8d
          │        │            0x00007eff80643a34:   xor    %eax,%r8d
   0.72%  │        │            0x00007eff80643a37:   xor    %ebp,%r8d
   0.46%  │        │            0x00007eff80643a3a:   rorx   $0x1b,%esi,%r14d
   0.15%  │        │            0x00007eff80643a40:   add    %r11d,%r14d
   0.12%  │        │            0x00007eff80643a43:   add    %r9d,%r14d
   0.53%  │        │            0x00007eff80643a46:   add    0x14(%rbx,%rdi,4),%r14d
   0.45%  │        │            0x00007eff80643a4b:   rorx   $0x2,%esi,%r9d               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@257 (line 185)
          │        │                                                                      ;   {no_reloc}
   0.01%  │        │            0x00007eff80643a51:   add    $0x6ed9eba1,%r14d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.56%  │        │            0x00007eff80643a58:   mov    %r9d,%r11d
          │        │            0x00007eff80643a5b:   xor    %r14d,%r11d
   0.98%  │        │            0x00007eff80643a5e:   xor    %eax,%r11d
   0.46%  │        │            0x00007eff80643a61:   rorx   $0x1b,%r14d,%r10d
   0.00%  │        │            0x00007eff80643a67:   add    %r8d,%r10d
   0.22%  │        │            0x00007eff80643a6a:   add    %ecx,%r10d
   0.60%  │        │            0x00007eff80643a6d:   add    0x18(%rbx,%rdi,4),%r10d
   0.51%  │        │            0x00007eff80643a72:   rorx   $0x2,%r14d,%ecx              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@257 (line 185)
   0.00%  │        │            0x00007eff80643a78:   add    $0x6ed9eba1,%r10d
   0.51%  │        │            0x00007eff80643a7f:   rorx   $0x1b,%r10d,%edx
   0.87%  │        │            0x00007eff80643a85:   add    %r11d,%edx
   0.26%  │        │            0x00007eff80643a88:   add    %ebp,%edx
   0.63%  │        │            0x00007eff80643a8a:   add    0x1c(%rbx,%rdi,4),%edx
   0.52%  │        │            0x00007eff80643a8e:   add    $0x6ed9eba1,%edx             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.54%  │        │            0x00007eff80643a94:   lea    0x4(%rdi),%r8d
          │        │            0x00007eff80643a98:   nopl   0x0(%rax,%rax,1)
          │        │            0x00007eff80643aa0:   cmp    $0x25,%r8d
          │        ╰            0x00007eff80643aa4:   jl     0x00007eff806439f1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@212 (line 180)
          │                     0x00007eff80643aaa:   add    $0x4,%edi                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@215 (line 181)
   0.44%  │          ↗          0x00007eff80643aad:   mov    %ecx,%esi
          │          │          0x00007eff80643aaf:   xor    %r10d,%esi
          │          │          0x00007eff80643ab2:   xor    %r9d,%esi
          │          │          0x00007eff80643ab5:   rorx   $0x1b,%edx,%r11d
   0.77%  │          │          0x00007eff80643abb:   add    %esi,%r11d
          │          │          0x00007eff80643abe:   add    %eax,%r11d
   0.13%  │          │          0x00007eff80643ac1:   add    0x10(%rbx,%rdi,4),%r11d
   0.42%  │          │          0x00007eff80643ac6:   rorx   $0x2,%r10d,%r8d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                                    ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │          │                                                                    ; - sun.security.provider.SHA::implCompress0@257 (line 185)
          │          │          0x00007eff80643acc:   add    $0x6ed9eba1,%r11d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                                    ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.45%  │          │          0x00007eff80643ad3:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                                    ; - sun.security.provider.SHA::implCompress0@268 (line 180)
          │          │          0x00007eff80643ad5:   cmp    $0x28,%edi
          │         ╭│          0x00007eff80643ad8:   jge    0x00007eff80643aeb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                                    ; - sun.security.provider.SHA::implCompress0@212 (line 180)
          │         ││          0x00007eff80643ada:   mov    %r9d,%eax
          │         ││          0x00007eff80643add:   mov    %ecx,%r9d
   0.24%  │         ││          0x00007eff80643ae0:   mov    %edx,%r10d
          │         ││          0x00007eff80643ae3:   mov    %r8d,%ecx
          │         ││          0x00007eff80643ae6:   mov    %r11d,%edx
          │         │╰          0x00007eff80643ae9:   jmp    0x00007eff80643aad
          │         ↘           0x00007eff80643aeb:   cmp    $0x28,%r13d
          │                     0x00007eff80643aef:   jbe    0x00007eff80643f18
          │                     0x00007eff80643af5:   cmp    $0x3b,%r13d
          │                     0x00007eff80643af9:   jbe    0x00007eff80643f18
   0.16%  │                     0x00007eff80643aff:   mov    %ecx,%edi
          │                     0x00007eff80643b01:   and    %edx,%edi
          │                     0x00007eff80643b03:   mov    %r8d,%esi
          │                     0x00007eff80643b06:   and    %edx,%esi
   0.15%  │                     0x00007eff80643b08:   mov    %r8d,%r10d
          │                     0x00007eff80643b0b:   and    %ecx,%r10d
          │                     0x00007eff80643b0e:   or     %edi,%esi
          │                     0x00007eff80643b10:   or     %r10d,%esi
   0.20%  │                     0x00007eff80643b13:   rorx   $0x1b,%r11d,%edi
          │                     0x00007eff80643b19:   add    %esi,%edi
          │                     0x00007eff80643b1b:   add    %r9d,%edi
          │                     0x00007eff80643b1e:   vmovd  %xmm2,%r10d
   0.22%  │                     0x00007eff80643b23:   add    0xb0(%r12,%r10,8),%edi
          │                     0x00007eff80643b2b:   rorx   $0x2,%edx,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@336 (line 196)
          │                     0x00007eff80643b31:   add    $0x8f1bbcdc,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.06%  │                     0x00007eff80643b37:   mov    $0x29,%r9d
   0.09%  │                     0x00007eff80643b3d:   vmovd  %r10d,%xmm1
          │                     0x00007eff80643b42:   mov    %r11d,%eax
          │           ╭         0x00007eff80643b45:   jmp    0x00007eff80643b55
          │           │         0x00007eff80643b47:   nopw   0x0(%rax,%rax,1)             ;   {no_reloc}
          │           │↗        0x00007eff80643b50:   mov    %edx,%ecx
          │           ││        0x00007eff80643b52:   mov    %r11d,%r9d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │           ││                                                                  ; - sun.security.provider.SHA::implCompress0@285 (line 192)
   0.54%  │           ↘│        0x00007eff80643b55:   mov    %edi,%r11d
   0.09%  │            │        0x00007eff80643b58:   mov    %edi,%r10d
          │            │        0x00007eff80643b5b:   and    %ebp,%r11d
   0.01%  │            │        0x00007eff80643b5e:   mov    %r8d,%esi
   0.44%  │            │        0x00007eff80643b61:   and    %eax,%esi
   0.09%  │            │        0x00007eff80643b63:   mov    %r8d,%edx
          │            │        0x00007eff80643b66:   and    %ebp,%edx
   0.01%  │            │        0x00007eff80643b68:   mov    %eax,%edi
   0.48%  │            │        0x00007eff80643b6a:   and    %ebp,%edi
   0.09%  │            │        0x00007eff80643b6c:   or     %esi,%edi
   0.00%  │            │        0x00007eff80643b6e:   or     %edx,%edi
   0.01%  │            │        0x00007eff80643b70:   rorx   $0x2,%r10d,%edx
   0.45%  │            │        0x00007eff80643b76:   rorx   $0x2,%eax,%esi               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.07%  │            │        0x00007eff80643b7c:   mov    %esi,%eax
          │            │        0x00007eff80643b7e:   and    %r10d,%eax
   0.02%  │            │        0x00007eff80643b81:   mov    %edx,%r14d
   0.49%  │            │        0x00007eff80643b84:   and    %esi,%r14d
   0.08%  │            │        0x00007eff80643b87:   or     %r11d,%eax
   0.00%  │            │        0x00007eff80643b8a:   mov    %esi,%r11d
   0.02%  │            │        0x00007eff80643b8d:   and    %ebp,%r11d
   0.46%  │            │        0x00007eff80643b90:   or     %r11d,%eax
   0.08%  │            │        0x00007eff80643b93:   rorx   $0x1b,%r10d,%r11d
   0.00%  │            │        0x00007eff80643b99:   add    %edi,%r11d
   0.01%  │            │        0x00007eff80643b9c:   add    %ecx,%r11d
   0.47%  │            │        0x00007eff80643b9f:   add    0x10(%rbx,%r9,4),%r11d
   0.12%  │            │        0x00007eff80643ba4:   add    $0x8f1bbcdc,%r11d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.27%  │            │        0x00007eff80643bab:   mov    %r11d,%edi
   0.01%  │            │        0x00007eff80643bae:   and    %esi,%edi
   0.83%  │            │        0x00007eff80643bb0:   mov    %r11d,%ecx
   0.10%  │            │        0x00007eff80643bb3:   and    %edx,%ecx
   0.09%  │            │        0x00007eff80643bb5:   or     %edi,%ecx
   0.36%  │            │        0x00007eff80643bb7:   or     %r14d,%ecx
   0.59%  │            │        0x00007eff80643bba:   rorx   $0x1b,%r11d,%edi
   0.03%  │            │        0x00007eff80643bc0:   add    %eax,%edi
   0.01%  │            │        0x00007eff80643bc2:   add    %r8d,%edi
   0.13%  │            │        0x00007eff80643bc5:   add    0x14(%rbx,%r9,4),%edi
   0.64%  │            │        0x00007eff80643bca:   rorx   $0x2,%r11d,%r8d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.04%  │            │        0x00007eff80643bd0:   mov    %r8d,%r10d
          │            │        0x00007eff80643bd3:   and    %edx,%r10d
   0.02%  │            │        0x00007eff80643bd6:   add    $0x8f1bbcdc,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.52%  │            │        0x00007eff80643bdc:   mov    %edi,%eax
   0.03%  │            │        0x00007eff80643bde:   and    %edx,%eax
   0.93%  │            │        0x00007eff80643be0:   mov    %r8d,%r14d
   0.01%  │            │        0x00007eff80643be3:   and    %edi,%r14d
   0.16%  │            │        0x00007eff80643be6:   or     %eax,%r14d
   0.27%  │            │        0x00007eff80643be9:   or     %r10d,%r14d
   0.72%  │            │        0x00007eff80643bec:   rorx   $0x1b,%edi,%r10d
   0.01%  │            │        0x00007eff80643bf2:   add    %ecx,%r10d
   0.02%  │            │        0x00007eff80643bf5:   add    %ebp,%r10d
   0.13%  │            │        0x00007eff80643bf8:   add    0x18(%rbx,%r9,4),%r10d
   0.54%  │            │        0x00007eff80643bfd:   rorx   $0x2,%edi,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.01%  │            │        0x00007eff80643c03:   add    $0x8f1bbcdc,%r10d
   0.47%  │            │        0x00007eff80643c0a:   mov    %r10d,%eax
          │            │        0x00007eff80643c0d:   rorx   $0x1b,%r10d,%edi
   0.96%  │            │        0x00007eff80643c13:   add    %r14d,%edi
   0.21%  │            │        0x00007eff80643c16:   add    %esi,%edi
   0.57%  │            │        0x00007eff80643c18:   add    0x1c(%rbx,%r9,4),%edi
   0.55%  │            │        0x00007eff80643c1d:   add    $0x8f1bbcdc,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.52%  │            │        0x00007eff80643c23:   lea    0x4(%r9),%r11d
          │            │        0x00007eff80643c27:   cmp    $0x39,%r11d
          │            ╰        0x00007eff80643c2b:   jl     0x00007eff80643b50           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@282 (line 191)
          │                     0x00007eff80643c31:   add    $0x4,%r9d                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@285 (line 192)
   0.17%  │              ↗      0x00007eff80643c35:   mov    %eax,%r10d
   0.18%  │              │      0x00007eff80643c38:   and    %r8d,%r10d
          │              │      0x00007eff80643c3b:   mov    %ebp,%ecx
   0.07%  │              │      0x00007eff80643c3d:   and    %eax,%ecx
   0.16%  │              │      0x00007eff80643c3f:   mov    %ebp,%r11d
   0.19%  │              │      0x00007eff80643c42:   and    %r8d,%r11d
          │              │      0x00007eff80643c45:   or     %r10d,%ecx
   0.08%  │              │      0x00007eff80643c48:   or     %r11d,%ecx
   0.21%  │              │      0x00007eff80643c4b:   rorx   $0x1b,%edi,%r10d             ;   {no_reloc}
   0.28%  │              │      0x00007eff80643c51:   add    %ecx,%r10d
          │              │      0x00007eff80643c54:   add    %edx,%r10d
   0.13%  │              │      0x00007eff80643c57:   add    0x10(%rbx,%r9,4),%r10d
   0.23%  │              │      0x00007eff80643c5c:   rorx   $0x2,%eax,%r11d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                                ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │              │                                                                ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.09%  │              │      0x00007eff80643c62:   add    $0x8f1bbcdc,%r10d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                                ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.25%  │              │      0x00007eff80643c69:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                                ; - sun.security.provider.SHA::implCompress0@347 (line 191)
   0.06%  │              │      0x00007eff80643c6c:   cmp    $0x3c,%r9d
          │             ╭│      0x00007eff80643c70:   jge    0x00007eff80643c82           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │             ││                                                                ; - sun.security.provider.SHA::implCompress0@282 (line 191)
          │             ││      0x00007eff80643c72:   mov    %r8d,%edx
   0.08%  │             ││      0x00007eff80643c75:   mov    %ebp,%r8d
   0.17%  │             ││      0x00007eff80643c78:   mov    %edi,%eax
   0.05%  │             ││      0x00007eff80643c7a:   mov    %r11d,%ebp
          │             ││      0x00007eff80643c7d:   mov    %r10d,%edi
   0.07%  │             │╰      0x00007eff80643c80:   jmp    0x00007eff80643c35
          │             ↘       0x00007eff80643c82:   cmp    $0x3c,%r13d
          │                     0x00007eff80643c86:   jbe    0x00007eff80643f48
   0.05%  │                     0x00007eff80643c8c:   mov    %r11d,%ecx
   0.08%  │                     0x00007eff80643c8f:   xor    %edi,%ecx
          │                     0x00007eff80643c91:   xor    %ebp,%ecx
          │                     0x00007eff80643c93:   rorx   $0x1b,%r10d,%r9d
   0.03%  │                     0x00007eff80643c99:   add    %ecx,%r9d
   0.11%  │                     0x00007eff80643c9c:   add    %r8d,%r9d
   0.10%  │                     0x00007eff80643c9f:   vmovd  %xmm1,%ecx
          │                     0x00007eff80643ca3:   add    0x100(%r12,%rcx,8),%r9d
   0.15%  │                     0x00007eff80643cab:   rorx   $0x2,%edi,%r8d               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@406 (line 207)
          │                     0x00007eff80643cb1:   add    $0xca62c1d6,%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.12%  │                     0x00007eff80643cb8:   mov    $0x3d,%ecx
          │               ╭     0x00007eff80643cbd:   jmp    0x00007eff80643cc8
          │               │     0x00007eff80643cbf:   nop
          │               │↗    0x00007eff80643cc0:   mov    %edx,%ebp
   0.41%  │               ││    0x00007eff80643cc2:   mov    %r10d,%ecx
          │               ││    0x00007eff80643cc5:   mov    %eax,%r10d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │               ││                                                              ; - sun.security.provider.SHA::implCompress0@364 (line 203)
          │               ↘│    0x00007eff80643cc8:   mov    %r10d,%eax
          │                │    0x00007eff80643ccb:   xor    %r8d,%eax
   0.64%  │                │    0x00007eff80643cce:   xor    %r11d,%eax
   0.00%  │                │    0x00007eff80643cd1:   rorx   $0x2,%r9d,%edx
   0.02%  │                │    0x00007eff80643cd7:   rorx   $0x1b,%r9d,%edi
   0.03%  │                │    0x00007eff80643cdd:   add    %eax,%edi
   0.57%  │                │    0x00007eff80643cdf:   add    %ebp,%edi
   0.34%  │                │    0x00007eff80643ce1:   add    0x10(%rbx,%rcx,4),%edi
   0.59%  │                │    0x00007eff80643ce5:   rorx   $0x2,%r10d,%esi              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@406 (line 207)
          │                │    0x00007eff80643ceb:   mov    %esi,%eax
          │                │    0x00007eff80643ced:   xor    %r9d,%eax
   0.00%  │                │    0x00007eff80643cf0:   xor    %r8d,%eax
   0.62%  │                │    0x00007eff80643cf3:   add    $0xca62c1d6,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.00%  │                │    0x00007eff80643cf9:   mov    %edi,%r9d
          │                │    0x00007eff80643cfc:   xor    %edx,%r9d
   1.03%  │                │    0x00007eff80643cff:   xor    %esi,%r9d
   0.47%  │                │    0x00007eff80643d02:   rorx   $0x1b,%edi,%r10d
   0.00%  │                │    0x00007eff80643d08:   add    %eax,%r10d
   0.13%  │                │    0x00007eff80643d0b:   add    %r11d,%r10d
   0.59%  │                │    0x00007eff80643d0e:   add    0x14(%rbx,%rcx,4),%r10d
   0.34%  │                │    0x00007eff80643d13:   rorx   $0x2,%edi,%r11d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@406 (line 207)
   0.00%  │                │    0x00007eff80643d19:   add    $0xca62c1d6,%r10d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.57%  │                │    0x00007eff80643d20:   mov    %r11d,%ebp
          │                │    0x00007eff80643d23:   xor    %r10d,%ebp
   1.03%  │                │    0x00007eff80643d26:   xor    %edx,%ebp
   0.43%  │                │    0x00007eff80643d28:   rorx   $0x1b,%r10d,%eax
   0.02%  │                │    0x00007eff80643d2e:   add    %r9d,%eax
   0.18%  │                │    0x00007eff80643d31:   add    %r8d,%eax
   0.55%  │                │    0x00007eff80643d34:   add    0x18(%rbx,%rcx,4),%eax
   0.47%  │                │    0x00007eff80643d38:   rorx   $0x2,%r10d,%r8d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@406 (line 207)
   0.00%  │                │    0x00007eff80643d3e:   add    $0xca62c1d6,%eax
   0.53%  │                │    0x00007eff80643d43:   rorx   $0x1b,%eax,%r9d
   0.91%  │                │    0x00007eff80643d49:   add    %ebp,%r9d
   0.20%  │                │    0x00007eff80643d4c:   add    %esi,%r9d                    ;   {no_reloc}
   0.56%  │                │    0x00007eff80643d4f:   add    0x1c(%rbx,%rcx,4),%r9d
   0.45%  │                │    0x00007eff80643d54:   add    $0xca62c1d6,%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.56%  │                │    0x00007eff80643d5b:   lea    0x4(%rcx),%r10d
          │                │    0x00007eff80643d5f:   nop
          │                │    0x00007eff80643d60:   cmp    $0x4d,%r10d
          │                ╰    0x00007eff80643d64:   jl     0x00007eff80643cc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@361 (line 202)
          │                     0x00007eff80643d6a:   add    $0x4,%ecx                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@364 (line 203)
   0.16%  │                  ↗  0x00007eff80643d6d:   mov    %r8d,%esi
   0.15%  │                  │  0x00007eff80643d70:   xor    %eax,%esi
   0.14%  │                  │  0x00007eff80643d72:   xor    %r11d,%esi
          │                  │  0x00007eff80643d75:   rorx   $0x2,%eax,%edi               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                  │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                  │                                                            ; - sun.security.provider.SHA::implCompress0@406 (line 207)
   0.28%  │                  │  0x00007eff80643d7b:   rorx   $0x1b,%r9d,%ebp
   0.31%  │                  │  0x00007eff80643d81:   add    %esi,%ebp
   0.12%  │                  │  0x00007eff80643d83:   add    %edx,%ebp
          │                  │  0x00007eff80643d85:   add    0x10(%rbx,%rcx,4),%ebp       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                  │                                                            ; - sun.security.provider.SHA::implCompress0@388 (line 203)
   0.32%  │                  │  0x00007eff80643d89:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                  │                                                            ; - sun.security.provider.SHA::implCompress0@417 (line 202)
   0.14%  │                  │  0x00007eff80643d8b:   cmp    $0x50,%ecx
          │                 ╭│  0x00007eff80643d8e:   jge    0x00007eff80643dad           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                 ││                                                            ; - sun.security.provider.SHA::implCompress0@361 (line 202)
          │                 ││  0x00007eff80643d90:   add    $0xca62c1d6,%ebp             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                 ││                                                            ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.00%  │                 ││  0x00007eff80643d96:   mov    %r11d,%edx
   0.16%  │                 ││  0x00007eff80643d99:   mov    %r8d,%r10d
   0.14%  │                 ││  0x00007eff80643d9c:   mov    %r9d,%r11d
          │                 ││  0x00007eff80643d9f:   mov    %edi,%r8d
          │                 ││  0x00007eff80643da2:   mov    %ebp,%r9d
   0.13%  │                 ││  0x00007eff80643da5:   mov    %r11d,%eax
   0.14%  │                 ││  0x00007eff80643da8:   mov    %r10d,%r11d
          │                 │╰  0x00007eff80643dab:   jmp    0x00007eff80643d6d
   0.13%  │                 ↘   0x00007eff80643dad:   add    (%rsp),%ebp
   0.01%  │                     0x00007eff80643db0:   add    $0xca62c1d6,%ebp
   0.20%  │                     0x00007eff80643db6:   vmovd  %xmm3,%r10d
          │                     0x00007eff80643dbb:   mov    %ebp,0x10(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@432 (line 211)
   0.23%  │                     0x00007eff80643dc0:   add    %r9d,0x14(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@443 (line 212)
   0.00%  │                     0x00007eff80643dc5:   add    %edi,0x18(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@454 (line 213)
   0.13%  │                     0x00007eff80643dca:   add    %r8d,0x1c(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@465 (line 214)
   0.17%  │                     0x00007eff80643dcf:   add    %r11d,0x20(%r12,%r10,8)
   0.14%  │                     0x00007eff80643dd4:   add    $0x40,%rsp
          │                     0x00007eff80643dd8:   pop    %rbp
          │                     0x00007eff80643dd9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                     0x00007eff80643de0:   ja     0x00007eff80643fc0
   0.13%  │                     0x00007eff80643de6:   ret    
          ↘                     0x00007eff80643de7:   mov    $0xffffffe4,%esi
                                0x00007eff80643dec:   mov    %r9,%rbp
                                0x00007eff80643def:   mov    %r10d,0x10(%rsp)
                                0x00007eff80643df4:   mov    %r11,0x18(%rsp)
                                0x00007eff80643df9:   mov    %ecx,0x14(%rsp)
                                0x00007eff80643dfd:   mov    %r8d,0x20(%rsp)
                                0x00007eff80643e02:   nop
                                0x00007eff80643e03:   call   0x00007eff800c9f00           ; ImmutableOopMap {rbp=Oop [16]=NarrowOop [24]=Oop }
                                                                                          ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
....................................................................................................
  97.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.10%         c2, level 4  sun.security.provider.SHA::implCompress0, version 3, compile id 648 
   0.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 701 
   0.32%              kernel  [unknown] 
   0.10%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 701 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 701 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 699 
   1.01%  <...other 283 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.10%         c2, level 4  sun.security.provider.SHA::implCompress0, version 3, compile id 648 
   1.31%              kernel  [unknown] 
   1.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 701 
   0.12%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.08%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 699 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 739 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.12%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%         c2, level 4
   1.31%              kernel
   0.12%        runtime stub
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA224, length = 16384)

# Run progress: 16.67% complete, ETA 00:18:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 63.447 us/op
# Warmup Iteration   2: 55.717 us/op
# Warmup Iteration   3: 55.679 us/op
# Warmup Iteration   4: 55.692 us/op
# Warmup Iteration   5: 55.686 us/op
Iteration   1: 55.660 us/op
Iteration   2: 55.661 us/op
Iteration   3: 55.680 us/op
Iteration   4: 55.677 us/op
Iteration   5: 55.657 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  55.667 ±(99.9%) 0.041 us/op [Average]
  (min, avg, max) = (55.657, 55.667, 55.680), stdev = 0.011
  CI (99.9%): [55.626, 55.707] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 160217 total address lines.
Perf output processed (skipped 56.650 seconds):
 Column 1: cycles (51019 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1112 lines, but threshold is 1000>
....................................................................................................
  94.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.19%        runtime stub  StubRoutines::sha256_implCompressMB 
   2.00%        runtime stub  StubRoutines::sha256_implCompress 
   0.99%              kernel  [unknown] 
   0.23%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.19%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.15%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%        runtime stub  StubRoutines::sha256_implCompress 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%        runtime stub  StubRoutines::sha256_implCompress 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 696 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 696 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        runtime stub  StubRoutines::sha256_implCompress 
   0.03%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 693 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 693 
   1.59%  <...other 343 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.42%        runtime stub  StubRoutines::sha256_implCompressMB 
   2.16%              kernel  [unknown] 
   2.16%        runtime stub  StubRoutines::sha256_implCompress 
   0.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 696 
   0.19%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.16%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 693 
   0.04%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.20%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.80%        runtime stub
   2.16%              kernel
   0.64%         c2, level 4
   0.17%           libjvm.so
   0.11%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA256, length = 16384)

# Run progress: 25.00% complete, ETA 00:16:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 63.523 us/op
# Warmup Iteration   2: 55.730 us/op
# Warmup Iteration   3: 55.738 us/op
# Warmup Iteration   4: 55.685 us/op
# Warmup Iteration   5: 55.697 us/op
Iteration   1: 55.693 us/op
Iteration   2: 55.692 us/op
Iteration   3: 55.689 us/op
Iteration   4: 55.690 us/op
Iteration   5: 55.672 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  55.687 ±(99.9%) 0.034 us/op [Average]
  (min, avg, max) = (55.672, 55.687, 55.693), stdev = 0.009
  CI (99.9%): [55.653, 55.721] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 164448 total address lines.
Perf output processed (skipped 56.961 seconds):
 Column 1: cycles (50606 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1099 lines, but threshold is 1000>
....................................................................................................
  94.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.28%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.79%        runtime stub  StubRoutines::sha256_implCompress 
   0.53%        runtime stub  StubRoutines::sha256_implCompress 
   0.42%              kernel  [unknown] 
   0.22%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.18%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.13%        runtime stub  StubRoutines::sha256_implCompress 
   0.09%              kernel  [unknown] 
   0.09%        runtime stub  StubRoutines::sha256_implCompress 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 719 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 722 
   0.04%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 719 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 722 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 722 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   1.76%  <...other 395 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.50%        runtime stub  StubRoutines::sha256_implCompressMB 
   2.54%        runtime stub  StubRoutines::sha256_implCompress 
   1.70%              kernel  [unknown] 
   0.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 722 
   0.20%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 719 
   0.18%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%         c2, level 4  sun.security.provider.SHA2::implCompress, version 2, compile id 670 
   0.02%                      <unknown> 
   0.02%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 760 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.17%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.25%        runtime stub
   1.70%              kernel
   0.75%         c2, level 4
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA384, length = 16384)

# Run progress: 33.33% complete, ETA 00:14:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 46.806 us/op
# Warmup Iteration   2: 39.417 us/op
# Warmup Iteration   3: 39.351 us/op
# Warmup Iteration   4: 39.387 us/op
# Warmup Iteration   5: 39.364 us/op
Iteration   1: 39.356 us/op
Iteration   2: 39.364 us/op
Iteration   3: 39.376 us/op
Iteration   4: 39.374 us/op
Iteration   5: 39.354 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.365 ±(99.9%) 0.038 us/op [Average]
  (min, avg, max) = (39.354, 39.365, 39.376), stdev = 0.010
  CI (99.9%): [39.327, 39.403] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 166301 total address lines.
Perf output processed (skipped 56.625 seconds):
 Column 1: cycles (50457 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                                                                                                                      0x00007fc4400ef84f:   mov    0x8(%rsi),%rbx
                                                                                                                      0x00007fc4400ef853:   mov    0x10(%rsi),%rcx
                                                                                                                      0x00007fc4400ef857:   mov    0x18(%rsi),%r8
                                                                                                                      0x00007fc4400ef85b:   mov    0x20(%rsi),%rdx
                                                                                                                      0x00007fc4400ef85f:   mov    0x28(%rsi),%r9
                                                                                                                      0x00007fc4400ef863:   mov    0x38(%rsi),%r11
                                                                                                                      0x00007fc4400ef867:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007fc4400ee980
                                                                                                                      0x00007fc4400ef86f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007fc4400ee9a0
                                                                                                                      0x00007fc4400ef877:   mov    0x30(%rsi),%r10
            ↗                                                                                                         0x00007fc4400ef87b:   movabs $0x7fc458154d40,%rbp
   0.02%    │                                                                                                         0x00007fc4400ef885:   vmovdqu (%rdi),%ymm4
   0.26%    │                                                                                                         0x00007fc4400ef889:   vpshufb %ymm9,%ymm4,%ymm4
   0.37%    │                                                                                                         0x00007fc4400ef88e:   vmovdqu 0x20(%rdi),%ymm5
   0.00%    │                                                                                                         0x00007fc4400ef893:   vpshufb %ymm9,%ymm5,%ymm5
   0.01%    │                                                                                                         0x00007fc4400ef898:   vmovdqu 0x40(%rdi),%ymm6
   0.02%    │                                                                                                         0x00007fc4400ef89d:   vpshufb %ymm9,%ymm6,%ymm6
   0.34%    │                                                                                                         0x00007fc4400ef8a2:   vmovdqu 0x60(%rdi),%ymm7
            │                                                                                                         0x00007fc4400ef8a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.00%    │                                                                                                         0x00007fc4400ef8ac:   mov    %rdi,0x28(%rsp)
            │                                                                                                         0x00007fc4400ef8b1:   movq   $0x4,0x20(%rsp)
   0.12%    │                                                                                                         0x00007fc4400ef8ba:   nopw   0x0(%rax,%rax,1)
   0.06%  ↗ │                                                                                                         0x00007fc4400ef8c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.15%  │ │                                                                                                         0x00007fc4400ef8c5:   vmovdqu %ymm0,(%rsp)
   0.13%  │ │                                                                                                         0x00007fc4400ef8ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.31%  │ │                                                                                                         0x00007fc4400ef8d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.29%  │ │                                                                                                         0x00007fc4400ef8d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.68%  │ │                                                                                                         0x00007fc4400ef8da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.12%  │ │                                                                                                         0x00007fc4400ef8e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.08%  │ │                                                                                                         0x00007fc4400ef8e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%  │ │                                                                                                         0x00007fc4400ef8eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.24%  │ │                                                                                                         0x00007fc4400ef8f0:   vpor   %ymm2,%ymm3,%ymm3
   0.17%  │ │                                                                                                         0x00007fc4400ef8f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.06%  │ │                                                                                                         0x00007fc4400ef8f9:   mov    %rax,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400ef8fc:   rorx   $0x29,%rdx,%r13
   0.22%  │ │                                                                                                         0x00007fc4400ef902:   rorx   $0x12,%rdx,%r14
   0.13%  │ │                                                                                                         0x00007fc4400ef908:   add    (%rsp),%r11
   0.10%  │ │                                                                                                         0x00007fc4400ef90c:   or     %rcx,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400ef90f:   mov    %r9,%r15
   0.23%  │ │                                                                                                         0x00007fc4400ef912:   xor    %r10,%r15
   0.13%  │ │                                                                                                         0x00007fc4400ef915:   rorx   $0x22,%rax,%r12
   0.06%  │ │                                                                                                         0x00007fc4400ef91b:   xor    %r14,%r13
   0.05%  │ │                                                                                                         0x00007fc4400ef91e:   rorx   $0xe,%rdx,%r14
   0.23%  │ │                                                                                                         0x00007fc4400ef924:   and    %rdx,%r15
   0.13%  │ │                                                                                                         0x00007fc4400ef927:   add    %r11,%r8
   0.06%  │ │                                                                                                         0x00007fc4400ef92a:   and    %rbx,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400ef92d:   xor    %r14,%r13
   0.24%  │ │                                                                                                         0x00007fc4400ef930:   rorx   $0x27,%rax,%r14
   0.14%  │ │                                                                                                         0x00007fc4400ef936:   xor    %r12,%r14
   0.07%  │ │                                                                                                         0x00007fc4400ef939:   rorx   $0x1c,%rax,%r12
   0.05%  │ │                                                                                                         0x00007fc4400ef93f:   xor    %r10,%r15
   0.23%  │ │                                                                                                         0x00007fc4400ef942:   xor    %r12,%r14
   0.14%  │ │                                                                                                         0x00007fc4400ef945:   mov    %rax,%r12
   0.06%  │ │                                                                                                         0x00007fc4400ef948:   and    %rcx,%r12
   0.05%  │ │                                                                                                         0x00007fc4400ef94b:   add    %r13,%r15
   0.21%  │ │                                                                                                         0x00007fc4400ef94e:   or     %r12,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400ef951:   add    %r14,%r11
   0.08%  │ │                                                                                                         0x00007fc4400ef954:   add    %r15,%r8
   0.05%  │ │                                                                                                         0x00007fc4400ef957:   add    %r15,%r11
   0.24%  │ │                                                                                                         0x00007fc4400ef95a:   add    %rdi,%r11
   0.13%  │ │                                                                                                         0x00007fc4400ef95d:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%  │ │                                                                                                         0x00007fc4400ef962:   vpsllq $0x38,%ymm1,%ymm1
   0.05%  │ │                                                                                                         0x00007fc4400ef967:   vpor   %ymm2,%ymm1,%ymm1
   0.24%  │ │                                                                                                         0x00007fc4400ef96b:   vpxor  %ymm8,%ymm3,%ymm3
   0.14%  │ │                                                                                                         0x00007fc4400ef970:   vpxor  %ymm1,%ymm3,%ymm1
   0.08%  │ │                                                                                                         0x00007fc4400ef974:   vpaddq %ymm1,%ymm0,%ymm0
   0.07%  │ │                                                                                                         0x00007fc4400ef978:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.26%  │ │                                                                                                         0x00007fc4400ef97e:   vpand  %ymm10,%ymm0,%ymm0
   0.13%  │ │                                                                                                         0x00007fc4400ef983:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.07%  │ │                                                                                                         0x00007fc4400ef989:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%  │ │                                                                                                         0x00007fc4400ef98e:   mov    %r11,%rdi
   0.25%  │ │                                                                                                         0x00007fc4400ef991:   rorx   $0x29,%r8,%r13
   0.14%  │ │                                                                                                         0x00007fc4400ef997:   rorx   $0x12,%r8,%r14
   0.08%  │ │                                                                                                         0x00007fc4400ef99d:   add    0x8(%rsp),%r10
   0.05%  │ │                                                                                                         0x00007fc4400ef9a2:   or     %rbx,%rdi
   0.23%  │ │                                                                                                         0x00007fc4400ef9a5:   mov    %rdx,%r15
   0.14%  │ │                                                                                                         0x00007fc4400ef9a8:   xor    %r9,%r15
   0.05%  │ │                                                                                                         0x00007fc4400ef9ab:   rorx   $0x22,%r11,%r12
   0.03%  │ │                                                                                                         0x00007fc4400ef9b1:   xor    %r14,%r13
   0.21%  │ │                                                                                                         0x00007fc4400ef9b4:   rorx   $0xe,%r8,%r14
   0.16%  │ │                                                                                                         0x00007fc4400ef9ba:   and    %r8,%r15
   0.07%  │ │                                                                                                         0x00007fc4400ef9bd:   add    %r10,%rcx
   0.05%  │ │                                                                                                         0x00007fc4400ef9c0:   and    %rax,%rdi
   0.25%  │ │                                                                                                         0x00007fc4400ef9c3:   xor    %r14,%r13
   0.16%  │ │                                                                                                         0x00007fc4400ef9c6:   rorx   $0x27,%r11,%r14
   0.06%  │ │                                                                                                         0x00007fc4400ef9cc:   xor    %r12,%r14
   0.05%  │ │                                                                                                         0x00007fc4400ef9cf:   rorx   $0x1c,%r11,%r12
   0.22%  │ │                                                                                                         0x00007fc4400ef9d5:   xor    %r9,%r15
   0.13%  │ │                                                                                                         0x00007fc4400ef9d8:   xor    %r12,%r14
   0.06%  │ │                                                                                                         0x00007fc4400ef9db:   mov    %r11,%r12
   0.05%  │ │                                                                                                         0x00007fc4400ef9de:   and    %rbx,%r12
   0.19%  │ │                                                                                                         0x00007fc4400ef9e1:   add    %r13,%r15
   0.14%  │ │                                                                                                         0x00007fc4400ef9e4:   or     %r12,%rdi
   0.07%  │ │                                                                                                         0x00007fc4400ef9e7:   add    %r14,%r10
   0.07%  │ │                                                                                                         0x00007fc4400ef9ea:   add    %r15,%rcx
   0.24%  │ │                                                                                                         0x00007fc4400ef9ed:   add    %r15,%r10
   0.15%  │ │                                                                                                         0x00007fc4400ef9f0:   add    %rdi,%r10
   0.06%  │ │                                                                                                         0x00007fc4400ef9f3:   vpsrlq $0x13,%ymm2,%ymm3
   0.04%  │ │                                                                                                         0x00007fc4400ef9f8:   vpsllq $0x2d,%ymm2,%ymm1
   0.23%  │ │                                                                                                         0x00007fc4400ef9fd:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │                                                                                                         0x00007fc4400efa01:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │                                                                                                         0x00007fc4400efa05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.04%  │ │                                                                                                         0x00007fc4400efa0a:   vpsllq $0x3,%ymm2,%ymm1
   0.25%  │ │                                                                                                         0x00007fc4400efa0f:   vpor   %ymm1,%ymm3,%ymm3
   0.17%  │ │                                                                                                         0x00007fc4400efa13:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%  │ │                                                                                                         0x00007fc4400efa17:   vpaddq %ymm8,%ymm4,%ymm4
   0.04%  │ │                                                                                                         0x00007fc4400efa1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.24%  │ │                                                                                                         0x00007fc4400efa21:   mov    %r10,%rdi
   0.16%  │ │                                                                                                         0x00007fc4400efa24:   rorx   $0x29,%rcx,%r13
   0.05%  │ │                                                                                                         0x00007fc4400efa2a:   rorx   $0x12,%rcx,%r14
   0.05%  │ │                                                                                                         0x00007fc4400efa30:   add    0x10(%rsp),%r9
   0.22%  │ │                                                                                                         0x00007fc4400efa35:   or     %rax,%rdi
   0.16%  │ │                                                                                                         0x00007fc4400efa38:   mov    %r8,%r15
   0.08%  │ │                                                                                                         0x00007fc4400efa3b:   xor    %rdx,%r15
   0.08%  │ │                                                                                                         0x00007fc4400efa3e:   rorx   $0x22,%r10,%r12
   0.22%  │ │                                                                                                         0x00007fc4400efa44:   xor    %r14,%r13
   0.14%  │ │                                                                                                         0x00007fc4400efa47:   rorx   $0xe,%rcx,%r14
   0.07%  │ │                                                                                                         0x00007fc4400efa4d:   and    %rcx,%r15
   0.05%  │ │                                                                                                         0x00007fc4400efa50:   add    %r9,%rbx
   0.24%  │ │                                                                                                         0x00007fc4400efa53:   and    %r11,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400efa56:   xor    %r14,%r13
   0.05%  │ │                                                                                                         0x00007fc4400efa59:   rorx   $0x27,%r10,%r14
   0.06%  │ │                                                                                                         0x00007fc4400efa5f:   xor    %r12,%r14
   0.22%  │ │                                                                                                         0x00007fc4400efa62:   rorx   $0x1c,%r10,%r12
   0.15%  │ │                                                                                                         0x00007fc4400efa68:   xor    %rdx,%r15
   0.05%  │ │                                                                                                         0x00007fc4400efa6b:   xor    %r12,%r14
   0.06%  │ │                                                                                                         0x00007fc4400efa6e:   mov    %r10,%r12
   0.20%  │ │                                                                                                         0x00007fc4400efa71:   and    %rax,%r12
   0.14%  │ │                                                                                                         0x00007fc4400efa74:   add    %r13,%r15
   0.07%  │ │                                                                                                         0x00007fc4400efa77:   or     %r12,%rdi
   0.06%  │ │                                                                                                         0x00007fc4400efa7a:   add    %r14,%r9
   0.21%  │ │                                                                                                         0x00007fc4400efa7d:   add    %r15,%rbx
   0.15%  │ │                                                                                                         0x00007fc4400efa80:   add    %r15,%r9
   0.04%  │ │                                                                                                         0x00007fc4400efa83:   add    %rdi,%r9
   0.03%  │ │                                                                                                         0x00007fc4400efa86:   vpsrlq $0x13,%ymm4,%ymm3
   0.21%  │ │                                                                                                         0x00007fc4400efa8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.15%  │ │                                                                                                         0x00007fc4400efa90:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │                                                                                                         0x00007fc4400efa94:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │                                                                                                         0x00007fc4400efa98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.24%  │ │                                                                                                         0x00007fc4400efa9d:   vpsllq $0x3,%ymm4,%ymm1
   0.18%  │ │                                                                                                         0x00007fc4400efaa2:   vpor   %ymm1,%ymm3,%ymm3
   0.09%  │ │                                                                                                         0x00007fc4400efaa6:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%  │ │                                                                                                         0x00007fc4400efaaa:   vpaddq %ymm8,%ymm0,%ymm2
   0.23%  │ │                                                                                                         0x00007fc4400efaaf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.21%  │ │                                                                                                         0x00007fc4400efab5:   mov    %r9,%rdi
   0.07%  │ │                                                                                                         0x00007fc4400efab8:   rorx   $0x29,%rbx,%r13
   0.04%  │ │                                                                                                         0x00007fc4400efabe:   rorx   $0x12,%rbx,%r14
   0.19%  │ │                                                                                                         0x00007fc4400efac4:   add    0x18(%rsp),%rdx
   0.20%  │ │                                                                                                         0x00007fc4400efac9:   or     %r11,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400efacc:   mov    %rcx,%r15
   0.04%  │ │                                                                                                         0x00007fc4400efacf:   xor    %r8,%r15
   0.21%  │ │                                                                                                         0x00007fc4400efad2:   rorx   $0x22,%r9,%r12
   0.17%  │ │                                                                                                         0x00007fc4400efad8:   xor    %r14,%r13
   0.06%  │ │                                                                                                         0x00007fc4400efadb:   rorx   $0xe,%rbx,%r14
   0.06%  │ │                                                                                                         0x00007fc4400efae1:   and    %rbx,%r15
   0.22%  │ │                                                                                                         0x00007fc4400efae4:   add    %rdx,%rax
   0.17%  │ │                                                                                                         0x00007fc4400efae7:   and    %r10,%rdi
   0.07%  │ │                                                                                                         0x00007fc4400efaea:   xor    %r14,%r13
   0.05%  │ │                                                                                                         0x00007fc4400efaed:   rorx   $0x27,%r9,%r14
   0.21%  │ │                                                                                                         0x00007fc4400efaf3:   xor    %r12,%r14
   0.17%  │ │                                                                                                         0x00007fc4400efaf6:   rorx   $0x1c,%r9,%r12
   0.05%  │ │                                                                                                         0x00007fc4400efafc:   xor    %r8,%r15
   0.04%  │ │                                                                                                         0x00007fc4400efaff:   xor    %r12,%r14
   0.22%  │ │                                                                                                         0x00007fc4400efb02:   mov    %r9,%r12
   0.20%  │ │                                                                                                         0x00007fc4400efb05:   and    %r11,%r12
   0.06%  │ │                                                                                                         0x00007fc4400efb08:   add    %r13,%r15
   0.03%  │ │                                                                                                         0x00007fc4400efb0b:   or     %r12,%rdi
   0.19%  │ │                                                                                                         0x00007fc4400efb0e:   add    %r14,%rdx
   0.19%  │ │                                                                                                         0x00007fc4400efb11:   add    %r15,%rax
   0.07%  │ │                                                                                                         0x00007fc4400efb14:   add    %r15,%rdx
   0.03%  │ │                                                                                                         0x00007fc4400efb17:   add    %rdi,%rdx
   0.18%  │ │                                                                                                         0x00007fc4400efb1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.20%  │ │                                                                                                         0x00007fc4400efb1f:   vmovdqu %ymm0,(%rsp)
   0.05%  │ │                                                                                                         0x00007fc4400efb24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%  │ │                                                                                                         0x00007fc4400efb2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.25%  │ │                                                                                                         0x00007fc4400efb30:   vpaddq %ymm5,%ymm0,%ymm0
   0.28%  │ │                                                                                                         0x00007fc4400efb34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.06%  │ │                                                                                                         0x00007fc4400efb3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.03%  │ │                                                                                                         0x00007fc4400efb40:   vpsrlq $0x1,%ymm1,%ymm2
   0.29%  │ │                                                                                                         0x00007fc4400efb45:   vpsllq $0x3f,%ymm1,%ymm3
   0.19%  │ │                                                                                                         0x00007fc4400efb4a:   vpor   %ymm2,%ymm3,%ymm3
   0.08%  │ │                                                                                                         0x00007fc4400efb4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.03%  │ │                                                                                                         0x00007fc4400efb53:   mov    %rdx,%rdi
   0.18%  │ │                                                                                                         0x00007fc4400efb56:   rorx   $0x29,%rax,%r13
   0.19%  │ │                                                                                                         0x00007fc4400efb5c:   rorx   $0x12,%rax,%r14
   0.08%  │ │                                                                                                         0x00007fc4400efb62:   add    (%rsp),%r8
   0.04%  │ │                                                                                                         0x00007fc4400efb66:   or     %r10,%rdi
   0.19%  │ │                                                                                                         0x00007fc4400efb69:   mov    %rbx,%r15
   0.19%  │ │                                                                                                         0x00007fc4400efb6c:   xor    %rcx,%r15
   0.10%  │ │                                                                                                         0x00007fc4400efb6f:   rorx   $0x22,%rdx,%r12
   0.03%  │ │                                                                                                         0x00007fc4400efb75:   xor    %r14,%r13
   0.20%  │ │                                                                                                         0x00007fc4400efb78:   rorx   $0xe,%rax,%r14
   0.16%  │ │                                                                                                         0x00007fc4400efb7e:   and    %rax,%r15
   0.07%  │ │                                                                                                         0x00007fc4400efb81:   add    %r8,%r11
   0.04%  │ │                                                                                                         0x00007fc4400efb84:   and    %r9,%rdi
   0.22%  │ │                                                                                                         0x00007fc4400efb87:   xor    %r14,%r13
   0.16%  │ │                                                                                                         0x00007fc4400efb8a:   rorx   $0x27,%rdx,%r14
   0.06%  │ │                                                                                                         0x00007fc4400efb90:   xor    %r12,%r14
   0.04%  │ │                                                                                                         0x00007fc4400efb93:   rorx   $0x1c,%rdx,%r12
   0.20%  │ │                                                                                                         0x00007fc4400efb99:   xor    %rcx,%r15
   0.17%  │ │                                                                                                         0x00007fc4400efb9c:   xor    %r12,%r14
   0.09%  │ │                                                                                                         0x00007fc4400efb9f:   mov    %rdx,%r12
   0.04%  │ │                                                                                                         0x00007fc4400efba2:   and    %r10,%r12
   0.22%  │ │                                                                                                         0x00007fc4400efba5:   add    %r13,%r15
   0.17%  │ │                                                                                                         0x00007fc4400efba8:   or     %r12,%rdi
   0.09%  │ │                                                                                                         0x00007fc4400efbab:   add    %r14,%r8
   0.04%  │ │                                                                                                         0x00007fc4400efbae:   add    %r15,%r11
   0.19%  │ │                                                                                                         0x00007fc4400efbb1:   add    %r15,%r8
   0.13%  │ │                                                                                                         0x00007fc4400efbb4:   add    %rdi,%r8
   0.08%  │ │                                                                                                         0x00007fc4400efbb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.04%  │ │                                                                                                         0x00007fc4400efbbc:   vpsllq $0x38,%ymm1,%ymm1
   0.18%  │ │                                                                                                         0x00007fc4400efbc1:   vpor   %ymm2,%ymm1,%ymm1
   0.19%  │ │                                                                                                         0x00007fc4400efbc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.08%  │ │                                                                                                         0x00007fc4400efbca:   vpxor  %ymm1,%ymm3,%ymm1
   0.06%  │ │                                                                                                         0x00007fc4400efbce:   vpaddq %ymm1,%ymm0,%ymm0
   0.19%  │ │                                                                                                         0x00007fc4400efbd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.21%  │ │                                                                                                         0x00007fc4400efbd8:   vpand  %ymm10,%ymm0,%ymm0
   0.09%  │ │                                                                                                         0x00007fc4400efbdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.03%  │ │                                                                                                         0x00007fc4400efbe3:   vpsrlq $0x6,%ymm2,%ymm8
   0.18%  │ │                                                                                                         0x00007fc4400efbe8:   mov    %r8,%rdi
   0.18%  │ │                                                                                                         0x00007fc4400efbeb:   rorx   $0x29,%r11,%r13
   0.09%  │ │                                                                                                         0x00007fc4400efbf1:   rorx   $0x12,%r11,%r14
   0.05%  │ │                                                                                                         0x00007fc4400efbf7:   add    0x8(%rsp),%rcx
   0.20%  │ │                                                                                                         0x00007fc4400efbfc:   or     %r9,%rdi
   0.20%  │ │                                                                                                         0x00007fc4400efbff:   mov    %rax,%r15
   0.07%  │ │                                                                                                         0x00007fc4400efc02:   xor    %rbx,%r15
   0.04%  │ │                                                                                                         0x00007fc4400efc05:   rorx   $0x22,%r8,%r12
   0.16%  │ │                                                                                                         0x00007fc4400efc0b:   xor    %r14,%r13
   0.19%  │ │                                                                                                         0x00007fc4400efc0e:   rorx   $0xe,%r11,%r14
   0.08%  │ │                                                                                                         0x00007fc4400efc14:   and    %r11,%r15
   0.02%  │ │                                                                                                         0x00007fc4400efc17:   add    %rcx,%r10
   0.20%  │ │                                                                                                         0x00007fc4400efc1a:   and    %rdx,%rdi
   0.20%  │ │                                                                                                         0x00007fc4400efc1d:   xor    %r14,%r13
   0.11%  │ │                                                                                                         0x00007fc4400efc20:   rorx   $0x27,%r8,%r14
   0.04%  │ │                                                                                                         0x00007fc4400efc26:   xor    %r12,%r14
   0.19%  │ │                                                                                                         0x00007fc4400efc29:   rorx   $0x1c,%r8,%r12
   0.18%  │ │                                                                                                         0x00007fc4400efc2f:   xor    %rbx,%r15
   0.09%  │ │                                                                                                         0x00007fc4400efc32:   xor    %r12,%r14
   0.04%  │ │                                                                                                         0x00007fc4400efc35:   mov    %r8,%r12
   0.19%  │ │                                                                                                         0x00007fc4400efc38:   and    %r9,%r12
   0.12%  │ │                                                                                                         0x00007fc4400efc3b:   add    %r13,%r15
   0.09%  │ │                                                                                                         0x00007fc4400efc3e:   or     %r12,%rdi
   0.03%  │ │                                                                                                         0x00007fc4400efc41:   add    %r14,%rcx
   0.18%  │ │                                                                                                         0x00007fc4400efc44:   add    %r15,%r10
   0.18%  │ │                                                                                                         0x00007fc4400efc47:   add    %r15,%rcx
   0.10%  │ │                                                                                                         0x00007fc4400efc4a:   add    %rdi,%rcx
   0.03%  │ │                                                                                                         0x00007fc4400efc4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.17%  │ │                                                                                                         0x00007fc4400efc52:   vpsllq $0x2d,%ymm2,%ymm1
   0.20%  │ │                                                                                                         0x00007fc4400efc57:   vpor   %ymm1,%ymm3,%ymm3
   0.10%  │ │                                                                                                         0x00007fc4400efc5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │                                                                                                         0x00007fc4400efc5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.18%  │ │                                                                                                         0x00007fc4400efc64:   vpsllq $0x3,%ymm2,%ymm1
   0.19%  │ │                                                                                                         0x00007fc4400efc69:   vpor   %ymm1,%ymm3,%ymm3
   0.11%  │ │                                                                                                         0x00007fc4400efc6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │                                                                                                         0x00007fc4400efc71:   vpaddq %ymm8,%ymm5,%ymm5
   0.18%  │ │                                                                                                         0x00007fc4400efc76:   vpsrlq $0x6,%ymm5,%ymm8
   0.17%  │ │                                                                                                         0x00007fc4400efc7b:   mov    %rcx,%rdi
   0.08%  │ │                                                                                                         0x00007fc4400efc7e:   rorx   $0x29,%r10,%r13
   0.07%  │ │                                                                                                         0x00007fc4400efc84:   rorx   $0x12,%r10,%r14
   0.17%  │ │                                                                                                         0x00007fc4400efc8a:   add    0x10(%rsp),%rbx
   0.25%  │ │                                                                                                         0x00007fc4400efc8f:   or     %rdx,%rdi
   0.10%  │ │                                                                                                         0x00007fc4400efc92:   mov    %r11,%r15
   0.03%  │ │                                                                                                         0x00007fc4400efc95:   xor    %rax,%r15
   0.20%  │ │                                                                                                         0x00007fc4400efc98:   rorx   $0x22,%rcx,%r12
   0.19%  │ │                                                                                                         0x00007fc4400efc9e:   xor    %r14,%r13
   0.07%  │ │                                                                                                         0x00007fc4400efca1:   rorx   $0xe,%r10,%r14
   0.05%  │ │                                                                                                         0x00007fc4400efca7:   and    %r10,%r15
   0.18%  │ │                                                                                                         0x00007fc4400efcaa:   add    %rbx,%r9
   0.21%  │ │                                                                                                         0x00007fc4400efcad:   and    %r8,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400efcb0:   xor    %r14,%r13
   0.04%  │ │                                                                                                         0x00007fc4400efcb3:   rorx   $0x27,%rcx,%r14
   0.17%  │ │                                                                                                         0x00007fc4400efcb9:   xor    %r12,%r14
   0.23%  │ │                                                                                                         0x00007fc4400efcbc:   rorx   $0x1c,%rcx,%r12
   0.11%  │ │                                                                                                         0x00007fc4400efcc2:   xor    %rax,%r15
   0.03%  │ │                                                                                                         0x00007fc4400efcc5:   xor    %r12,%r14
   0.19%  │ │                                                                                                         0x00007fc4400efcc8:   mov    %rcx,%r12
   0.18%  │ │                                                                                                         0x00007fc4400efccb:   and    %rdx,%r12
   0.09%  │ │                                                                                                         0x00007fc4400efcce:   add    %r13,%r15
   0.02%  │ │                                                                                                         0x00007fc4400efcd1:   or     %r12,%rdi
   0.16%  │ │                                                                                                         0x00007fc4400efcd4:   add    %r14,%rbx
   0.18%  │ │                                                                                                         0x00007fc4400efcd7:   add    %r15,%r9
   0.11%  │ │                                                                                                         0x00007fc4400efcda:   add    %r15,%rbx
   0.03%  │ │                                                                                                         0x00007fc4400efcdd:   add    %rdi,%rbx
   0.18%  │ │                                                                                                         0x00007fc4400efce0:   vpsrlq $0x13,%ymm5,%ymm3
   0.18%  │ │                                                                                                         0x00007fc4400efce5:   vpsllq $0x2d,%ymm5,%ymm1
   0.07%  │ │                                                                                                         0x00007fc4400efcea:   vpor   %ymm1,%ymm3,%ymm3
   0.04%  │ │                                                                                                         0x00007fc4400efcee:   vpxor  %ymm3,%ymm8,%ymm8
   0.15%  │ │                                                                                                         0x00007fc4400efcf2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.20%  │ │                                                                                                         0x00007fc4400efcf7:   vpsllq $0x3,%ymm5,%ymm1
   0.08%  │ │                                                                                                         0x00007fc4400efcfc:   vpor   %ymm1,%ymm3,%ymm3
   0.04%  │ │                                                                                                         0x00007fc4400efd00:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%  │ │                                                                                                         0x00007fc4400efd04:   vpaddq %ymm8,%ymm0,%ymm2
   0.22%  │ │                                                                                                         0x00007fc4400efd09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.14%  │ │                                                                                                         0x00007fc4400efd0f:   mov    %rbx,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400efd12:   rorx   $0x29,%r9,%r13
   0.16%  │ │                                                                                                         0x00007fc4400efd18:   rorx   $0x12,%r9,%r14
   0.17%  │ │                                                                                                         0x00007fc4400efd1e:   add    0x18(%rsp),%rax
   0.12%  │ │                                                                                                         0x00007fc4400efd23:   or     %r8,%rdi
   0.04%  │ │                                                                                                         0x00007fc4400efd26:   mov    %r10,%r15
   0.15%  │ │                                                                                                         0x00007fc4400efd29:   xor    %r11,%r15
   0.20%  │ │                                                                                                         0x00007fc4400efd2c:   rorx   $0x22,%rbx,%r12
   0.11%  │ │                                                                                                         0x00007fc4400efd32:   xor    %r14,%r13
   0.06%  │ │                                                                                                         0x00007fc4400efd35:   rorx   $0xe,%r9,%r14
   0.17%  │ │                                                                                                         0x00007fc4400efd3b:   and    %r9,%r15
   0.20%  │ │                                                                                                         0x00007fc4400efd3e:   add    %rax,%rdx
   0.09%  │ │                                                                                                         0x00007fc4400efd41:   and    %rcx,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400efd44:   xor    %r14,%r13
   0.13%  │ │                                                                                                         0x00007fc4400efd47:   rorx   $0x27,%rbx,%r14
   0.16%  │ │                                                                                                         0x00007fc4400efd4d:   xor    %r12,%r14
   0.12%  │ │                                                                                                         0x00007fc4400efd50:   rorx   $0x1c,%rbx,%r12
   0.04%  │ │                                                                                                         0x00007fc4400efd56:   xor    %r11,%r15
   0.12%  │ │                                                                                                         0x00007fc4400efd59:   xor    %r12,%r14
   0.20%  │ │                                                                                                         0x00007fc4400efd5c:   mov    %rbx,%r12
   0.14%  │ │                                                                                                         0x00007fc4400efd5f:   and    %r8,%r12
   0.04%  │ │                                                                                                         0x00007fc4400efd62:   add    %r13,%r15
   0.18%  │ │                                                                                                         0x00007fc4400efd65:   or     %r12,%rdi
   0.17%  │ │                                                                                                         0x00007fc4400efd68:   add    %r14,%rax
   0.12%  │ │                                                                                                         0x00007fc4400efd6b:   add    %r15,%rdx
   0.03%  │ │                                                                                                         0x00007fc4400efd6e:   add    %r15,%rax
   0.17%  │ │                                                                                                         0x00007fc4400efd71:   add    %rdi,%rax
   0.18%  │ │                                                                                                         0x00007fc4400efd74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.10%  │ │                                                                                                         0x00007fc4400efd79:   vmovdqu %ymm0,(%rsp)
   0.03%  │ │                                                                                                         0x00007fc4400efd7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.16%  │ │                                                                                                         0x00007fc4400efd84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.18%  │ │                                                                                                         0x00007fc4400efd8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.22%  │ │                                                                                                         0x00007fc4400efd8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.04%  │ │                                                                                                         0x00007fc4400efd94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.17%  │ │                                                                                                         0x00007fc4400efd9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.18%  │ │                                                                                                         0x00007fc4400efd9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.15%  │ │                                                                                                         0x00007fc4400efda4:   vpor   %ymm2,%ymm3,%ymm3
   0.06%  │ │                                                                                                         0x00007fc4400efda8:   vpsrlq $0x7,%ymm1,%ymm8
   0.17%  │ │                                                                                                         0x00007fc4400efdad:   mov    %rax,%rdi
   0.15%  │ │                                                                                                         0x00007fc4400efdb0:   rorx   $0x29,%rdx,%r13
   0.14%  │ │                                                                                                         0x00007fc4400efdb6:   rorx   $0x12,%rdx,%r14
   0.05%  │ │                                                                                                         0x00007fc4400efdbc:   add    (%rsp),%r11
   0.12%  │ │                                                                                                         0x00007fc4400efdc0:   or     %rcx,%rdi
   0.17%  │ │                                                                                                         0x00007fc4400efdc3:   mov    %r9,%r15
   0.16%  │ │                                                                                                         0x00007fc4400efdc6:   xor    %r10,%r15
   0.04%  │ │                                                                                                         0x00007fc4400efdc9:   rorx   $0x22,%rax,%r12
   0.15%  │ │                                                                                                         0x00007fc4400efdcf:   xor    %r14,%r13
   0.15%  │ │                                                                                                         0x00007fc4400efdd2:   rorx   $0xe,%rdx,%r14
   0.13%  │ │                                                                                                         0x00007fc4400efdd8:   and    %rdx,%r15
   0.03%  │ │                                                                                                         0x00007fc4400efddb:   add    %r11,%r8
   0.13%  │ │                                                                                                         0x00007fc4400efdde:   and    %rbx,%rdi
   0.14%  │ │                                                                                                         0x00007fc4400efde1:   xor    %r14,%r13
   0.15%  │ │                                                                                                         0x00007fc4400efde4:   rorx   $0x27,%rax,%r14
   0.03%  │ │                                                                                                         0x00007fc4400efdea:   xor    %r12,%r14
   0.15%  │ │                                                                                                         0x00007fc4400efded:   rorx   $0x1c,%rax,%r12
   0.18%  │ │                                                                                                         0x00007fc4400efdf3:   xor    %r10,%r15
   0.15%  │ │                                                                                                         0x00007fc4400efdf6:   xor    %r12,%r14
   0.04%  │ │                                                                                                         0x00007fc4400efdf9:   mov    %rax,%r12
   0.13%  │ │                                                                                                         0x00007fc4400efdfc:   and    %rcx,%r12
   0.18%  │ │                                                                                                         0x00007fc4400efdff:   add    %r13,%r15
   0.14%  │ │                                                                                                         0x00007fc4400efe02:   or     %r12,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400efe05:   add    %r14,%r11
   0.13%  │ │                                                                                                         0x00007fc4400efe08:   add    %r15,%r8
   0.14%  │ │                                                                                                         0x00007fc4400efe0b:   add    %r15,%r11
   0.13%  │ │                                                                                                         0x00007fc4400efe0e:   add    %rdi,%r11
   0.02%  │ │                                                                                                         0x00007fc4400efe11:   vpsrlq $0x8,%ymm1,%ymm2
   0.16%  │ │                                                                                                         0x00007fc4400efe16:   vpsllq $0x38,%ymm1,%ymm1
   0.14%  │ │                                                                                                         0x00007fc4400efe1b:   vpor   %ymm2,%ymm1,%ymm1
   0.18%  │ │                                                                                                         0x00007fc4400efe1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.05%  │ │                                                                                                         0x00007fc4400efe24:   vpxor  %ymm1,%ymm3,%ymm1
   0.15%  │ │                                                                                                         0x00007fc4400efe28:   vpaddq %ymm1,%ymm0,%ymm0
   0.13%  │ │                                                                                                         0x00007fc4400efe2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.17%  │ │                                                                                                         0x00007fc4400efe32:   vpand  %ymm10,%ymm0,%ymm0
   0.03%  │ │                                                                                                         0x00007fc4400efe37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.12%  │ │                                                                                                         0x00007fc4400efe3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.12%  │ │                                                                                                         0x00007fc4400efe42:   mov    %r11,%rdi
   0.17%  │ │                                                                                                         0x00007fc4400efe45:   rorx   $0x29,%r8,%r13
   0.04%  │ │                                                                                                         0x00007fc4400efe4b:   rorx   $0x12,%r8,%r14
   0.13%  │ │                                                                                                         0x00007fc4400efe51:   add    0x8(%rsp),%r10
   0.16%  │ │                                                                                                         0x00007fc4400efe56:   or     %rbx,%rdi
   0.14%  │ │                                                                                                         0x00007fc4400efe59:   mov    %rdx,%r15
   0.06%  │ │                                                                                                         0x00007fc4400efe5c:   xor    %r9,%r15
   0.14%  │ │                                                                                                         0x00007fc4400efe5f:   rorx   $0x22,%r11,%r12
   0.18%  │ │                                                                                                         0x00007fc4400efe65:   xor    %r14,%r13
   0.14%  │ │                                                                                                         0x00007fc4400efe68:   rorx   $0xe,%r8,%r14
   0.04%  │ │                                                                                                         0x00007fc4400efe6e:   and    %r8,%r15
   0.13%  │ │                                                                                                         0x00007fc4400efe71:   add    %r10,%rcx
   0.14%  │ │                                                                                                         0x00007fc4400efe74:   and    %rax,%rdi
   0.14%  │ │                                                                                                         0x00007fc4400efe77:   xor    %r14,%r13
   0.05%  │ │                                                                                                         0x00007fc4400efe7a:   rorx   $0x27,%r11,%r14
   0.13%  │ │                                                                                                         0x00007fc4400efe80:   xor    %r12,%r14
   0.16%  │ │                                                                                                         0x00007fc4400efe83:   rorx   $0x1c,%r11,%r12
   0.15%  │ │                                                                                                         0x00007fc4400efe89:   xor    %r9,%r15
   0.05%  │ │                                                                                                         0x00007fc4400efe8c:   xor    %r12,%r14
   0.14%  │ │                                                                                                         0x00007fc4400efe8f:   mov    %r11,%r12
   0.15%  │ │                                                                                                         0x00007fc4400efe92:   and    %rbx,%r12
   0.17%  │ │                                                                                                         0x00007fc4400efe95:   add    %r13,%r15
   0.04%  │ │                                                                                                         0x00007fc4400efe98:   or     %r12,%rdi
   0.13%  │ │                                                                                                         0x00007fc4400efe9b:   add    %r14,%r10
   0.15%  │ │                                                                                                         0x00007fc4400efe9e:   add    %r15,%rcx
   0.14%  │ │                                                                                                         0x00007fc4400efea1:   add    %r15,%r10
   0.05%  │ │                                                                                                         0x00007fc4400efea4:   add    %rdi,%r10
   0.14%  │ │                                                                                                         0x00007fc4400efea7:   vpsrlq $0x13,%ymm2,%ymm3
   0.14%  │ │                                                                                                         0x00007fc4400efeac:   vpsllq $0x2d,%ymm2,%ymm1
   0.17%  │ │                                                                                                         0x00007fc4400efeb1:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │                                                                                                         0x00007fc4400efeb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.15%  │ │                                                                                                         0x00007fc4400efeb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.17%  │ │                                                                                                         0x00007fc4400efebe:   vpsllq $0x3,%ymm2,%ymm1
   0.15%  │ │                                                                                                         0x00007fc4400efec3:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │                                                                                                         0x00007fc4400efec7:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │                                                                                                         0x00007fc4400efecb:   vpaddq %ymm8,%ymm6,%ymm6
   0.14%  │ │                                                                                                         0x00007fc4400efed0:   vpsrlq $0x6,%ymm6,%ymm8
   0.18%  │ │                                                                                                         0x00007fc4400efed5:   mov    %r10,%rdi
   0.06%  │ │                                                                                                         0x00007fc4400efed8:   rorx   $0x29,%rcx,%r13
   0.11%  │ │                                                                                                         0x00007fc4400efede:   rorx   $0x12,%rcx,%r14
   0.14%  │ │                                                                                                         0x00007fc4400efee4:   add    0x10(%rsp),%r9
   0.17%  │ │                                                                                                         0x00007fc4400efee9:   or     %rax,%rdi
   0.05%  │ │                                                                                                         0x00007fc4400efeec:   mov    %r8,%r15
   0.12%  │ │                                                                                                         0x00007fc4400efeef:   xor    %rdx,%r15
   0.10%  │ │                                                                                                         0x00007fc4400efef2:   rorx   $0x22,%r10,%r12
   0.19%  │ │                                                                                                         0x00007fc4400efef8:   xor    %r14,%r13
   0.06%  │ │                                                                                                         0x00007fc4400efefb:   rorx   $0xe,%rcx,%r14
   0.15%  │ │                                                                                                         0x00007fc4400eff01:   and    %rcx,%r15
   0.13%  │ │                                                                                                         0x00007fc4400eff04:   add    %r9,%rbx
   0.16%  │ │                                                                                                         0x00007fc4400eff07:   and    %r11,%rdi
   0.07%  │ │                                                                                                         0x00007fc4400eff0a:   xor    %r14,%r13
   0.13%  │ │                                                                                                         0x00007fc4400eff0d:   rorx   $0x27,%r10,%r14
   0.12%  │ │                                                                                                         0x00007fc4400eff13:   xor    %r12,%r14
   0.16%  │ │                                                                                                         0x00007fc4400eff16:   rorx   $0x1c,%r10,%r12
   0.04%  │ │                                                                                                         0x00007fc4400eff1c:   xor    %rdx,%r15
   0.13%  │ │                                                                                                         0x00007fc4400eff1f:   xor    %r12,%r14
   0.12%  │ │                                                                                                         0x00007fc4400eff22:   mov    %r10,%r12
   0.20%  │ │                                                                                                         0x00007fc4400eff25:   and    %rax,%r12
   0.03%  │ │                                                                                                         0x00007fc4400eff28:   add    %r13,%r15
   0.11%  │ │                                                                                                         0x00007fc4400eff2b:   or     %r12,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400eff2e:   add    %r14,%r9
   0.18%  │ │                                                                                                         0x00007fc4400eff31:   add    %r15,%rbx
   0.04%  │ │                                                                                                         0x00007fc4400eff34:   add    %r15,%r9
   0.14%  │ │                                                                                                         0x00007fc4400eff37:   add    %rdi,%r9
   0.16%  │ │                                                                                                         0x00007fc4400eff3a:   vpsrlq $0x13,%ymm6,%ymm3
   0.19%  │ │                                                                                                         0x00007fc4400eff3f:   vpsllq $0x2d,%ymm6,%ymm1
   0.05%  │ │                                                                                                         0x00007fc4400eff44:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │                                                                                                         0x00007fc4400eff48:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%  │ │                                                                                                         0x00007fc4400eff4c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.19%  │ │                                                                                                         0x00007fc4400eff51:   vpsllq $0x3,%ymm6,%ymm1
   0.06%  │ │                                                                                                         0x00007fc4400eff56:   vpor   %ymm1,%ymm3,%ymm3
   0.20%  │ │                                                                                                         0x00007fc4400eff5a:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%  │ │                                                                                                         0x00007fc4400eff5e:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │                                                                                                         0x00007fc4400eff63:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.14%  │ │                                                                                                         0x00007fc4400eff69:   mov    %r9,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400eff6c:   rorx   $0x29,%rbx,%r13
   0.11%  │ │                                                                                                         0x00007fc4400eff72:   rorx   $0x12,%rbx,%r14
   0.16%  │ │                                                                                                         0x00007fc4400eff78:   add    0x18(%rsp),%rdx
   0.12%  │ │                                                                                                         0x00007fc4400eff7d:   or     %r11,%rdi
   0.15%  │ │                                                                                                         0x00007fc4400eff80:   mov    %rcx,%r15
   0.11%  │ │                                                                                                         0x00007fc4400eff83:   xor    %r8,%r15
   0.13%  │ │                                                                                                         0x00007fc4400eff86:   rorx   $0x22,%r9,%r12
   0.10%  │ │                                                                                                         0x00007fc4400eff8c:   xor    %r14,%r13
   0.13%  │ │                                                                                                         0x00007fc4400eff8f:   rorx   $0xe,%rbx,%r14
   0.10%  │ │                                                                                                         0x00007fc4400eff95:   and    %rbx,%r15
   0.13%  │ │                                                                                                         0x00007fc4400eff98:   add    %rdx,%rax
   0.12%  │ │                                                                                                         0x00007fc4400eff9b:   and    %r10,%rdi
   0.16%  │ │                                                                                                         0x00007fc4400eff9e:   xor    %r14,%r13
   0.12%  │ │                                                                                                         0x00007fc4400effa1:   rorx   $0x27,%r9,%r14
   0.12%  │ │                                                                                                         0x00007fc4400effa7:   xor    %r12,%r14
   0.11%  │ │                                                                                                         0x00007fc4400effaa:   rorx   $0x1c,%r9,%r12
   0.15%  │ │                                                                                                         0x00007fc4400effb0:   xor    %r8,%r15
   0.09%  │ │                                                                                                         0x00007fc4400effb3:   xor    %r12,%r14
   0.13%  │ │                                                                                                         0x00007fc4400effb6:   mov    %r9,%r12
   0.11%  │ │                                                                                                         0x00007fc4400effb9:   and    %r11,%r12
   0.15%  │ │                                                                                                         0x00007fc4400effbc:   add    %r13,%r15
   0.10%  │ │                                                                                                         0x00007fc4400effbf:   or     %r12,%rdi
   0.15%  │ │                                                                                                         0x00007fc4400effc2:   add    %r14,%rdx
   0.12%  │ │                                                                                                         0x00007fc4400effc5:   add    %r15,%rax
   0.12%  │ │                                                                                                         0x00007fc4400effc8:   add    %r15,%rdx
   0.10%  │ │                                                                                                         0x00007fc4400effcb:   add    %rdi,%rdx
   0.15%  │ │                                                                                                         0x00007fc4400effce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.14%  │ │                                                                                                         0x00007fc4400effd3:   vmovdqu %ymm0,(%rsp)
   0.11%  │ │                                                                                                         0x00007fc4400effd8:   add    $0x80,%rbp
   0.11%  │ │                                                                                                         0x00007fc4400effdf:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.16%  │ │                                                                                                         0x00007fc4400effe5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.12%  │ │                                                                                                         0x00007fc4400effeb:   vpaddq %ymm7,%ymm0,%ymm0
   0.29%  │ │                                                                                                         0x00007fc4400effef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.09%  │ │                                                                                                         0x00007fc4400efff5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.14%  │ │                                                                                                         0x00007fc4400efffb:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%  │ │                                                                                                         0x00007fc4400f0000:   vpsllq $0x3f,%ymm1,%ymm3
   0.19%  │ │                                                                                                         0x00007fc4400f0005:   vpor   %ymm2,%ymm3,%ymm3
   0.10%  │ │                                                                                                         0x00007fc4400f0009:   vpsrlq $0x7,%ymm1,%ymm8
   0.10%  │ │                                                                                                         0x00007fc4400f000e:   mov    %rdx,%rdi
   0.11%  │ │                                                                                                         0x00007fc4400f0011:   rorx   $0x29,%rax,%r13
   0.18%  │ │                                                                                                         0x00007fc4400f0017:   rorx   $0x12,%rax,%r14
   0.11%  │ │                                                                                                         0x00007fc4400f001d:   add    (%rsp),%r8
   0.08%  │ │                                                                                                         0x00007fc4400f0021:   or     %r10,%rdi
   0.11%  │ │                                                                                                         0x00007fc4400f0024:   mov    %rbx,%r15
   0.16%  │ │                                                                                                         0x00007fc4400f0027:   xor    %rcx,%r15
   0.11%  │ │                                                                                                         0x00007fc4400f002a:   rorx   $0x22,%rdx,%r12
   0.12%  │ │                                                                                                         0x00007fc4400f0030:   xor    %r14,%r13
   0.12%  │ │                                                                                                         0x00007fc4400f0033:   rorx   $0xe,%rax,%r14
   0.18%  │ │                                                                                                         0x00007fc4400f0039:   and    %rax,%r15
   0.16%  │ │                                                                                                         0x00007fc4400f003c:   add    %r8,%r11
   0.11%  │ │                                                                                                         0x00007fc4400f003f:   and    %r9,%rdi
   0.10%  │ │                                                                                                         0x00007fc4400f0042:   xor    %r14,%r13
   0.13%  │ │                                                                                                         0x00007fc4400f0045:   rorx   $0x27,%rdx,%r14
   0.13%  │ │                                                                                                         0x00007fc4400f004b:   xor    %r12,%r14
   0.12%  │ │                                                                                                         0x00007fc4400f004e:   rorx   $0x1c,%rdx,%r12
   0.09%  │ │                                                                                                         0x00007fc4400f0054:   xor    %rcx,%r15
   0.16%  │ │                                                                                                         0x00007fc4400f0057:   xor    %r12,%r14
   0.13%  │ │                                                                                                         0x00007fc4400f005a:   mov    %rdx,%r12
   0.14%  │ │                                                                                                         0x00007fc4400f005d:   and    %r10,%r12
   0.13%  │ │                                                                                                         0x00007fc4400f0060:   add    %r13,%r15
   0.16%  │ │                                                                                                         0x00007fc4400f0063:   or     %r12,%rdi
   0.13%  │ │                                                                                                         0x00007fc4400f0066:   add    %r14,%r8
   0.11%  │ │                                                                                                         0x00007fc4400f0069:   add    %r15,%r11
   0.12%  │ │                                                                                                         0x00007fc4400f006c:   add    %r15,%r8
   0.16%  │ │                                                                                                         0x00007fc4400f006f:   add    %rdi,%r8
   0.11%  │ │                                                                                                         0x00007fc4400f0072:   vpsrlq $0x8,%ymm1,%ymm2
   0.12%  │ │                                                                                                         0x00007fc4400f0077:   vpsllq $0x38,%ymm1,%ymm1
   0.10%  │ │                                                                                                         0x00007fc4400f007c:   vpor   %ymm2,%ymm1,%ymm1
   0.16%  │ │                                                                                                         0x00007fc4400f0080:   vpxor  %ymm8,%ymm3,%ymm3
   0.12%  │ │                                                                                                         0x00007fc4400f0085:   vpxor  %ymm1,%ymm3,%ymm1
   0.13%  │ │                                                                                                         0x00007fc4400f0089:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%  │ │                                                                                                         0x00007fc4400f008d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.18%  │ │                                                                                                         0x00007fc4400f0093:   vpand  %ymm10,%ymm0,%ymm0
   0.12%  │ │                                                                                                         0x00007fc4400f0098:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.11%  │ │                                                                                                         0x00007fc4400f009e:   vpsrlq $0x6,%ymm2,%ymm8
   0.11%  │ │                                                                                                         0x00007fc4400f00a3:   mov    %r8,%rdi
   0.16%  │ │                                                                                                         0x00007fc4400f00a6:   rorx   $0x29,%r11,%r13
   0.13%  │ │                                                                                                         0x00007fc4400f00ac:   rorx   $0x12,%r11,%r14
   0.13%  │ │                                                                                                         0x00007fc4400f00b2:   add    0x8(%rsp),%rcx
   0.07%  │ │                                                                                                         0x00007fc4400f00b7:   or     %r9,%rdi
   0.18%  │ │                                                                                                         0x00007fc4400f00ba:   mov    %rax,%r15
   0.11%  │ │                                                                                                         0x00007fc4400f00bd:   xor    %rbx,%r15
   0.17%  │ │                                                                                                         0x00007fc4400f00c0:   rorx   $0x22,%r8,%r12
   0.11%  │ │                                                                                                         0x00007fc4400f00c6:   xor    %r14,%r13
   0.17%  │ │                                                                                                         0x00007fc4400f00c9:   rorx   $0xe,%r11,%r14
   0.14%  │ │                                                                                                         0x00007fc4400f00cf:   and    %r11,%r15
   0.13%  │ │                                                                                                         0x00007fc4400f00d2:   add    %rcx,%r10
   0.09%  │ │                                                                                                         0x00007fc4400f00d5:   and    %rdx,%rdi
   0.16%  │ │                                                                                                         0x00007fc4400f00d8:   xor    %r14,%r13
   0.14%  │ │                                                                                                         0x00007fc4400f00db:   rorx   $0x27,%r8,%r14
   0.15%  │ │                                                                                                         0x00007fc4400f00e1:   xor    %r12,%r14
   0.09%  │ │                                                                                                         0x00007fc4400f00e4:   rorx   $0x1c,%r8,%r12
   0.15%  │ │                                                                                                         0x00007fc4400f00ea:   xor    %rbx,%r15
   0.11%  │ │                                                                                                         0x00007fc4400f00ed:   xor    %r12,%r14
   0.10%  │ │                                                                                                         0x00007fc4400f00f0:   mov    %r8,%r12
   0.10%  │ │                                                                                                         0x00007fc4400f00f3:   and    %r9,%r12
   0.14%  │ │                                                                                                         0x00007fc4400f00f6:   add    %r13,%r15
   0.12%  │ │                                                                                                         0x00007fc4400f00f9:   or     %r12,%rdi
   0.11%  │ │                                                                                                         0x00007fc4400f00fc:   add    %r14,%rcx
   0.11%  │ │                                                                                                         0x00007fc4400f00ff:   add    %r15,%r10
   0.15%  │ │                                                                                                         0x00007fc4400f0102:   add    %r15,%rcx
   0.12%  │ │                                                                                                         0x00007fc4400f0105:   add    %rdi,%rcx
   0.12%  │ │                                                                                                         0x00007fc4400f0108:   vpsrlq $0x13,%ymm2,%ymm3
   0.08%  │ │                                                                                                         0x00007fc4400f010d:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%  │ │                                                                                                         0x00007fc4400f0112:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │                                                                                                         0x00007fc4400f0116:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%  │ │                                                                                                         0x00007fc4400f011a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.08%  │ │                                                                                                         0x00007fc4400f011f:   vpsllq $0x3,%ymm2,%ymm1
   0.15%  │ │                                                                                                         0x00007fc4400f0124:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │                                                                                                         0x00007fc4400f0128:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%  │ │                                                                                                         0x00007fc4400f012c:   vpaddq %ymm8,%ymm7,%ymm7
   0.11%  │ │                                                                                                         0x00007fc4400f0131:   vpsrlq $0x6,%ymm7,%ymm8
   0.19%  │ │                                                                                                         0x00007fc4400f0136:   mov    %rcx,%rdi
   0.11%  │ │                                                                                                         0x00007fc4400f0139:   rorx   $0x29,%r10,%r13
   0.09%  │ │                                                                                                         0x00007fc4400f013f:   rorx   $0x12,%r10,%r14
   0.08%  │ │                                                                                                         0x00007fc4400f0145:   add    0x10(%rsp),%rbx
   0.16%  │ │                                                                                                         0x00007fc4400f014a:   or     %rdx,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400f014d:   mov    %r11,%r15
   0.10%  │ │                                                                                                         0x00007fc4400f0150:   xor    %rax,%r15
   0.09%  │ │                                                                                                         0x00007fc4400f0153:   rorx   $0x22,%rcx,%r12
   0.15%  │ │                                                                                                         0x00007fc4400f0159:   xor    %r14,%r13
   0.13%  │ │                                                                                                         0x00007fc4400f015c:   rorx   $0xe,%r10,%r14
   0.11%  │ │                                                                                                         0x00007fc4400f0162:   and    %r10,%r15
   0.10%  │ │                                                                                                         0x00007fc4400f0165:   add    %rbx,%r9
   0.18%  │ │                                                                                                         0x00007fc4400f0168:   and    %r8,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400f016b:   xor    %r14,%r13
   0.11%  │ │                                                                                                         0x00007fc4400f016e:   rorx   $0x27,%rcx,%r14
   0.10%  │ │                                                                                                         0x00007fc4400f0174:   xor    %r12,%r14
   0.18%  │ │                                                                                                         0x00007fc4400f0177:   rorx   $0x1c,%rcx,%r12
   0.12%  │ │                                                                                                         0x00007fc4400f017d:   xor    %rax,%r15
   0.11%  │ │                                                                                                         0x00007fc4400f0180:   xor    %r12,%r14
   0.08%  │ │                                                                                                         0x00007fc4400f0183:   mov    %rcx,%r12
   0.19%  │ │                                                                                                         0x00007fc4400f0186:   and    %rdx,%r12
   0.12%  │ │                                                                                                         0x00007fc4400f0189:   add    %r13,%r15
   0.11%  │ │                                                                                                         0x00007fc4400f018c:   or     %r12,%rdi
   0.08%  │ │                                                                                                         0x00007fc4400f018f:   add    %r14,%rbx
   0.19%  │ │                                                                                                         0x00007fc4400f0192:   add    %r15,%r9
   0.11%  │ │                                                                                                         0x00007fc4400f0195:   add    %r15,%rbx
   0.10%  │ │                                                                                                         0x00007fc4400f0198:   add    %rdi,%rbx
   0.09%  │ │                                                                                                         0x00007fc4400f019b:   vpsrlq $0x13,%ymm7,%ymm3
   0.18%  │ │                                                                                                         0x00007fc4400f01a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.09%  │ │                                                                                                         0x00007fc4400f01a5:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │                                                                                                         0x00007fc4400f01a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%  │ │                                                                                                         0x00007fc4400f01ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.16%  │ │                                                                                                         0x00007fc4400f01b2:   vpsllq $0x3,%ymm7,%ymm1
   0.12%  │ │                                                                                                         0x00007fc4400f01b7:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │                                                                                                         0x00007fc4400f01bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%  │ │                                                                                                         0x00007fc4400f01bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.17%  │ │                                                                                                         0x00007fc4400f01c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.19%  │ │                                                                                                         0x00007fc4400f01ca:   mov    %rbx,%rdi
   0.08%  │ │                                                                                                         0x00007fc4400f01cd:   rorx   $0x29,%r9,%r13
   0.06%  │ │                                                                                                         0x00007fc4400f01d3:   rorx   $0x12,%r9,%r14
   0.13%  │ │                                                                                                         0x00007fc4400f01d9:   add    0x18(%rsp),%rax
   0.14%  │ │                                                                                                         0x00007fc4400f01de:   or     %r8,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400f01e1:   mov    %r10,%r15
   0.07%  │ │                                                                                                         0x00007fc4400f01e4:   xor    %r11,%r15
   0.16%  │ │                                                                                                         0x00007fc4400f01e7:   rorx   $0x22,%rbx,%r12
   0.16%  │ │                                                                                                         0x00007fc4400f01ed:   xor    %r14,%r13
   0.12%  │ │                                                                                                         0x00007fc4400f01f0:   rorx   $0xe,%r9,%r14
   0.06%  │ │                                                                                                         0x00007fc4400f01f6:   and    %r9,%r15
   0.15%  │ │                                                                                                         0x00007fc4400f01f9:   add    %rax,%rdx
   0.18%  │ │                                                                                                         0x00007fc4400f01fc:   and    %rcx,%rdi
   0.11%  │ │                                                                                                         0x00007fc4400f01ff:   xor    %r14,%r13
   0.08%  │ │                                                                                                         0x00007fc4400f0202:   rorx   $0x27,%rbx,%r14
   0.14%  │ │                                                                                                         0x00007fc4400f0208:   xor    %r12,%r14
   0.21%  │ │                                                                                                         0x00007fc4400f020b:   rorx   $0x1c,%rbx,%r12
   0.12%  │ │                                                                                                         0x00007fc4400f0211:   xor    %r11,%r15
   0.07%  │ │                                                                                                         0x00007fc4400f0214:   xor    %r12,%r14
   0.14%  │ │                                                                                                         0x00007fc4400f0217:   mov    %rbx,%r12
   0.16%  │ │                                                                                                         0x00007fc4400f021a:   and    %r8,%r12
   0.12%  │ │                                                                                                         0x00007fc4400f021d:   add    %r13,%r15
   0.07%  │ │                                                                                                         0x00007fc4400f0220:   or     %r12,%rdi
   0.12%  │ │                                                                                                         0x00007fc4400f0223:   add    %r14,%rax
   0.14%  │ │                                                                                                         0x00007fc4400f0226:   add    %r15,%rdx
   0.11%  │ │                                                                                                         0x00007fc4400f0229:   add    %r15,%rax
   0.05%  │ │                                                                                                         0x00007fc4400f022c:   add    %rdi,%rax
   0.18%  │ │                                                                                                         0x00007fc4400f022f:   subq   $0x1,0x20(%rsp)
   0.27%  ╰ │                                                                                                         0x00007fc4400f0235:   jne    0x00007fc4400ef8c0
   0.02%    │                                                                                                         0x00007fc4400f023b:   movq   $0x2,0x20(%rsp)
   0.05%   ↗│                                                                                                         0x00007fc4400f0244:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.07%   ││                                                                                                         0x00007fc4400f0249:   vmovdqu %ymm0,(%rsp)
   0.05%   ││                                                                                                         0x00007fc4400f024e:   mov    %r9,%r15
   0.09%   ││                                                                                                         0x00007fc4400f0251:   rorx   $0x29,%rdx,%r13
   0.08%   ││                                                                                                         0x00007fc4400f0257:   rorx   $0x12,%rdx,%r14
   0.07%   ││                                                                                                         0x00007fc4400f025d:   xor    %r10,%r15
   0.07%   ││                                                                                                         0x00007fc4400f0260:   xor    %r14,%r13
   0.06%   ││                                                                                                         0x00007fc4400f0263:   rorx   $0xe,%rdx,%r14
   0.07%   ││                                                                                                         0x00007fc4400f0269:   and    %rdx,%r15
   0.06%   ││                                                                                                         0x00007fc4400f026c:   xor    %r14,%r13
   0.05%   ││                                                                                                         0x00007fc4400f026f:   rorx   $0x22,%rax,%r12
   0.10%   ││                                                                                                         0x00007fc4400f0275:   xor    %r10,%r15
   0.05%   ││                                                                                                         0x00007fc4400f0278:   rorx   $0x27,%rax,%r14
   0.09%   ││                                                                                                         0x00007fc4400f027e:   mov    %rax,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f0281:   xor    %r12,%r14
   0.06%   ││                                                                                                         0x00007fc4400f0284:   rorx   $0x1c,%rax,%r12
   0.06%   ││                                                                                                         0x00007fc4400f028a:   add    (%rsp),%r11
   0.10%   ││                                                                                                         0x00007fc4400f028e:   or     %rcx,%rdi
   0.04%   ││                                                                                                         0x00007fc4400f0291:   xor    %r12,%r14
   0.06%   ││                                                                                                         0x00007fc4400f0294:   mov    %rax,%r12
   0.05%   ││                                                                                                         0x00007fc4400f0297:   and    %rbx,%rdi
   0.07%   ││                                                                                                         0x00007fc4400f029a:   and    %rcx,%r12
   0.04%   ││                                                                                                         0x00007fc4400f029d:   add    %r13,%r15
   0.09%   ││                                                                                                         0x00007fc4400f02a0:   add    %r11,%r8
   0.06%   ││                                                                                                         0x00007fc4400f02a3:   or     %r12,%rdi
   0.07%   ││                                                                                                         0x00007fc4400f02a6:   add    %r14,%r11
   0.06%   ││                                                                                                         0x00007fc4400f02a9:   add    %r15,%r8
   0.09%   ││                                                                                                         0x00007fc4400f02ac:   add    %r15,%r11
   0.05%   ││                                                                                                         0x00007fc4400f02af:   mov    %rdx,%r15
   0.05%   ││                                                                                                         0x00007fc4400f02b2:   rorx   $0x29,%r8,%r13
   0.04%   ││                                                                                                         0x00007fc4400f02b8:   rorx   $0x12,%r8,%r14
   0.08%   ││                                                                                                         0x00007fc4400f02be:   xor    %r9,%r15
   0.05%   ││                                                                                                         0x00007fc4400f02c1:   xor    %r14,%r13
   0.08%   ││                                                                                                         0x00007fc4400f02c4:   rorx   $0xe,%r8,%r14
   0.06%   ││                                                                                                         0x00007fc4400f02ca:   and    %r8,%r15
   0.07%   ││                                                                                                         0x00007fc4400f02cd:   add    %rdi,%r11
   0.06%   ││                                                                                                         0x00007fc4400f02d0:   xor    %r14,%r13
   0.07%   ││                                                                                                         0x00007fc4400f02d3:   rorx   $0x22,%r11,%r12
   0.05%   ││                                                                                                         0x00007fc4400f02d9:   xor    %r9,%r15
   0.07%   ││                                                                                                         0x00007fc4400f02dc:   rorx   $0x27,%r11,%r14
   0.06%   ││                                                                                                         0x00007fc4400f02e2:   mov    %r11,%rdi
   0.07%   ││                                                                                                         0x00007fc4400f02e5:   xor    %r12,%r14
   0.06%   ││                                                                                                         0x00007fc4400f02e8:   rorx   $0x1c,%r11,%r12
   0.09%   ││                                                                                                         0x00007fc4400f02ee:   add    0x8(%rsp),%r10
   0.04%   ││                                                                                                         0x00007fc4400f02f3:   or     %rbx,%rdi
   0.09%   ││                                                                                                         0x00007fc4400f02f6:   xor    %r12,%r14
   0.08%   ││                                                                                                         0x00007fc4400f02f9:   mov    %r11,%r12
   0.08%   ││                                                                                                         0x00007fc4400f02fc:   and    %rax,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f02ff:   and    %rbx,%r12
   0.05%   ││                                                                                                         0x00007fc4400f0302:   add    %r13,%r15
   0.06%   ││                                                                                                         0x00007fc4400f0305:   add    %r10,%rcx
   0.06%   ││                                                                                                         0x00007fc4400f0308:   or     %r12,%rdi
   0.07%   ││                                                                                                         0x00007fc4400f030b:   add    %r14,%r10
   0.06%   ││                                                                                                         0x00007fc4400f030e:   add    %r15,%rcx
   0.06%   ││                                                                                                         0x00007fc4400f0311:   add    %r15,%r10
   0.06%   ││                                                                                                         0x00007fc4400f0314:   mov    %r8,%r15
   0.05%   ││                                                                                                         0x00007fc4400f0317:   rorx   $0x29,%rcx,%r13
   0.07%   ││                                                                                                         0x00007fc4400f031d:   rorx   $0x12,%rcx,%r14
   0.04%   ││                                                                                                         0x00007fc4400f0323:   xor    %rdx,%r15
   0.05%   ││                                                                                                         0x00007fc4400f0326:   xor    %r14,%r13
   0.05%   ││                                                                                                         0x00007fc4400f0329:   rorx   $0xe,%rcx,%r14
   0.06%   ││                                                                                                         0x00007fc4400f032f:   and    %rcx,%r15
   0.08%   ││                                                                                                         0x00007fc4400f0332:   add    %rdi,%r10
   0.06%   ││                                                                                                         0x00007fc4400f0335:   xor    %r14,%r13
   0.08%   ││                                                                                                         0x00007fc4400f0338:   rorx   $0x22,%r10,%r12
   0.08%   ││                                                                                                         0x00007fc4400f033e:   xor    %rdx,%r15
   0.08%   ││                                                                                                         0x00007fc4400f0341:   rorx   $0x27,%r10,%r14
   0.06%   ││                                                                                                         0x00007fc4400f0347:   mov    %r10,%rdi
   0.06%   ││                                                                                                         0x00007fc4400f034a:   xor    %r12,%r14
   0.07%   ││                                                                                                         0x00007fc4400f034d:   rorx   $0x1c,%r10,%r12
   0.06%   ││                                                                                                         0x00007fc4400f0353:   add    0x10(%rsp),%r9
   0.06%   ││                                                                                                         0x00007fc4400f0358:   or     %rax,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f035b:   xor    %r12,%r14
   0.11%   ││                                                                                                         0x00007fc4400f035e:   mov    %r10,%r12
   0.03%   ││                                                                                                         0x00007fc4400f0361:   and    %r11,%rdi
   0.06%   ││                                                                                                         0x00007fc4400f0364:   and    %rax,%r12
   0.04%   ││                                                                                                         0x00007fc4400f0367:   add    %r13,%r15
   0.10%   ││                                                                                                         0x00007fc4400f036a:   add    %r9,%rbx
   0.06%   ││                                                                                                         0x00007fc4400f036d:   or     %r12,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f0370:   add    %r14,%r9
   0.05%   ││                                                                                                         0x00007fc4400f0373:   add    %r15,%rbx
   0.08%   ││                                                                                                         0x00007fc4400f0376:   add    %r15,%r9
   0.06%   ││                                                                                                         0x00007fc4400f0379:   mov    %rcx,%r15
   0.06%   ││                                                                                                         0x00007fc4400f037c:   rorx   $0x29,%rbx,%r13
   0.07%   ││                                                                                                         0x00007fc4400f0382:   rorx   $0x12,%rbx,%r14
   0.10%   ││                                                                                                         0x00007fc4400f0388:   xor    %r8,%r15
   0.06%   ││                                                                                                         0x00007fc4400f038b:   xor    %r14,%r13
   0.08%   ││                                                                                                         0x00007fc4400f038e:   rorx   $0xe,%rbx,%r14
   0.07%   ││                                                                                                         0x00007fc4400f0394:   and    %rbx,%r15
   0.10%   ││                                                                                                         0x00007fc4400f0397:   add    %rdi,%r9
   0.06%   ││                                                                                                         0x00007fc4400f039a:   xor    %r14,%r13
   0.07%   ││                                                                                                         0x00007fc4400f039d:   rorx   $0x22,%r9,%r12
   0.09%   ││                                                                                                         0x00007fc4400f03a3:   xor    %r8,%r15
   0.08%   ││                                                                                                         0x00007fc4400f03a6:   rorx   $0x27,%r9,%r14
   0.05%   ││                                                                                                         0x00007fc4400f03ac:   mov    %r9,%rdi
   0.06%   ││                                                                                                         0x00007fc4400f03af:   xor    %r12,%r14
   0.06%   ││                                                                                                         0x00007fc4400f03b2:   rorx   $0x1c,%r9,%r12
   0.07%   ││                                                                                                         0x00007fc4400f03b8:   add    0x18(%rsp),%rdx
   0.05%   ││                                                                                                         0x00007fc4400f03bd:   or     %r11,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f03c0:   xor    %r12,%r14
   0.05%   ││                                                                                                         0x00007fc4400f03c3:   mov    %r9,%r12
   0.06%   ││                                                                                                         0x00007fc4400f03c6:   and    %r10,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f03c9:   and    %r11,%r12
   0.04%   ││                                                                                                         0x00007fc4400f03cc:   add    %r13,%r15
   0.06%   ││                                                                                                         0x00007fc4400f03cf:   add    %rdx,%rax
   0.09%   ││                                                                                                         0x00007fc4400f03d2:   or     %r12,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f03d5:   add    %r14,%rdx
   0.07%   ││                                                                                                         0x00007fc4400f03d8:   add    %r15,%rax
   0.06%   ││                                                                                                         0x00007fc4400f03db:   add    %r15,%rdx
   0.08%   ││                                                                                                         0x00007fc4400f03de:   add    %rdi,%rdx
   0.08%   ││                                                                                                         0x00007fc4400f03e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.05%   ││                                                                                                         0x00007fc4400f03e6:   vmovdqu %ymm0,(%rsp)
   0.03%   ││                                                                                                         0x00007fc4400f03eb:   add    $0x40,%rbp
   0.06%   ││                                                                                                         0x00007fc4400f03ef:   mov    %rbx,%r15
   0.08%   ││                                                                                                         0x00007fc4400f03f2:   rorx   $0x29,%rax,%r13
   0.08%   ││                                                                                                         0x00007fc4400f03f8:   rorx   $0x12,%rax,%r14
   0.03%   ││                                                                                                         0x00007fc4400f03fe:   xor    %rcx,%r15
   0.05%   ││                                                                                                         0x00007fc4400f0401:   xor    %r14,%r13
   0.09%   ││                                                                                                         0x00007fc4400f0404:   rorx   $0xe,%rax,%r14
   0.05%   ││                                                                                                         0x00007fc4400f040a:   and    %rax,%r15
   0.05%   ││                                                                                                         0x00007fc4400f040d:   xor    %r14,%r13
   0.08%   ││                                                                                                         0x00007fc4400f0410:   rorx   $0x22,%rdx,%r12
   0.09%   ││                                                                                                         0x00007fc4400f0416:   xor    %rcx,%r15
   0.06%   ││                                                                                                         0x00007fc4400f0419:   rorx   $0x27,%rdx,%r14
   0.04%   ││                                                                                                         0x00007fc4400f041f:   mov    %rdx,%rdi
   0.08%   ││                                                                                                         0x00007fc4400f0422:   xor    %r12,%r14
   0.07%   ││                                                                                                         0x00007fc4400f0425:   rorx   $0x1c,%rdx,%r12
   0.06%   ││                                                                                                         0x00007fc4400f042b:   add    (%rsp),%r8
   0.04%   ││                                                                                                         0x00007fc4400f042f:   or     %r10,%rdi
   0.08%   ││                                                                                                         0x00007fc4400f0432:   xor    %r12,%r14
   0.08%   ││                                                                                                         0x00007fc4400f0435:   mov    %rdx,%r12
   0.06%   ││                                                                                                         0x00007fc4400f0438:   and    %r9,%rdi
   0.04%   ││                                                                                                         0x00007fc4400f043b:   and    %r10,%r12
   0.06%   ││                                                                                                         0x00007fc4400f043e:   add    %r13,%r15
   0.08%   ││                                                                                                         0x00007fc4400f0441:   add    %r8,%r11
   0.06%   ││                                                                                                         0x00007fc4400f0444:   or     %r12,%rdi
   0.03%   ││                                                                                                         0x00007fc4400f0447:   add    %r14,%r8
   0.05%   ││                                                                                                         0x00007fc4400f044a:   add    %r15,%r11
   0.09%   ││                                                                                                         0x00007fc4400f044d:   add    %r15,%r8
   0.07%   ││                                                                                                         0x00007fc4400f0450:   mov    %rax,%r15
   0.04%   ││                                                                                                         0x00007fc4400f0453:   rorx   $0x29,%r11,%r13
   0.08%   ││                                                                                                         0x00007fc4400f0459:   rorx   $0x12,%r11,%r14
   0.08%   ││                                                                                                         0x00007fc4400f045f:   xor    %rbx,%r15
   0.06%   ││                                                                                                         0x00007fc4400f0462:   xor    %r14,%r13
   0.05%   ││                                                                                                         0x00007fc4400f0465:   rorx   $0xe,%r11,%r14
   0.07%   ││                                                                                                         0x00007fc4400f046b:   and    %r11,%r15
   0.08%   ││                                                                                                         0x00007fc4400f046e:   add    %rdi,%r8
   0.08%   ││                                                                                                         0x00007fc4400f0471:   xor    %r14,%r13
   0.05%   ││                                                                                                         0x00007fc4400f0474:   rorx   $0x22,%r8,%r12
   0.05%   ││                                                                                                         0x00007fc4400f047a:   xor    %rbx,%r15
   0.11%   ││                                                                                                         0x00007fc4400f047d:   rorx   $0x27,%r8,%r14
   0.07%   ││                                                                                                         0x00007fc4400f0483:   mov    %r8,%rdi
   0.03%   ││                                                                                                         0x00007fc4400f0486:   xor    %r12,%r14
   0.07%   ││                                                                                                         0x00007fc4400f0489:   rorx   $0x1c,%r8,%r12
   0.07%   ││                                                                                                         0x00007fc4400f048f:   add    0x8(%rsp),%rcx
   0.07%   ││                                                                                                         0x00007fc4400f0494:   or     %r9,%rdi
   0.07%   ││                                                                                                         0x00007fc4400f0497:   xor    %r12,%r14
   0.08%   ││                                                                                                         0x00007fc4400f049a:   mov    %r8,%r12
   0.06%   ││                                                                                                         0x00007fc4400f049d:   and    %rdx,%rdi
   0.06%   ││                                                                                                         0x00007fc4400f04a0:   and    %r9,%r12
   0.05%   ││                                                                                                         0x00007fc4400f04a3:   add    %r13,%r15
   0.10%   ││                                                                                                         0x00007fc4400f04a6:   add    %rcx,%r10
   0.07%   ││                                                                                                         0x00007fc4400f04a9:   or     %r12,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f04ac:   add    %r14,%rcx
   0.05%   ││                                                                                                         0x00007fc4400f04af:   add    %r15,%r10
   0.08%   ││                                                                                                         0x00007fc4400f04b2:   add    %r15,%rcx
   0.08%   ││                                                                                                         0x00007fc4400f04b5:   mov    %r11,%r15
   0.06%   ││                                                                                                         0x00007fc4400f04b8:   rorx   $0x29,%r10,%r13
   0.04%   ││                                                                                                         0x00007fc4400f04be:   rorx   $0x12,%r10,%r14
   0.10%   ││                                                                                                         0x00007fc4400f04c4:   xor    %rax,%r15
   0.08%   ││                                                                                                         0x00007fc4400f04c7:   xor    %r14,%r13
   0.07%   ││                                                                                                         0x00007fc4400f04ca:   rorx   $0xe,%r10,%r14
   0.06%   ││                                                                                                         0x00007fc4400f04d0:   and    %r10,%r15
   0.10%   ││                                                                                                         0x00007fc4400f04d3:   add    %rdi,%rcx
   0.08%   ││                                                                                                         0x00007fc4400f04d6:   xor    %r14,%r13
   0.07%   ││                                                                                                         0x00007fc4400f04d9:   rorx   $0x22,%rcx,%r12
   0.05%   ││                                                                                                         0x00007fc4400f04df:   xor    %rax,%r15
   0.11%   ││                                                                                                         0x00007fc4400f04e2:   rorx   $0x27,%rcx,%r14
   0.06%   ││                                                                                                         0x00007fc4400f04e8:   mov    %rcx,%rdi
   0.06%   ││                                                                                                         0x00007fc4400f04eb:   xor    %r12,%r14
   0.06%   ││                                                                                                         0x00007fc4400f04ee:   rorx   $0x1c,%rcx,%r12
   0.06%   ││                                                                                                         0x00007fc4400f04f4:   add    0x10(%rsp),%rbx
   0.07%   ││                                                                                                         0x00007fc4400f04f9:   or     %rdx,%rdi
   0.04%   ││                                                                                                         0x00007fc4400f04fc:   xor    %r12,%r14
   0.06%   ││                                                                                                         0x00007fc4400f04ff:   mov    %rcx,%r12
   0.08%   ││                                                                                                         0x00007fc4400f0502:   and    %r8,%rdi
   0.07%   ││                                                                                                         0x00007fc4400f0505:   and    %rdx,%r12
   0.07%   ││                                                                                                         0x00007fc4400f0508:   add    %r13,%r15
   0.06%   ││                                                                                                         0x00007fc4400f050b:   add    %rbx,%r9
   0.07%   ││                                                                                                         0x00007fc4400f050e:   or     %r12,%rdi
   0.06%   ││                                                                                                         0x00007fc4400f0511:   add    %r14,%rbx
   0.06%   ││                                                                                                         0x00007fc4400f0514:   add    %r15,%r9
   0.07%   ││                                                                                                         0x00007fc4400f0517:   add    %r15,%rbx
   0.06%   ││                                                                                                         0x00007fc4400f051a:   mov    %r10,%r15
   0.06%   ││                                                                                                         0x00007fc4400f051d:   rorx   $0x29,%r9,%r13
   0.06%   ││                                                                                                         0x00007fc4400f0523:   rorx   $0x12,%r9,%r14
   0.07%   ││                                                                                                         0x00007fc4400f0529:   xor    %r11,%r15
   0.08%   ││                                                                                                         0x00007fc4400f052c:   xor    %r14,%r13
   0.08%   ││                                                                                                         0x00007fc4400f052f:   rorx   $0xe,%r9,%r14
   0.06%   ││                                                                                                         0x00007fc4400f0535:   and    %r9,%r15
   0.08%   ││                                                                                                         0x00007fc4400f0538:   add    %rdi,%rbx
   0.09%   ││                                                                                                         0x00007fc4400f053b:   xor    %r14,%r13
   0.09%   ││                                                                                                         0x00007fc4400f053e:   rorx   $0x22,%rbx,%r12
   0.05%   ││                                                                                                         0x00007fc4400f0544:   xor    %r11,%r15
   0.06%   ││                                                                                                         0x00007fc4400f0547:   rorx   $0x27,%rbx,%r14
   0.06%   ││                                                                                                         0x00007fc4400f054d:   mov    %rbx,%rdi
   0.06%   ││                                                                                                         0x00007fc4400f0550:   xor    %r12,%r14
   0.06%   ││                                                                                                         0x00007fc4400f0553:   rorx   $0x1c,%rbx,%r12
   0.05%   ││                                                                                                         0x00007fc4400f0559:   add    0x18(%rsp),%rax
   0.05%   ││                                                                                                         0x00007fc4400f055e:   or     %r8,%rdi
   0.08%   ││                                                                                                         0x00007fc4400f0561:   xor    %r12,%r14
   0.09%   ││                                                                                                         0x00007fc4400f0564:   mov    %rbx,%r12
   0.07%   ││                                                                                                         0x00007fc4400f0567:   and    %rcx,%rdi
   0.07%   ││                                                                                                         0x00007fc4400f056a:   and    %r8,%r12
   0.08%   ││                                                                                                         0x00007fc4400f056d:   add    %r13,%r15
   0.07%   ││                                                                                                         0x00007fc4400f0570:   add    %rax,%rdx
   0.07%   ││                                                                                                         0x00007fc4400f0573:   or     %r12,%rdi
   0.05%   ││                                                                                                         0x00007fc4400f0576:   add    %r14,%rax
   0.12%   ││                                                                                                         0x00007fc4400f0579:   add    %r15,%rdx
   0.08%   ││                                                                                                         0x00007fc4400f057c:   add    %r15,%rax
   0.06%   ││                                                                                                         0x00007fc4400f057f:   add    %rdi,%rax
   0.08%   ││                                                                                                         0x00007fc4400f0582:   vmovdqu %ymm6,%ymm4
   0.06%   ││                                                                                                         0x00007fc4400f0586:   vmovdqu %ymm7,%ymm5
   0.02%   ││                                                                                                         0x00007fc4400f058a:   subq   $0x1,0x20(%rsp)
   0.19%   ╰│                                                                                                         0x00007fc4400f0590:   jne    0x00007fc4400f0244
   0.03%    │                                                                                                         0x00007fc4400f0596:   add    (%rsi),%rax
   0.01%    │                                                                                                         0x00007fc4400f0599:   mov    %rax,(%rsi)
   0.23%    │                                                                                                         0x00007fc4400f059c:   add    0x8(%rsi),%rbx
   0.00%    │                                                                                                         0x00007fc4400f05a0:   mov    %rbx,0x8(%rsi)
   0.01%    │                                                                                                         0x00007fc4400f05a4:   add    0x10(%rsi),%rcx
            │                                                                                                         0x00007fc4400f05a8:   mov    %rcx,0x10(%rsi)
   0.12%    │                                                                                                         0x00007fc4400f05ac:   add    0x18(%rsi),%r8
            │                                                                                                         0x00007fc4400f05b0:   mov    %r8,0x18(%rsi)
   0.00%    │                                                                                                         0x00007fc4400f05b4:   add    0x20(%rsi),%rdx
            │                                                                                                         0x00007fc4400f05b8:   mov    %rdx,0x20(%rsi)
   0.10%    │                                                                                                         0x00007fc4400f05bc:   add    0x28(%rsi),%r9
            │                                                                                                         0x00007fc4400f05c0:   mov    %r9,0x28(%rsi)
   0.02%    │                                                                                                         0x00007fc4400f05c4:   add    0x30(%rsi),%r10
            │                                                                                                         0x00007fc4400f05c8:   mov    %r10,0x30(%rsi)
   0.11%    │                                                                                                         0x00007fc4400f05cc:   add    0x38(%rsi),%r11
   0.00%    │                                                                                                         0x00007fc4400f05d0:   mov    %r11,0x38(%rsi)
   0.03%    │                                                                                                         0x00007fc4400f05d4:   mov    0x28(%rsp),%rdi
            │                                                                                                         0x00007fc4400f05d9:   add    $0x80,%rdi
   0.10%    │                                                                                                         0x00007fc4400f05e0:   cmp    0x30(%rsp),%rdi
            ╰                                                                                                         0x00007fc4400f05e5:   jne    0x00007fc4400ef87b
   0.01%                                                                                                              0x00007fc4400f05eb:   mov    0x40(%rsp),%rbp
   0.02%                                                                                                              0x00007fc4400f05f0:   mov    0x48(%rsp),%rbx
                                                                                                                      0x00007fc4400f05f5:   mov    0x50(%rsp),%r12
                                                                                                                      0x00007fc4400f05fa:   mov    0x58(%rsp),%r13
   0.00%                                                                                                              0x00007fc4400f05ff:   mov    0x60(%rsp),%r14
                                                                                                                      0x00007fc4400f0604:   mov    0x68(%rsp),%r15
                                                                                                                      0x00007fc4400f0609:   mov    0x38(%rsp),%rsp
                                                                                                                      0x00007fc4400f060e:   pop    %rcx
   0.00%                                                                                                              0x00007fc4400f060f:   pop    %rdx
                                                                                                                      0x00007fc4400f0610:   mov    %rdx,%rax
   0.20%      ↗                                                                                                       0x00007fc4400f0613:   cmp    %rcx,%rax
             ╭│                                                                                                       0x00007fc4400f0616:   jae    0x00007fc4400f0620
   0.01%     ││                                                                                                       0x00007fc4400f0618:   add    $0x80,%rax
   0.01%     │╰                                                                                                       0x00007fc4400f061e:   jmp    0x00007fc4400f0613
   0.01%     ↘                                                                                                        0x00007fc4400f0620:   vzeroupper 
   0.00%                                                                                                              0x00007fc4400f0623:   leave  
   0.01%                                                                                                              0x00007fc4400f0624:   ret    
                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                    - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                    Decoding RuntimeStub - handle_exception Runtime1 stub 0x00007fc44018e490
                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                      0x00007fc44018e500:   push   %rbp
                                                                                                                      0x00007fc44018e501:   mov    %rsp,%rbp
                                                                                                                      0x00007fc44018e504:   sub    $0x80,%rsp
                                                                                                                      0x00007fc44018e50b:   mov    %rax,0x78(%rsp)
                                                                                                                      0x00007fc44018e510:   mov    %rcx,0x70(%rsp)
....................................................................................................
  93.02%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.02%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.19%        runtime stub  StubRoutines::sha512_implCompress 
   0.27%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.14%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.06%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 723 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.03%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 723 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   1.56%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.02%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.19%        runtime stub  StubRoutines::sha512_implCompress 
   1.19%              kernel  [unknown] 
   0.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 726 
   0.27%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 723 
   0.27%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%         c2, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 672 
   0.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%    perf-1936840.map  [unknown] 
   0.13%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.52%        runtime stub
   1.19%              kernel
   1.03%         c2, level 4
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%    perf-1936840.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512, length = 16384)

# Run progress: 41.67% complete, ETA 00:12:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.198 us/op
# Warmup Iteration   2: 39.378 us/op
# Warmup Iteration   3: 39.673 us/op
# Warmup Iteration   4: 39.662 us/op
# Warmup Iteration   5: 39.661 us/op
Iteration   1: 39.653 us/op
Iteration   2: 39.662 us/op
Iteration   3: 39.676 us/op
Iteration   4: 39.664 us/op
Iteration   5: 39.658 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.663 ±(99.9%) 0.033 us/op [Average]
  (min, avg, max) = (39.653, 39.663, 39.676), stdev = 0.008
  CI (99.9%): [39.630, 39.695] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 173843 total address lines.
Perf output processed (skipped 57.103 seconds):
 Column 1: cycles (50562 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

   0.01%         0x00007f98700ef3cc:   mov    (%rsi),%rax
                 0x00007f98700ef3cf:   mov    0x8(%rsi),%rbx
                 0x00007f98700ef3d3:   mov    0x10(%rsi),%rcx
   0.01%         0x00007f98700ef3d7:   mov    0x18(%rsi),%r8
                 0x00007f98700ef3db:   mov    0x20(%rsi),%rdx
                 0x00007f98700ef3df:   mov    0x28(%rsi),%r9
                 0x00007f98700ef3e3:   mov    0x38(%rsi),%r11
                 0x00007f98700ef3e7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f98700ee500
                 0x00007f98700ef3ef:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f98700ee520
                 0x00007f98700ef3f7:   mov    0x30(%rsi),%r10
   0.05%    ↗    0x00007f98700ef3fb:   movabs $0x7f9886e29d40,%rbp
   0.01%    │    0x00007f98700ef405:   vmovdqu (%rdi),%ymm4
   0.74%    │    0x00007f98700ef409:   vpshufb %ymm9,%ymm4,%ymm4
   0.40%    │    0x00007f98700ef40e:   vmovdqu 0x20(%rdi),%ymm5
   0.00%    │    0x00007f98700ef413:   vpshufb %ymm9,%ymm5,%ymm5
            │    0x00007f98700ef418:   vmovdqu 0x40(%rdi),%ymm6
   0.05%    │    0x00007f98700ef41d:   vpshufb %ymm9,%ymm6,%ymm6
   0.32%    │    0x00007f98700ef422:   vmovdqu 0x60(%rdi),%ymm7
            │    0x00007f98700ef427:   vpshufb %ymm9,%ymm7,%ymm7
   0.02%    │    0x00007f98700ef42c:   mov    %rdi,0x28(%rsp)
            │    0x00007f98700ef431:   movq   $0x4,0x20(%rsp)
   0.12%    │    0x00007f98700ef43a:   nopw   0x0(%rax,%rax,1)
   0.03%  ↗ │    0x00007f98700ef440:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.17%  │ │    0x00007f98700ef445:   vmovdqu %ymm0,(%rsp)
   0.12%  │ │    0x00007f98700ef44a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.29%  │ │    0x00007f98700ef450:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.30%  │ │    0x00007f98700ef456:   vpaddq %ymm4,%ymm0,%ymm0
   0.72%  │ │    0x00007f98700ef45a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.10%  │ │    0x00007f98700ef460:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.07%  │ │    0x00007f98700ef466:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%  │ │    0x00007f98700ef46b:   vpsllq $0x3f,%ymm1,%ymm3
   0.26%  │ │    0x00007f98700ef470:   vpor   %ymm2,%ymm3,%ymm3
   0.15%  │ │    0x00007f98700ef474:   vpsrlq $0x7,%ymm1,%ymm8
   0.07%  │ │    0x00007f98700ef479:   mov    %rax,%rdi
   0.05%  │ │    0x00007f98700ef47c:   rorx   $0x29,%rdx,%r13
   0.30%  │ │    0x00007f98700ef482:   rorx   $0x12,%rdx,%r14
   0.12%  │ │    0x00007f98700ef488:   add    (%rsp),%r11
   0.10%  │ │    0x00007f98700ef48c:   or     %rcx,%rdi
   0.06%  │ │    0x00007f98700ef48f:   mov    %r9,%r15
   0.23%  │ │    0x00007f98700ef492:   xor    %r10,%r15
   0.15%  │ │    0x00007f98700ef495:   rorx   $0x22,%rax,%r12
   0.07%  │ │    0x00007f98700ef49b:   xor    %r14,%r13
   0.04%  │ │    0x00007f98700ef49e:   rorx   $0xe,%rdx,%r14
   0.24%  │ │    0x00007f98700ef4a4:   and    %rdx,%r15
   0.12%  │ │    0x00007f98700ef4a7:   add    %r11,%r8
   0.10%  │ │    0x00007f98700ef4aa:   and    %rbx,%rdi
   0.04%  │ │    0x00007f98700ef4ad:   xor    %r14,%r13
   0.23%  │ │    0x00007f98700ef4b0:   rorx   $0x27,%rax,%r14
   0.11%  │ │    0x00007f98700ef4b6:   xor    %r12,%r14
   0.05%  │ │    0x00007f98700ef4b9:   rorx   $0x1c,%rax,%r12
   0.04%  │ │    0x00007f98700ef4bf:   xor    %r10,%r15
   0.28%  │ │    0x00007f98700ef4c2:   xor    %r12,%r14
   0.13%  │ │    0x00007f98700ef4c5:   mov    %rax,%r12
   0.08%  │ │    0x00007f98700ef4c8:   and    %rcx,%r12
   0.06%  │ │    0x00007f98700ef4cb:   add    %r13,%r15
   0.23%  │ │    0x00007f98700ef4ce:   or     %r12,%rdi
   0.12%  │ │    0x00007f98700ef4d1:   add    %r14,%r11
   0.08%  │ │    0x00007f98700ef4d4:   add    %r15,%r8
   0.05%  │ │    0x00007f98700ef4d7:   add    %r15,%r11
   0.18%  │ │    0x00007f98700ef4da:   add    %rdi,%r11
   0.11%  │ │    0x00007f98700ef4dd:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%  │ │    0x00007f98700ef4e2:   vpsllq $0x38,%ymm1,%ymm1
   0.05%  │ │    0x00007f98700ef4e7:   vpor   %ymm2,%ymm1,%ymm1
   0.29%  │ │    0x00007f98700ef4eb:   vpxor  %ymm8,%ymm3,%ymm3
   0.14%  │ │    0x00007f98700ef4f0:   vpxor  %ymm1,%ymm3,%ymm1
   0.07%  │ │    0x00007f98700ef4f4:   vpaddq %ymm1,%ymm0,%ymm0
   0.06%  │ │    0x00007f98700ef4f8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.22%  │ │    0x00007f98700ef4fe:   vpand  %ymm10,%ymm0,%ymm0
   0.11%  │ │    0x00007f98700ef503:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.06%  │ │    0x00007f98700ef509:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%  │ │    0x00007f98700ef50e:   mov    %r11,%rdi
   0.25%  │ │    0x00007f98700ef511:   rorx   $0x29,%r8,%r13
   0.14%  │ │    0x00007f98700ef517:   rorx   $0x12,%r8,%r14
   0.07%  │ │    0x00007f98700ef51d:   add    0x8(%rsp),%r10
   0.05%  │ │    0x00007f98700ef522:   or     %rbx,%rdi
   0.21%  │ │    0x00007f98700ef525:   mov    %rdx,%r15
   0.15%  │ │    0x00007f98700ef528:   xor    %r9,%r15
   0.07%  │ │    0x00007f98700ef52b:   rorx   $0x22,%r11,%r12
   0.05%  │ │    0x00007f98700ef531:   xor    %r14,%r13
   0.22%  │ │    0x00007f98700ef534:   rorx   $0xe,%r8,%r14
   0.15%  │ │    0x00007f98700ef53a:   and    %r8,%r15
   0.07%  │ │    0x00007f98700ef53d:   add    %r10,%rcx
   0.05%  │ │    0x00007f98700ef540:   and    %rax,%rdi
   0.25%  │ │    0x00007f98700ef543:   xor    %r14,%r13
   0.13%  │ │    0x00007f98700ef546:   rorx   $0x27,%r11,%r14
   0.08%  │ │    0x00007f98700ef54c:   xor    %r12,%r14
   0.06%  │ │    0x00007f98700ef54f:   rorx   $0x1c,%r11,%r12
   0.19%  │ │    0x00007f98700ef555:   xor    %r9,%r15
   0.12%  │ │    0x00007f98700ef558:   xor    %r12,%r14
   0.07%  │ │    0x00007f98700ef55b:   mov    %r11,%r12
   0.06%  │ │    0x00007f98700ef55e:   and    %rbx,%r12
   0.26%  │ │    0x00007f98700ef561:   add    %r13,%r15
   0.11%  │ │    0x00007f98700ef564:   or     %r12,%rdi
   0.06%  │ │    0x00007f98700ef567:   add    %r14,%r10
   0.04%  │ │    0x00007f98700ef56a:   add    %r15,%rcx
   0.25%  │ │    0x00007f98700ef56d:   add    %r15,%r10
   0.14%  │ │    0x00007f98700ef570:   add    %rdi,%r10
   0.05%  │ │    0x00007f98700ef573:   vpsrlq $0x13,%ymm2,%ymm3
   0.06%  │ │    0x00007f98700ef578:   vpsllq $0x2d,%ymm2,%ymm1
   0.26%  │ │    0x00007f98700ef57d:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │    0x00007f98700ef581:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%  │ │    0x00007f98700ef585:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%  │ │    0x00007f98700ef58a:   vpsllq $0x3,%ymm2,%ymm1
   0.22%  │ │    0x00007f98700ef58f:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │    0x00007f98700ef593:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f98700ef597:   vpaddq %ymm8,%ymm4,%ymm4
   0.06%  │ │    0x00007f98700ef59c:   vpsrlq $0x6,%ymm4,%ymm8
   0.31%  │ │    0x00007f98700ef5a1:   mov    %r10,%rdi
   0.13%  │ │    0x00007f98700ef5a4:   rorx   $0x29,%rcx,%r13
   0.06%  │ │    0x00007f98700ef5aa:   rorx   $0x12,%rcx,%r14
   0.05%  │ │    0x00007f98700ef5b0:   add    0x10(%rsp),%r9
   0.25%  │ │    0x00007f98700ef5b5:   or     %rax,%rdi
   0.13%  │ │    0x00007f98700ef5b8:   mov    %r8,%r15
   0.08%  │ │    0x00007f98700ef5bb:   xor    %rdx,%r15
   0.05%  │ │    0x00007f98700ef5be:   rorx   $0x22,%r10,%r12
   0.22%  │ │    0x00007f98700ef5c4:   xor    %r14,%r13
   0.13%  │ │    0x00007f98700ef5c7:   rorx   $0xe,%rcx,%r14
   0.07%  │ │    0x00007f98700ef5cd:   and    %rcx,%r15
   0.07%  │ │    0x00007f98700ef5d0:   add    %r9,%rbx
   0.25%  │ │    0x00007f98700ef5d3:   and    %r11,%rdi
   0.11%  │ │    0x00007f98700ef5d6:   xor    %r14,%r13
   0.08%  │ │    0x00007f98700ef5d9:   rorx   $0x27,%r10,%r14
   0.04%  │ │    0x00007f98700ef5df:   xor    %r12,%r14
   0.26%  │ │    0x00007f98700ef5e2:   rorx   $0x1c,%r10,%r12
   0.12%  │ │    0x00007f98700ef5e8:   xor    %rdx,%r15
   0.09%  │ │    0x00007f98700ef5eb:   xor    %r12,%r14
   0.05%  │ │    0x00007f98700ef5ee:   mov    %r10,%r12
   0.22%  │ │    0x00007f98700ef5f1:   and    %rax,%r12
   0.11%  │ │    0x00007f98700ef5f4:   add    %r13,%r15
   0.06%  │ │    0x00007f98700ef5f7:   or     %r12,%rdi
   0.04%  │ │    0x00007f98700ef5fa:   add    %r14,%r9
   0.26%  │ │    0x00007f98700ef5fd:   add    %r15,%rbx
   0.11%  │ │    0x00007f98700ef600:   add    %r15,%r9
   0.08%  │ │    0x00007f98700ef603:   add    %rdi,%r9
   0.04%  │ │    0x00007f98700ef606:   vpsrlq $0x13,%ymm4,%ymm3
   0.25%  │ │    0x00007f98700ef60b:   vpsllq $0x2d,%ymm4,%ymm1
   0.12%  │ │    0x00007f98700ef610:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │    0x00007f98700ef614:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f98700ef618:   vpsrlq $0x3d,%ymm4,%ymm3
   0.26%  │ │    0x00007f98700ef61d:   vpsllq $0x3,%ymm4,%ymm1
   0.12%  │ │    0x00007f98700ef622:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f98700ef626:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f98700ef62a:   vpaddq %ymm8,%ymm0,%ymm2
   0.23%  │ │    0x00007f98700ef62f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.18%  │ │    0x00007f98700ef635:   mov    %r9,%rdi
   0.05%  │ │    0x00007f98700ef638:   rorx   $0x29,%rbx,%r13
   0.03%  │ │    0x00007f98700ef63e:   rorx   $0x12,%rbx,%r14
   0.23%  │ │    0x00007f98700ef644:   add    0x18(%rsp),%rdx
   0.18%  │ │    0x00007f98700ef649:   or     %r11,%rdi
   0.07%  │ │    0x00007f98700ef64c:   mov    %rcx,%r15
   0.03%  │ │    0x00007f98700ef64f:   xor    %r8,%r15
   0.23%  │ │    0x00007f98700ef652:   rorx   $0x22,%r9,%r12
   0.16%  │ │    0x00007f98700ef658:   xor    %r14,%r13
   0.05%  │ │    0x00007f98700ef65b:   rorx   $0xe,%rbx,%r14
   0.04%  │ │    0x00007f98700ef661:   and    %rbx,%r15
   0.23%  │ │    0x00007f98700ef664:   add    %rdx,%rax
   0.17%  │ │    0x00007f98700ef667:   and    %r10,%rdi
   0.06%  │ │    0x00007f98700ef66a:   xor    %r14,%r13
   0.04%  │ │    0x00007f98700ef66d:   rorx   $0x27,%r9,%r14
   0.23%  │ │    0x00007f98700ef673:   xor    %r12,%r14
   0.20%  │ │    0x00007f98700ef676:   rorx   $0x1c,%r9,%r12
   0.07%  │ │    0x00007f98700ef67c:   xor    %r8,%r15
   0.04%  │ │    0x00007f98700ef67f:   xor    %r12,%r14
   0.24%  │ │    0x00007f98700ef682:   mov    %r9,%r12
   0.17%  │ │    0x00007f98700ef685:   and    %r11,%r12
   0.07%  │ │    0x00007f98700ef688:   add    %r13,%r15
   0.02%  │ │    0x00007f98700ef68b:   or     %r12,%rdi
   0.22%  │ │    0x00007f98700ef68e:   add    %r14,%rdx
   0.17%  │ │    0x00007f98700ef691:   add    %r15,%rax
   0.05%  │ │    0x00007f98700ef694:   add    %r15,%rdx
   0.04%  │ │    0x00007f98700ef697:   add    %rdi,%rdx
   0.21%  │ │    0x00007f98700ef69a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.18%  │ │    0x00007f98700ef69f:   vmovdqu %ymm0,(%rsp)
   0.06%  │ │    0x00007f98700ef6a4:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%  │ │    0x00007f98700ef6aa:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.19%  │ │    0x00007f98700ef6b0:   vpaddq %ymm5,%ymm0,%ymm0
   0.25%  │ │    0x00007f98700ef6b4:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.07%  │ │    0x00007f98700ef6ba:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.05%  │ │    0x00007f98700ef6c0:   vpsrlq $0x1,%ymm1,%ymm2
   0.28%  │ │    0x00007f98700ef6c5:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%  │ │    0x00007f98700ef6ca:   vpor   %ymm2,%ymm3,%ymm3
   0.09%  │ │    0x00007f98700ef6ce:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%  │ │    0x00007f98700ef6d3:   mov    %rdx,%rdi
   0.21%  │ │    0x00007f98700ef6d6:   rorx   $0x29,%rax,%r13
   0.17%  │ │    0x00007f98700ef6dc:   rorx   $0x12,%rax,%r14
   0.08%  │ │    0x00007f98700ef6e2:   add    (%rsp),%r8
   0.04%  │ │    0x00007f98700ef6e6:   or     %r10,%rdi
   0.17%  │ │    0x00007f98700ef6e9:   mov    %rbx,%r15
   0.16%  │ │    0x00007f98700ef6ec:   xor    %rcx,%r15
   0.07%  │ │    0x00007f98700ef6ef:   rorx   $0x22,%rdx,%r12
   0.04%  │ │    0x00007f98700ef6f5:   xor    %r14,%r13
   0.22%  │ │    0x00007f98700ef6f8:   rorx   $0xe,%rax,%r14
   0.16%  │ │    0x00007f98700ef6fe:   and    %rax,%r15
   0.09%  │ │    0x00007f98700ef701:   add    %r8,%r11
   0.03%  │ │    0x00007f98700ef704:   and    %r9,%rdi
   0.20%  │ │    0x00007f98700ef707:   xor    %r14,%r13
   0.18%  │ │    0x00007f98700ef70a:   rorx   $0x27,%rdx,%r14
   0.09%  │ │    0x00007f98700ef710:   xor    %r12,%r14
   0.02%  │ │    0x00007f98700ef713:   rorx   $0x1c,%rdx,%r12
   0.17%  │ │    0x00007f98700ef719:   xor    %rcx,%r15
   0.16%  │ │    0x00007f98700ef71c:   xor    %r12,%r14
   0.08%  │ │    0x00007f98700ef71f:   mov    %rdx,%r12
   0.03%  │ │    0x00007f98700ef722:   and    %r10,%r12
   0.22%  │ │    0x00007f98700ef725:   add    %r13,%r15
   0.17%  │ │    0x00007f98700ef728:   or     %r12,%rdi
   0.06%  │ │    0x00007f98700ef72b:   add    %r14,%r8
   0.03%  │ │    0x00007f98700ef72e:   add    %r15,%r11
   0.23%  │ │    0x00007f98700ef731:   add    %r15,%r8
   0.16%  │ │    0x00007f98700ef734:   add    %rdi,%r8
   0.05%  │ │    0x00007f98700ef737:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%  │ │    0x00007f98700ef73c:   vpsllq $0x38,%ymm1,%ymm1
   0.22%  │ │    0x00007f98700ef741:   vpor   %ymm2,%ymm1,%ymm1
   0.18%  │ │    0x00007f98700ef745:   vpxor  %ymm8,%ymm3,%ymm3
   0.08%  │ │    0x00007f98700ef74a:   vpxor  %ymm1,%ymm3,%ymm1
   0.04%  │ │    0x00007f98700ef74e:   vpaddq %ymm1,%ymm0,%ymm0
   0.20%  │ │    0x00007f98700ef752:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.17%  │ │    0x00007f98700ef758:   vpand  %ymm10,%ymm0,%ymm0
   0.07%  │ │    0x00007f98700ef75d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.02%  │ │    0x00007f98700ef763:   vpsrlq $0x6,%ymm2,%ymm8
   0.24%  │ │    0x00007f98700ef768:   mov    %r8,%rdi
   0.14%  │ │    0x00007f98700ef76b:   rorx   $0x29,%r11,%r13
   0.09%  │ │    0x00007f98700ef771:   rorx   $0x12,%r11,%r14
   0.06%  │ │    0x00007f98700ef777:   add    0x8(%rsp),%rcx
   0.18%  │ │    0x00007f98700ef77c:   or     %r9,%rdi
   0.18%  │ │    0x00007f98700ef77f:   mov    %rax,%r15
   0.09%  │ │    0x00007f98700ef782:   xor    %rbx,%r15
   0.03%  │ │    0x00007f98700ef785:   rorx   $0x22,%r8,%r12
   0.25%  │ │    0x00007f98700ef78b:   xor    %r14,%r13
   0.19%  │ │    0x00007f98700ef78e:   rorx   $0xe,%r11,%r14
   0.09%  │ │    0x00007f98700ef794:   and    %r11,%r15
   0.04%  │ │    0x00007f98700ef797:   add    %rcx,%r10
   0.20%  │ │    0x00007f98700ef79a:   and    %rdx,%rdi
   0.15%  │ │    0x00007f98700ef79d:   xor    %r14,%r13
   0.07%  │ │    0x00007f98700ef7a0:   rorx   $0x27,%r8,%r14
   0.04%  │ │    0x00007f98700ef7a6:   xor    %r12,%r14
   0.26%  │ │    0x00007f98700ef7a9:   rorx   $0x1c,%r8,%r12
   0.13%  │ │    0x00007f98700ef7af:   xor    %rbx,%r15
   0.09%  │ │    0x00007f98700ef7b2:   xor    %r12,%r14
   0.03%  │ │    0x00007f98700ef7b5:   mov    %r8,%r12
   0.18%  │ │    0x00007f98700ef7b8:   and    %r9,%r12
   0.19%  │ │    0x00007f98700ef7bb:   add    %r13,%r15
   0.09%  │ │    0x00007f98700ef7be:   or     %r12,%rdi
   0.04%  │ │    0x00007f98700ef7c1:   add    %r14,%rcx
   0.18%  │ │    0x00007f98700ef7c4:   add    %r15,%r10
   0.17%  │ │    0x00007f98700ef7c7:   add    %r15,%rcx
   0.09%  │ │    0x00007f98700ef7ca:   add    %rdi,%rcx
   0.03%  │ │    0x00007f98700ef7cd:   vpsrlq $0x13,%ymm2,%ymm3
   0.19%  │ │    0x00007f98700ef7d2:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%  │ │    0x00007f98700ef7d7:   vpor   %ymm1,%ymm3,%ymm3
   0.10%  │ │    0x00007f98700ef7db:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%  │ │    0x00007f98700ef7df:   vpsrlq $0x3d,%ymm2,%ymm3
   0.20%  │ │    0x00007f98700ef7e4:   vpsllq $0x3,%ymm2,%ymm1
   0.18%  │ │    0x00007f98700ef7e9:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f98700ef7ed:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f98700ef7f1:   vpaddq %ymm8,%ymm5,%ymm5
   0.19%  │ │    0x00007f98700ef7f6:   vpsrlq $0x6,%ymm5,%ymm8
   0.16%  │ │    0x00007f98700ef7fb:   mov    %rcx,%rdi
   0.09%  │ │    0x00007f98700ef7fe:   rorx   $0x29,%r10,%r13
   0.04%  │ │    0x00007f98700ef804:   rorx   $0x12,%r10,%r14
   0.20%  │ │    0x00007f98700ef80a:   add    0x10(%rsp),%rbx
   0.16%  │ │    0x00007f98700ef80f:   or     %rdx,%rdi
   0.09%  │ │    0x00007f98700ef812:   mov    %r11,%r15
   0.03%  │ │    0x00007f98700ef815:   xor    %rax,%r15
   0.18%  │ │    0x00007f98700ef818:   rorx   $0x22,%rcx,%r12
   0.16%  │ │    0x00007f98700ef81e:   xor    %r14,%r13
   0.08%  │ │    0x00007f98700ef821:   rorx   $0xe,%r10,%r14
   0.03%  │ │    0x00007f98700ef827:   and    %r10,%r15
   0.22%  │ │    0x00007f98700ef82a:   add    %rbx,%r9
   0.16%  │ │    0x00007f98700ef82d:   and    %r8,%rdi
   0.10%  │ │    0x00007f98700ef830:   xor    %r14,%r13
   0.04%  │ │    0x00007f98700ef833:   rorx   $0x27,%rcx,%r14
   0.20%  │ │    0x00007f98700ef839:   xor    %r12,%r14
   0.18%  │ │    0x00007f98700ef83c:   rorx   $0x1c,%rcx,%r12
   0.10%  │ │    0x00007f98700ef842:   xor    %rax,%r15
   0.03%  │ │    0x00007f98700ef845:   xor    %r12,%r14
   0.21%  │ │    0x00007f98700ef848:   mov    %rcx,%r12
   0.13%  │ │    0x00007f98700ef84b:   and    %rdx,%r12
   0.08%  │ │    0x00007f98700ef84e:   add    %r13,%r15
   0.02%  │ │    0x00007f98700ef851:   or     %r12,%rdi
   0.19%  │ │    0x00007f98700ef854:   add    %r14,%rbx
   0.14%  │ │    0x00007f98700ef857:   add    %r15,%r9
   0.08%  │ │    0x00007f98700ef85a:   add    %r15,%rbx
   0.04%  │ │    0x00007f98700ef85d:   add    %rdi,%rbx
   0.17%  │ │    0x00007f98700ef860:   vpsrlq $0x13,%ymm5,%ymm3
   0.17%  │ │    0x00007f98700ef865:   vpsllq $0x2d,%ymm5,%ymm1
   0.08%  │ │    0x00007f98700ef86a:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │    0x00007f98700ef86e:   vpxor  %ymm3,%ymm8,%ymm8
   0.21%  │ │    0x00007f98700ef872:   vpsrlq $0x3d,%ymm5,%ymm3
   0.14%  │ │    0x00007f98700ef877:   vpsllq $0x3,%ymm5,%ymm1
   0.10%  │ │    0x00007f98700ef87c:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │    0x00007f98700ef880:   vpxor  %ymm3,%ymm8,%ymm8
   0.20%  │ │    0x00007f98700ef884:   vpaddq %ymm8,%ymm0,%ymm2
   0.21%  │ │    0x00007f98700ef889:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.12%  │ │    0x00007f98700ef88f:   mov    %rbx,%rdi
   0.04%  │ │    0x00007f98700ef892:   rorx   $0x29,%r9,%r13
   0.15%  │ │    0x00007f98700ef898:   rorx   $0x12,%r9,%r14
   0.15%  │ │    0x00007f98700ef89e:   add    0x18(%rsp),%rax
   0.13%  │ │    0x00007f98700ef8a3:   or     %r8,%rdi
   0.03%  │ │    0x00007f98700ef8a6:   mov    %r10,%r15
   0.15%  │ │    0x00007f98700ef8a9:   xor    %r11,%r15
   0.17%  │ │    0x00007f98700ef8ac:   rorx   $0x22,%rbx,%r12
   0.12%  │ │    0x00007f98700ef8b2:   xor    %r14,%r13
   0.02%  │ │    0x00007f98700ef8b5:   rorx   $0xe,%r9,%r14
   0.16%  │ │    0x00007f98700ef8bb:   and    %r9,%r15
   0.17%  │ │    0x00007f98700ef8be:   add    %rax,%rdx
   0.11%  │ │    0x00007f98700ef8c1:   and    %rcx,%rdi
   0.03%  │ │    0x00007f98700ef8c4:   xor    %r14,%r13
   0.18%  │ │    0x00007f98700ef8c7:   rorx   $0x27,%rbx,%r14
   0.18%  │ │    0x00007f98700ef8cd:   xor    %r12,%r14
   0.11%  │ │    0x00007f98700ef8d0:   rorx   $0x1c,%rbx,%r12
   0.04%  │ │    0x00007f98700ef8d6:   xor    %r11,%r15
   0.19%  │ │    0x00007f98700ef8d9:   xor    %r12,%r14
   0.17%  │ │    0x00007f98700ef8dc:   mov    %rbx,%r12
   0.12%  │ │    0x00007f98700ef8df:   and    %r8,%r12
   0.03%  │ │    0x00007f98700ef8e2:   add    %r13,%r15
   0.16%  │ │    0x00007f98700ef8e5:   or     %r12,%rdi
   0.18%  │ │    0x00007f98700ef8e8:   add    %r14,%rax
   0.12%  │ │    0x00007f98700ef8eb:   add    %r15,%rdx
   0.04%  │ │    0x00007f98700ef8ee:   add    %r15,%rax
   0.16%  │ │    0x00007f98700ef8f1:   add    %rdi,%rax
   0.15%  │ │    0x00007f98700ef8f4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.12%  │ │    0x00007f98700ef8f9:   vmovdqu %ymm0,(%rsp)
   0.04%  │ │    0x00007f98700ef8fe:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.18%  │ │    0x00007f98700ef904:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.17%  │ │    0x00007f98700ef90a:   vpaddq %ymm6,%ymm0,%ymm0
   0.19%  │ │    0x00007f98700ef90e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.04%  │ │    0x00007f98700ef914:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.18%  │ │    0x00007f98700ef91a:   vpsrlq $0x1,%ymm1,%ymm2
   0.16%  │ │    0x00007f98700ef91f:   vpsllq $0x3f,%ymm1,%ymm3
   0.15%  │ │    0x00007f98700ef924:   vpor   %ymm2,%ymm3,%ymm3
   0.06%  │ │    0x00007f98700ef928:   vpsrlq $0x7,%ymm1,%ymm8
   0.14%  │ │    0x00007f98700ef92d:   mov    %rax,%rdi
   0.12%  │ │    0x00007f98700ef930:   rorx   $0x29,%rdx,%r13
   0.16%  │ │    0x00007f98700ef936:   rorx   $0x12,%rdx,%r14
   0.04%  │ │    0x00007f98700ef93c:   add    (%rsp),%r11
   0.16%  │ │    0x00007f98700ef940:   or     %rcx,%rdi
   0.16%  │ │    0x00007f98700ef943:   mov    %r9,%r15
   0.19%  │ │    0x00007f98700ef946:   xor    %r10,%r15
   0.05%  │ │    0x00007f98700ef949:   rorx   $0x22,%rax,%r12
   0.20%  │ │    0x00007f98700ef94f:   xor    %r14,%r13
   0.14%  │ │    0x00007f98700ef952:   rorx   $0xe,%rdx,%r14
   0.14%  │ │    0x00007f98700ef958:   and    %rdx,%r15
   0.03%  │ │    0x00007f98700ef95b:   add    %r11,%r8
   0.16%  │ │    0x00007f98700ef95e:   and    %rbx,%rdi
   0.14%  │ │    0x00007f98700ef961:   xor    %r14,%r13
   0.15%  │ │    0x00007f98700ef964:   rorx   $0x27,%rax,%r14
   0.03%  │ │    0x00007f98700ef96a:   xor    %r12,%r14
   0.16%  │ │    0x00007f98700ef96d:   rorx   $0x1c,%rax,%r12
   0.14%  │ │    0x00007f98700ef973:   xor    %r10,%r15
   0.15%  │ │    0x00007f98700ef976:   xor    %r12,%r14
   0.06%  │ │    0x00007f98700ef979:   mov    %rax,%r12
   0.13%  │ │    0x00007f98700ef97c:   and    %rcx,%r12
   0.17%  │ │    0x00007f98700ef97f:   add    %r13,%r15
   0.18%  │ │    0x00007f98700ef982:   or     %r12,%rdi
   0.04%  │ │    0x00007f98700ef985:   add    %r14,%r11
   0.17%  │ │    0x00007f98700ef988:   add    %r15,%r8
   0.13%  │ │    0x00007f98700ef98b:   add    %r15,%r11
   0.16%  │ │    0x00007f98700ef98e:   add    %rdi,%r11
   0.03%  │ │    0x00007f98700ef991:   vpsrlq $0x8,%ymm1,%ymm2
   0.19%  │ │    0x00007f98700ef996:   vpsllq $0x38,%ymm1,%ymm1
   0.13%  │ │    0x00007f98700ef99b:   vpor   %ymm2,%ymm1,%ymm1
   0.20%  │ │    0x00007f98700ef99f:   vpxor  %ymm8,%ymm3,%ymm3
   0.03%  │ │    0x00007f98700ef9a4:   vpxor  %ymm1,%ymm3,%ymm1
   0.15%  │ │    0x00007f98700ef9a8:   vpaddq %ymm1,%ymm0,%ymm0
   0.12%  │ │    0x00007f98700ef9ac:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.17%  │ │    0x00007f98700ef9b2:   vpand  %ymm10,%ymm0,%ymm0
   0.06%  │ │    0x00007f98700ef9b7:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.15%  │ │    0x00007f98700ef9bd:   vpsrlq $0x6,%ymm2,%ymm8
   0.17%  │ │    0x00007f98700ef9c2:   mov    %r11,%rdi
   0.14%  │ │    0x00007f98700ef9c5:   rorx   $0x29,%r8,%r13
   0.06%  │ │    0x00007f98700ef9cb:   rorx   $0x12,%r8,%r14
   0.19%  │ │    0x00007f98700ef9d1:   add    0x8(%rsp),%r10
   0.12%  │ │    0x00007f98700ef9d6:   or     %rbx,%rdi
   0.15%  │ │    0x00007f98700ef9d9:   mov    %rdx,%r15
   0.07%  │ │    0x00007f98700ef9dc:   xor    %r9,%r15
   0.13%  │ │    0x00007f98700ef9df:   rorx   $0x22,%r11,%r12
   0.13%  │ │    0x00007f98700ef9e5:   xor    %r14,%r13
   0.15%  │ │    0x00007f98700ef9e8:   rorx   $0xe,%r8,%r14
   0.04%  │ │    0x00007f98700ef9ee:   and    %r8,%r15
   0.14%  │ │    0x00007f98700ef9f1:   add    %r10,%rcx
   0.12%  │ │    0x00007f98700ef9f4:   and    %rax,%rdi
   0.15%  │ │    0x00007f98700ef9f7:   xor    %r14,%r13
   0.05%  │ │    0x00007f98700ef9fa:   rorx   $0x27,%r11,%r14
   0.14%  │ │    0x00007f98700efa00:   xor    %r12,%r14
   0.13%  │ │    0x00007f98700efa03:   rorx   $0x1c,%r11,%r12
   0.15%  │ │    0x00007f98700efa09:   xor    %r9,%r15
   0.06%  │ │    0x00007f98700efa0c:   xor    %r12,%r14
   0.16%  │ │    0x00007f98700efa0f:   mov    %r11,%r12
   0.15%  │ │    0x00007f98700efa12:   and    %rbx,%r12
   0.12%  │ │    0x00007f98700efa15:   add    %r13,%r15
   0.05%  │ │    0x00007f98700efa18:   or     %r12,%rdi
   0.14%  │ │    0x00007f98700efa1b:   add    %r14,%r10
   0.15%  │ │    0x00007f98700efa1e:   add    %r15,%rcx
   0.14%  │ │    0x00007f98700efa21:   add    %r15,%r10
   0.04%  │ │    0x00007f98700efa24:   add    %rdi,%r10
   0.18%  │ │    0x00007f98700efa27:   vpsrlq $0x13,%ymm2,%ymm3
   0.14%  │ │    0x00007f98700efa2c:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%  │ │    0x00007f98700efa31:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │    0x00007f98700efa35:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%  │ │    0x00007f98700efa39:   vpsrlq $0x3d,%ymm2,%ymm3
   0.13%  │ │    0x00007f98700efa3e:   vpsllq $0x3,%ymm2,%ymm1
   0.13%  │ │    0x00007f98700efa43:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │    0x00007f98700efa47:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │    0x00007f98700efa4b:   vpaddq %ymm8,%ymm6,%ymm6
   0.13%  │ │    0x00007f98700efa50:   vpsrlq $0x6,%ymm6,%ymm8
   0.15%  │ │    0x00007f98700efa55:   mov    %r10,%rdi
   0.05%  │ │    0x00007f98700efa58:   rorx   $0x29,%rcx,%r13
   0.13%  │ │    0x00007f98700efa5e:   rorx   $0x12,%rcx,%r14
   0.13%  │ │    0x00007f98700efa64:   add    0x10(%rsp),%r9
   0.20%  │ │    0x00007f98700efa69:   or     %rax,%rdi
   0.04%  │ │    0x00007f98700efa6c:   mov    %r8,%r15
   0.17%  │ │    0x00007f98700efa6f:   xor    %rdx,%r15
   0.13%  │ │    0x00007f98700efa72:   rorx   $0x22,%r10,%r12
   0.17%  │ │    0x00007f98700efa78:   xor    %r14,%r13
   0.06%  │ │    0x00007f98700efa7b:   rorx   $0xe,%rcx,%r14
   0.16%  │ │    0x00007f98700efa81:   and    %rcx,%r15
   0.09%  │ │    0x00007f98700efa84:   add    %r9,%rbx
   0.15%  │ │    0x00007f98700efa87:   and    %r11,%rdi
   0.05%  │ │    0x00007f98700efa8a:   xor    %r14,%r13
   0.16%  │ │    0x00007f98700efa8d:   rorx   $0x27,%r10,%r14
   0.11%  │ │    0x00007f98700efa93:   xor    %r12,%r14
   0.16%  │ │    0x00007f98700efa96:   rorx   $0x1c,%r10,%r12
   0.06%  │ │    0x00007f98700efa9c:   xor    %rdx,%r15
   0.15%  │ │    0x00007f98700efa9f:   xor    %r12,%r14
   0.14%  │ │    0x00007f98700efaa2:   mov    %r10,%r12
   0.15%  │ │    0x00007f98700efaa5:   and    %rax,%r12
   0.03%  │ │    0x00007f98700efaa8:   add    %r13,%r15
   0.13%  │ │    0x00007f98700efaab:   or     %r12,%rdi
   0.16%  │ │    0x00007f98700efaae:   add    %r14,%r9
   0.15%  │ │    0x00007f98700efab1:   add    %r15,%rbx
   0.04%  │ │    0x00007f98700efab4:   add    %r15,%r9
   0.14%  │ │    0x00007f98700efab7:   add    %rdi,%r9
   0.11%  │ │    0x00007f98700efaba:   vpsrlq $0x13,%ymm6,%ymm3
   0.18%  │ │    0x00007f98700efabf:   vpsllq $0x2d,%ymm6,%ymm1
   0.05%  │ │    0x00007f98700efac4:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │    0x00007f98700efac8:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%  │ │    0x00007f98700efacc:   vpsrlq $0x3d,%ymm6,%ymm3
   0.20%  │ │    0x00007f98700efad1:   vpsllq $0x3,%ymm6,%ymm1
   0.06%  │ │    0x00007f98700efad6:   vpor   %ymm1,%ymm3,%ymm3
   0.18%  │ │    0x00007f98700efada:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%  │ │    0x00007f98700efade:   vpaddq %ymm8,%ymm0,%ymm2
   0.17%  │ │    0x00007f98700efae3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.11%  │ │    0x00007f98700efae9:   mov    %r9,%rdi
   0.13%  │ │    0x00007f98700efaec:   rorx   $0x29,%rbx,%r13
   0.12%  │ │    0x00007f98700efaf2:   rorx   $0x12,%rbx,%r14
   0.09%  │ │    0x00007f98700efaf8:   add    0x18(%rsp),%rdx
   0.13%  │ │    0x00007f98700efafd:   or     %r11,%rdi
   0.12%  │ │    0x00007f98700efb00:   mov    %rcx,%r15
   0.08%  │ │    0x00007f98700efb03:   xor    %r8,%r15
   0.12%  │ │    0x00007f98700efb06:   rorx   $0x22,%r9,%r12
   0.10%  │ │    0x00007f98700efb0c:   xor    %r14,%r13
   0.13%  │ │    0x00007f98700efb0f:   rorx   $0xe,%rbx,%r14
   0.09%  │ │    0x00007f98700efb15:   and    %rbx,%r15
   0.12%  │ │    0x00007f98700efb18:   add    %rdx,%rax
   0.11%  │ │    0x00007f98700efb1b:   and    %r10,%rdi
   0.13%  │ │    0x00007f98700efb1e:   xor    %r14,%r13
   0.11%  │ │    0x00007f98700efb21:   rorx   $0x27,%r9,%r14
   0.12%  │ │    0x00007f98700efb27:   xor    %r12,%r14
   0.10%  │ │    0x00007f98700efb2a:   rorx   $0x1c,%r9,%r12
   0.14%  │ │    0x00007f98700efb30:   xor    %r8,%r15
   0.10%  │ │    0x00007f98700efb33:   xor    %r12,%r14
   0.15%  │ │    0x00007f98700efb36:   mov    %r9,%r12
   0.11%  │ │    0x00007f98700efb39:   and    %r11,%r12
   0.12%  │ │    0x00007f98700efb3c:   add    %r13,%r15
   0.10%  │ │    0x00007f98700efb3f:   or     %r12,%rdi
   0.14%  │ │    0x00007f98700efb42:   add    %r14,%rdx
   0.10%  │ │    0x00007f98700efb45:   add    %r15,%rax
   0.14%  │ │    0x00007f98700efb48:   add    %r15,%rdx
   0.08%  │ │    0x00007f98700efb4b:   add    %rdi,%rdx
   0.13%  │ │    0x00007f98700efb4e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.13%  │ │    0x00007f98700efb53:   vmovdqu %ymm0,(%rsp)
   0.17%  │ │    0x00007f98700efb58:   add    $0x80,%rbp
   0.11%  │ │    0x00007f98700efb5f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.13%  │ │    0x00007f98700efb65:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.10%  │ │    0x00007f98700efb6b:   vpaddq %ymm7,%ymm0,%ymm0
   0.27%  │ │    0x00007f98700efb6f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.10%  │ │    0x00007f98700efb75:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.15%  │ │    0x00007f98700efb7b:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%  │ │    0x00007f98700efb80:   vpsllq $0x3f,%ymm1,%ymm3
   0.19%  │ │    0x00007f98700efb85:   vpor   %ymm2,%ymm3,%ymm3
   0.10%  │ │    0x00007f98700efb89:   vpsrlq $0x7,%ymm1,%ymm8
   0.09%  │ │    0x00007f98700efb8e:   mov    %rdx,%rdi
   0.11%  │ │    0x00007f98700efb91:   rorx   $0x29,%rax,%r13
   0.15%  │ │    0x00007f98700efb97:   rorx   $0x12,%rax,%r14
   0.11%  │ │    0x00007f98700efb9d:   add    (%rsp),%r8
   0.11%  │ │    0x00007f98700efba1:   or     %r10,%rdi
   0.09%  │ │    0x00007f98700efba4:   mov    %rbx,%r15
   0.20%  │ │    0x00007f98700efba7:   xor    %rcx,%r15
   0.09%  │ │    0x00007f98700efbaa:   rorx   $0x22,%rdx,%r12
   0.11%  │ │    0x00007f98700efbb0:   xor    %r14,%r13
   0.09%  │ │    0x00007f98700efbb3:   rorx   $0xe,%rax,%r14
   0.20%  │ │    0x00007f98700efbb9:   and    %rax,%r15
   0.08%  │ │    0x00007f98700efbbc:   add    %r8,%r11
   0.12%  │ │    0x00007f98700efbbf:   and    %r9,%rdi
   0.09%  │ │    0x00007f98700efbc2:   xor    %r14,%r13
   0.20%  │ │    0x00007f98700efbc5:   rorx   $0x27,%rdx,%r14
   0.11%  │ │    0x00007f98700efbcb:   xor    %r12,%r14
   0.12%  │ │    0x00007f98700efbce:   rorx   $0x1c,%rdx,%r12
   0.08%  │ │    0x00007f98700efbd4:   xor    %rcx,%r15
   0.18%  │ │    0x00007f98700efbd7:   xor    %r12,%r14
   0.11%  │ │    0x00007f98700efbda:   mov    %rdx,%r12
   0.10%  │ │    0x00007f98700efbdd:   and    %r10,%r12
   0.09%  │ │    0x00007f98700efbe0:   add    %r13,%r15
   0.17%  │ │    0x00007f98700efbe3:   or     %r12,%rdi
   0.12%  │ │    0x00007f98700efbe6:   add    %r14,%r8
   0.13%  │ │    0x00007f98700efbe9:   add    %r15,%r11
   0.10%  │ │    0x00007f98700efbec:   add    %r15,%r8
   0.21%  │ │    0x00007f98700efbef:   add    %rdi,%r8
   0.12%  │ │    0x00007f98700efbf2:   vpsrlq $0x8,%ymm1,%ymm2
   0.11%  │ │    0x00007f98700efbf7:   vpsllq $0x38,%ymm1,%ymm1
   0.09%  │ │    0x00007f98700efbfc:   vpor   %ymm2,%ymm1,%ymm1
   0.20%  │ │    0x00007f98700efc00:   vpxor  %ymm8,%ymm3,%ymm3
   0.12%  │ │    0x00007f98700efc05:   vpxor  %ymm1,%ymm3,%ymm1
   0.14%  │ │    0x00007f98700efc09:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%  │ │    0x00007f98700efc0d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.19%  │ │    0x00007f98700efc13:   vpand  %ymm10,%ymm0,%ymm0
   0.12%  │ │    0x00007f98700efc18:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.12%  │ │    0x00007f98700efc1e:   vpsrlq $0x6,%ymm2,%ymm8
   0.07%  │ │    0x00007f98700efc23:   mov    %r8,%rdi
   0.20%  │ │    0x00007f98700efc26:   rorx   $0x29,%r11,%r13
   0.11%  │ │    0x00007f98700efc2c:   rorx   $0x12,%r11,%r14
   0.11%  │ │    0x00007f98700efc32:   add    0x8(%rsp),%rcx
   0.12%  │ │    0x00007f98700efc37:   or     %r9,%rdi
   0.16%  │ │    0x00007f98700efc3a:   mov    %rax,%r15
   0.14%  │ │    0x00007f98700efc3d:   xor    %rbx,%r15
   0.10%  │ │    0x00007f98700efc40:   rorx   $0x22,%r8,%r12
   0.10%  │ │    0x00007f98700efc46:   xor    %r14,%r13
   0.19%  │ │    0x00007f98700efc49:   rorx   $0xe,%r11,%r14
   0.10%  │ │    0x00007f98700efc4f:   and    %r11,%r15
   0.10%  │ │    0x00007f98700efc52:   add    %rcx,%r10
   0.11%  │ │    0x00007f98700efc55:   and    %rdx,%rdi
   0.20%  │ │    0x00007f98700efc58:   xor    %r14,%r13
   0.13%  │ │    0x00007f98700efc5b:   rorx   $0x27,%r8,%r14
   0.11%  │ │    0x00007f98700efc61:   xor    %r12,%r14
   0.08%  │ │    0x00007f98700efc64:   rorx   $0x1c,%r8,%r12
   0.16%  │ │    0x00007f98700efc6a:   xor    %rbx,%r15
   0.10%  │ │    0x00007f98700efc6d:   xor    %r12,%r14
   0.11%  │ │    0x00007f98700efc70:   mov    %r8,%r12
   0.10%  │ │    0x00007f98700efc73:   and    %r9,%r12
   0.15%  │ │    0x00007f98700efc76:   add    %r13,%r15
   0.10%  │ │    0x00007f98700efc79:   or     %r12,%rdi
   0.11%  │ │    0x00007f98700efc7c:   add    %r14,%rcx
   0.08%  │ │    0x00007f98700efc7f:   add    %r15,%r10
   0.18%  │ │    0x00007f98700efc82:   add    %r15,%rcx
   0.13%  │ │    0x00007f98700efc85:   add    %rdi,%rcx
   0.11%  │ │    0x00007f98700efc88:   vpsrlq $0x13,%ymm2,%ymm3
   0.13%  │ │    0x00007f98700efc8d:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%  │ │    0x00007f98700efc92:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │    0x00007f98700efc96:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%  │ │    0x00007f98700efc9a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.09%  │ │    0x00007f98700efc9f:   vpsllq $0x3,%ymm2,%ymm1
   0.19%  │ │    0x00007f98700efca4:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │    0x00007f98700efca8:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │    0x00007f98700efcac:   vpaddq %ymm8,%ymm7,%ymm7
   0.11%  │ │    0x00007f98700efcb1:   vpsrlq $0x6,%ymm7,%ymm8
   0.21%  │ │    0x00007f98700efcb6:   mov    %rcx,%rdi
   0.13%  │ │    0x00007f98700efcb9:   rorx   $0x29,%r10,%r13
   0.09%  │ │    0x00007f98700efcbf:   rorx   $0x12,%r10,%r14
   0.08%  │ │    0x00007f98700efcc5:   add    0x10(%rsp),%rbx
   0.19%  │ │    0x00007f98700efcca:   or     %rdx,%rdi
   0.10%  │ │    0x00007f98700efccd:   mov    %r11,%r15
   0.09%  │ │    0x00007f98700efcd0:   xor    %rax,%r15
   0.09%  │ │    0x00007f98700efcd3:   rorx   $0x22,%rcx,%r12
   0.20%  │ │    0x00007f98700efcd9:   xor    %r14,%r13
   0.11%  │ │    0x00007f98700efcdc:   rorx   $0xe,%r10,%r14
   0.10%  │ │    0x00007f98700efce2:   and    %r10,%r15
   0.10%  │ │    0x00007f98700efce5:   add    %rbx,%r9
   0.18%  │ │    0x00007f98700efce8:   and    %r8,%rdi
   0.11%  │ │    0x00007f98700efceb:   xor    %r14,%r13
   0.08%  │ │    0x00007f98700efcee:   rorx   $0x27,%rcx,%r14
   0.09%  │ │    0x00007f98700efcf4:   xor    %r12,%r14
   0.18%  │ │    0x00007f98700efcf7:   rorx   $0x1c,%rcx,%r12
   0.09%  │ │    0x00007f98700efcfd:   xor    %rax,%r15
   0.09%  │ │    0x00007f98700efd00:   xor    %r12,%r14
   0.08%  │ │    0x00007f98700efd03:   mov    %rcx,%r12
   0.14%  │ │    0x00007f98700efd06:   and    %rdx,%r12
   0.10%  │ │    0x00007f98700efd09:   add    %r13,%r15
   0.08%  │ │    0x00007f98700efd0c:   or     %r12,%rdi
   0.06%  │ │    0x00007f98700efd0f:   add    %r14,%rbx
   0.18%  │ │    0x00007f98700efd12:   add    %r15,%r9
   0.13%  │ │    0x00007f98700efd15:   add    %r15,%rbx
   0.09%  │ │    0x00007f98700efd18:   add    %rdi,%rbx
   0.08%  │ │    0x00007f98700efd1b:   vpsrlq $0x13,%ymm7,%ymm3
   0.18%  │ │    0x00007f98700efd20:   vpsllq $0x2d,%ymm7,%ymm1
   0.12%  │ │    0x00007f98700efd25:   vpor   %ymm1,%ymm3,%ymm3
   0.09%  │ │    0x00007f98700efd29:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%  │ │    0x00007f98700efd2d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.16%  │ │    0x00007f98700efd32:   vpsllq $0x3,%ymm7,%ymm1
   0.14%  │ │    0x00007f98700efd37:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │    0x00007f98700efd3b:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%  │ │    0x00007f98700efd3f:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │    0x00007f98700efd44:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.20%  │ │    0x00007f98700efd4a:   mov    %rbx,%rdi
   0.09%  │ │    0x00007f98700efd4d:   rorx   $0x29,%r9,%r13
   0.07%  │ │    0x00007f98700efd53:   rorx   $0x12,%r9,%r14
   0.13%  │ │    0x00007f98700efd59:   add    0x18(%rsp),%rax
   0.15%  │ │    0x00007f98700efd5e:   or     %r8,%rdi
   0.10%  │ │    0x00007f98700efd61:   mov    %r10,%r15
   0.05%  │ │    0x00007f98700efd64:   xor    %r11,%r15
   0.15%  │ │    0x00007f98700efd67:   rorx   $0x22,%rbx,%r12
   0.16%  │ │    0x00007f98700efd6d:   xor    %r14,%r13
   0.09%  │ │    0x00007f98700efd70:   rorx   $0xe,%r9,%r14
   0.07%  │ │    0x00007f98700efd76:   and    %r9,%r15
   0.18%  │ │    0x00007f98700efd79:   add    %rax,%rdx
   0.16%  │ │    0x00007f98700efd7c:   and    %rcx,%rdi
   0.06%  │ │    0x00007f98700efd7f:   xor    %r14,%r13
   0.04%  │ │    0x00007f98700efd82:   rorx   $0x27,%rbx,%r14
   0.16%  │ │    0x00007f98700efd88:   xor    %r12,%r14
   0.16%  │ │    0x00007f98700efd8b:   rorx   $0x1c,%rbx,%r12
   0.07%  │ │    0x00007f98700efd91:   xor    %r11,%r15
   0.06%  │ │    0x00007f98700efd94:   xor    %r12,%r14
   0.16%  │ │    0x00007f98700efd97:   mov    %rbx,%r12
   0.15%  │ │    0x00007f98700efd9a:   and    %r8,%r12
   0.09%  │ │    0x00007f98700efd9d:   add    %r13,%r15
   0.07%  │ │    0x00007f98700efda0:   or     %r12,%rdi
   0.15%  │ │    0x00007f98700efda3:   add    %r14,%rax
   0.18%  │ │    0x00007f98700efda6:   add    %r15,%rdx
   0.11%  │ │    0x00007f98700efda9:   add    %r15,%rax
   0.07%  │ │    0x00007f98700efdac:   add    %rdi,%rax
   0.13%  │ │    0x00007f98700efdaf:   subq   $0x1,0x20(%rsp)
   0.26%  ╰ │    0x00007f98700efdb5:   jne    0x00007f98700ef440
   0.03%    │    0x00007f98700efdbb:   movq   $0x2,0x20(%rsp)
   0.06%   ↗│    0x00007f98700efdc4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.08%   ││    0x00007f98700efdc9:   vmovdqu %ymm0,(%rsp)
   0.06%   ││    0x00007f98700efdce:   mov    %r9,%r15
   0.07%   ││    0x00007f98700efdd1:   rorx   $0x29,%rdx,%r13
   0.06%   ││    0x00007f98700efdd7:   rorx   $0x12,%rdx,%r14
   0.06%   ││    0x00007f98700efddd:   xor    %r10,%r15
   0.06%   ││    0x00007f98700efde0:   xor    %r14,%r13
   0.05%   ││    0x00007f98700efde3:   rorx   $0xe,%rdx,%r14
   0.03%   ││    0x00007f98700efde9:   and    %rdx,%r15
   0.05%   ││    0x00007f98700efdec:   xor    %r14,%r13
   0.07%   ││    0x00007f98700efdef:   rorx   $0x22,%rax,%r12
   0.07%   ││    0x00007f98700efdf5:   xor    %r10,%r15
   0.05%   ││    0x00007f98700efdf8:   rorx   $0x27,%rax,%r14
   0.05%   ││    0x00007f98700efdfe:   mov    %rax,%rdi
   0.06%   ││    0x00007f98700efe01:   xor    %r12,%r14
   0.10%   ││    0x00007f98700efe04:   rorx   $0x1c,%rax,%r12
   0.07%   ││    0x00007f98700efe0a:   add    (%rsp),%r11
   0.08%   ││    0x00007f98700efe0e:   or     %rcx,%rdi
   0.05%   ││    0x00007f98700efe11:   xor    %r12,%r14
   0.07%   ││    0x00007f98700efe14:   mov    %rax,%r12
   0.03%   ││    0x00007f98700efe17:   and    %rbx,%rdi
   0.05%   ││    0x00007f98700efe1a:   and    %rcx,%r12
   0.06%   ││    0x00007f98700efe1d:   add    %r13,%r15
   0.07%   ││    0x00007f98700efe20:   add    %r11,%r8
   0.06%   ││    0x00007f98700efe23:   or     %r12,%rdi
   0.07%   ││    0x00007f98700efe26:   add    %r14,%r11
   0.07%   ││    0x00007f98700efe29:   add    %r15,%r8
   0.08%   ││    0x00007f98700efe2c:   add    %r15,%r11
   0.06%   ││    0x00007f98700efe2f:   mov    %rdx,%r15
   0.07%   ││    0x00007f98700efe32:   rorx   $0x29,%r8,%r13
   0.06%   ││    0x00007f98700efe38:   rorx   $0x12,%r8,%r14
   0.05%   ││    0x00007f98700efe3e:   xor    %r9,%r15
   0.06%   ││    0x00007f98700efe41:   xor    %r14,%r13
   0.07%   ││    0x00007f98700efe44:   rorx   $0xe,%r8,%r14
   0.06%   ││    0x00007f98700efe4a:   and    %r8,%r15
   0.08%   ││    0x00007f98700efe4d:   add    %rdi,%r11
   0.05%   ││    0x00007f98700efe50:   xor    %r14,%r13
   0.09%   ││    0x00007f98700efe53:   rorx   $0x22,%r11,%r12
   0.05%   ││    0x00007f98700efe59:   xor    %r9,%r15
   0.09%   ││    0x00007f98700efe5c:   rorx   $0x27,%r11,%r14
   0.08%   ││    0x00007f98700efe62:   mov    %r11,%rdi
   0.05%   ││    0x00007f98700efe65:   xor    %r12,%r14
   0.05%   ││    0x00007f98700efe68:   rorx   $0x1c,%r11,%r12
   0.08%   ││    0x00007f98700efe6e:   add    0x8(%rsp),%r10
   0.04%   ││    0x00007f98700efe73:   or     %rbx,%rdi
   0.05%   ││    0x00007f98700efe76:   xor    %r12,%r14
   0.07%   ││    0x00007f98700efe79:   mov    %r11,%r12
   0.06%   ││    0x00007f98700efe7c:   and    %rax,%rdi
   0.05%   ││    0x00007f98700efe7f:   and    %rbx,%r12
   0.05%   ││    0x00007f98700efe82:   add    %r13,%r15
   0.06%   ││    0x00007f98700efe85:   add    %r10,%rcx
   0.05%   ││    0x00007f98700efe88:   or     %r12,%rdi
   0.06%   ││    0x00007f98700efe8b:   add    %r14,%r10
   0.05%   ││    0x00007f98700efe8e:   add    %r15,%rcx
   0.06%   ││    0x00007f98700efe91:   add    %r15,%r10
   0.06%   ││    0x00007f98700efe94:   mov    %r8,%r15
   0.06%   ││    0x00007f98700efe97:   rorx   $0x29,%rcx,%r13
   0.07%   ││    0x00007f98700efe9d:   rorx   $0x12,%rcx,%r14
   0.07%   ││    0x00007f98700efea3:   xor    %rdx,%r15
   0.08%   ││    0x00007f98700efea6:   xor    %r14,%r13
   0.07%   ││    0x00007f98700efea9:   rorx   $0xe,%rcx,%r14
   0.08%   ││    0x00007f98700efeaf:   and    %rcx,%r15
   0.05%   ││    0x00007f98700efeb2:   add    %rdi,%r10
   0.07%   ││    0x00007f98700efeb5:   xor    %r14,%r13
   0.06%   ││    0x00007f98700efeb8:   rorx   $0x22,%r10,%r12
   0.07%   ││    0x00007f98700efebe:   xor    %rdx,%r15
   0.04%   ││    0x00007f98700efec1:   rorx   $0x27,%r10,%r14
   0.07%   ││    0x00007f98700efec7:   mov    %r10,%rdi
   0.06%   ││    0x00007f98700efeca:   xor    %r12,%r14
   0.08%   ││    0x00007f98700efecd:   rorx   $0x1c,%r10,%r12
   0.07%   ││    0x00007f98700efed3:   add    0x10(%rsp),%r9
   0.04%   ││    0x00007f98700efed8:   or     %rax,%rdi
   0.05%   ││    0x00007f98700efedb:   xor    %r12,%r14
   0.07%   ││    0x00007f98700efede:   mov    %r10,%r12
   0.04%   ││    0x00007f98700efee1:   and    %r11,%rdi
   0.05%   ││    0x00007f98700efee4:   and    %rax,%r12
   0.07%   ││    0x00007f98700efee7:   add    %r13,%r15
   0.08%   ││    0x00007f98700efeea:   add    %r9,%rbx
   0.06%   ││    0x00007f98700efeed:   or     %r12,%rdi
   0.07%   ││    0x00007f98700efef0:   add    %r14,%r9
   0.06%   ││    0x00007f98700efef3:   add    %r15,%rbx
   0.09%   ││    0x00007f98700efef6:   add    %r15,%r9
   0.05%   ││    0x00007f98700efef9:   mov    %rcx,%r15
   0.06%   ││    0x00007f98700efefc:   rorx   $0x29,%rbx,%r13
   0.07%   ││    0x00007f98700eff02:   rorx   $0x12,%rbx,%r14
   0.09%   ││    0x00007f98700eff08:   xor    %r8,%r15
   0.06%   ││    0x00007f98700eff0b:   xor    %r14,%r13
   0.07%   ││    0x00007f98700eff0e:   rorx   $0xe,%rbx,%r14
   0.05%   ││    0x00007f98700eff14:   and    %rbx,%r15
   0.07%   ││    0x00007f98700eff17:   add    %rdi,%r9
   0.09%   ││    0x00007f98700eff1a:   xor    %r14,%r13
   0.08%   ││    0x00007f98700eff1d:   rorx   $0x22,%r9,%r12
   0.08%   ││    0x00007f98700eff23:   xor    %r8,%r15
   0.08%   ││    0x00007f98700eff26:   rorx   $0x27,%r9,%r14
   0.07%   ││    0x00007f98700eff2c:   mov    %r9,%rdi
   0.07%   ││    0x00007f98700eff2f:   xor    %r12,%r14
   0.06%   ││    0x00007f98700eff32:   rorx   $0x1c,%r9,%r12
   0.07%   ││    0x00007f98700eff38:   add    0x18(%rsp),%rdx
   0.04%   ││    0x00007f98700eff3d:   or     %r11,%rdi
   0.07%   ││    0x00007f98700eff40:   xor    %r12,%r14
   0.06%   ││    0x00007f98700eff43:   mov    %r9,%r12
   0.07%   ││    0x00007f98700eff46:   and    %r10,%rdi
   0.06%   ││    0x00007f98700eff49:   and    %r11,%r12
   0.06%   ││    0x00007f98700eff4c:   add    %r13,%r15
   0.08%   ││    0x00007f98700eff4f:   add    %rdx,%rax
   0.07%   ││    0x00007f98700eff52:   or     %r12,%rdi
   0.05%   ││    0x00007f98700eff55:   add    %r14,%rdx
   0.05%   ││    0x00007f98700eff58:   add    %r15,%rax
   0.07%   ││    0x00007f98700eff5b:   add    %r15,%rdx
   0.06%   ││    0x00007f98700eff5e:   add    %rdi,%rdx
   0.06%   ││    0x00007f98700eff61:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.05%   ││    0x00007f98700eff66:   vmovdqu %ymm0,(%rsp)
   0.03%   ││    0x00007f98700eff6b:   add    $0x40,%rbp
   0.07%   ││    0x00007f98700eff6f:   mov    %rbx,%r15
   0.09%   ││    0x00007f98700eff72:   rorx   $0x29,%rax,%r13
   0.06%   ││    0x00007f98700eff78:   rorx   $0x12,%rax,%r14
   0.06%   ││    0x00007f98700eff7e:   xor    %rcx,%r15
   0.07%   ││    0x00007f98700eff81:   xor    %r14,%r13
   0.10%   ││    0x00007f98700eff84:   rorx   $0xe,%rax,%r14
   0.06%   ││    0x00007f98700eff8a:   and    %rax,%r15
   0.04%   ││    0x00007f98700eff8d:   xor    %r14,%r13
   0.05%   ││    0x00007f98700eff90:   rorx   $0x22,%rdx,%r12
   0.10%   ││    0x00007f98700eff96:   xor    %rcx,%r15
   0.06%   ││    0x00007f98700eff99:   rorx   $0x27,%rdx,%r14
   0.05%   ││    0x00007f98700eff9f:   mov    %rdx,%rdi
   0.06%   ││    0x00007f98700effa2:   xor    %r12,%r14
   0.07%   ││    0x00007f98700effa5:   rorx   $0x1c,%rdx,%r12
   0.06%   ││    0x00007f98700effab:   add    (%rsp),%r8
   0.06%   ││    0x00007f98700effaf:   or     %r10,%rdi
   0.05%   ││    0x00007f98700effb2:   xor    %r12,%r14
   0.06%   ││    0x00007f98700effb5:   mov    %rdx,%r12
   0.07%   ││    0x00007f98700effb8:   and    %r9,%rdi
   0.06%   ││    0x00007f98700effbb:   and    %r10,%r12
   0.04%   ││    0x00007f98700effbe:   add    %r13,%r15
   0.09%   ││    0x00007f98700effc1:   add    %r8,%r11
   0.04%   ││    0x00007f98700effc4:   or     %r12,%rdi
   0.04%   ││    0x00007f98700effc7:   add    %r14,%r8
   0.07%   ││    0x00007f98700effca:   add    %r15,%r11
   0.10%   ││    0x00007f98700effcd:   add    %r15,%r8
   0.04%   ││    0x00007f98700effd0:   mov    %rax,%r15
   0.06%   ││    0x00007f98700effd3:   rorx   $0x29,%r11,%r13
   0.08%   ││    0x00007f98700effd9:   rorx   $0x12,%r11,%r14
   0.06%   ││    0x00007f98700effdf:   xor    %rbx,%r15
   0.05%   ││    0x00007f98700effe2:   xor    %r14,%r13
   0.05%   ││    0x00007f98700effe5:   rorx   $0xe,%r11,%r14
   0.06%   ││    0x00007f98700effeb:   and    %r11,%r15
   0.07%   ││    0x00007f98700effee:   add    %rdi,%r8
   0.08%   ││    0x00007f98700efff1:   xor    %r14,%r13
   0.06%   ││    0x00007f98700efff4:   rorx   $0x22,%r8,%r12
   0.06%   ││    0x00007f98700efffa:   xor    %rbx,%r15
   0.09%   ││    0x00007f98700efffd:   rorx   $0x27,%r8,%r14
   0.07%   ││    0x00007f98700f0003:   mov    %r8,%rdi
   0.04%   ││    0x00007f98700f0006:   xor    %r12,%r14
   0.08%   ││    0x00007f98700f0009:   rorx   $0x1c,%r8,%r12
   0.08%   ││    0x00007f98700f000f:   add    0x8(%rsp),%rcx
   0.03%   ││    0x00007f98700f0014:   or     %r9,%rdi
   0.05%   ││    0x00007f98700f0017:   xor    %r12,%r14
   0.08%   ││    0x00007f98700f001a:   mov    %r8,%r12
   0.06%   ││    0x00007f98700f001d:   and    %rdx,%rdi
   0.04%   ││    0x00007f98700f0020:   and    %r9,%r12
   0.06%   ││    0x00007f98700f0023:   add    %r13,%r15
   0.06%   ││    0x00007f98700f0026:   add    %rcx,%r10
   0.06%   ││    0x00007f98700f0029:   or     %r12,%rdi
   0.05%   ││    0x00007f98700f002c:   add    %r14,%rcx
   0.05%   ││    0x00007f98700f002f:   add    %r15,%r10
   0.10%   ││    0x00007f98700f0032:   add    %r15,%rcx
   0.05%   ││    0x00007f98700f0035:   mov    %r11,%r15
   0.04%   ││    0x00007f98700f0038:   rorx   $0x29,%r10,%r13
   0.07%   ││    0x00007f98700f003e:   rorx   $0x12,%r10,%r14
   0.09%   ││    0x00007f98700f0044:   xor    %rax,%r15
   0.09%   ││    0x00007f98700f0047:   xor    %r14,%r13
   0.09%   ││    0x00007f98700f004a:   rorx   $0xe,%r10,%r14
   0.07%   ││    0x00007f98700f0050:   and    %r10,%r15
   0.09%   ││    0x00007f98700f0053:   add    %rdi,%rcx
   0.06%   ││    0x00007f98700f0056:   xor    %r14,%r13
   0.05%   ││    0x00007f98700f0059:   rorx   $0x22,%rcx,%r12
   0.05%   ││    0x00007f98700f005f:   xor    %rax,%r15
   0.10%   ││    0x00007f98700f0062:   rorx   $0x27,%rcx,%r14
   0.07%   ││    0x00007f98700f0068:   mov    %rcx,%rdi
   0.04%   ││    0x00007f98700f006b:   xor    %r12,%r14
   0.05%   ││    0x00007f98700f006e:   rorx   $0x1c,%rcx,%r12
   0.07%   ││    0x00007f98700f0074:   add    0x10(%rsp),%rbx
   0.03%   ││    0x00007f98700f0079:   or     %rdx,%rdi
   0.05%   ││    0x00007f98700f007c:   xor    %r12,%r14
   0.08%   ││    0x00007f98700f007f:   mov    %rcx,%r12
   0.07%   ││    0x00007f98700f0082:   and    %r8,%rdi
   0.06%   ││    0x00007f98700f0085:   and    %rdx,%r12
   0.05%   ││    0x00007f98700f0088:   add    %r13,%r15
   0.05%   ││    0x00007f98700f008b:   add    %rbx,%r9
   0.08%   ││    0x00007f98700f008e:   or     %r12,%rdi
   0.06%   ││    0x00007f98700f0091:   add    %r14,%rbx
   0.04%   ││    0x00007f98700f0094:   add    %r15,%r9
   0.06%   ││    0x00007f98700f0097:   add    %r15,%rbx
   0.07%   ││    0x00007f98700f009a:   mov    %r10,%r15
   0.05%   ││    0x00007f98700f009d:   rorx   $0x29,%r9,%r13
   0.05%   ││    0x00007f98700f00a3:   rorx   $0x12,%r9,%r14
   0.06%   ││    0x00007f98700f00a9:   xor    %r11,%r15
   0.08%   ││    0x00007f98700f00ac:   xor    %r14,%r13
   0.07%   ││    0x00007f98700f00af:   rorx   $0xe,%r9,%r14
   0.07%   ││    0x00007f98700f00b5:   and    %r9,%r15
   0.08%   ││    0x00007f98700f00b8:   add    %rdi,%rbx
   0.06%   ││    0x00007f98700f00bb:   xor    %r14,%r13
   0.09%   ││    0x00007f98700f00be:   rorx   $0x22,%rbx,%r12
   0.05%   ││    0x00007f98700f00c4:   xor    %r11,%r15
   0.07%   ││    0x00007f98700f00c7:   rorx   $0x27,%rbx,%r14
   0.08%   ││    0x00007f98700f00cd:   mov    %rbx,%rdi
   0.08%   ││    0x00007f98700f00d0:   xor    %r12,%r14
   0.06%   ││    0x00007f98700f00d3:   rorx   $0x1c,%rbx,%r12
   0.05%   ││    0x00007f98700f00d9:   add    0x18(%rsp),%rax
   0.07%   ││    0x00007f98700f00de:   or     %r8,%rdi
   0.05%   ││    0x00007f98700f00e1:   xor    %r12,%r14
   0.09%   ││    0x00007f98700f00e4:   mov    %rbx,%r12
   0.05%   ││    0x00007f98700f00e7:   and    %rcx,%rdi
   0.05%   ││    0x00007f98700f00ea:   and    %r8,%r12
   0.05%   ││    0x00007f98700f00ed:   add    %r13,%r15
   0.09%   ││    0x00007f98700f00f0:   add    %rax,%rdx
   0.06%   ││    0x00007f98700f00f3:   or     %r12,%rdi
   0.05%   ││    0x00007f98700f00f6:   add    %r14,%rax
   0.08%   ││    0x00007f98700f00f9:   add    %r15,%rdx
   0.07%   ││    0x00007f98700f00fc:   add    %r15,%rax
   0.08%   ││    0x00007f98700f00ff:   add    %rdi,%rax
   0.11%   ││    0x00007f98700f0102:   vmovdqu %ymm6,%ymm4
   0.06%   ││    0x00007f98700f0106:   vmovdqu %ymm7,%ymm5
   0.02%   ││    0x00007f98700f010a:   subq   $0x1,0x20(%rsp)
   0.17%   ╰│    0x00007f98700f0110:   jne    0x00007f98700efdc4
   0.03%    │    0x00007f98700f0116:   add    (%rsi),%rax
   0.11%    │    0x00007f98700f0119:   mov    %rax,(%rsi)
   0.24%    │    0x00007f98700f011c:   add    0x8(%rsi),%rbx
            │    0x00007f98700f0120:   mov    %rbx,0x8(%rsi)
   0.00%    │    0x00007f98700f0124:   add    0x10(%rsi),%rcx
            │    0x00007f98700f0128:   mov    %rcx,0x10(%rsi)
   0.12%    │    0x00007f98700f012c:   add    0x18(%rsi),%r8
            │    0x00007f98700f0130:   mov    %r8,0x18(%rsi)
   0.01%    │    0x00007f98700f0134:   add    0x20(%rsi),%rdx
            │    0x00007f98700f0138:   mov    %rdx,0x20(%rsi)
   0.13%    │    0x00007f98700f013c:   add    0x28(%rsi),%r9
            │    0x00007f98700f0140:   mov    %r9,0x28(%rsi)
   0.00%    │    0x00007f98700f0144:   add    0x30(%rsi),%r10
            │    0x00007f98700f0148:   mov    %r10,0x30(%rsi)
   0.11%    │    0x00007f98700f014c:   add    0x38(%rsi),%r11
            │    0x00007f98700f0150:   mov    %r11,0x38(%rsi)
   0.02%    │    0x00007f98700f0154:   mov    0x28(%rsp),%rdi
   0.04%    │    0x00007f98700f0159:   add    $0x80,%rdi
   0.13%    │    0x00007f98700f0160:   cmp    0x30(%rsp),%rdi
            ╰    0x00007f98700f0165:   jne    0x00007f98700ef3fb
   0.02%         0x00007f98700f016b:   mov    0x40(%rsp),%rbp
   0.01%         0x00007f98700f0170:   mov    0x48(%rsp),%rbx
                 0x00007f98700f0175:   mov    0x50(%rsp),%r12
                 0x00007f98700f017a:   mov    0x58(%rsp),%r13
   0.00%         0x00007f98700f017f:   mov    0x60(%rsp),%r14
                 0x00007f98700f0184:   mov    0x68(%rsp),%r15
                 0x00007f98700f0189:   mov    0x38(%rsp),%rsp
                 0x00007f98700f018e:   pop    %rcx
   0.01%         0x00007f98700f018f:   pop    %rdx
                 0x00007f98700f0190:   mov    %rdx,%rax
   0.22%      ↗  0x00007f98700f0193:   cmp    %rcx,%rax
             ╭│  0x00007f98700f0196:   jae    0x00007f98700f01a0
   0.00%     ││  0x00007f98700f0198:   add    $0x80,%rax
   0.00%     │╰  0x00007f98700f019e:   jmp    0x00007f98700f0193
   0.04%     ↘   0x00007f98700f01a0:   vzeroupper 
   0.00%         0x00007f98700f01a3:   leave  
   0.02%         0x00007f98700f01a4:   ret    
               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::avx2_shuffle_base64 [0x00007f98700f01c0, 0x00007f98700f01e0] (32 bytes)
               --------------------------------------------------------------------------------
....................................................................................................
  92.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.26%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.29%        runtime stub  StubRoutines::sha512_implCompress 
   0.35%              kernel  [unknown] 
   0.26%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.09%              kernel  [unknown] 
   0.09%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 754 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   2.01%  <...other 438 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.26%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.29%        runtime stub  StubRoutines::sha512_implCompress 
   1.81%              kernel  [unknown] 
   0.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 757 
   0.26%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.21%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 754 
   0.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.03%         c2, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 693 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%        libc-2.31.so  syscall 
   0.19%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.86%        runtime stub
   1.81%              kernel
   0.99%         c2, level 4
   0.16%           libjvm.so
   0.07%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%                    
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512/224, length = 16384)

# Run progress: 50.00% complete, ETA 00:10:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.561 us/op
# Warmup Iteration   2: 39.592 us/op
# Warmup Iteration   3: 39.345 us/op
# Warmup Iteration   4: 39.325 us/op
# Warmup Iteration   5: 39.319 us/op
Iteration   1: 39.388 us/op
Iteration   2: 39.330 us/op
Iteration   3: 39.327 us/op
Iteration   4: 39.334 us/op
Iteration   5: 39.325 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.341 ±(99.9%) 0.102 us/op [Average]
  (min, avg, max) = (39.325, 39.341, 39.388), stdev = 0.027
  CI (99.9%): [39.238, 39.443] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 159678 total address lines.
Perf output processed (skipped 56.560 seconds):
 Column 1: cycles (50459 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompress 

 <region is too big to display, has 1817 lines, but threshold is 1000>
....................................................................................................
  97.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.21%        runtime stub  StubRoutines::sha512_implCompress 
   0.56%         c2, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 708 
   0.26%              kernel  [unknown] 
   0.19%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.11%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.09%         c2, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 708 
   0.08%              kernel  [unknown] 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%         c2, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 708 
   0.02%         c2, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 708 
   0.97%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%        runtime stub  StubRoutines::sha512_implCompress 
   1.23%              kernel  [unknown] 
   0.70%         c2, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 708 
   0.30%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.05%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.14%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.56%        runtime stub
   1.23%              kernel
   0.95%         c2, level 4
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512/256, length = 16384)

# Run progress: 58.33% complete, ETA 00:09:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.717 us/op
# Warmup Iteration   2: 39.397 us/op
# Warmup Iteration   3: 39.367 us/op
# Warmup Iteration   4: 39.393 us/op
# Warmup Iteration   5: 39.391 us/op
Iteration   1: 39.399 us/op
Iteration   2: 39.392 us/op
Iteration   3: 39.397 us/op
Iteration   4: 39.396 us/op
Iteration   5: 39.393 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.396 ±(99.9%) 0.011 us/op [Average]
  (min, avg, max) = (39.392, 39.396, 39.399), stdev = 0.003
  CI (99.9%): [39.384, 39.407] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 169345 total address lines.
Perf output processed (skipped 56.759 seconds):
 Column 1: cycles (50478 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                 0x00007fb4900ef4ac:   mov    (%rsi),%rax
                 0x00007fb4900ef4af:   mov    0x8(%rsi),%rbx
                 0x00007fb4900ef4b3:   mov    0x10(%rsi),%rcx
   0.00%         0x00007fb4900ef4b7:   mov    0x18(%rsi),%r8
                 0x00007fb4900ef4bb:   mov    0x20(%rsi),%rdx
                 0x00007fb4900ef4bf:   mov    0x28(%rsi),%r9
                 0x00007fb4900ef4c3:   mov    0x38(%rsi),%r11
                 0x00007fb4900ef4c7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007fb4900ee5e0
                 0x00007fb4900ef4cf:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007fb4900ee600
                 0x00007fb4900ef4d7:   mov    0x30(%rsi),%r10
   0.00%    ↗    0x00007fb4900ef4db:   movabs $0x7fb4a53c5d40,%rbp
   0.03%    │    0x00007fb4900ef4e5:   vmovdqu (%rdi),%ymm4
   0.34%    │    0x00007fb4900ef4e9:   vpshufb %ymm9,%ymm4,%ymm4
   0.35%    │    0x00007fb4900ef4ee:   vmovdqu 0x20(%rdi),%ymm5
            │    0x00007fb4900ef4f3:   vpshufb %ymm9,%ymm5,%ymm5
   0.01%    │    0x00007fb4900ef4f8:   vmovdqu 0x40(%rdi),%ymm6
   0.07%    │    0x00007fb4900ef4fd:   vpshufb %ymm9,%ymm6,%ymm6
   0.35%    │    0x00007fb4900ef502:   vmovdqu 0x60(%rdi),%ymm7
   0.00%    │    0x00007fb4900ef507:   vpshufb %ymm9,%ymm7,%ymm7
   0.01%    │    0x00007fb4900ef50c:   mov    %rdi,0x28(%rsp)
            │    0x00007fb4900ef511:   movq   $0x4,0x20(%rsp)
   0.11%    │    0x00007fb4900ef51a:   nopw   0x0(%rax,%rax,1)
   0.06%  ↗ │    0x00007fb4900ef520:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.15%  │ │    0x00007fb4900ef525:   vmovdqu %ymm0,(%rsp)
   0.13%  │ │    0x00007fb4900ef52a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.28%  │ │    0x00007fb4900ef530:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.31%  │ │    0x00007fb4900ef536:   vpaddq %ymm4,%ymm0,%ymm0
   0.70%  │ │    0x00007fb4900ef53a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.12%  │ │    0x00007fb4900ef540:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.08%  │ │    0x00007fb4900ef546:   vpsrlq $0x1,%ymm1,%ymm2
   0.13%  │ │    0x00007fb4900ef54b:   vpsllq $0x3f,%ymm1,%ymm3
   0.25%  │ │    0x00007fb4900ef550:   vpor   %ymm2,%ymm3,%ymm3
   0.12%  │ │    0x00007fb4900ef554:   vpsrlq $0x7,%ymm1,%ymm8
   0.08%  │ │    0x00007fb4900ef559:   mov    %rax,%rdi
   0.06%  │ │    0x00007fb4900ef55c:   rorx   $0x29,%rdx,%r13
   0.25%  │ │    0x00007fb4900ef562:   rorx   $0x12,%rdx,%r14
   0.14%  │ │    0x00007fb4900ef568:   add    (%rsp),%r11
   0.08%  │ │    0x00007fb4900ef56c:   or     %rcx,%rdi
   0.06%  │ │    0x00007fb4900ef56f:   mov    %r9,%r15
   0.26%  │ │    0x00007fb4900ef572:   xor    %r10,%r15
   0.11%  │ │    0x00007fb4900ef575:   rorx   $0x22,%rax,%r12
   0.06%  │ │    0x00007fb4900ef57b:   xor    %r14,%r13
   0.04%  │ │    0x00007fb4900ef57e:   rorx   $0xe,%rdx,%r14
   0.27%  │ │    0x00007fb4900ef584:   and    %rdx,%r15
   0.10%  │ │    0x00007fb4900ef587:   add    %r11,%r8
   0.06%  │ │    0x00007fb4900ef58a:   and    %rbx,%rdi
   0.06%  │ │    0x00007fb4900ef58d:   xor    %r14,%r13
   0.25%  │ │    0x00007fb4900ef590:   rorx   $0x27,%rax,%r14
   0.13%  │ │    0x00007fb4900ef596:   xor    %r12,%r14
   0.06%  │ │    0x00007fb4900ef599:   rorx   $0x1c,%rax,%r12
   0.06%  │ │    0x00007fb4900ef59f:   xor    %r10,%r15
   0.24%  │ │    0x00007fb4900ef5a2:   xor    %r12,%r14
   0.12%  │ │    0x00007fb4900ef5a5:   mov    %rax,%r12
   0.10%  │ │    0x00007fb4900ef5a8:   and    %rcx,%r12
   0.04%  │ │    0x00007fb4900ef5ab:   add    %r13,%r15
   0.25%  │ │    0x00007fb4900ef5ae:   or     %r12,%rdi
   0.12%  │ │    0x00007fb4900ef5b1:   add    %r14,%r11
   0.08%  │ │    0x00007fb4900ef5b4:   add    %r15,%r8
   0.05%  │ │    0x00007fb4900ef5b7:   add    %r15,%r11
   0.25%  │ │    0x00007fb4900ef5ba:   add    %rdi,%r11
   0.13%  │ │    0x00007fb4900ef5bd:   vpsrlq $0x8,%ymm1,%ymm2
   0.06%  │ │    0x00007fb4900ef5c2:   vpsllq $0x38,%ymm1,%ymm1
   0.06%  │ │    0x00007fb4900ef5c7:   vpor   %ymm2,%ymm1,%ymm1
   0.27%  │ │    0x00007fb4900ef5cb:   vpxor  %ymm8,%ymm3,%ymm3
   0.12%  │ │    0x00007fb4900ef5d0:   vpxor  %ymm1,%ymm3,%ymm1
   0.06%  │ │    0x00007fb4900ef5d4:   vpaddq %ymm1,%ymm0,%ymm0
   0.06%  │ │    0x00007fb4900ef5d8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.25%  │ │    0x00007fb4900ef5de:   vpand  %ymm10,%ymm0,%ymm0
   0.14%  │ │    0x00007fb4900ef5e3:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.04%  │ │    0x00007fb4900ef5e9:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%  │ │    0x00007fb4900ef5ee:   mov    %r11,%rdi
   0.25%  │ │    0x00007fb4900ef5f1:   rorx   $0x29,%r8,%r13
   0.14%  │ │    0x00007fb4900ef5f7:   rorx   $0x12,%r8,%r14
   0.06%  │ │    0x00007fb4900ef5fd:   add    0x8(%rsp),%r10
   0.04%  │ │    0x00007fb4900ef602:   or     %rbx,%rdi
   0.21%  │ │    0x00007fb4900ef605:   mov    %rdx,%r15
   0.13%  │ │    0x00007fb4900ef608:   xor    %r9,%r15
   0.10%  │ │    0x00007fb4900ef60b:   rorx   $0x22,%r11,%r12
   0.03%  │ │    0x00007fb4900ef611:   xor    %r14,%r13
   0.22%  │ │    0x00007fb4900ef614:   rorx   $0xe,%r8,%r14
   0.15%  │ │    0x00007fb4900ef61a:   and    %r8,%r15
   0.06%  │ │    0x00007fb4900ef61d:   add    %r10,%rcx
   0.05%  │ │    0x00007fb4900ef620:   and    %rax,%rdi
   0.25%  │ │    0x00007fb4900ef623:   xor    %r14,%r13
   0.13%  │ │    0x00007fb4900ef626:   rorx   $0x27,%r11,%r14
   0.06%  │ │    0x00007fb4900ef62c:   xor    %r12,%r14
   0.05%  │ │    0x00007fb4900ef62f:   rorx   $0x1c,%r11,%r12
   0.25%  │ │    0x00007fb4900ef635:   xor    %r9,%r15
   0.14%  │ │    0x00007fb4900ef638:   xor    %r12,%r14
   0.06%  │ │    0x00007fb4900ef63b:   mov    %r11,%r12
   0.05%  │ │    0x00007fb4900ef63e:   and    %rbx,%r12
   0.27%  │ │    0x00007fb4900ef641:   add    %r13,%r15
   0.11%  │ │    0x00007fb4900ef644:   or     %r12,%rdi
   0.06%  │ │    0x00007fb4900ef647:   add    %r14,%r10
   0.07%  │ │    0x00007fb4900ef64a:   add    %r15,%rcx
   0.23%  │ │    0x00007fb4900ef64d:   add    %r15,%r10
   0.17%  │ │    0x00007fb4900ef650:   add    %rdi,%r10
   0.06%  │ │    0x00007fb4900ef653:   vpsrlq $0x13,%ymm2,%ymm3
   0.04%  │ │    0x00007fb4900ef658:   vpsllq $0x2d,%ymm2,%ymm1
   0.24%  │ │    0x00007fb4900ef65d:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │    0x00007fb4900ef661:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%  │ │    0x00007fb4900ef665:   vpsrlq $0x3d,%ymm2,%ymm3
   0.07%  │ │    0x00007fb4900ef66a:   vpsllq $0x3,%ymm2,%ymm1
   0.25%  │ │    0x00007fb4900ef66f:   vpor   %ymm1,%ymm3,%ymm3
   0.17%  │ │    0x00007fb4900ef673:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007fb4900ef677:   vpaddq %ymm8,%ymm4,%ymm4
   0.04%  │ │    0x00007fb4900ef67c:   vpsrlq $0x6,%ymm4,%ymm8
   0.24%  │ │    0x00007fb4900ef681:   mov    %r10,%rdi
   0.14%  │ │    0x00007fb4900ef684:   rorx   $0x29,%rcx,%r13
   0.08%  │ │    0x00007fb4900ef68a:   rorx   $0x12,%rcx,%r14
   0.05%  │ │    0x00007fb4900ef690:   add    0x10(%rsp),%r9
   0.26%  │ │    0x00007fb4900ef695:   or     %rax,%rdi
   0.16%  │ │    0x00007fb4900ef698:   mov    %r8,%r15
   0.06%  │ │    0x00007fb4900ef69b:   xor    %rdx,%r15
   0.05%  │ │    0x00007fb4900ef69e:   rorx   $0x22,%r10,%r12
   0.26%  │ │    0x00007fb4900ef6a4:   xor    %r14,%r13
   0.12%  │ │    0x00007fb4900ef6a7:   rorx   $0xe,%rcx,%r14
   0.06%  │ │    0x00007fb4900ef6ad:   and    %rcx,%r15
   0.04%  │ │    0x00007fb4900ef6b0:   add    %r9,%rbx
   0.26%  │ │    0x00007fb4900ef6b3:   and    %r11,%rdi
   0.17%  │ │    0x00007fb4900ef6b6:   xor    %r14,%r13
   0.07%  │ │    0x00007fb4900ef6b9:   rorx   $0x27,%r10,%r14
   0.04%  │ │    0x00007fb4900ef6bf:   xor    %r12,%r14
   0.22%  │ │    0x00007fb4900ef6c2:   rorx   $0x1c,%r10,%r12
   0.14%  │ │    0x00007fb4900ef6c8:   xor    %rdx,%r15
   0.06%  │ │    0x00007fb4900ef6cb:   xor    %r12,%r14
   0.05%  │ │    0x00007fb4900ef6ce:   mov    %r10,%r12
   0.25%  │ │    0x00007fb4900ef6d1:   and    %rax,%r12
   0.14%  │ │    0x00007fb4900ef6d4:   add    %r13,%r15
   0.05%  │ │    0x00007fb4900ef6d7:   or     %r12,%rdi
   0.04%  │ │    0x00007fb4900ef6da:   add    %r14,%r9
   0.26%  │ │    0x00007fb4900ef6dd:   add    %r15,%rbx
   0.13%  │ │    0x00007fb4900ef6e0:   add    %r15,%r9
   0.08%  │ │    0x00007fb4900ef6e3:   add    %rdi,%r9
   0.04%  │ │    0x00007fb4900ef6e6:   vpsrlq $0x13,%ymm4,%ymm3
   0.24%  │ │    0x00007fb4900ef6eb:   vpsllq $0x2d,%ymm4,%ymm1
   0.12%  │ │    0x00007fb4900ef6f0:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │    0x00007fb4900ef6f4:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │    0x00007fb4900ef6f8:   vpsrlq $0x3d,%ymm4,%ymm3
   0.29%  │ │    0x00007fb4900ef6fd:   vpsllq $0x3,%ymm4,%ymm1
   0.16%  │ │    0x00007fb4900ef702:   vpor   %ymm1,%ymm3,%ymm3
   0.10%  │ │    0x00007fb4900ef706:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%  │ │    0x00007fb4900ef70a:   vpaddq %ymm8,%ymm0,%ymm2
   0.27%  │ │    0x00007fb4900ef70f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.19%  │ │    0x00007fb4900ef715:   mov    %r9,%rdi
   0.06%  │ │    0x00007fb4900ef718:   rorx   $0x29,%rbx,%r13
   0.06%  │ │    0x00007fb4900ef71e:   rorx   $0x12,%rbx,%r14
   0.19%  │ │    0x00007fb4900ef724:   add    0x18(%rsp),%rdx
   0.17%  │ │    0x00007fb4900ef729:   or     %r11,%rdi
   0.06%  │ │    0x00007fb4900ef72c:   mov    %rcx,%r15
   0.03%  │ │    0x00007fb4900ef72f:   xor    %r8,%r15
   0.21%  │ │    0x00007fb4900ef732:   rorx   $0x22,%r9,%r12
   0.18%  │ │    0x00007fb4900ef738:   xor    %r14,%r13
   0.06%  │ │    0x00007fb4900ef73b:   rorx   $0xe,%rbx,%r14
   0.04%  │ │    0x00007fb4900ef741:   and    %rbx,%r15
   0.23%  │ │    0x00007fb4900ef744:   add    %rdx,%rax
   0.17%  │ │    0x00007fb4900ef747:   and    %r10,%rdi
   0.08%  │ │    0x00007fb4900ef74a:   xor    %r14,%r13
   0.04%  │ │    0x00007fb4900ef74d:   rorx   $0x27,%r9,%r14
   0.21%  │ │    0x00007fb4900ef753:   xor    %r12,%r14
   0.13%  │ │    0x00007fb4900ef756:   rorx   $0x1c,%r9,%r12
   0.06%  │ │    0x00007fb4900ef75c:   xor    %r8,%r15
   0.05%  │ │    0x00007fb4900ef75f:   xor    %r12,%r14
   0.18%  │ │    0x00007fb4900ef762:   mov    %r9,%r12
   0.16%  │ │    0x00007fb4900ef765:   and    %r11,%r12
   0.05%  │ │    0x00007fb4900ef768:   add    %r13,%r15
   0.04%  │ │    0x00007fb4900ef76b:   or     %r12,%rdi
   0.17%  │ │    0x00007fb4900ef76e:   add    %r14,%rdx
   0.19%  │ │    0x00007fb4900ef771:   add    %r15,%rax
   0.05%  │ │    0x00007fb4900ef774:   add    %r15,%rdx
   0.04%  │ │    0x00007fb4900ef777:   add    %rdi,%rdx
   0.21%  │ │    0x00007fb4900ef77a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.16%  │ │    0x00007fb4900ef77f:   vmovdqu %ymm0,(%rsp)
   0.07%  │ │    0x00007fb4900ef784:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%  │ │    0x00007fb4900ef78a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.21%  │ │    0x00007fb4900ef790:   vpaddq %ymm5,%ymm0,%ymm0
   0.29%  │ │    0x00007fb4900ef794:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.07%  │ │    0x00007fb4900ef79a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.04%  │ │    0x00007fb4900ef7a0:   vpsrlq $0x1,%ymm1,%ymm2
   0.26%  │ │    0x00007fb4900ef7a5:   vpsllq $0x3f,%ymm1,%ymm3
   0.19%  │ │    0x00007fb4900ef7aa:   vpor   %ymm2,%ymm3,%ymm3
   0.09%  │ │    0x00007fb4900ef7ae:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%  │ │    0x00007fb4900ef7b3:   mov    %rdx,%rdi
   0.22%  │ │    0x00007fb4900ef7b6:   rorx   $0x29,%rax,%r13
   0.19%  │ │    0x00007fb4900ef7bc:   rorx   $0x12,%rax,%r14
   0.06%  │ │    0x00007fb4900ef7c2:   add    (%rsp),%r8
   0.05%  │ │    0x00007fb4900ef7c6:   or     %r10,%rdi
   0.18%  │ │    0x00007fb4900ef7c9:   mov    %rbx,%r15
   0.18%  │ │    0x00007fb4900ef7cc:   xor    %rcx,%r15
   0.08%  │ │    0x00007fb4900ef7cf:   rorx   $0x22,%rdx,%r12
   0.05%  │ │    0x00007fb4900ef7d5:   xor    %r14,%r13
   0.22%  │ │    0x00007fb4900ef7d8:   rorx   $0xe,%rax,%r14
   0.17%  │ │    0x00007fb4900ef7de:   and    %rax,%r15
   0.08%  │ │    0x00007fb4900ef7e1:   add    %r8,%r11
   0.05%  │ │    0x00007fb4900ef7e4:   and    %r9,%rdi
   0.15%  │ │    0x00007fb4900ef7e7:   xor    %r14,%r13
   0.18%  │ │    0x00007fb4900ef7ea:   rorx   $0x27,%rdx,%r14
   0.07%  │ │    0x00007fb4900ef7f0:   xor    %r12,%r14
   0.03%  │ │    0x00007fb4900ef7f3:   rorx   $0x1c,%rdx,%r12
   0.17%  │ │    0x00007fb4900ef7f9:   xor    %rcx,%r15
   0.17%  │ │    0x00007fb4900ef7fc:   xor    %r12,%r14
   0.08%  │ │    0x00007fb4900ef7ff:   mov    %rdx,%r12
   0.05%  │ │    0x00007fb4900ef802:   and    %r10,%r12
   0.20%  │ │    0x00007fb4900ef805:   add    %r13,%r15
   0.19%  │ │    0x00007fb4900ef808:   or     %r12,%rdi
   0.08%  │ │    0x00007fb4900ef80b:   add    %r14,%r8
   0.05%  │ │    0x00007fb4900ef80e:   add    %r15,%r11
   0.21%  │ │    0x00007fb4900ef811:   add    %r15,%r8
   0.19%  │ │    0x00007fb4900ef814:   add    %rdi,%r8
   0.05%  │ │    0x00007fb4900ef817:   vpsrlq $0x8,%ymm1,%ymm2
   0.04%  │ │    0x00007fb4900ef81c:   vpsllq $0x38,%ymm1,%ymm1
   0.18%  │ │    0x00007fb4900ef821:   vpor   %ymm2,%ymm1,%ymm1
   0.22%  │ │    0x00007fb4900ef825:   vpxor  %ymm8,%ymm3,%ymm3
   0.09%  │ │    0x00007fb4900ef82a:   vpxor  %ymm1,%ymm3,%ymm1
   0.05%  │ │    0x00007fb4900ef82e:   vpaddq %ymm1,%ymm0,%ymm0
   0.20%  │ │    0x00007fb4900ef832:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.15%  │ │    0x00007fb4900ef838:   vpand  %ymm10,%ymm0,%ymm0
   0.09%  │ │    0x00007fb4900ef83d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.04%  │ │    0x00007fb4900ef843:   vpsrlq $0x6,%ymm2,%ymm8
   0.18%  │ │    0x00007fb4900ef848:   mov    %r8,%rdi
   0.16%  │ │    0x00007fb4900ef84b:   rorx   $0x29,%r11,%r13
   0.08%  │ │    0x00007fb4900ef851:   rorx   $0x12,%r11,%r14
   0.04%  │ │    0x00007fb4900ef857:   add    0x8(%rsp),%rcx
   0.19%  │ │    0x00007fb4900ef85c:   or     %r9,%rdi
   0.19%  │ │    0x00007fb4900ef85f:   mov    %rax,%r15
   0.05%  │ │    0x00007fb4900ef862:   xor    %rbx,%r15
   0.04%  │ │    0x00007fb4900ef865:   rorx   $0x22,%r8,%r12
   0.19%  │ │    0x00007fb4900ef86b:   xor    %r14,%r13
   0.18%  │ │    0x00007fb4900ef86e:   rorx   $0xe,%r11,%r14
   0.08%  │ │    0x00007fb4900ef874:   and    %r11,%r15
   0.03%  │ │    0x00007fb4900ef877:   add    %rcx,%r10
   0.17%  │ │    0x00007fb4900ef87a:   and    %rdx,%rdi
   0.19%  │ │    0x00007fb4900ef87d:   xor    %r14,%r13
   0.10%  │ │    0x00007fb4900ef880:   rorx   $0x27,%r8,%r14
   0.03%  │ │    0x00007fb4900ef886:   xor    %r12,%r14
   0.20%  │ │    0x00007fb4900ef889:   rorx   $0x1c,%r8,%r12
   0.18%  │ │    0x00007fb4900ef88f:   xor    %rbx,%r15
   0.12%  │ │    0x00007fb4900ef892:   xor    %r12,%r14
   0.03%  │ │    0x00007fb4900ef895:   mov    %r8,%r12
   0.20%  │ │    0x00007fb4900ef898:   and    %r9,%r12
   0.16%  │ │    0x00007fb4900ef89b:   add    %r13,%r15
   0.07%  │ │    0x00007fb4900ef89e:   or     %r12,%rdi
   0.03%  │ │    0x00007fb4900ef8a1:   add    %r14,%rcx
   0.18%  │ │    0x00007fb4900ef8a4:   add    %r15,%r10
   0.16%  │ │    0x00007fb4900ef8a7:   add    %r15,%rcx
   0.09%  │ │    0x00007fb4900ef8aa:   add    %rdi,%rcx
   0.04%  │ │    0x00007fb4900ef8ad:   vpsrlq $0x13,%ymm2,%ymm3
   0.18%  │ │    0x00007fb4900ef8b2:   vpsllq $0x2d,%ymm2,%ymm1
   0.17%  │ │    0x00007fb4900ef8b7:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │    0x00007fb4900ef8bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%  │ │    0x00007fb4900ef8bf:   vpsrlq $0x3d,%ymm2,%ymm3
   0.17%  │ │    0x00007fb4900ef8c4:   vpsllq $0x3,%ymm2,%ymm1
   0.17%  │ │    0x00007fb4900ef8c9:   vpor   %ymm1,%ymm3,%ymm3
   0.09%  │ │    0x00007fb4900ef8cd:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007fb4900ef8d1:   vpaddq %ymm8,%ymm5,%ymm5
   0.19%  │ │    0x00007fb4900ef8d6:   vpsrlq $0x6,%ymm5,%ymm8
   0.21%  │ │    0x00007fb4900ef8db:   mov    %rcx,%rdi
   0.10%  │ │    0x00007fb4900ef8de:   rorx   $0x29,%r10,%r13
   0.03%  │ │    0x00007fb4900ef8e4:   rorx   $0x12,%r10,%r14
   0.17%  │ │    0x00007fb4900ef8ea:   add    0x10(%rsp),%rbx
   0.17%  │ │    0x00007fb4900ef8ef:   or     %rdx,%rdi
   0.08%  │ │    0x00007fb4900ef8f2:   mov    %r11,%r15
   0.02%  │ │    0x00007fb4900ef8f5:   xor    %rax,%r15
   0.19%  │ │    0x00007fb4900ef8f8:   rorx   $0x22,%rcx,%r12
   0.20%  │ │    0x00007fb4900ef8fe:   xor    %r14,%r13
   0.10%  │ │    0x00007fb4900ef901:   rorx   $0xe,%r10,%r14
   0.04%  │ │    0x00007fb4900ef907:   and    %r10,%r15
   0.22%  │ │    0x00007fb4900ef90a:   add    %rbx,%r9
   0.19%  │ │    0x00007fb4900ef90d:   and    %r8,%rdi
   0.05%  │ │    0x00007fb4900ef910:   xor    %r14,%r13
   0.05%  │ │    0x00007fb4900ef913:   rorx   $0x27,%rcx,%r14
   0.13%  │ │    0x00007fb4900ef919:   xor    %r12,%r14
   0.19%  │ │    0x00007fb4900ef91c:   rorx   $0x1c,%rcx,%r12
   0.08%  │ │    0x00007fb4900ef922:   xor    %rax,%r15
   0.04%  │ │    0x00007fb4900ef925:   xor    %r12,%r14
   0.21%  │ │    0x00007fb4900ef928:   mov    %rcx,%r12
   0.18%  │ │    0x00007fb4900ef92b:   and    %rdx,%r12
   0.09%  │ │    0x00007fb4900ef92e:   add    %r13,%r15
   0.04%  │ │    0x00007fb4900ef931:   or     %r12,%rdi
   0.18%  │ │    0x00007fb4900ef934:   add    %r14,%rbx
   0.22%  │ │    0x00007fb4900ef937:   add    %r15,%r9
   0.07%  │ │    0x00007fb4900ef93a:   add    %r15,%rbx
   0.04%  │ │    0x00007fb4900ef93d:   add    %rdi,%rbx
   0.19%  │ │    0x00007fb4900ef940:   vpsrlq $0x13,%ymm5,%ymm3
   0.20%  │ │    0x00007fb4900ef945:   vpsllq $0x2d,%ymm5,%ymm1
   0.07%  │ │    0x00007fb4900ef94a:   vpor   %ymm1,%ymm3,%ymm3
   0.03%  │ │    0x00007fb4900ef94e:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%  │ │    0x00007fb4900ef952:   vpsrlq $0x3d,%ymm5,%ymm3
   0.20%  │ │    0x00007fb4900ef957:   vpsllq $0x3,%ymm5,%ymm1
   0.07%  │ │    0x00007fb4900ef95c:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │    0x00007fb4900ef960:   vpxor  %ymm3,%ymm8,%ymm8
   0.20%  │ │    0x00007fb4900ef964:   vpaddq %ymm8,%ymm0,%ymm2
   0.23%  │ │    0x00007fb4900ef969:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.11%  │ │    0x00007fb4900ef96f:   mov    %rbx,%rdi
   0.03%  │ │    0x00007fb4900ef972:   rorx   $0x29,%r9,%r13
   0.18%  │ │    0x00007fb4900ef978:   rorx   $0x12,%r9,%r14
   0.17%  │ │    0x00007fb4900ef97e:   add    0x18(%rsp),%rax
   0.11%  │ │    0x00007fb4900ef983:   or     %r8,%rdi
   0.04%  │ │    0x00007fb4900ef986:   mov    %r10,%r15
   0.17%  │ │    0x00007fb4900ef989:   xor    %r11,%r15
   0.14%  │ │    0x00007fb4900ef98c:   rorx   $0x22,%rbx,%r12
   0.13%  │ │    0x00007fb4900ef992:   xor    %r14,%r13
   0.04%  │ │    0x00007fb4900ef995:   rorx   $0xe,%r9,%r14
   0.19%  │ │    0x00007fb4900ef99b:   and    %r9,%r15
   0.18%  │ │    0x00007fb4900ef99e:   add    %rax,%rdx
   0.11%  │ │    0x00007fb4900ef9a1:   and    %rcx,%rdi
   0.03%  │ │    0x00007fb4900ef9a4:   xor    %r14,%r13
   0.17%  │ │    0x00007fb4900ef9a7:   rorx   $0x27,%rbx,%r14
   0.16%  │ │    0x00007fb4900ef9ad:   xor    %r12,%r14
   0.12%  │ │    0x00007fb4900ef9b0:   rorx   $0x1c,%rbx,%r12
   0.04%  │ │    0x00007fb4900ef9b6:   xor    %r11,%r15
   0.16%  │ │    0x00007fb4900ef9b9:   xor    %r12,%r14
   0.20%  │ │    0x00007fb4900ef9bc:   mov    %rbx,%r12
   0.11%  │ │    0x00007fb4900ef9bf:   and    %r8,%r12
   0.03%  │ │    0x00007fb4900ef9c2:   add    %r13,%r15
   0.14%  │ │    0x00007fb4900ef9c5:   or     %r12,%rdi
   0.18%  │ │    0x00007fb4900ef9c8:   add    %r14,%rax
   0.10%  │ │    0x00007fb4900ef9cb:   add    %r15,%rdx
   0.05%  │ │    0x00007fb4900ef9ce:   add    %r15,%rax
   0.15%  │ │    0x00007fb4900ef9d1:   add    %rdi,%rax
   0.17%  │ │    0x00007fb4900ef9d4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.12%  │ │    0x00007fb4900ef9d9:   vmovdqu %ymm0,(%rsp)
   0.03%  │ │    0x00007fb4900ef9de:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.15%  │ │    0x00007fb4900ef9e4:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.20%  │ │    0x00007fb4900ef9ea:   vpaddq %ymm6,%ymm0,%ymm0
   0.24%  │ │    0x00007fb4900ef9ee:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.04%  │ │    0x00007fb4900ef9f4:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.15%  │ │    0x00007fb4900ef9fa:   vpsrlq $0x1,%ymm1,%ymm2
   0.18%  │ │    0x00007fb4900ef9ff:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%  │ │    0x00007fb4900efa04:   vpor   %ymm2,%ymm3,%ymm3
   0.03%  │ │    0x00007fb4900efa08:   vpsrlq $0x7,%ymm1,%ymm8
   0.16%  │ │    0x00007fb4900efa0d:   mov    %rax,%rdi
   0.14%  │ │    0x00007fb4900efa10:   rorx   $0x29,%rdx,%r13
   0.15%  │ │    0x00007fb4900efa16:   rorx   $0x12,%rdx,%r14
   0.04%  │ │    0x00007fb4900efa1c:   add    (%rsp),%r11
   0.17%  │ │    0x00007fb4900efa20:   or     %rcx,%rdi
   0.14%  │ │    0x00007fb4900efa23:   mov    %r9,%r15
   0.15%  │ │    0x00007fb4900efa26:   xor    %r10,%r15
   0.04%  │ │    0x00007fb4900efa29:   rorx   $0x22,%rax,%r12
   0.13%  │ │    0x00007fb4900efa2f:   xor    %r14,%r13
   0.16%  │ │    0x00007fb4900efa32:   rorx   $0xe,%rdx,%r14
   0.17%  │ │    0x00007fb4900efa38:   and    %rdx,%r15
   0.05%  │ │    0x00007fb4900efa3b:   add    %r11,%r8
   0.14%  │ │    0x00007fb4900efa3e:   and    %rbx,%rdi
   0.16%  │ │    0x00007fb4900efa41:   xor    %r14,%r13
   0.13%  │ │    0x00007fb4900efa44:   rorx   $0x27,%rax,%r14
   0.04%  │ │    0x00007fb4900efa4a:   xor    %r12,%r14
   0.14%  │ │    0x00007fb4900efa4d:   rorx   $0x1c,%rax,%r12
   0.14%  │ │    0x00007fb4900efa53:   xor    %r10,%r15
   0.14%  │ │    0x00007fb4900efa56:   xor    %r12,%r14
   0.05%  │ │    0x00007fb4900efa59:   mov    %rax,%r12
   0.13%  │ │    0x00007fb4900efa5c:   and    %rcx,%r12
   0.17%  │ │    0x00007fb4900efa5f:   add    %r13,%r15
   0.12%  │ │    0x00007fb4900efa62:   or     %r12,%rdi
   0.04%  │ │    0x00007fb4900efa65:   add    %r14,%r11
   0.16%  │ │    0x00007fb4900efa68:   add    %r15,%r8
   0.17%  │ │    0x00007fb4900efa6b:   add    %r15,%r11
   0.15%  │ │    0x00007fb4900efa6e:   add    %rdi,%r11
   0.04%  │ │    0x00007fb4900efa71:   vpsrlq $0x8,%ymm1,%ymm2
   0.13%  │ │    0x00007fb4900efa76:   vpsllq $0x38,%ymm1,%ymm1
   0.15%  │ │    0x00007fb4900efa7b:   vpor   %ymm2,%ymm1,%ymm1
   0.15%  │ │    0x00007fb4900efa7f:   vpxor  %ymm8,%ymm3,%ymm3
   0.06%  │ │    0x00007fb4900efa84:   vpxor  %ymm1,%ymm3,%ymm1
   0.15%  │ │    0x00007fb4900efa88:   vpaddq %ymm1,%ymm0,%ymm0
   0.15%  │ │    0x00007fb4900efa8c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.14%  │ │    0x00007fb4900efa92:   vpand  %ymm10,%ymm0,%ymm0
   0.06%  │ │    0x00007fb4900efa97:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.15%  │ │    0x00007fb4900efa9d:   vpsrlq $0x6,%ymm2,%ymm8
   0.14%  │ │    0x00007fb4900efaa2:   mov    %r11,%rdi
   0.15%  │ │    0x00007fb4900efaa5:   rorx   $0x29,%r8,%r13
   0.06%  │ │    0x00007fb4900efaab:   rorx   $0x12,%r8,%r14
   0.16%  │ │    0x00007fb4900efab1:   add    0x8(%rsp),%r10
   0.17%  │ │    0x00007fb4900efab6:   or     %rbx,%rdi
   0.16%  │ │    0x00007fb4900efab9:   mov    %rdx,%r15
   0.05%  │ │    0x00007fb4900efabc:   xor    %r9,%r15
   0.14%  │ │    0x00007fb4900efabf:   rorx   $0x22,%r11,%r12
   0.14%  │ │    0x00007fb4900efac5:   xor    %r14,%r13
   0.14%  │ │    0x00007fb4900efac8:   rorx   $0xe,%r8,%r14
   0.04%  │ │    0x00007fb4900eface:   and    %r8,%r15
   0.14%  │ │    0x00007fb4900efad1:   add    %r10,%rcx
   0.12%  │ │    0x00007fb4900efad4:   and    %rax,%rdi
   0.12%  │ │    0x00007fb4900efad7:   xor    %r14,%r13
   0.05%  │ │    0x00007fb4900efada:   rorx   $0x27,%r11,%r14
   0.16%  │ │    0x00007fb4900efae0:   xor    %r12,%r14
   0.11%  │ │    0x00007fb4900efae3:   rorx   $0x1c,%r11,%r12
   0.17%  │ │    0x00007fb4900efae9:   xor    %r9,%r15
   0.04%  │ │    0x00007fb4900efaec:   xor    %r12,%r14
   0.14%  │ │    0x00007fb4900efaef:   mov    %r11,%r12
   0.13%  │ │    0x00007fb4900efaf2:   and    %rbx,%r12
   0.14%  │ │    0x00007fb4900efaf5:   add    %r13,%r15
   0.04%  │ │    0x00007fb4900efaf8:   or     %r12,%rdi
   0.16%  │ │    0x00007fb4900efafb:   add    %r14,%r10
   0.14%  │ │    0x00007fb4900efafe:   add    %r15,%rcx
   0.18%  │ │    0x00007fb4900efb01:   add    %r15,%r10
   0.05%  │ │    0x00007fb4900efb04:   add    %rdi,%r10
   0.15%  │ │    0x00007fb4900efb07:   vpsrlq $0x13,%ymm2,%ymm3
   0.12%  │ │    0x00007fb4900efb0c:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%  │ │    0x00007fb4900efb11:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │    0x00007fb4900efb15:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%  │ │    0x00007fb4900efb19:   vpsrlq $0x3d,%ymm2,%ymm3
   0.14%  │ │    0x00007fb4900efb1e:   vpsllq $0x3,%ymm2,%ymm1
   0.16%  │ │    0x00007fb4900efb23:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │    0x00007fb4900efb27:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%  │ │    0x00007fb4900efb2b:   vpaddq %ymm8,%ymm6,%ymm6
   0.16%  │ │    0x00007fb4900efb30:   vpsrlq $0x6,%ymm6,%ymm8
   0.18%  │ │    0x00007fb4900efb35:   mov    %r10,%rdi
   0.06%  │ │    0x00007fb4900efb38:   rorx   $0x29,%rcx,%r13
   0.12%  │ │    0x00007fb4900efb3e:   rorx   $0x12,%rcx,%r14
   0.11%  │ │    0x00007fb4900efb44:   add    0x10(%rsp),%r9
   0.17%  │ │    0x00007fb4900efb49:   or     %rax,%rdi
   0.07%  │ │    0x00007fb4900efb4c:   mov    %r8,%r15
   0.15%  │ │    0x00007fb4900efb4f:   xor    %rdx,%r15
   0.14%  │ │    0x00007fb4900efb52:   rorx   $0x22,%r10,%r12
   0.18%  │ │    0x00007fb4900efb58:   xor    %r14,%r13
   0.05%  │ │    0x00007fb4900efb5b:   rorx   $0xe,%rcx,%r14
   0.11%  │ │    0x00007fb4900efb61:   and    %rcx,%r15
   0.13%  │ │    0x00007fb4900efb64:   add    %r9,%rbx
   0.15%  │ │    0x00007fb4900efb67:   and    %r11,%rdi
   0.06%  │ │    0x00007fb4900efb6a:   xor    %r14,%r13
   0.17%  │ │    0x00007fb4900efb6d:   rorx   $0x27,%r10,%r14
   0.11%  │ │    0x00007fb4900efb73:   xor    %r12,%r14
   0.16%  │ │    0x00007fb4900efb76:   rorx   $0x1c,%r10,%r12
   0.06%  │ │    0x00007fb4900efb7c:   xor    %rdx,%r15
   0.14%  │ │    0x00007fb4900efb7f:   xor    %r12,%r14
   0.14%  │ │    0x00007fb4900efb82:   mov    %r10,%r12
   0.16%  │ │    0x00007fb4900efb85:   and    %rax,%r12
   0.04%  │ │    0x00007fb4900efb88:   add    %r13,%r15
   0.15%  │ │    0x00007fb4900efb8b:   or     %r12,%rdi
   0.12%  │ │    0x00007fb4900efb8e:   add    %r14,%r9
   0.16%  │ │    0x00007fb4900efb91:   add    %r15,%rbx
   0.03%  │ │    0x00007fb4900efb94:   add    %r15,%r9
   0.17%  │ │    0x00007fb4900efb97:   add    %rdi,%r9
   0.14%  │ │    0x00007fb4900efb9a:   vpsrlq $0x13,%ymm6,%ymm3
   0.18%  │ │    0x00007fb4900efb9f:   vpsllq $0x2d,%ymm6,%ymm1
   0.05%  │ │    0x00007fb4900efba4:   vpor   %ymm1,%ymm3,%ymm3
   0.15%  │ │    0x00007fb4900efba8:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%  │ │    0x00007fb4900efbac:   vpsrlq $0x3d,%ymm6,%ymm3
   0.16%  │ │    0x00007fb4900efbb1:   vpsllq $0x3,%ymm6,%ymm1
   0.06%  │ │    0x00007fb4900efbb6:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │    0x00007fb4900efbba:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%  │ │    0x00007fb4900efbbe:   vpaddq %ymm8,%ymm0,%ymm2
   0.16%  │ │    0x00007fb4900efbc3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.13%  │ │    0x00007fb4900efbc9:   mov    %r9,%rdi
   0.12%  │ │    0x00007fb4900efbcc:   rorx   $0x29,%rbx,%r13
   0.11%  │ │    0x00007fb4900efbd2:   rorx   $0x12,%rbx,%r14
   0.14%  │ │    0x00007fb4900efbd8:   add    0x18(%rsp),%rdx
   0.12%  │ │    0x00007fb4900efbdd:   or     %r11,%rdi
   0.13%  │ │    0x00007fb4900efbe0:   mov    %rcx,%r15
   0.10%  │ │    0x00007fb4900efbe3:   xor    %r8,%r15
   0.12%  │ │    0x00007fb4900efbe6:   rorx   $0x22,%r9,%r12
   0.11%  │ │    0x00007fb4900efbec:   xor    %r14,%r13
   0.15%  │ │    0x00007fb4900efbef:   rorx   $0xe,%rbx,%r14
   0.10%  │ │    0x00007fb4900efbf5:   and    %rbx,%r15
   0.14%  │ │    0x00007fb4900efbf8:   add    %rdx,%rax
   0.12%  │ │    0x00007fb4900efbfb:   and    %r10,%rdi
   0.14%  │ │    0x00007fb4900efbfe:   xor    %r14,%r13
   0.12%  │ │    0x00007fb4900efc01:   rorx   $0x27,%r9,%r14
   0.10%  │ │    0x00007fb4900efc07:   xor    %r12,%r14
   0.10%  │ │    0x00007fb4900efc0a:   rorx   $0x1c,%r9,%r12
   0.11%  │ │    0x00007fb4900efc10:   xor    %r8,%r15
   0.11%  │ │    0x00007fb4900efc13:   xor    %r12,%r14
   0.14%  │ │    0x00007fb4900efc16:   mov    %r9,%r12
   0.12%  │ │    0x00007fb4900efc19:   and    %r11,%r12
   0.12%  │ │    0x00007fb4900efc1c:   add    %r13,%r15
   0.11%  │ │    0x00007fb4900efc1f:   or     %r12,%rdi
   0.14%  │ │    0x00007fb4900efc22:   add    %r14,%rdx
   0.14%  │ │    0x00007fb4900efc25:   add    %r15,%rax
   0.13%  │ │    0x00007fb4900efc28:   add    %r15,%rdx
   0.10%  │ │    0x00007fb4900efc2b:   add    %rdi,%rdx
   0.11%  │ │    0x00007fb4900efc2e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.13%  │ │    0x00007fb4900efc33:   vmovdqu %ymm0,(%rsp)
   0.15%  │ │    0x00007fb4900efc38:   add    $0x80,%rbp
   0.10%  │ │    0x00007fb4900efc3f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.15%  │ │    0x00007fb4900efc45:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.10%  │ │    0x00007fb4900efc4b:   vpaddq %ymm7,%ymm0,%ymm0
   0.26%  │ │    0x00007fb4900efc4f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.08%  │ │    0x00007fb4900efc55:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.15%  │ │    0x00007fb4900efc5b:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%  │ │    0x00007fb4900efc60:   vpsllq $0x3f,%ymm1,%ymm3
   0.21%  │ │    0x00007fb4900efc65:   vpor   %ymm2,%ymm3,%ymm3
   0.11%  │ │    0x00007fb4900efc69:   vpsrlq $0x7,%ymm1,%ymm8
   0.12%  │ │    0x00007fb4900efc6e:   mov    %rdx,%rdi
   0.09%  │ │    0x00007fb4900efc71:   rorx   $0x29,%rax,%r13
   0.18%  │ │    0x00007fb4900efc77:   rorx   $0x12,%rax,%r14
   0.12%  │ │    0x00007fb4900efc7d:   add    (%rsp),%r8
   0.12%  │ │    0x00007fb4900efc81:   or     %r10,%rdi
   0.09%  │ │    0x00007fb4900efc84:   mov    %rbx,%r15
   0.15%  │ │    0x00007fb4900efc87:   xor    %rcx,%r15
   0.10%  │ │    0x00007fb4900efc8a:   rorx   $0x22,%rdx,%r12
   0.10%  │ │    0x00007fb4900efc90:   xor    %r14,%r13
   0.11%  │ │    0x00007fb4900efc93:   rorx   $0xe,%rax,%r14
   0.18%  │ │    0x00007fb4900efc99:   and    %rax,%r15
   0.11%  │ │    0x00007fb4900efc9c:   add    %r8,%r11
   0.10%  │ │    0x00007fb4900efc9f:   and    %r9,%rdi
   0.08%  │ │    0x00007fb4900efca2:   xor    %r14,%r13
   0.11%  │ │    0x00007fb4900efca5:   rorx   $0x27,%rdx,%r14
   0.11%  │ │    0x00007fb4900efcab:   xor    %r12,%r14
   0.12%  │ │    0x00007fb4900efcae:   rorx   $0x1c,%rdx,%r12
   0.12%  │ │    0x00007fb4900efcb4:   xor    %rcx,%r15
   0.16%  │ │    0x00007fb4900efcb7:   xor    %r12,%r14
   0.09%  │ │    0x00007fb4900efcba:   mov    %rdx,%r12
   0.10%  │ │    0x00007fb4900efcbd:   and    %r10,%r12
   0.10%  │ │    0x00007fb4900efcc0:   add    %r13,%r15
   0.16%  │ │    0x00007fb4900efcc3:   or     %r12,%rdi
   0.11%  │ │    0x00007fb4900efcc6:   add    %r14,%r8
   0.09%  │ │    0x00007fb4900efcc9:   add    %r15,%r11
   0.10%  │ │    0x00007fb4900efccc:   add    %r15,%r8
   0.18%  │ │    0x00007fb4900efccf:   add    %rdi,%r8
   0.11%  │ │    0x00007fb4900efcd2:   vpsrlq $0x8,%ymm1,%ymm2
   0.12%  │ │    0x00007fb4900efcd7:   vpsllq $0x38,%ymm1,%ymm1
   0.13%  │ │    0x00007fb4900efcdc:   vpor   %ymm2,%ymm1,%ymm1
   0.16%  │ │    0x00007fb4900efce0:   vpxor  %ymm8,%ymm3,%ymm3
   0.11%  │ │    0x00007fb4900efce5:   vpxor  %ymm1,%ymm3,%ymm1
   0.12%  │ │    0x00007fb4900efce9:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%  │ │    0x00007fb4900efced:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.18%  │ │    0x00007fb4900efcf3:   vpand  %ymm10,%ymm0,%ymm0
   0.12%  │ │    0x00007fb4900efcf8:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.11%  │ │    0x00007fb4900efcfe:   vpsrlq $0x6,%ymm2,%ymm8
   0.10%  │ │    0x00007fb4900efd03:   mov    %r8,%rdi
   0.16%  │ │    0x00007fb4900efd06:   rorx   $0x29,%r11,%r13
   0.10%  │ │    0x00007fb4900efd0c:   rorx   $0x12,%r11,%r14
   0.12%  │ │    0x00007fb4900efd12:   add    0x8(%rsp),%rcx
   0.10%  │ │    0x00007fb4900efd17:   or     %r9,%rdi
   0.17%  │ │    0x00007fb4900efd1a:   mov    %rax,%r15
   0.10%  │ │    0x00007fb4900efd1d:   xor    %rbx,%r15
   0.11%  │ │    0x00007fb4900efd20:   rorx   $0x22,%r8,%r12
   0.09%  │ │    0x00007fb4900efd26:   xor    %r14,%r13
   0.16%  │ │    0x00007fb4900efd29:   rorx   $0xe,%r11,%r14
   0.12%  │ │    0x00007fb4900efd2f:   and    %r11,%r15
   0.14%  │ │    0x00007fb4900efd32:   add    %rcx,%r10
   0.10%  │ │    0x00007fb4900efd35:   and    %rdx,%rdi
   0.17%  │ │    0x00007fb4900efd38:   xor    %r14,%r13
   0.12%  │ │    0x00007fb4900efd3b:   rorx   $0x27,%r8,%r14
   0.11%  │ │    0x00007fb4900efd41:   xor    %r12,%r14
   0.09%  │ │    0x00007fb4900efd44:   rorx   $0x1c,%r8,%r12
   0.19%  │ │    0x00007fb4900efd4a:   xor    %rbx,%r15
   0.09%  │ │    0x00007fb4900efd4d:   xor    %r12,%r14
   0.12%  │ │    0x00007fb4900efd50:   mov    %r8,%r12
   0.08%  │ │    0x00007fb4900efd53:   and    %r9,%r12
   0.17%  │ │    0x00007fb4900efd56:   add    %r13,%r15
   0.10%  │ │    0x00007fb4900efd59:   or     %r12,%rdi
   0.13%  │ │    0x00007fb4900efd5c:   add    %r14,%rcx
   0.09%  │ │    0x00007fb4900efd5f:   add    %r15,%r10
   0.18%  │ │    0x00007fb4900efd62:   add    %r15,%rcx
   0.11%  │ │    0x00007fb4900efd65:   add    %rdi,%rcx
   0.11%  │ │    0x00007fb4900efd68:   vpsrlq $0x13,%ymm2,%ymm3
   0.10%  │ │    0x00007fb4900efd6d:   vpsllq $0x2d,%ymm2,%ymm1
   0.18%  │ │    0x00007fb4900efd72:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │    0x00007fb4900efd76:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%  │ │    0x00007fb4900efd7a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.10%  │ │    0x00007fb4900efd7f:   vpsllq $0x3,%ymm2,%ymm1
   0.15%  │ │    0x00007fb4900efd84:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │    0x00007fb4900efd88:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%  │ │    0x00007fb4900efd8c:   vpaddq %ymm8,%ymm7,%ymm7
   0.08%  │ │    0x00007fb4900efd91:   vpsrlq $0x6,%ymm7,%ymm8
   0.17%  │ │    0x00007fb4900efd96:   mov    %rcx,%rdi
   0.13%  │ │    0x00007fb4900efd99:   rorx   $0x29,%r10,%r13
   0.11%  │ │    0x00007fb4900efd9f:   rorx   $0x12,%r10,%r14
   0.06%  │ │    0x00007fb4900efda5:   add    0x10(%rsp),%rbx
   0.17%  │ │    0x00007fb4900efdaa:   or     %rdx,%rdi
   0.14%  │ │    0x00007fb4900efdad:   mov    %r11,%r15
   0.09%  │ │    0x00007fb4900efdb0:   xor    %rax,%r15
   0.07%  │ │    0x00007fb4900efdb3:   rorx   $0x22,%rcx,%r12
   0.18%  │ │    0x00007fb4900efdb9:   xor    %r14,%r13
   0.11%  │ │    0x00007fb4900efdbc:   rorx   $0xe,%r10,%r14
   0.10%  │ │    0x00007fb4900efdc2:   and    %r10,%r15
   0.08%  │ │    0x00007fb4900efdc5:   add    %rbx,%r9
   0.20%  │ │    0x00007fb4900efdc8:   and    %r8,%rdi
   0.12%  │ │    0x00007fb4900efdcb:   xor    %r14,%r13
   0.08%  │ │    0x00007fb4900efdce:   rorx   $0x27,%rcx,%r14
   0.09%  │ │    0x00007fb4900efdd4:   xor    %r12,%r14
   0.18%  │ │    0x00007fb4900efdd7:   rorx   $0x1c,%rcx,%r12
   0.09%  │ │    0x00007fb4900efddd:   xor    %rax,%r15
   0.12%  │ │    0x00007fb4900efde0:   xor    %r12,%r14
   0.09%  │ │    0x00007fb4900efde3:   mov    %rcx,%r12
   0.21%  │ │    0x00007fb4900efde6:   and    %rdx,%r12
   0.09%  │ │    0x00007fb4900efde9:   add    %r13,%r15
   0.10%  │ │    0x00007fb4900efdec:   or     %r12,%rdi
   0.10%  │ │    0x00007fb4900efdef:   add    %r14,%rbx
   0.18%  │ │    0x00007fb4900efdf2:   add    %r15,%r9
   0.11%  │ │    0x00007fb4900efdf5:   add    %r15,%rbx
   0.09%  │ │    0x00007fb4900efdf8:   add    %rdi,%rbx
   0.09%  │ │    0x00007fb4900efdfb:   vpsrlq $0x13,%ymm7,%ymm3
   0.20%  │ │    0x00007fb4900efe00:   vpsllq $0x2d,%ymm7,%ymm1
   0.09%  │ │    0x00007fb4900efe05:   vpor   %ymm1,%ymm3,%ymm3
   0.10%  │ │    0x00007fb4900efe09:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │    0x00007fb4900efe0d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.15%  │ │    0x00007fb4900efe12:   vpsllq $0x3,%ymm7,%ymm1
   0.13%  │ │    0x00007fb4900efe17:   vpor   %ymm1,%ymm3,%ymm3
   0.17%  │ │    0x00007fb4900efe1b:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │    0x00007fb4900efe1f:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │    0x00007fb4900efe24:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.26%  │ │    0x00007fb4900efe2a:   mov    %rbx,%rdi
   0.11%  │ │    0x00007fb4900efe2d:   rorx   $0x29,%r9,%r13
   0.07%  │ │    0x00007fb4900efe33:   rorx   $0x12,%r9,%r14
   0.17%  │ │    0x00007fb4900efe39:   add    0x18(%rsp),%rax
   0.17%  │ │    0x00007fb4900efe3e:   or     %r8,%rdi
   0.10%  │ │    0x00007fb4900efe41:   mov    %r10,%r15
   0.06%  │ │    0x00007fb4900efe44:   xor    %r11,%r15
   0.19%  │ │    0x00007fb4900efe47:   rorx   $0x22,%rbx,%r12
   0.19%  │ │    0x00007fb4900efe4d:   xor    %r14,%r13
   0.10%  │ │    0x00007fb4900efe50:   rorx   $0xe,%r9,%r14
   0.07%  │ │    0x00007fb4900efe56:   and    %r9,%r15
   0.16%  │ │    0x00007fb4900efe59:   add    %rax,%rdx
   0.18%  │ │    0x00007fb4900efe5c:   and    %rcx,%rdi
   0.10%  │ │    0x00007fb4900efe5f:   xor    %r14,%r13
   0.06%  │ │    0x00007fb4900efe62:   rorx   $0x27,%rbx,%r14
   0.14%  │ │    0x00007fb4900efe68:   xor    %r12,%r14
   0.18%  │ │    0x00007fb4900efe6b:   rorx   $0x1c,%rbx,%r12
   0.11%  │ │    0x00007fb4900efe71:   xor    %r11,%r15
   0.05%  │ │    0x00007fb4900efe74:   xor    %r12,%r14
   0.15%  │ │    0x00007fb4900efe77:   mov    %rbx,%r12
   0.18%  │ │    0x00007fb4900efe7a:   and    %r8,%r12
   0.11%  │ │    0x00007fb4900efe7d:   add    %r13,%r15
   0.05%  │ │    0x00007fb4900efe80:   or     %r12,%rdi
   0.15%  │ │    0x00007fb4900efe83:   add    %r14,%rax
   0.22%  │ │    0x00007fb4900efe86:   add    %r15,%rdx
   0.10%  │ │    0x00007fb4900efe89:   add    %r15,%rax
   0.08%  │ │    0x00007fb4900efe8c:   add    %rdi,%rax
   0.16%  │ │    0x00007fb4900efe8f:   subq   $0x1,0x20(%rsp)
   0.29%  ╰ │    0x00007fb4900efe95:   jne    0x00007fb4900ef520
   0.03%    │    0x00007fb4900efe9b:   movq   $0x2,0x20(%rsp)
   0.05%   ↗│    0x00007fb4900efea4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.06%   ││    0x00007fb4900efea9:   vmovdqu %ymm0,(%rsp)
   0.05%   ││    0x00007fb4900efeae:   mov    %r9,%r15
   0.06%   ││    0x00007fb4900efeb1:   rorx   $0x29,%rdx,%r13
   0.07%   ││    0x00007fb4900efeb7:   rorx   $0x12,%rdx,%r14
   0.07%   ││    0x00007fb4900efebd:   xor    %r10,%r15
   0.05%   ││    0x00007fb4900efec0:   xor    %r14,%r13
   0.10%   ││    0x00007fb4900efec3:   rorx   $0xe,%rdx,%r14
   0.04%   ││    0x00007fb4900efec9:   and    %rdx,%r15
   0.06%   ││    0x00007fb4900efecc:   xor    %r14,%r13
   0.05%   ││    0x00007fb4900efecf:   rorx   $0x22,%rax,%r12
   0.05%   ││    0x00007fb4900efed5:   xor    %r10,%r15
   0.06%   ││    0x00007fb4900efed8:   rorx   $0x27,%rax,%r14
   0.08%   ││    0x00007fb4900efede:   mov    %rax,%rdi
   0.04%   ││    0x00007fb4900efee1:   xor    %r12,%r14
   0.07%   ││    0x00007fb4900efee4:   rorx   $0x1c,%rax,%r12
   0.05%   ││    0x00007fb4900efeea:   add    (%rsp),%r11
   0.08%   ││    0x00007fb4900efeee:   or     %rcx,%rdi
   0.05%   ││    0x00007fb4900efef1:   xor    %r12,%r14
   0.08%   ││    0x00007fb4900efef4:   mov    %rax,%r12
   0.05%   ││    0x00007fb4900efef7:   and    %rbx,%rdi
   0.06%   ││    0x00007fb4900efefa:   and    %rcx,%r12
   0.05%   ││    0x00007fb4900efefd:   add    %r13,%r15
   0.06%   ││    0x00007fb4900eff00:   add    %r11,%r8
   0.04%   ││    0x00007fb4900eff03:   or     %r12,%rdi
   0.07%   ││    0x00007fb4900eff06:   add    %r14,%r11
   0.07%   ││    0x00007fb4900eff09:   add    %r15,%r8
   0.08%   ││    0x00007fb4900eff0c:   add    %r15,%r11
   0.06%   ││    0x00007fb4900eff0f:   mov    %rdx,%r15
   0.06%   ││    0x00007fb4900eff12:   rorx   $0x29,%r8,%r13
   0.07%   ││    0x00007fb4900eff18:   rorx   $0x12,%r8,%r14
   0.10%   ││    0x00007fb4900eff1e:   xor    %r9,%r15
   0.06%   ││    0x00007fb4900eff21:   xor    %r14,%r13
   0.06%   ││    0x00007fb4900eff24:   rorx   $0xe,%r8,%r14
   0.05%   ││    0x00007fb4900eff2a:   and    %r8,%r15
   0.08%   ││    0x00007fb4900eff2d:   add    %rdi,%r11
   0.05%   ││    0x00007fb4900eff30:   xor    %r14,%r13
   0.06%   ││    0x00007fb4900eff33:   rorx   $0x22,%r11,%r12
   0.06%   ││    0x00007fb4900eff39:   xor    %r9,%r15
   0.10%   ││    0x00007fb4900eff3c:   rorx   $0x27,%r11,%r14
   0.06%   ││    0x00007fb4900eff42:   mov    %r11,%rdi
   0.07%   ││    0x00007fb4900eff45:   xor    %r12,%r14
   0.08%   ││    0x00007fb4900eff48:   rorx   $0x1c,%r11,%r12
   0.07%   ││    0x00007fb4900eff4e:   add    0x8(%rsp),%r10
   0.05%   ││    0x00007fb4900eff53:   or     %rbx,%rdi
   0.06%   ││    0x00007fb4900eff56:   xor    %r12,%r14
   0.05%   ││    0x00007fb4900eff59:   mov    %r11,%r12
   0.07%   ││    0x00007fb4900eff5c:   and    %rax,%rdi
   0.06%   ││    0x00007fb4900eff5f:   and    %rbx,%r12
   0.08%   ││    0x00007fb4900eff62:   add    %r13,%r15
   0.05%   ││    0x00007fb4900eff65:   add    %r10,%rcx
   0.06%   ││    0x00007fb4900eff68:   or     %r12,%rdi
   0.05%   ││    0x00007fb4900eff6b:   add    %r14,%r10
   0.06%   ││    0x00007fb4900eff6e:   add    %r15,%rcx
   0.06%   ││    0x00007fb4900eff71:   add    %r15,%r10
   0.06%   ││    0x00007fb4900eff74:   mov    %r8,%r15
   0.05%   ││    0x00007fb4900eff77:   rorx   $0x29,%rcx,%r13
   0.09%   ││    0x00007fb4900eff7d:   rorx   $0x12,%rcx,%r14
   0.06%   ││    0x00007fb4900eff83:   xor    %rdx,%r15
   0.08%   ││    0x00007fb4900eff86:   xor    %r14,%r13
   0.06%   ││    0x00007fb4900eff89:   rorx   $0xe,%rcx,%r14
   0.09%   ││    0x00007fb4900eff8f:   and    %rcx,%r15
   0.06%   ││    0x00007fb4900eff92:   add    %rdi,%r10
   0.07%   ││    0x00007fb4900eff95:   xor    %r14,%r13
   0.07%   ││    0x00007fb4900eff98:   rorx   $0x22,%r10,%r12
   0.08%   ││    0x00007fb4900eff9e:   xor    %rdx,%r15
   0.07%   ││    0x00007fb4900effa1:   rorx   $0x27,%r10,%r14
   0.06%   ││    0x00007fb4900effa7:   mov    %r10,%rdi
   0.05%   ││    0x00007fb4900effaa:   xor    %r12,%r14
   0.09%   ││    0x00007fb4900effad:   rorx   $0x1c,%r10,%r12
   0.05%   ││    0x00007fb4900effb3:   add    0x10(%rsp),%r9
   0.05%   ││    0x00007fb4900effb8:   or     %rax,%rdi
   0.07%   ││    0x00007fb4900effbb:   xor    %r12,%r14
   0.05%   ││    0x00007fb4900effbe:   mov    %r10,%r12
   0.07%   ││    0x00007fb4900effc1:   and    %r11,%rdi
   0.05%   ││    0x00007fb4900effc4:   and    %rax,%r12
   0.05%   ││    0x00007fb4900effc7:   add    %r13,%r15
   0.08%   ││    0x00007fb4900effca:   add    %r9,%rbx
   0.08%   ││    0x00007fb4900effcd:   or     %r12,%rdi
   0.06%   ││    0x00007fb4900effd0:   add    %r14,%r9
   0.06%   ││    0x00007fb4900effd3:   add    %r15,%rbx
   0.12%   ││    0x00007fb4900effd6:   add    %r15,%r9
   0.06%   ││    0x00007fb4900effd9:   mov    %rcx,%r15
   0.05%   ││    0x00007fb4900effdc:   rorx   $0x29,%rbx,%r13
   0.06%   ││    0x00007fb4900effe2:   rorx   $0x12,%rbx,%r14
   0.08%   ││    0x00007fb4900effe8:   xor    %r8,%r15
   0.08%   ││    0x00007fb4900effeb:   xor    %r14,%r13
   0.07%   ││    0x00007fb4900effee:   rorx   $0xe,%rbx,%r14
   0.07%   ││    0x00007fb4900efff4:   and    %rbx,%r15
   0.10%   ││    0x00007fb4900efff7:   add    %rdi,%r9
   0.05%   ││    0x00007fb4900efffa:   xor    %r14,%r13
   0.07%   ││    0x00007fb4900efffd:   rorx   $0x22,%r9,%r12
   0.07%   ││    0x00007fb4900f0003:   xor    %r8,%r15
   0.09%   ││    0x00007fb4900f0006:   rorx   $0x27,%r9,%r14
   0.05%   ││    0x00007fb4900f000c:   mov    %r9,%rdi
   0.07%   ││    0x00007fb4900f000f:   xor    %r12,%r14
   0.04%   ││    0x00007fb4900f0012:   rorx   $0x1c,%r9,%r12
   0.07%   ││    0x00007fb4900f0018:   add    0x18(%rsp),%rdx
   0.02%   ││    0x00007fb4900f001d:   or     %r11,%rdi
   0.05%   ││    0x00007fb4900f0020:   xor    %r12,%r14
   0.06%   ││    0x00007fb4900f0023:   mov    %r9,%r12
   0.08%   ││    0x00007fb4900f0026:   and    %r10,%rdi
   0.06%   ││    0x00007fb4900f0029:   and    %r11,%r12
   0.06%   ││    0x00007fb4900f002c:   add    %r13,%r15
   0.07%   ││    0x00007fb4900f002f:   add    %rdx,%rax
   0.08%   ││    0x00007fb4900f0032:   or     %r12,%rdi
   0.08%   ││    0x00007fb4900f0035:   add    %r14,%rdx
   0.05%   ││    0x00007fb4900f0038:   add    %r15,%rax
   0.07%   ││    0x00007fb4900f003b:   add    %r15,%rdx
   0.08%   ││    0x00007fb4900f003e:   add    %rdi,%rdx
   0.09%   ││    0x00007fb4900f0041:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.06%   ││    0x00007fb4900f0046:   vmovdqu %ymm0,(%rsp)
   0.05%   ││    0x00007fb4900f004b:   add    $0x40,%rbp
   0.07%   ││    0x00007fb4900f004f:   mov    %rbx,%r15
   0.06%   ││    0x00007fb4900f0052:   rorx   $0x29,%rax,%r13
   0.06%   ││    0x00007fb4900f0058:   rorx   $0x12,%rax,%r14
   0.04%   ││    0x00007fb4900f005e:   xor    %rcx,%r15
   0.09%   ││    0x00007fb4900f0061:   xor    %r14,%r13
   0.10%   ││    0x00007fb4900f0064:   rorx   $0xe,%rax,%r14
   0.05%   ││    0x00007fb4900f006a:   and    %rax,%r15
   0.05%   ││    0x00007fb4900f006d:   xor    %r14,%r13
   0.06%   ││    0x00007fb4900f0070:   rorx   $0x22,%rdx,%r12
   0.09%   ││    0x00007fb4900f0076:   xor    %rcx,%r15
   0.05%   ││    0x00007fb4900f0079:   rorx   $0x27,%rdx,%r14
   0.04%   ││    0x00007fb4900f007f:   mov    %rdx,%rdi
   0.07%   ││    0x00007fb4900f0082:   xor    %r12,%r14
   0.08%   ││    0x00007fb4900f0085:   rorx   $0x1c,%rdx,%r12
   0.06%   ││    0x00007fb4900f008b:   add    (%rsp),%r8
   0.04%   ││    0x00007fb4900f008f:   or     %r10,%rdi
   0.07%   ││    0x00007fb4900f0092:   xor    %r12,%r14
   0.07%   ││    0x00007fb4900f0095:   mov    %rdx,%r12
   0.07%   ││    0x00007fb4900f0098:   and    %r9,%rdi
   0.03%   ││    0x00007fb4900f009b:   and    %r10,%r12
   0.07%   ││    0x00007fb4900f009e:   add    %r13,%r15
   0.08%   ││    0x00007fb4900f00a1:   add    %r8,%r11
   0.06%   ││    0x00007fb4900f00a4:   or     %r12,%rdi
   0.04%   ││    0x00007fb4900f00a7:   add    %r14,%r8
   0.06%   ││    0x00007fb4900f00aa:   add    %r15,%r11
   0.11%   ││    0x00007fb4900f00ad:   add    %r15,%r8
   0.05%   ││    0x00007fb4900f00b0:   mov    %rax,%r15
   0.04%   ││    0x00007fb4900f00b3:   rorx   $0x29,%r11,%r13
   0.06%   ││    0x00007fb4900f00b9:   rorx   $0x12,%r11,%r14
   0.11%   ││    0x00007fb4900f00bf:   xor    %rbx,%r15
   0.07%   ││    0x00007fb4900f00c2:   xor    %r14,%r13
   0.05%   ││    0x00007fb4900f00c5:   rorx   $0xe,%r11,%r14
   0.08%   ││    0x00007fb4900f00cb:   and    %r11,%r15
   0.07%   ││    0x00007fb4900f00ce:   add    %rdi,%r8
   0.05%   ││    0x00007fb4900f00d1:   xor    %r14,%r13
   0.05%   ││    0x00007fb4900f00d4:   rorx   $0x22,%r8,%r12
   0.08%   ││    0x00007fb4900f00da:   xor    %rbx,%r15
   0.11%   ││    0x00007fb4900f00dd:   rorx   $0x27,%r8,%r14
   0.08%   ││    0x00007fb4900f00e3:   mov    %r8,%rdi
   0.05%   ││    0x00007fb4900f00e6:   xor    %r12,%r14
   0.07%   ││    0x00007fb4900f00e9:   rorx   $0x1c,%r8,%r12
   0.09%   ││    0x00007fb4900f00ef:   add    0x8(%rsp),%rcx
   0.04%   ││    0x00007fb4900f00f4:   or     %r9,%rdi
   0.04%   ││    0x00007fb4900f00f7:   xor    %r12,%r14
   0.07%   ││    0x00007fb4900f00fa:   mov    %r8,%r12
   0.09%   ││    0x00007fb4900f00fd:   and    %rdx,%rdi
   0.04%   ││    0x00007fb4900f0100:   and    %r9,%r12
   0.05%   ││    0x00007fb4900f0103:   add    %r13,%r15
   0.08%   ││    0x00007fb4900f0106:   add    %rcx,%r10
   0.07%   ││    0x00007fb4900f0109:   or     %r12,%rdi
   0.07%   ││    0x00007fb4900f010c:   add    %r14,%rcx
   0.04%   ││    0x00007fb4900f010f:   add    %r15,%r10
   0.12%   ││    0x00007fb4900f0112:   add    %r15,%rcx
   0.07%   ││    0x00007fb4900f0115:   mov    %r11,%r15
   0.05%   ││    0x00007fb4900f0118:   rorx   $0x29,%r10,%r13
   0.07%   ││    0x00007fb4900f011e:   rorx   $0x12,%r10,%r14
   0.05%   ││    0x00007fb4900f0124:   xor    %rax,%r15
   0.08%   ││    0x00007fb4900f0127:   xor    %r14,%r13
   0.06%   ││    0x00007fb4900f012a:   rorx   $0xe,%r10,%r14
   0.06%   ││    0x00007fb4900f0130:   and    %r10,%r15
   0.09%   ││    0x00007fb4900f0133:   add    %rdi,%rcx
   0.07%   ││    0x00007fb4900f0136:   xor    %r14,%r13
   0.07%   ││    0x00007fb4900f0139:   rorx   $0x22,%rcx,%r12
   0.06%   ││    0x00007fb4900f013f:   xor    %rax,%r15
   0.11%   ││    0x00007fb4900f0142:   rorx   $0x27,%rcx,%r14
   0.07%   ││    0x00007fb4900f0148:   mov    %rcx,%rdi
   0.05%   ││    0x00007fb4900f014b:   xor    %r12,%r14
   0.09%   ││    0x00007fb4900f014e:   rorx   $0x1c,%rcx,%r12
   0.11%   ││    0x00007fb4900f0154:   add    0x10(%rsp),%rbx
   0.05%   ││    0x00007fb4900f0159:   or     %rdx,%rdi
   0.05%   ││    0x00007fb4900f015c:   xor    %r12,%r14
   0.06%   ││    0x00007fb4900f015f:   mov    %rcx,%r12
   0.07%   ││    0x00007fb4900f0162:   and    %r8,%rdi
   0.06%   ││    0x00007fb4900f0165:   and    %rdx,%r12
   0.06%   ││    0x00007fb4900f0168:   add    %r13,%r15
   0.06%   ││    0x00007fb4900f016b:   add    %rbx,%r9
   0.07%   ││    0x00007fb4900f016e:   or     %r12,%rdi
   0.09%   ││    0x00007fb4900f0171:   add    %r14,%rbx
   0.03%   ││    0x00007fb4900f0174:   add    %r15,%r9
   0.10%   ││    0x00007fb4900f0177:   add    %r15,%rbx
   0.06%   ││    0x00007fb4900f017a:   mov    %r10,%r15
   0.06%   ││    0x00007fb4900f017d:   rorx   $0x29,%r9,%r13
   0.05%   ││    0x00007fb4900f0183:   rorx   $0x12,%r9,%r14
   0.07%   ││    0x00007fb4900f0189:   xor    %r11,%r15
   0.07%   ││    0x00007fb4900f018c:   xor    %r14,%r13
   0.08%   ││    0x00007fb4900f018f:   rorx   $0xe,%r9,%r14
   0.06%   ││    0x00007fb4900f0195:   and    %r9,%r15
   0.07%   ││    0x00007fb4900f0198:   add    %rdi,%rbx
   0.08%   ││    0x00007fb4900f019b:   xor    %r14,%r13
   0.10%   ││    0x00007fb4900f019e:   rorx   $0x22,%rbx,%r12
   0.06%   ││    0x00007fb4900f01a4:   xor    %r11,%r15
   0.10%   ││    0x00007fb4900f01a7:   rorx   $0x27,%rbx,%r14
   0.06%   ││    0x00007fb4900f01ad:   mov    %rbx,%rdi
   0.05%   ││    0x00007fb4900f01b0:   xor    %r12,%r14
   0.08%   ││    0x00007fb4900f01b3:   rorx   $0x1c,%rbx,%r12
   0.06%   ││    0x00007fb4900f01b9:   add    0x18(%rsp),%rax
   0.04%   ││    0x00007fb4900f01be:   or     %r8,%rdi
   0.05%   ││    0x00007fb4900f01c1:   xor    %r12,%r14
   0.08%   ││    0x00007fb4900f01c4:   mov    %rbx,%r12
   0.06%   ││    0x00007fb4900f01c7:   and    %rcx,%rdi
   0.07%   ││    0x00007fb4900f01ca:   and    %r8,%r12
   0.07%   ││    0x00007fb4900f01cd:   add    %r13,%r15
   0.06%   ││    0x00007fb4900f01d0:   add    %rax,%rdx
   0.07%   ││    0x00007fb4900f01d3:   or     %r12,%rdi
   0.06%   ││    0x00007fb4900f01d6:   add    %r14,%rax
   0.11%   ││    0x00007fb4900f01d9:   add    %r15,%rdx
   0.08%   ││    0x00007fb4900f01dc:   add    %r15,%rax
   0.05%   ││    0x00007fb4900f01df:   add    %rdi,%rax
   0.11%   ││    0x00007fb4900f01e2:   vmovdqu %ymm6,%ymm4
   0.04%   ││    0x00007fb4900f01e6:   vmovdqu %ymm7,%ymm5
   0.03%   ││    0x00007fb4900f01ea:   subq   $0x1,0x20(%rsp)
   0.16%   ╰│    0x00007fb4900f01f0:   jne    0x00007fb4900efea4
   0.02%    │    0x00007fb4900f01f6:   add    (%rsi),%rax
   0.01%    │    0x00007fb4900f01f9:   mov    %rax,(%rsi)
   0.23%    │    0x00007fb4900f01fc:   add    0x8(%rsi),%rbx
            │    0x00007fb4900f0200:   mov    %rbx,0x8(%rsi)
   0.01%    │    0x00007fb4900f0204:   add    0x10(%rsi),%rcx
            │    0x00007fb4900f0208:   mov    %rcx,0x10(%rsi)
   0.14%    │    0x00007fb4900f020c:   add    0x18(%rsi),%r8
            │    0x00007fb4900f0210:   mov    %r8,0x18(%rsi)
   0.01%    │    0x00007fb4900f0214:   add    0x20(%rsi),%rdx
            │    0x00007fb4900f0218:   mov    %rdx,0x20(%rsi)
   0.14%    │    0x00007fb4900f021c:   add    0x28(%rsi),%r9
            │    0x00007fb4900f0220:   mov    %r9,0x28(%rsi)
   0.01%    │    0x00007fb4900f0224:   add    0x30(%rsi),%r10
            │    0x00007fb4900f0228:   mov    %r10,0x30(%rsi)
   0.10%    │    0x00007fb4900f022c:   add    0x38(%rsi),%r11
   0.00%    │    0x00007fb4900f0230:   mov    %r11,0x38(%rsi)
   0.02%    │    0x00007fb4900f0234:   mov    0x28(%rsp),%rdi
   0.00%    │    0x00007fb4900f0239:   add    $0x80,%rdi
   0.08%    │    0x00007fb4900f0240:   cmp    0x30(%rsp),%rdi
            ╰    0x00007fb4900f0245:   jne    0x00007fb4900ef4db
   0.01%         0x00007fb4900f024b:   mov    0x40(%rsp),%rbp
   0.01%         0x00007fb4900f0250:   mov    0x48(%rsp),%rbx
                 0x00007fb4900f0255:   mov    0x50(%rsp),%r12
                 0x00007fb4900f025a:   mov    0x58(%rsp),%r13
   0.00%         0x00007fb4900f025f:   mov    0x60(%rsp),%r14
                 0x00007fb4900f0264:   mov    0x68(%rsp),%r15
                 0x00007fb4900f0269:   mov    0x38(%rsp),%rsp
                 0x00007fb4900f026e:   pop    %rcx
   0.01%         0x00007fb4900f026f:   pop    %rdx
                 0x00007fb4900f0270:   mov    %rdx,%rax
   0.21%      ↗  0x00007fb4900f0273:   cmp    %rcx,%rax
             ╭│  0x00007fb4900f0276:   jae    0x00007fb4900f0280
   0.00%     ││  0x00007fb4900f0278:   add    $0x80,%rax
             │╰  0x00007fb4900f027e:   jmp    0x00007fb4900f0273
   0.03%     ↘   0x00007fb4900f0280:   vzeroupper 
                 0x00007fb4900f0283:   leave  
   0.01%         0x00007fb4900f0284:   ret    
               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::avx2_shuffle_base64 [0x00007fb4900f02c0, 0x00007fb4900f02e0] (32 bytes)
               --------------------------------------------------------------------------------
....................................................................................................
  92.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.90%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.15%        runtime stub  StubRoutines::sha512_implCompress 
   0.24%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.19%              kernel  [unknown] 
   0.17%        runtime stub  StubRoutines::sha512_implCompress 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 733 
   0.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 733 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 733 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 677 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 733 
   0.04%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 730 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 730 
   0.03%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 730 
   1.62%  <...other 331 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.90%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.31%        runtime stub  StubRoutines::sha512_implCompress 
   1.17%              kernel  [unknown] 
   0.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 733 
   0.24%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.23%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 730 
   0.05%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.04%         c2, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 677 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.18%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.51%        runtime stub
   1.17%              kernel
   0.98%         c2, level 4
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-1937039.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-224, length = 16384)

# Run progress: 66.67% complete, ETA 00:07:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 99.706 us/op
# Warmup Iteration   2: 86.464 us/op
# Warmup Iteration   3: 85.977 us/op
# Warmup Iteration   4: 85.993 us/op
# Warmup Iteration   5: 85.989 us/op
Iteration   1: 85.997 us/op
Iteration   2: 85.999 us/op
Iteration   3: 86.019 us/op
Iteration   4: 85.993 us/op
Iteration   5: 85.974 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  85.996 ±(99.9%) 0.061 us/op [Average]
  (min, avg, max) = (85.974, 85.996, 86.019), stdev = 0.016
  CI (99.9%): [85.935, 86.058] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 172648 total address lines.
Perf output processed (skipped 57.021 seconds):
 Column 1: cycles (50805 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 662 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007f2c98642fc8:   cmp    %edx,%r8d
          ╭         0x00007f2c98642fcb:   jge    0x00007f2c98642fd2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007f2c98642fcd:   mov    %eax,%r10d
          │         0x00007f2c98642fd0:   jmp    0x00007f2c98642fac
   0.03%  ↘         0x00007f2c98642fd2:   vmovq  %xmm0,%rdi                   ;   {no_reloc}
   0.03%            0x00007f2c98642fd7:   vmovd  %xmm2,%r11d
   0.08%            0x00007f2c98642fdc:   vmovd  %xmm3,%r8d
   0.05%            0x00007f2c98642fe1:   vmovd  %xmm1,%ecx
   0.03%            0x00007f2c98642fe5:   mov    (%rsp),%r13
   0.04%            0x00007f2c98642fe9:   vmovd  %xmm5,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.10%    ↗       0x00007f2c98642fed:   mov    0x458(%r15),%r14
   0.07%    │       0x00007f2c98642ff4:   mov    %ebx,%r10d
   0.04%    │       0x00007f2c98642ff7:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rbp=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%    │       0x00007f2c98642ffa:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.11%    │       0x00007f2c98642ffd:   data16 xchg %ax,%ax
   0.08%    │       0x00007f2c98643000:   cmp    $0x5,%r10d
           ╭│       0x00007f2c98643004:   jge    0x00007f2c986430a5
   0.03%   ││       0x00007f2c9864300a:   mov    %ebx,%edx
   0.02%   ││       0x00007f2c9864300c:   shl    $0x5,%edx
   0.08%   ││       0x00007f2c9864300f:   lea    (%rdx,%rbx,8),%r14d
   0.06%   ││       0x00007f2c98643013:   add    $0x28,%r14d
   0.03%   ││       0x00007f2c98643017:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%   ││       0x00007f2c9864301a:   lea    0x28(%r14),%edx
   0.11%   ││       0x00007f2c9864301e:   xchg   %ax,%ax
   0.06%   ││       0x00007f2c98643020:   cmp    %edx,%r14d
           │╰       0x00007f2c98643023:   jge    0x00007f2c98642fed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.03%   │        0x00007f2c98643025:   lea    (%rbx,%rbx,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   │        0x00007f2c98643029:   cmp    %ecx,%r14d
           │        0x00007f2c9864302c:   jae    0x00007f2c986439e9
   0.11%   │        0x00007f2c98643032:   vmovd  %eax,%xmm5
   0.07%   │        0x00007f2c98643036:   mov    %r13,(%rsp)
   0.04%   │        0x00007f2c9864303a:   vmovd  %ecx,%xmm1
   0.06%   │        0x00007f2c9864303e:   vmovd  %r8d,%xmm3
   0.13%   │        0x00007f2c98643043:   movslq %r14d,%r8
   0.06%   │        0x00007f2c98643046:   add    $0x20,%r8
   0.04%   │        0x00007f2c9864304a:   cmp    %r13,%r8
           │        0x00007f2c9864304d:   jae    0x00007f2c986439e4
   0.04%   │        0x00007f2c98643053:   vmovd  %r11d,%xmm2
   0.10%   │        0x00007f2c98643058:   vmovq  %rdi,%xmm0
   0.07%   │        0x00007f2c9864305d:   lea    0x8(%r14),%r11d
   0.04%   │        0x00007f2c98643061:   mov    %r14d,%r8d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │  ↗     0x00007f2c98643064:   mov    0x10(%r9,%r8,1),%rdi         ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.11%   │  │     0x00007f2c98643069:   mov    %r10d,%eax
   0.06%   │  │     0x00007f2c9864306c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │  │     0x00007f2c9864306e:   cmp    %esi,%r10d
           │  │     0x00007f2c98643071:   jae    0x00007f2c98643944
   0.05%   │  │     0x00007f2c98643077:   mov    %rdi,0x10(%rbp,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.10%   │  │     0x00007f2c9864307c:   lea    0x8(%r8),%ecx
   0.06%   │  │     0x00007f2c98643080:   cmp    %r11d,%ecx
           │ ╭│     0x00007f2c98643083:   jge    0x00007f2c9864308d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007f2c98643085:   mov    %ecx,%r8d
           │ ││     0x00007f2c98643088:   mov    %eax,%r10d
           │ │╰     0x00007f2c9864308b:   jmp    0x00007f2c98643064
   0.03%   │ ↘      0x00007f2c9864308d:   lea    0x10(%r14),%r11d
   0.03%   │        0x00007f2c98643091:   cmp    %r11d,%ecx
           │        0x00007f2c98643094:   jge    0x00007f2c98643a20
   0.12%   │        0x00007f2c9864309a:   add    $0x8,%r8d
   0.06%   │        0x00007f2c9864309e:   xchg   %ax,%ax
   0.05%   │        0x00007f2c986430a0:   jmp    0x00007f2c98642f53
   0.01%   ↘        0x00007f2c986430a5:   mov    0x38(%rdi),%r10d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.01%            0x00007f2c986430a9:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f2c98643abc
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.03%            0x00007f2c986430ae:   cmp    $0x18,%r11d
                    0x00007f2c986430b2:   jbe    0x00007f2c98643a88
   0.02%            0x00007f2c986430b8:   mov    %r11d,(%rsp)
   0.02%            0x00007f2c986430bc:   vmovd  %eax,%xmm2
   0.00%            0x00007f2c986430c0:   vmovq  %rdi,%xmm0
   0.02%            0x00007f2c986430c5:   mov    0x40(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.03%            0x00007f2c986430ca:   mov    %r11,0x8(%rsp)
   0.01%            0x00007f2c986430cf:   mov    0x20(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.02%            0x00007f2c986430d4:   vmovq  %r11,%xmm3
   0.03%            0x00007f2c986430d9:   mov    0xd0(%r12,%r10,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.01%            0x00007f2c986430e1:   mov    0xa8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.01%            0x00007f2c986430e9:   mov    %r11,0x10(%rsp)
   0.01%            0x00007f2c986430ee:   mov    0x80(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.04%            0x00007f2c986430f6:   mov    %r11,0x18(%rsp)              ;   {no_reloc}
   0.01%            0x00007f2c986430fb:   mov    0x58(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.01%            0x00007f2c98643100:   mov    %r11,0x20(%rsp)
   0.01%            0x00007f2c98643105:   mov    0x30(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
   0.02%            0x00007f2c9864310a:   vmovq  %r11,%xmm4
   0.02%            0x00007f2c9864310f:   mov    0xb8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
   0.01%            0x00007f2c98643117:   mov    %r11,0x28(%rsp)
   0.01%            0x00007f2c9864311c:   mov    0x90(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
   0.03%            0x00007f2c98643124:   mov    %r11,0x30(%rsp)
   0.02%            0x00007f2c98643129:   mov    0x68(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.00%            0x00007f2c9864312e:   mov    %r11,0x38(%rsp)
   0.01%            0x00007f2c98643133:   vmovd  %r10d,%xmm1
   0.01%            0x00007f2c98643138:   mov    0x18(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
   0.02%            0x00007f2c9864313d:   vmovq  %r10,%xmm5
   0.00%            0x00007f2c98643142:   vmovd  %xmm1,%r10d
   0.01%            0x00007f2c98643147:   mov    0xc8(%r12,%r10,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
   0.02%            0x00007f2c9864314f:   mov    0xa0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
   0.02%            0x00007f2c98643157:   mov    %r10,0x40(%rsp)
   0.00%            0x00007f2c9864315c:   vmovd  %xmm1,%r10d
   0.02%            0x00007f2c98643161:   mov    0x78(%r12,%r10,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.02%            0x00007f2c98643166:   mov    0x28(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.01%            0x00007f2c9864316b:   vmovq  %r10,%xmm6
   0.01%            0x00007f2c98643170:   vmovd  %xmm1,%r10d
   0.01%            0x00007f2c98643175:   mov    0xb0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
   0.03%            0x00007f2c9864317d:   mov    %r10,0x48(%rsp)
   0.01%            0x00007f2c98643182:   vmovd  %xmm1,%r11d
   0.00%            0x00007f2c98643187:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.01%            0x00007f2c9864318f:   mov    %r10,0x50(%rsp)
   0.02%            0x00007f2c98643194:   mov    %r11d,%r10d
   0.01%            0x00007f2c98643197:   mov    0x60(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.00%            0x00007f2c9864319c:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.02%            0x00007f2c986431a1:   mov    %r11,0x58(%rsp)
   0.02%            0x00007f2c986431a6:   vmovd  %xmm1,%r9d
   0.01%            0x00007f2c986431ab:   mov    0x10(%r12,%r9,8),%rbx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.00%            0x00007f2c986431b0:   mov    0xc0(%r12,%r9,8),%r11        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.01%            0x00007f2c986431b8:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
   0.02%            0x00007f2c986431c0:   mov    %r9,0x60(%rsp)
   0.02%            0x00007f2c986431c5:   vmovd  %xmm1,%r9d
   0.00%            0x00007f2c986431ca:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.01%            0x00007f2c986431cf:   mov    %r9,0x68(%rsp)
   0.02%            0x00007f2c986431d4:   vmovd  %xmm1,%r9d
   0.02%            0x00007f2c986431d9:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.00%            0x00007f2c986431de:   mov    %r9,0x70(%rsp)
   0.01%            0x00007f2c986431e3:   vmovd  %xmm1,%r9d
   0.02%            0x00007f2c986431e8:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.01%            0x00007f2c986431ed:   mov    %r9,0x78(%rsp)
   0.01%            0x00007f2c986431f2:   xor    %r9d,%r9d
   0.01%            0x00007f2c986431f5:   vmovd  %r9d,%xmm12                  ;   {no_reloc}
   0.02%       ╭    0x00007f2c986431fa:   jmp    0x00007f2c98643217
               │    0x00007f2c986431fc:   nopl   0x0(%rax)
   0.28%       │↗   0x00007f2c98643200:   mov    %rcx,0x28(%rsp)
   0.47%       ││   0x00007f2c98643205:   mov    %rax,%rcx
   0.19%       ││   0x00007f2c98643208:   mov    %r13,0x38(%rsp)
   0.37%       ││   0x00007f2c9864320d:   vmovq  %xmm7,%r10
   0.26%       ││   0x00007f2c98643212:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.44%       ↘│   0x00007f2c98643217:   vmovq  %xmm5,%rdi
   0.16%        │   0x00007f2c9864321c:   xor    0x8(%rsp),%rdi
   0.41%        │   0x00007f2c98643221:   xor    0x38(%rsp),%rdi
   0.33%        │   0x00007f2c98643226:   xor    0x30(%rsp),%rdi
   0.43%        │   0x00007f2c9864322b:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.30%        │   0x00007f2c98643230:   vmovq  %xmm3,%r9
   0.29%        │   0x00007f2c98643235:   xor    0x70(%rsp),%r9
   0.27%        │   0x00007f2c9864323a:   xor    0x68(%rsp),%r9
   0.40%        │   0x00007f2c9864323f:   xor    0x60(%rsp),%r9
   0.21%        │   0x00007f2c98643244:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.37%        │   0x00007f2c98643247:   rorx   $0x3f,%rdi,%rbp
   0.27%        │   0x00007f2c9864324d:   rorx   $0x3f,%r9,%rsi
   0.39%        │   0x00007f2c98643253:   vmovq  %rsi,%xmm7
   0.31%        │   0x00007f2c98643258:   vmovq  %xmm4,%rsi
   0.38%        │   0x00007f2c9864325d:   xor    0x20(%rsp),%rsi
   0.25%        │   0x00007f2c98643262:   xor    0x18(%rsp),%rsi
   0.40%        │   0x00007f2c98643267:   xor    0x10(%rsp),%rsi
   0.24%        │   0x00007f2c9864326c:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.36%        │   0x00007f2c9864326f:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.25%        │   0x00007f2c98643272:   rorx   $0x3f,%rsi,%rax
   0.35%        │   0x00007f2c98643278:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.27%        │   0x00007f2c9864327b:   vmovq  %xmm6,%r9
   0.33%        │   0x00007f2c98643280:   xor    0x78(%rsp),%r9
   0.23%        │   0x00007f2c98643285:   xor    %rdx,%r9
   0.40%        │   0x00007f2c98643288:   xor    0x40(%rsp),%r9
   0.28%        │   0x00007f2c9864328d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.35%        │   0x00007f2c98643290:   mov    0x78(%rsp),%rsi
   0.27%        │   0x00007f2c98643295:   xor    %rax,%rsi
   0.43%        │   0x00007f2c98643298:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.27%        │   0x00007f2c9864329e:   rorx   $0x3f,%r9,%r13
   0.30%        │   0x00007f2c986432a4:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.27%        │   0x00007f2c986432a7:   vmovq  %xmm6,%rdi
   0.37%        │   0x00007f2c986432ac:   xor    %rax,%rdi
   0.28%        │   0x00007f2c986432af:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.31%        │   0x00007f2c986432b5:   mov    %rdi,0x80(%rsp)
   0.39%        │   0x00007f2c986432bd:   xor    %r13,%r11
   0.41%        │   0x00007f2c986432c0:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.23%        │   0x00007f2c986432c6:   mov    %r11,0xc0(%rsp)
   0.52%        │   0x00007f2c986432ce:   vmovq  %xmm3,%r11
   0.26%        │   0x00007f2c986432d3:   xor    %r13,%r11
   0.31%        │   0x00007f2c986432d6:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.23%        │   0x00007f2c986432dc:   mov    %r11,0x88(%rsp)
   0.46%        │   0x00007f2c986432e4:   mov    0xc0(%rsp),%r11
   0.68%        │   0x00007f2c986432ec:   andn   %rdi,%r11,%r11
   0.64%        │   0x00007f2c986432f1:   vmovq  %r11,%xmm3
   1.05%        │   0x00007f2c986432f6:   mov    0x88(%rsp),%r11              ;   {no_reloc}
   0.47%        │   0x00007f2c986432fe:   andn   %rsi,%r11,%r11
   0.26%        │   0x00007f2c98643303:   vmovq  %r11,%xmm8
   1.30%        │   0x00007f2c98643308:   mov    0x60(%rsp),%r11
   0.25%        │   0x00007f2c9864330d:   xor    %r13,%r11
   0.07%        │   0x00007f2c98643310:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
   0.14%        │   0x00007f2c98643316:   mov    %r11,0x90(%rsp)
   0.74%        │   0x00007f2c9864331e:   mov    0x68(%rsp),%r11
   0.20%        │   0x00007f2c98643323:   xor    %r13,%r11
   0.11%        │   0x00007f2c98643326:   mov    0x70(%rsp),%rdi
   0.12%        │   0x00007f2c9864332b:   xor    %r13,%rdi
   0.81%        │   0x00007f2c9864332e:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.24%        │   0x00007f2c98643334:   mov    %r11,0x98(%rsp)
   0.09%        │   0x00007f2c9864333c:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.12%        │   0x00007f2c98643342:   mov    %r11,0xa0(%rsp)
   0.75%        │   0x00007f2c9864334a:   mov    0x40(%rsp),%r11
   0.22%        │   0x00007f2c9864334f:   xor    %rax,%r11
   0.09%        │   0x00007f2c98643352:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.10%        │   0x00007f2c98643358:   xor    %rax,%r8
   0.77%        │   0x00007f2c9864335b:   xor    %rax,%rdx
   0.22%        │   0x00007f2c9864335e:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.15%        │   0x00007f2c98643364:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.12%        │   0x00007f2c9864336a:   mov    0x98(%rsp),%r8
   0.85%        │   0x00007f2c98643372:   andn   %r11,%r8,%r8
   0.29%        │   0x00007f2c98643377:   vmovq  %r8,%xmm9
   0.24%        │   0x00007f2c9864337c:   mov    0xa0(%rsp),%r8
   0.12%        │   0x00007f2c98643384:   andn   %rdx,%r8,%r8
   0.75%        │   0x00007f2c98643389:   vmovq  %r8,%xmm10
   0.29%        │   0x00007f2c9864338e:   mov    0x90(%rsp),%r8
   0.14%        │   0x00007f2c98643396:   andn   %rdi,%r8,%r8
   0.13%        │   0x00007f2c9864339b:   vmovq  %r8,%xmm11
   0.80%        │   0x00007f2c986433a0:   mov    0x50(%rsp),%r8
   0.22%        │   0x00007f2c986433a5:   xor    %rbp,%r8
   0.14%        │   0x00007f2c986433a8:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.10%        │   0x00007f2c986433ae:   mov    %r8,0xa8(%rsp)
   0.74%        │   0x00007f2c986433b6:   mov    0x58(%rsp),%r8
   0.26%        │   0x00007f2c986433bb:   xor    %rbp,%r8
   0.14%        │   0x00007f2c986433be:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.13%        │   0x00007f2c986433c4:   mov    %rbx,%r8
   0.71%        │   0x00007f2c986433c7:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.23%        │   0x00007f2c986433ca:   mov    %r8,0xb0(%rsp)
   0.13%        │   0x00007f2c986433d2:   mov    %r10,%r13
   0.11%        │   0x00007f2c986433d5:   xor    %rbp,%r13
   0.70%        │   0x00007f2c986433d8:   mov    0x48(%rsp),%r8
   0.23%        │   0x00007f2c986433dd:   xor    %rbp,%r8
   0.18%        │   0x00007f2c986433e0:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.11%        │   0x00007f2c986433e6:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.72%        │   0x00007f2c986433ec:   xor    0x58(%rsp),%rbx
   0.29%        │   0x00007f2c986433f1:   xor    %r10,%rbx
   0.16%        │   0x00007f2c986433f4:   xor    0x50(%rsp),%rbx              ;   {no_reloc}
   0.11%        │   0x00007f2c986433f9:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.71%        │   0x00007f2c986433fe:   vmovq  %xmm7,%r10
   0.26%        │   0x00007f2c98643403:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.15%        │   0x00007f2c98643406:   mov    %r10,0xb8(%rsp)
   0.14%        │   0x00007f2c9864340e:   rorx   $0x3f,%rbx,%r8
   0.66%        │   0x00007f2c98643414:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.28%        │   0x00007f2c98643417:   mov    0x30(%rsp),%r10
   0.15%        │   0x00007f2c9864341c:   xor    0xb8(%rsp),%r10
   0.30%        │   0x00007f2c98643424:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.71%        │   0x00007f2c9864342a:   vmovq  %xmm3,%r9
   0.24%        │   0x00007f2c9864342f:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.27%        │   0x00007f2c98643432:   mov    %r9,0x78(%rsp)
   0.90%        │   0x00007f2c98643437:   xor    %r8,%rcx
   0.35%        │   0x00007f2c9864343a:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.25%        │   0x00007f2c98643440:   andn   0xc0(%rsp),%r10,%rcx
   0.12%        │   0x00007f2c9864344a:   andn   %r10,%rbp,%r10
   0.46%        │   0x00007f2c9864344f:   vmovq  %r10,%xmm7
   0.44%        │   0x00007f2c98643454:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.22%        │   0x00007f2c98643457:   mov    %rcx,0x70(%rsp)
   0.51%        │   0x00007f2c9864345c:   andn   0xb0(%rsp),%r9,%r10
   0.23%        │   0x00007f2c98643466:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.43%        │   0x00007f2c98643469:   vmovq  %r10,%xmm6
   0.28%        │   0x00007f2c9864346e:   andn   %r9,%r11,%r10
   0.37%        │   0x00007f2c98643473:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.23%        │   0x00007f2c9864347b:   vmovq  %r10,%xmm3
   0.44%        │   0x00007f2c98643480:   mov    0x18(%rsp),%r10
   0.21%        │   0x00007f2c98643485:   xor    %r8,%r10
   0.32%        │   0x00007f2c98643488:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.25%        │   0x00007f2c9864348e:   mov    0x10(%rsp),%r10
   0.42%        │   0x00007f2c98643493:   xor    %r8,%r10
   0.20%        │   0x00007f2c98643496:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.33%        │   0x00007f2c9864349c:   andn   %rbx,%rsi,%r11
   0.24%        │   0x00007f2c986434a1:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.44%        │   0x00007f2c986434a9:   mov    %r11,0x48(%rsp)
   0.38%        │   0x00007f2c986434ae:   andn   %r10,%rdx,%r13
   0.34%        │   0x00007f2c986434b3:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.22%        │   0x00007f2c986434bb:   andn   %r14,%r10,%r11
   0.41%        │   0x00007f2c986434c0:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.35%        │   0x00007f2c986434c3:   mov    %r11,0x68(%rsp)
   0.49%        │   0x00007f2c986434c8:   andn   0xa8(%rsp),%rbx,%rcx
   0.17%        │   0x00007f2c986434d2:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.36%        │   0x00007f2c986434d5:   vmovq  %xmm4,%r11
   0.27%        │   0x00007f2c986434da:   xor    %r8,%r11
   0.41%        │   0x00007f2c986434dd:   mov    0x20(%rsp),%rdx
   0.16%        │   0x00007f2c986434e2:   xor    %r8,%rdx
   0.38%        │   0x00007f2c986434e5:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.26%        │   0x00007f2c986434eb:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.41%        │   0x00007f2c986434f1:   andn   %rbp,%r8,%rdx                ;   {no_reloc}
   0.20%        │   0x00007f2c986434f6:   mov    %rdx,%rsi
   0.39%        │   0x00007f2c986434f9:   vmovq  %xmm7,%rdx
   0.27%        │   0x00007f2c986434fe:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.39%        │   0x00007f2c98643501:   mov    %rdx,%rbp
   0.19%        │   0x00007f2c98643504:   mov    0x80(%rsp),%rdx
   0.40%        │   0x00007f2c9864350c:   andn   %r8,%rdx,%r8
   0.27%        │   0x00007f2c98643511:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.44%        │   0x00007f2c98643519:   mov    %r8,0x20(%rsp)
   0.24%        │   0x00007f2c9864351e:   mov    %rsi,%r8
   0.38%        │   0x00007f2c98643521:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.27%        │   0x00007f2c98643524:   mov    %r8,0x58(%rsp)
   0.43%        │   0x00007f2c98643529:   andn   %r11,%rdi,%r8
   0.21%        │   0x00007f2c9864352e:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.36%        │   0x00007f2c98643536:   mov    %r8,0x40(%rsp)
   0.31%        │   0x00007f2c9864353b:   andn   %rax,%r11,%r8
   0.43%        │   0x00007f2c98643540:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.19%        │   0x00007f2c98643543:   mov    %r8,0x10(%rsp)
   0.43%        │   0x00007f2c98643548:   mov    0x38(%rsp),%r8
   0.25%        │   0x00007f2c9864354d:   xor    0xb8(%rsp),%r8
   0.43%        │   0x00007f2c98643555:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.19%        │   0x00007f2c9864355b:   vmovq  %xmm11,%r8
   0.35%        │   0x00007f2c98643560:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.28%        │   0x00007f2c98643563:   mov    %r8,0x60(%rsp)
   0.45%        │   0x00007f2c98643568:   andn   0x90(%rsp),%rdi,%r8
   0.17%        │   0x00007f2c98643572:   andn   %rdi,%rax,%rdi
   0.36%        │   0x00007f2c98643577:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.28%        │   0x00007f2c9864357a:   mov    %rdi,0x50(%rsp)
   0.53%        │   0x00007f2c9864357f:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.17%        │   0x00007f2c98643582:   mov    %r8,0x30(%rsp)
   0.41%        │   0x00007f2c98643587:   mov    0x28(%rsp),%r11
   0.24%        │   0x00007f2c9864358c:   xor    0xb8(%rsp),%r11
   0.40%        │   0x00007f2c98643594:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.17%        │   0x00007f2c9864359a:   andn   0x88(%rsp),%rdi,%r8
   0.40%        │   0x00007f2c986435a4:   vmovq  %xmm8,%r11
   0.22%        │   0x00007f2c986435a9:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.46%        │   0x00007f2c986435ac:   mov    %r11,%rax
   0.15%        │   0x00007f2c986435af:   mov    0xa8(%rsp),%r11
   0.35%        │   0x00007f2c986435b7:   andn   %rdi,%r11,%r11
   0.22%        │   0x00007f2c986435bc:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.48%        │   0x00007f2c986435bf:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.18%        │   0x00007f2c986435c7:   vmovq  %xmm5,%rbx
   0.40%        │   0x00007f2c986435cc:   xor    0xb8(%rsp),%rbx
   0.22%        │   0x00007f2c986435d4:   mov    0x8(%rsp),%rsi
   0.48%        │   0x00007f2c986435d9:   xor    0xb8(%rsp),%rsi
   0.13%        │   0x00007f2c986435e1:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.38%        │   0x00007f2c986435e7:   andn   0xa0(%rsp),%rbx,%rdi
   0.26%        │   0x00007f2c986435f1:   vmovq  %xmm10,%rdx                  ;   {no_reloc}
   0.42%        │   0x00007f2c986435f6:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.16%        │   0x00007f2c986435f9:   vmovq  %rdx,%xmm7
   0.43%        │   0x00007f2c986435fe:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.26%        │   0x00007f2c98643601:   mov    %rdi,0x18(%rsp)
   0.45%        │   0x00007f2c98643606:   andn   %rbx,%r14,%rdx
   0.13%        │   0x00007f2c9864360b:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
   0.40%        │   0x00007f2c9864360e:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.23%        │   0x00007f2c98643614:   vmovq  %xmm9,%rbx
   0.48%        │   0x00007f2c98643619:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.16%        │   0x00007f2c9864361c:   vmovq  %rbx,%xmm5
   0.40%        │   0x00007f2c98643621:   andn   0x98(%rsp),%r10,%rbx
   0.25%        │   0x00007f2c9864362b:   mov    0xb0(%rsp),%rdi
   0.42%        │   0x00007f2c98643633:   andn   %r10,%rdi,%r10
   0.18%        │   0x00007f2c98643638:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.42%        │   0x00007f2c9864363b:   vmovq  %r10,%xmm4
   0.28%        │   0x00007f2c98643640:   xor    %rdi,%rbx
   0.41%        │   0x00007f2c98643643:   movabs $0x7fee2aba0,%r9             ;   {oop([J{0x00000007fee2aba0})}
   0.17%        │   0x00007f2c9864364d:   vmovd  %xmm12,%r10d
   0.42%        │   0x00007f2c98643652:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.25%        │   0x00007f2c98643657:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.45%        │   0x00007f2c9864365a:   vmovd  %r10d,%xmm12
   0.16%        │   0x00007f2c9864365f:   nop
   0.33%        │   0x00007f2c98643660:   cmp    $0x18,%r10d
                ╰   0x00007f2c98643664:   jl     0x00007f2c98643200           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.00%            0x00007f2c9864366a:   vmovd  %xmm1,%r10d
   0.02%            0x00007f2c9864366f:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
   0.01%            0x00007f2c98643674:   mov    %r10d,%r9d
   0.01%            0x00007f2c98643677:   vmovq  %xmm5,%r10
   0.00%            0x00007f2c9864367c:   mov    %r10,0x18(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.01%            0x00007f2c98643681:   mov    %r9d,%r10d
   0.01%            0x00007f2c98643684:   vmovq  %xmm3,%r9
   0.01%            0x00007f2c98643689:   mov    %r9,0x20(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007f2c9864368e:   mov    %r10d,%r9d
   0.02%            0x00007f2c98643691:   vmovq  %xmm6,%r10
   0.01%            0x00007f2c98643696:   mov    %r10,0x28(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.01%            0x00007f2c9864369b:   mov    %r9d,%r10d
   0.01%            0x00007f2c9864369e:   vmovq  %xmm4,%r9
   0.02%            0x00007f2c986436a3:   mov    %r9,0x30(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.00%            0x00007f2c986436a8:   mov    %r10d,%r9d
   0.01%            0x00007f2c986436ab:   mov    0x58(%rsp),%r10
   0.01%            0x00007f2c986436b0:   mov    %r10,0x38(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.02%            0x00007f2c986436b5:   mov    %r9d,%r10d
   0.00%            0x00007f2c986436b8:   mov    %rbp,0x40(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.02%            0x00007f2c986436bd:   mov    %r10d,%r9d
   0.01%            0x00007f2c986436c0:   mov    0x70(%rsp),%r10
   0.02%            0x00007f2c986436c5:   mov    %r10,0x48(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
   0.01%            0x00007f2c986436ca:   mov    %r9d,%r10d
   0.02%            0x00007f2c986436cd:   mov    0x78(%rsp),%r9
   0.01%            0x00007f2c986436d2:   mov    %r9,0x50(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.02%            0x00007f2c986436d7:   mov    %r10d,%r9d
   0.01%            0x00007f2c986436da:   mov    0x20(%rsp),%r10
   0.02%            0x00007f2c986436df:   mov    %r10,0x58(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.01%            0x00007f2c986436e4:   mov    %r9d,%r10d
   0.02%            0x00007f2c986436e7:   vmovq  %xmm7,%r9
   0.01%            0x00007f2c986436ec:   mov    %r9,0x60(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.02%            0x00007f2c986436f1:   mov    %r13,0x68(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.01%            0x00007f2c986436f6:   mov    %r10d,%r9d
   0.02%            0x00007f2c986436f9:   mov    0x68(%rsp),%r10
   0.01%            0x00007f2c986436fe:   mov    %r10,0x70(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.02%            0x00007f2c98643703:   mov    %r9d,%r10d
   0.01%            0x00007f2c98643706:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.03%            0x00007f2c9864370b:   mov    0x18(%rsp),%r10
   0.01%            0x00007f2c98643710:   mov    %r10,0x80(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.02%            0x00007f2c98643718:   mov    %r9d,%r10d
   0.01%            0x00007f2c9864371b:   mov    0x50(%rsp),%r9
   0.01%            0x00007f2c98643720:   mov    %r9,0x88(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.01%            0x00007f2c98643728:   mov    %r10d,%r9d
   0.01%            0x00007f2c9864372b:   mov    0x30(%rsp),%r10
   0.01%            0x00007f2c98643730:   mov    %r10,0x90(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.02%            0x00007f2c98643738:   mov    %r9d,%r10d
   0.01%            0x00007f2c9864373b:   mov    0x60(%rsp),%r9
   0.01%            0x00007f2c98643740:   mov    %r9,0x98(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
                                                                              ;   {no_reloc}
   0.02%            0x00007f2c98643748:   mov    %r10d,%r9d
   0.01%            0x00007f2c9864374b:   mov    0x40(%rsp),%r10
   0.00%            0x00007f2c98643750:   mov    %r10,0xa0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.02%            0x00007f2c98643758:   mov    %r9d,%r10d
   0.01%            0x00007f2c9864375b:   mov    0x10(%rsp),%r9
   0.01%            0x00007f2c98643760:   mov    %r9,0xa8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.01%            0x00007f2c98643768:   mov    %r10d,%r9d
   0.01%            0x00007f2c9864376b:   mov    0x48(%rsp),%r10
   0.00%            0x00007f2c98643770:   mov    %r10,0xb0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.03%            0x00007f2c98643778:   mov    %rcx,0xb8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.03%            0x00007f2c98643780:   mov    %r9d,%r10d
   0.01%            0x00007f2c98643783:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.04%            0x00007f2c9864378b:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.03%            0x00007f2c98643793:   mov    %rax,0xd0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.03%            0x00007f2c9864379b:   vmovq  %xmm0,%r10
   0.00%            0x00007f2c986437a0:   mov    0x34(%r10),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
   0.01%            0x00007f2c986437a4:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f2c98643aa4
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.01%            0x00007f2c986437a9:   lea    -0x7(%r11),%eax
   0.01%            0x00007f2c986437ad:   test   %eax,%eax
                    0x00007f2c986437af:   jl     0x00007f2c98643aa4
   0.01%            0x00007f2c986437b5:   movslq %r11d,%r14
   0.00%            0x00007f2c986437b8:   mov    %r9d,%ecx
   0.01%            0x00007f2c986437bb:   lea    (%r12,%r9,8),%r10
   0.04%            0x00007f2c986437bf:   add    $0xfffffffffffffff9,%r14
   0.00%            0x00007f2c986437c3:   lea    (%r12,%rbx,8),%r11
   0.00%            0x00007f2c986437c7:   xor    %edi,%edi
   0.01%            0x00007f2c986437c9:   jmp    0x00007f2c986438a1
                    0x00007f2c986437ce:   xchg   %ax,%ax
                 ↗  0x00007f2c986437d0:   mov    %edx,%edi
                 │  0x00007f2c986437d2:   vmovd  %xmm1,%edx                   ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f2c986437d6:   mov    %r13d,%r9d
   0.05%         │  0x00007f2c986437d9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f2c986437dc:   nopl   0x0(%rax)
   0.05%         │  0x00007f2c986437e0:   cmp    (%rsp),%r13d
                 │  0x00007f2c986437e4:   jae    0x00007f2c9864398c
   0.09%         │  0x00007f2c986437ea:   vmovd  %edx,%xmm1
   0.07%         │  0x00007f2c986437ee:   mov    %edi,%edx
   0.06%         │  0x00007f2c986437f0:   mov    0x10(%r10,%r13,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f2c986437f5:   movslq %r8d,%rbp                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f2c986437f8:   mov    %rdi,0x10(%r11,%rbp,1)       ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.03%         │  0x00007f2c986437fd:   lea    0x3(%r13),%edi
   0.07%         │  0x00007f2c98643801:   cmp    (%rsp),%edi
                 │  0x00007f2c98643804:   jae    0x00007f2c98643997
   0.07%         │  0x00007f2c9864380a:   movslq %r13d,%rdi
   0.09%         │  0x00007f2c9864380d:   mov    0x18(%r10,%rdi,8),%r9        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f2c98643812:   mov    %r9,0x18(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f2c98643817:   mov    0x28(%r10,%rdi,8),%r9
   0.05%         │  0x00007f2c9864381c:   mov    0x20(%r10,%rdi,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f2c98643821:   mov    %rdi,0x20(%r11,%rbp,1)
   0.06%         │  0x00007f2c98643826:   mov    %r9,0x28(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f2c9864382b:   add    $0x4,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f2c9864382f:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.11%         │  0x00007f2c98643833:   cmp    %esi,%r8d
                 ╰  0x00007f2c98643836:   jl     0x00007f2c986437d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%            0x00007f2c98643838:   mov    %edx,%edi
   0.05%            0x00007f2c9864383a:   vmovd  %xmm1,%edx
   0.06%            0x00007f2c9864383e:   xchg   %ax,%ax
   0.06%            0x00007f2c98643840:   cmp    %edx,%r8d                    ;   {no_reloc}
                    0x00007f2c98643843:   jge    0x00007f2c9864386f
                    0x00007f2c98643845:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f2c98643848:   mov    %r13d,%ebp
                    0x00007f2c9864384b:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  78.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 

                                                                               ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                               ; - javax.crypto.Mac::update@33 (line 504)
                                                                               ; - javax.crypto.Mac::doFinal@23 (line 654)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
                     0x00007f2c98657612:   mov    $0x1,%r10d
                     0x00007f2c98657618:   mov    $0x2,%r11d
                     0x00007f2c9865761e:   mov    $0x4,%r9d
                     0x00007f2c98657624:   mov    $0x6,%ebx
                     0x00007f2c98657629:   xor    %ebp,%ebp
          ╭          0x00007f2c9865762b:   jmp    0x00007f2c986577d4
   0.03%  │↗         0x00007f2c98657630:   mov    %r8d,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          ││                                                                   ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││                                                                   ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││                                                                   ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││                                                                   ; - java.security.MessageDigest::update@36 (line 347)
          ││                                                                   ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││                                                                   ; - javax.crypto.Mac::update@33 (line 504)
          ││                                                                   ; - javax.crypto.Mac::doFinal@23 (line 654)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.56%  ││ ↗       0x00007f2c98657633:   movslq %r10d,%rcx                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
          ││ │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││ │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
          ││ │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.22%  ││ │       0x00007f2c98657636:   vmovq  %xmm2,%r8
   0.01%  ││ │       0x00007f2c9865763b:   add    %rcx,%r8
   0.03%  ││ │       0x00007f2c9865763e:   mov    0x18(%rsp),%r9
   0.64%  ││ │       0x00007f2c98657643:   movsbl 0x10(%r9,%r8,1),%r9d
   0.26%  ││ │       0x00007f2c98657649:   xor    %r9b,0x10(%rdx,%rcx,1)
   1.04%  ││ │       0x00007f2c9865764e:   vmovq  %xmm3,%rdi
   0.16%  ││ │       0x00007f2c98657653:   add    %rcx,%rdi
   0.01%  ││ │       0x00007f2c98657656:   lea    (%rbx,%rcx,1),%rsi
   0.04%  ││ │       0x00007f2c9865765a:   lea    (%r11,%rcx,1),%rax
   0.64%  ││ │       0x00007f2c9865765e:   vmovq  %xmm7,%rbp
   0.20%  ││ │       0x00007f2c98657663:   add    %rcx,%rbp
   0.01%  ││ │       0x00007f2c98657666:   vmovq  %xmm6,%r13
   0.02%  ││ │       0x00007f2c9865766b:   add    %rcx,%r13
   0.59%  ││ │       0x00007f2c9865766e:   vmovq  %xmm5,%r9
   0.20%  ││ │       0x00007f2c98657673:   add    %rcx,%r9
   0.01%  ││ │       0x00007f2c98657676:   vmovq  %xmm4,%r8                    ;   {no_reloc}
   0.03%  ││ │       0x00007f2c9865767b:   add    %rcx,%r8
   0.63%  ││ │       0x00007f2c9865767e:   mov    0x18(%rsp),%r14
   0.21%  ││ │       0x00007f2c98657683:   movsbl 0x10(%r14,%r8,1),%r8d
   0.00%  ││ │       0x00007f2c98657689:   xor    %r8b,0x11(%rdx,%rcx,1)
   0.84%  ││ │       0x00007f2c9865768e:   movsbl 0x10(%r14,%r9,1),%r9d
   0.01%  ││ │       0x00007f2c98657694:   xor    %r9b,0x12(%rdx,%rcx,1)
   0.90%  ││ │       0x00007f2c98657699:   movsbl 0x10(%r14,%r13,1),%r8d
   0.01%  ││ │       0x00007f2c9865769f:   xor    %r8b,0x13(%rdx,%rcx,1)
   0.83%  ││ │       0x00007f2c986576a4:   movsbl 0x10(%r14,%rbp,1),%r9d
   0.01%  ││ │       0x00007f2c986576aa:   xor    %r9b,0x14(%rdx,%rcx,1)
   0.94%  ││ │       0x00007f2c986576af:   movsbl 0x10(%r14,%rax,1),%r8d
   0.01%  ││ │       0x00007f2c986576b5:   xor    %r8b,0x15(%rdx,%rcx,1)
   0.90%  ││ │       0x00007f2c986576ba:   movsbl 0x10(%r14,%rsi,1),%r8d
   0.01%  ││ │       0x00007f2c986576c0:   xor    %r8b,0x16(%rdx,%rcx,1)
   0.80%  ││ │       0x00007f2c986576c5:   movsbl 0x10(%r14,%rdi,1),%r8d
   0.08%  ││ │       0x00007f2c986576cb:   xor    %r8b,0x17(%rdx,%rcx,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
          ││ │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││ │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
          ││ │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.91%  ││ │       0x00007f2c986576d0:   lea    0x8(%r10),%r8d
   0.01%  ││ │       0x00007f2c986576d4:   cmp    0x44(%rsp),%r8d
          │╰ │       0x00007f2c986576d9:   jl     0x00007f2c98657630           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
          │  │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │  │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
          │  │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
          │  │       0x00007f2c986576df:   add    0x14(%rsp),%r10d             ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - java.util.Arrays::fill@17 (line 3287)
          │  │                                                                 ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@16 (line 193)
          │  │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
          │  │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.02%  │  │       0x00007f2c986576e4:   mov    0x458(%r15),%r9
   0.03%  │  │       0x00007f2c986576eb:   inc    %r10d                        ; ImmutableOopMap {rdx=Oop [0]=NarrowOop [8]=Oop [16]=NarrowOop [24]=Oop [32]=NarrowOop [40]=Oop [56]=Oop }
          │  │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                 ; - (reexecute) sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
          │  │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │  │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
          │  │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
          │  │       0x00007f2c986576ee:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
          │  │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │  │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
          │  │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
          │  │                                                                 ;   {poll}
   0.03%  │  │       0x00007f2c986576f1:   cmp    0x4(%rsp),%r8d
          │ ╭│       0x00007f2c986576f6:   jge    0x00007f2c98657736
          │ ││       0x00007f2c986576f8:   mov    %r8d,%r10d
          │ ││       0x00007f2c986576fb:   vmovd  %xmm1,%edi
   0.04%  │ ││    ↗  0x00007f2c986576ff:   vmovd  %edi,%xmm1
   0.01%  │ ││    │  0x00007f2c98657703:   mov    %edi,%ecx
          │ ││    │  0x00007f2c98657705:   sub    %r10d,%ecx
          │ ││    │  0x00007f2c98657708:   add    $0xfffffff9,%ecx
   0.03%  │ ││    │  0x00007f2c9865770b:   mov    0x4(%rsp),%r8d
   0.00%  │ ││    │  0x00007f2c98657710:   xor    %r9d,%r9d
          │ ││    │  0x00007f2c98657713:   cmp    %r10d,%r8d
   0.00%  │ ││    │  0x00007f2c98657716:   cmovl  %r9d,%ecx
   0.06%  │ ││    │  0x00007f2c9865771a:   cmp    $0x1f40,%ecx
   0.00%  │ ││    │  0x00007f2c98657720:   mov    $0x1f40,%r9d
          │ ││    │  0x00007f2c98657726:   cmova  %r9d,%ecx
   0.05%  │ ││    │  0x00007f2c9865772a:   add    %r10d,%ecx
          │ ││    │  0x00007f2c9865772d:   mov    %ecx,0x44(%rsp)
   0.01%  │ │╰    │  0x00007f2c98657731:   jmp    0x00007f2c98657633
   0.01%  │ ↘     │  0x00007f2c98657736:   vmovd  %xmm0,%ebp
   0.01%  │       │  0x00007f2c9865773a:   vmovd  %xmm1,%edi
          │       │  0x00007f2c9865773e:   vmovq  %xmm2,%rsi
   0.01%  │       │  0x00007f2c98657743:   cmp    %edi,%r8d
          │   ╭   │  0x00007f2c98657746:   jge    0x00007f2c98657767           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   │   │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   │   │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │   │   │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.09%  │   │↗  │  0x00007f2c98657748:   movslq %r8d,%r10                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   ││  │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   ││  │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │   ││  │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.08%  │   ││  │  0x00007f2c9865774b:   lea    (%rsi,%r10,1),%r11
   0.13%  │   ││  │  0x00007f2c9865774f:   mov    0x18(%rsp),%r9
   0.08%  │   ││  │  0x00007f2c98657754:   movsbl 0x10(%r9,%r11,1),%r11d
   0.07%  │   ││  │  0x00007f2c9865775a:   xor    %r11b,0x10(%rdx,%r10,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   ││  │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   ││  │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │   ││  │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.37%  │   ││  │  0x00007f2c9865775f:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   ││  │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   ││  │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │   ││  │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.07%  │   ││  │  0x00007f2c98657762:   cmp    %edi,%r8d
          │   │╰  │  0x00007f2c98657765:   jl     0x00007f2c98657748           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   │   │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   │   │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │   │   │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%  │   ↘  ↗│  0x00007f2c98657767:   mov    0x28(%rsp),%rsi
   0.02%  │      ││  0x00007f2c9865776c:   vzeroupper 
   0.07%  │      ││  0x00007f2c9865776f:   call   0x00007f2c98642ee0           ; ImmutableOopMap {[0]=NarrowOop [8]=Oop [16]=NarrowOop [24]=Oop [32]=NarrowOop [40]=Oop [56]=Oop }
          │      ││                                                            ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
          │      ││                                                            ;   {optimized virtual_call}
   0.02%  │      ││  0x00007f2c98657774:   nopl   0x8001164(%rax,%rax,1)       ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
          │      ││                                                            ;   {other}
   0.01%  │      ││  0x00007f2c9865777c:   mov    0x28(%rsp),%r10
   0.01%  │      ││  0x00007f2c98657781:   add    0x1c(%r10),%ebp              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - java.util.Arrays::fill@17 (line 3287)
          │      ││                                                            ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@16 (line 193)
          │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.04%  │      ││  0x00007f2c98657785:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=NarrowOop [8]=Oop [16]=NarrowOop [24]=Oop [32]=NarrowOop [40]=Oop [56]=Oop }
          │      ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      ││                                                            ; - (reexecute) sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%  │      ││  0x00007f2c9865778c:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
          │      ││                                                            ;   {poll}
   0.01%  │      ││  0x00007f2c9865778f:   mov    0x28(%rsp),%r10
   0.01%  │      ││  0x00007f2c98657794:   mov    0x2c(%r10),%r8d              ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@162 (line 135)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.03%  │      ││  0x00007f2c98657798:   nopl   0x0(%rax,%rax,1)
   0.01%  │      ││  0x00007f2c986577a0:   cmp    0x40(%rsp),%ebp
          │     ╭││  0x00007f2c986577a4:   jg     0x00007f2c9865789a           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@2 (line 148)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │     │││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │     │││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │     │││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.00%  │     │││  0x00007f2c986577aa:   lea    0x7(%rbp),%r11d
   0.01%  │     │││  0x00007f2c986577ae:   mov    %r11d,0x14(%rsp)
   0.03%  │     │││  0x00007f2c986577b3:   mov    %ebp,%r10d
   0.01%  │     │││  0x00007f2c986577b6:   inc    %r10d
   0.01%  │     │││  0x00007f2c986577b9:   lea    0x2(%rbp),%r11d
   0.00%  │     │││  0x00007f2c986577bd:   lea    0x3(%rbp),%r9d
   0.04%  │     │││  0x00007f2c986577c1:   mov    %r9d,0x60(%rsp)
   0.02%  │     │││  0x00007f2c986577c6:   lea    0x4(%rbp),%r9d
   0.00%  │     │││  0x00007f2c986577ca:   lea    0x5(%rbp),%ebx
   0.01%  │     │││  0x00007f2c986577cd:   mov    %ebx,0x64(%rsp)
   0.04%  │     │││  0x00007f2c986577d1:   lea    0x6(%rbp),%ebx               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@5 (line 149)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │     │││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │     │││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │     │││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%  ↘     │││  0x00007f2c986577d4:   mov    0xc(%r12,%r8,8),%edi         ; implicit exception: dispatches to 0x00007f2c9865a130
                │││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                │││                                                            ; - sun.security.provider.SHA3::implCompress0@7 (line 94)
                │││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                │││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                │││                                                            ; - javax.crypto.Mac::update@33 (line 504)
                │││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.00%        │││  0x00007f2c986577d9:   test   %edi,%edi
   0.01%        │││  0x00007f2c986577db:   nopl   0x0(%rax,%rax,1)
   0.02%        │╰│  0x00007f2c986577e0:   jbe    0x00007f2c98657767           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%        │ │  0x00007f2c986577e2:   mov    0x28(%rsp),%r8
   0.00%        │ │  0x00007f2c986577e7:   mov    0x34(%r8),%edx               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@12 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.00%        │ │  0x00007f2c986577eb:   mov    0xc(%r12,%rdx,8),%ecx        ; implicit exception: dispatches to 0x00007f2c986590cf
                │ │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.04%        │ │  0x00007f2c986577f0:   test   %ecx,%ecx
                │ │  0x00007f2c986577f2:   jbe    0x00007f2c986590cf
   0.02%        │ │  0x00007f2c986577f8:   mov    %edi,%esi
   0.01%        │ │  0x00007f2c986577fa:   dec    %esi
   0.01%        │ │  0x00007f2c986577fc:   nopl   0x0(%rax)
   0.03%        │ │  0x00007f2c98657800:   cmp    %ecx,%esi
                │ │  0x00007f2c98657802:   jae    0x00007f2c986590cf
   0.01%        │ │  0x00007f2c98657808:   cmp    0x24(%rsp),%ebp
                │ │  0x00007f2c9865780c:   jae    0x00007f2c986590cf
   0.04%        │ │  0x00007f2c98657812:   movslq %edi,%r8
   0.01%        │ │  0x00007f2c98657815:   movslq %ebp,%rsi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@23 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%        │ │  0x00007f2c98657818:   add    %rsi,%r8
   0.02%        │ │  0x00007f2c9865781b:   dec    %r8
   0.01%        │ │  0x00007f2c9865781e:   xchg   %ax,%ax
   0.02%        │ │  0x00007f2c98657820:   cmp    0x30(%rsp),%r8
                │ │  0x00007f2c98657825:   jae    0x00007f2c986590cf
   0.03%        │ │  0x00007f2c9865782b:   mov    0x18(%rsp),%r8
   0.02%        │ │  0x00007f2c98657830:   movsbl 0x10(%r8,%rsi,1),%r8d
   0.07%        │ │  0x00007f2c98657836:   xor    %r8b,0x10(%r12,%rdx,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.16%        │ │  0x00007f2c9865783b:   lea    -0x7(%rdi),%r8d
   0.00%        │ │  0x00007f2c9865783f:   shl    $0x3,%rdx
   0.00%        │ │  0x00007f2c98657843:   cmp    $0x1,%r8d
                │ │  0x00007f2c98657847:   jle    0x00007f2c986590fc
   0.00%        │ │  0x00007f2c9865784d:   movslq 0x14(%rsp),%rax
   0.05%        │ │  0x00007f2c98657852:   movslq %r10d,%r13
   0.00%        │ │  0x00007f2c98657855:   movslq %r11d,%rcx
                │ │  0x00007f2c98657858:   movslq 0x60(%rsp),%r14
                │ │  0x00007f2c9865785d:   movslq %r9d,%r9
   0.06%        │ │  0x00007f2c98657860:   movslq 0x64(%rsp),%r11
   0.00%        │ │  0x00007f2c98657865:   movslq %ebx,%rbx
   0.00%        │ │  0x00007f2c98657868:   mov    $0x1,%r10d
                │ │  0x00007f2c9865786e:   vmovd  %ebp,%xmm0
   0.04%        │ │  0x00007f2c98657872:   vmovq  %rsi,%xmm2
   0.00%        │ │  0x00007f2c98657877:   mov    %r8d,0x4(%rsp)
                │ │  0x00007f2c9865787c:   vmovq  %rax,%xmm3
   0.00%        │ │  0x00007f2c98657881:   vmovq  %r13,%xmm4
   0.05%        │ │  0x00007f2c98657886:   vmovq  %rcx,%xmm5
   0.00%        │ │  0x00007f2c9865788b:   vmovq  %r14,%xmm6                   ;   {no_reloc}
   0.00%        │ │  0x00007f2c98657890:   vmovq  %r9,%xmm7
   0.00%        │ ╰  0x00007f2c98657895:   jmp    0x00007f2c986576ff
   0.00%        ↘    0x00007f2c9865789a:   mov    0x24(%rsp),%ebx
   0.01%             0x00007f2c9865789e:   sub    %ebp,%ebx                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@155 (line 134)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@36 (line 347)
                                                                               ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                               ; - javax.crypto.Mac::update@33 (line 504)
                                                                               ; - javax.crypto.Mac::doFinal@23 (line 654)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
                     0x00007f2c986578a0:   test   %ebx,%ebx
                     0x00007f2c986578a2:   jle    0x00007f2c98657915           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@156 (line 134)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@36 (line 347)
                                                                               ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                               ; - javax.crypto.Mac::update@33 (line 504)
                                                                               ; - javax.crypto.Mac::doFinal@23 (line 654)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
                     0x00007f2c986578a8:   mov    0xc(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f2c9865a498
                     0x00007f2c986578ad:   test   %ebp,%ebp
                     0x00007f2c986578af:   jl     0x00007f2c986598cc
                     0x00007f2c986578b5:   lea    (%rbx,%rbp,1),%r9d
                     0x00007f2c986578b9:   mov    0x24(%rsp),%r10d
   0.00%             0x00007f2c986578be:   xchg   %ax,%ax
                     0x00007f2c986578c0:   cmp    %r9d,%r10d
                     0x00007f2c986578c3:   jb     0x00007f2c986598cc
                     0x00007f2c986578c9:   cmp    %ebx,%r11d
                     0x00007f2c986578cc:   jb     0x00007f2c986598cc
                     0x00007f2c986578d2:   test   %ebx,%ebx
                     0x00007f2c986578d4:   jl     0x00007f2c986598cc           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@167 (line 135)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@36 (line 347)
                                                                               ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
....................................................................................................
  14.22%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.72%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 662 
  14.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   2.27%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 662 
   1.60%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 662 
   0.77%              kernel  [unknown] 
   0.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.09%              kernel  [unknown] 
   0.07%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   1.49%  <...other 330 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.59%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 662 
  15.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   1.81%              kernel  [unknown] 
   0.13%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 4, compile id 752 
   0.01%           libjvm.so  defaultStream::write 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.70%         c2, level 4
   1.81%              kernel
   0.16%           libjvm.so
   0.13%        runtime stub
   0.09%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-256, length = 16384)

# Run progress: 75.00% complete, ETA 00:05:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 103.023 us/op
# Warmup Iteration   2: 92.210 us/op
# Warmup Iteration   3: 92.195 us/op
# Warmup Iteration   4: 92.202 us/op
# Warmup Iteration   5: 92.163 us/op
Iteration   1: 92.171 us/op
Iteration   2: 92.201 us/op
Iteration   3: 92.205 us/op
Iteration   4: 92.209 us/op
Iteration   5: 92.176 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  92.192 ±(99.9%) 0.067 us/op [Average]
  (min, avg, max) = (92.171, 92.192, 92.209), stdev = 0.017
  CI (99.9%): [92.125, 92.260] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 163967 total address lines.
Perf output processed (skipped 56.728 seconds):
 Column 1: cycles (50867 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 652 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007fc5cc642ec8:   cmp    %edx,%r8d
          ╭         0x00007fc5cc642ecb:   jge    0x00007fc5cc642ed2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007fc5cc642ecd:   mov    %eax,%r10d
          │         0x00007fc5cc642ed0:   jmp    0x00007fc5cc642eac
   0.02%  ↘         0x00007fc5cc642ed2:   vmovq  %xmm0,%rdi                   ;   {no_reloc}
   0.05%            0x00007fc5cc642ed7:   vmovd  %xmm2,%r11d
   0.06%            0x00007fc5cc642edc:   vmovd  %xmm3,%r8d
   0.09%            0x00007fc5cc642ee1:   vmovd  %xmm1,%ecx
   0.02%            0x00007fc5cc642ee5:   mov    (%rsp),%r13
   0.09%            0x00007fc5cc642ee9:   vmovd  %xmm5,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%    ↗       0x00007fc5cc642eed:   mov    0x458(%r15),%r14
   0.09%    │       0x00007fc5cc642ef4:   mov    %ebx,%r10d
   0.06%    │       0x00007fc5cc642ef7:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rbp=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%    │       0x00007fc5cc642efa:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.05%    │       0x00007fc5cc642efd:   data16 xchg %ax,%ax
   0.07%    │       0x00007fc5cc642f00:   cmp    $0x5,%r10d
           ╭│       0x00007fc5cc642f04:   jge    0x00007fc5cc642fa5
   0.03%   ││       0x00007fc5cc642f0a:   mov    %ebx,%edx
   0.05%   ││       0x00007fc5cc642f0c:   shl    $0x5,%edx
   0.06%   ││       0x00007fc5cc642f0f:   lea    (%rdx,%rbx,8),%r14d
   0.08%   ││       0x00007fc5cc642f13:   add    $0x28,%r14d
   0.02%   ││       0x00007fc5cc642f17:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   ││       0x00007fc5cc642f1a:   lea    0x28(%r14),%edx
   0.06%   ││       0x00007fc5cc642f1e:   xchg   %ax,%ax
   0.10%   ││       0x00007fc5cc642f20:   cmp    %edx,%r14d
   0.00%   │╰       0x00007fc5cc642f23:   jge    0x00007fc5cc642eed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   │        0x00007fc5cc642f25:   lea    (%rbx,%rbx,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%   │        0x00007fc5cc642f29:   cmp    %ecx,%r14d
           │        0x00007fc5cc642f2c:   jae    0x00007fc5cc6438e9
   0.06%   │        0x00007fc5cc642f32:   vmovd  %eax,%xmm5
   0.06%   │        0x00007fc5cc642f36:   mov    %r13,(%rsp)
   0.04%   │        0x00007fc5cc642f3a:   vmovd  %ecx,%xmm1
   0.06%   │        0x00007fc5cc642f3e:   vmovd  %r8d,%xmm3
   0.05%   │        0x00007fc5cc642f43:   movslq %r14d,%r8
   0.11%   │        0x00007fc5cc642f46:   add    $0x20,%r8
   0.04%   │        0x00007fc5cc642f4a:   cmp    %r13,%r8
           │        0x00007fc5cc642f4d:   jae    0x00007fc5cc6438e4
   0.07%   │        0x00007fc5cc642f53:   vmovd  %r11d,%xmm2
   0.06%   │        0x00007fc5cc642f58:   vmovq  %rdi,%xmm0
   0.11%   │        0x00007fc5cc642f5d:   lea    0x8(%r14),%r11d
   0.03%   │        0x00007fc5cc642f61:   mov    %r14d,%r8d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%   │  ↗     0x00007fc5cc642f64:   mov    0x10(%r9,%r8,1),%rdi         ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%   │  │     0x00007fc5cc642f69:   mov    %r10d,%eax
   0.08%   │  │     0x00007fc5cc642f6c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   │  │     0x00007fc5cc642f6e:   cmp    %esi,%r10d
           │  │     0x00007fc5cc642f71:   jae    0x00007fc5cc643844
   0.06%   │  │     0x00007fc5cc642f77:   mov    %rdi,0x10(%rbp,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   │  │     0x00007fc5cc642f7c:   lea    0x8(%r8),%ecx
   0.12%   │  │     0x00007fc5cc642f80:   cmp    %r11d,%ecx
           │ ╭│     0x00007fc5cc642f83:   jge    0x00007fc5cc642f8d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007fc5cc642f85:   mov    %ecx,%r8d
           │ ││     0x00007fc5cc642f88:   mov    %eax,%r10d
           │ │╰     0x00007fc5cc642f8b:   jmp    0x00007fc5cc642f64
   0.04%   │ ↘      0x00007fc5cc642f8d:   lea    0x10(%r14),%r11d
   0.07%   │        0x00007fc5cc642f91:   cmp    %r11d,%ecx
           │        0x00007fc5cc642f94:   jge    0x00007fc5cc643920
   0.05%   │        0x00007fc5cc642f9a:   add    $0x8,%r8d
   0.08%   │        0x00007fc5cc642f9e:   xchg   %ax,%ax
   0.04%   │        0x00007fc5cc642fa0:   jmp    0x00007fc5cc642e53
           ↘        0x00007fc5cc642fa5:   mov    0x38(%rdi),%r10d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.01%            0x00007fc5cc642fa9:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fc5cc6439bc
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.02%            0x00007fc5cc642fae:   cmp    $0x18,%r11d
                    0x00007fc5cc642fb2:   jbe    0x00007fc5cc643988
   0.02%            0x00007fc5cc642fb8:   mov    %r11d,(%rsp)
   0.01%            0x00007fc5cc642fbc:   vmovd  %eax,%xmm2
   0.01%            0x00007fc5cc642fc0:   vmovq  %rdi,%xmm0
   0.01%            0x00007fc5cc642fc5:   mov    0x40(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.01%            0x00007fc5cc642fca:   mov    %r11,0x8(%rsp)
                    0x00007fc5cc642fcf:   mov    0x20(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.02%            0x00007fc5cc642fd4:   vmovq  %r11,%xmm3
   0.01%            0x00007fc5cc642fd9:   mov    0xd0(%r12,%r10,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.02%            0x00007fc5cc642fe1:   mov    0xa8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.01%            0x00007fc5cc642fe9:   mov    %r11,0x10(%rsp)
   0.02%            0x00007fc5cc642fee:   mov    0x80(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.01%            0x00007fc5cc642ff6:   mov    %r11,0x18(%rsp)              ;   {no_reloc}
   0.01%            0x00007fc5cc642ffb:   mov    0x58(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.01%            0x00007fc5cc643000:   mov    %r11,0x20(%rsp)
   0.02%            0x00007fc5cc643005:   mov    0x30(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
   0.01%            0x00007fc5cc64300a:   vmovq  %r11,%xmm4
   0.01%            0x00007fc5cc64300f:   mov    0xb8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
   0.01%            0x00007fc5cc643017:   mov    %r11,0x28(%rsp)
   0.02%            0x00007fc5cc64301c:   mov    0x90(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
   0.02%            0x00007fc5cc643024:   mov    %r11,0x30(%rsp)
   0.02%            0x00007fc5cc643029:   mov    0x68(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.01%            0x00007fc5cc64302e:   mov    %r11,0x38(%rsp)
   0.01%            0x00007fc5cc643033:   vmovd  %r10d,%xmm1
   0.01%            0x00007fc5cc643038:   mov    0x18(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
   0.02%            0x00007fc5cc64303d:   vmovq  %r10,%xmm5
   0.01%            0x00007fc5cc643042:   vmovd  %xmm1,%r10d
   0.01%            0x00007fc5cc643047:   mov    0xc8(%r12,%r10,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
   0.00%            0x00007fc5cc64304f:   mov    0xa0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
   0.03%            0x00007fc5cc643057:   mov    %r10,0x40(%rsp)
   0.00%            0x00007fc5cc64305c:   vmovd  %xmm1,%r10d
   0.01%            0x00007fc5cc643061:   mov    0x78(%r12,%r10,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.01%            0x00007fc5cc643066:   mov    0x28(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.03%            0x00007fc5cc64306b:   vmovq  %r10,%xmm6
   0.02%            0x00007fc5cc643070:   vmovd  %xmm1,%r10d
   0.01%            0x00007fc5cc643075:   mov    0xb0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
   0.01%            0x00007fc5cc64307d:   mov    %r10,0x48(%rsp)
   0.03%            0x00007fc5cc643082:   vmovd  %xmm1,%r11d
   0.01%            0x00007fc5cc643087:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.01%            0x00007fc5cc64308f:   mov    %r10,0x50(%rsp)
   0.02%            0x00007fc5cc643094:   mov    %r11d,%r10d
   0.01%            0x00007fc5cc643097:   mov    0x60(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.00%            0x00007fc5cc64309c:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.01%            0x00007fc5cc6430a1:   mov    %r11,0x58(%rsp)
   0.01%            0x00007fc5cc6430a6:   vmovd  %xmm1,%r9d
   0.01%            0x00007fc5cc6430ab:   mov    0x10(%r12,%r9,8),%rbx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.01%            0x00007fc5cc6430b0:   mov    0xc0(%r12,%r9,8),%r11        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.01%            0x00007fc5cc6430b8:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
   0.01%            0x00007fc5cc6430c0:   mov    %r9,0x60(%rsp)
   0.03%            0x00007fc5cc6430c5:   vmovd  %xmm1,%r9d
   0.01%            0x00007fc5cc6430ca:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.01%            0x00007fc5cc6430cf:   mov    %r9,0x68(%rsp)
   0.01%            0x00007fc5cc6430d4:   vmovd  %xmm1,%r9d
   0.02%            0x00007fc5cc6430d9:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.00%            0x00007fc5cc6430de:   mov    %r9,0x70(%rsp)
   0.01%            0x00007fc5cc6430e3:   vmovd  %xmm1,%r9d
   0.02%            0x00007fc5cc6430e8:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.02%            0x00007fc5cc6430ed:   mov    %r9,0x78(%rsp)
   0.01%            0x00007fc5cc6430f2:   xor    %r9d,%r9d
   0.03%            0x00007fc5cc6430f5:   vmovd  %r9d,%xmm12                  ;   {no_reloc}
   0.01%       ╭    0x00007fc5cc6430fa:   jmp    0x00007fc5cc643117
               │    0x00007fc5cc6430fc:   nopl   0x0(%rax)
   0.22%       │↗   0x00007fc5cc643100:   mov    %rcx,0x28(%rsp)
   0.40%       ││   0x00007fc5cc643105:   mov    %rax,%rcx
   0.13%       ││   0x00007fc5cc643108:   mov    %r13,0x38(%rsp)
   0.34%       ││   0x00007fc5cc64310d:   vmovq  %xmm7,%r10
   0.27%       ││   0x00007fc5cc643112:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.43%       ↘│   0x00007fc5cc643117:   vmovq  %xmm5,%rdi
   0.14%        │   0x00007fc5cc64311c:   xor    0x8(%rsp),%rdi
   0.37%        │   0x00007fc5cc643121:   xor    0x38(%rsp),%rdi
   0.34%        │   0x00007fc5cc643126:   xor    0x30(%rsp),%rdi
   0.43%        │   0x00007fc5cc64312b:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.31%        │   0x00007fc5cc643130:   vmovq  %xmm3,%r9
   0.28%        │   0x00007fc5cc643135:   xor    0x70(%rsp),%r9
   0.22%        │   0x00007fc5cc64313a:   xor    0x68(%rsp),%r9
   0.43%        │   0x00007fc5cc64313f:   xor    0x60(%rsp),%r9
   0.21%        │   0x00007fc5cc643144:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.35%        │   0x00007fc5cc643147:   rorx   $0x3f,%rdi,%rbp
   0.23%        │   0x00007fc5cc64314d:   rorx   $0x3f,%r9,%rsi
   0.39%        │   0x00007fc5cc643153:   vmovq  %rsi,%xmm7
   0.27%        │   0x00007fc5cc643158:   vmovq  %xmm4,%rsi
   0.33%        │   0x00007fc5cc64315d:   xor    0x20(%rsp),%rsi
   0.24%        │   0x00007fc5cc643162:   xor    0x18(%rsp),%rsi
   0.38%        │   0x00007fc5cc643167:   xor    0x10(%rsp),%rsi
   0.25%        │   0x00007fc5cc64316c:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.34%        │   0x00007fc5cc64316f:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.25%        │   0x00007fc5cc643172:   rorx   $0x3f,%rsi,%rax
   0.41%        │   0x00007fc5cc643178:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.29%        │   0x00007fc5cc64317b:   vmovq  %xmm6,%r9
   0.28%        │   0x00007fc5cc643180:   xor    0x78(%rsp),%r9
   0.23%        │   0x00007fc5cc643185:   xor    %rdx,%r9
   0.38%        │   0x00007fc5cc643188:   xor    0x40(%rsp),%r9
   0.29%        │   0x00007fc5cc64318d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.32%        │   0x00007fc5cc643190:   mov    0x78(%rsp),%rsi
   0.25%        │   0x00007fc5cc643195:   xor    %rax,%rsi
   0.37%        │   0x00007fc5cc643198:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.31%        │   0x00007fc5cc64319e:   rorx   $0x3f,%r9,%r13
   0.32%        │   0x00007fc5cc6431a4:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.20%        │   0x00007fc5cc6431a7:   vmovq  %xmm6,%rdi
   0.42%        │   0x00007fc5cc6431ac:   xor    %rax,%rdi
   0.29%        │   0x00007fc5cc6431af:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.35%        │   0x00007fc5cc6431b5:   mov    %rdi,0x80(%rsp)
   0.42%        │   0x00007fc5cc6431bd:   xor    %r13,%r11
   0.41%        │   0x00007fc5cc6431c0:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.23%        │   0x00007fc5cc6431c6:   mov    %r11,0xc0(%rsp)
   0.56%        │   0x00007fc5cc6431ce:   vmovq  %xmm3,%r11
   0.31%        │   0x00007fc5cc6431d3:   xor    %r13,%r11
   0.32%        │   0x00007fc5cc6431d6:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.16%        │   0x00007fc5cc6431dc:   mov    %r11,0x88(%rsp)
   0.50%        │   0x00007fc5cc6431e4:   mov    0xc0(%rsp),%r11
   0.75%        │   0x00007fc5cc6431ec:   andn   %rdi,%r11,%r11
   0.58%        │   0x00007fc5cc6431f1:   vmovq  %r11,%xmm3
   1.11%        │   0x00007fc5cc6431f6:   mov    0x88(%rsp),%r11              ;   {no_reloc}
   0.46%        │   0x00007fc5cc6431fe:   andn   %rsi,%r11,%r11
   0.25%        │   0x00007fc5cc643203:   vmovq  %r11,%xmm8
   1.22%        │   0x00007fc5cc643208:   mov    0x60(%rsp),%r11
   0.18%        │   0x00007fc5cc64320d:   xor    %r13,%r11
   0.10%        │   0x00007fc5cc643210:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
   0.15%        │   0x00007fc5cc643216:   mov    %r11,0x90(%rsp)
   0.78%        │   0x00007fc5cc64321e:   mov    0x68(%rsp),%r11
   0.20%        │   0x00007fc5cc643223:   xor    %r13,%r11
   0.11%        │   0x00007fc5cc643226:   mov    0x70(%rsp),%rdi
   0.13%        │   0x00007fc5cc64322b:   xor    %r13,%rdi
   0.72%        │   0x00007fc5cc64322e:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.24%        │   0x00007fc5cc643234:   mov    %r11,0x98(%rsp)
   0.10%        │   0x00007fc5cc64323c:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.14%        │   0x00007fc5cc643242:   mov    %r11,0xa0(%rsp)
   0.83%        │   0x00007fc5cc64324a:   mov    0x40(%rsp),%r11
   0.19%        │   0x00007fc5cc64324f:   xor    %rax,%r11
   0.10%        │   0x00007fc5cc643252:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.11%        │   0x00007fc5cc643258:   xor    %rax,%r8
   0.74%        │   0x00007fc5cc64325b:   xor    %rax,%rdx
   0.20%        │   0x00007fc5cc64325e:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.11%        │   0x00007fc5cc643264:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.14%        │   0x00007fc5cc64326a:   mov    0x98(%rsp),%r8
   0.86%        │   0x00007fc5cc643272:   andn   %r11,%r8,%r8
   0.27%        │   0x00007fc5cc643277:   vmovq  %r8,%xmm9
   0.20%        │   0x00007fc5cc64327c:   mov    0xa0(%rsp),%r8
   0.15%        │   0x00007fc5cc643284:   andn   %rdx,%r8,%r8
   0.74%        │   0x00007fc5cc643289:   vmovq  %r8,%xmm10
   0.24%        │   0x00007fc5cc64328e:   mov    0x90(%rsp),%r8
   0.14%        │   0x00007fc5cc643296:   andn   %rdi,%r8,%r8
   0.12%        │   0x00007fc5cc64329b:   vmovq  %r8,%xmm11
   0.71%        │   0x00007fc5cc6432a0:   mov    0x50(%rsp),%r8
   0.24%        │   0x00007fc5cc6432a5:   xor    %rbp,%r8
   0.15%        │   0x00007fc5cc6432a8:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.10%        │   0x00007fc5cc6432ae:   mov    %r8,0xa8(%rsp)
   0.72%        │   0x00007fc5cc6432b6:   mov    0x58(%rsp),%r8
   0.27%        │   0x00007fc5cc6432bb:   xor    %rbp,%r8
   0.16%        │   0x00007fc5cc6432be:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.10%        │   0x00007fc5cc6432c4:   mov    %rbx,%r8
   0.70%        │   0x00007fc5cc6432c7:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.24%        │   0x00007fc5cc6432ca:   mov    %r8,0xb0(%rsp)
   0.13%        │   0x00007fc5cc6432d2:   mov    %r10,%r13
   0.11%        │   0x00007fc5cc6432d5:   xor    %rbp,%r13
   0.66%        │   0x00007fc5cc6432d8:   mov    0x48(%rsp),%r8
   0.26%        │   0x00007fc5cc6432dd:   xor    %rbp,%r8
   0.13%        │   0x00007fc5cc6432e0:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.10%        │   0x00007fc5cc6432e6:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.68%        │   0x00007fc5cc6432ec:   xor    0x58(%rsp),%rbx
   0.22%        │   0x00007fc5cc6432f1:   xor    %r10,%rbx
   0.14%        │   0x00007fc5cc6432f4:   xor    0x50(%rsp),%rbx              ;   {no_reloc}
   0.10%        │   0x00007fc5cc6432f9:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.72%        │   0x00007fc5cc6432fe:   vmovq  %xmm7,%r10
   0.23%        │   0x00007fc5cc643303:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.13%        │   0x00007fc5cc643306:   mov    %r10,0xb8(%rsp)
   0.12%        │   0x00007fc5cc64330e:   rorx   $0x3f,%rbx,%r8
   0.73%        │   0x00007fc5cc643314:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.27%        │   0x00007fc5cc643317:   mov    0x30(%rsp),%r10
   0.15%        │   0x00007fc5cc64331c:   xor    0xb8(%rsp),%r10
   0.33%        │   0x00007fc5cc643324:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.74%        │   0x00007fc5cc64332a:   vmovq  %xmm3,%r9
   0.24%        │   0x00007fc5cc64332f:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.29%        │   0x00007fc5cc643332:   mov    %r9,0x78(%rsp)
   0.86%        │   0x00007fc5cc643337:   xor    %r8,%rcx
   0.38%        │   0x00007fc5cc64333a:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.20%        │   0x00007fc5cc643340:   andn   0xc0(%rsp),%r10,%rcx
   0.12%        │   0x00007fc5cc64334a:   andn   %r10,%rbp,%r10
   0.48%        │   0x00007fc5cc64334f:   vmovq  %r10,%xmm7
   0.47%        │   0x00007fc5cc643354:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.17%        │   0x00007fc5cc643357:   mov    %rcx,0x70(%rsp)
   0.60%        │   0x00007fc5cc64335c:   andn   0xb0(%rsp),%r9,%r10
   0.29%        │   0x00007fc5cc643366:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.41%        │   0x00007fc5cc643369:   vmovq  %r10,%xmm6
   0.30%        │   0x00007fc5cc64336e:   andn   %r9,%r11,%r10
   0.33%        │   0x00007fc5cc643373:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.25%        │   0x00007fc5cc64337b:   vmovq  %r10,%xmm3
   0.47%        │   0x00007fc5cc643380:   mov    0x18(%rsp),%r10
   0.22%        │   0x00007fc5cc643385:   xor    %r8,%r10
   0.34%        │   0x00007fc5cc643388:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.23%        │   0x00007fc5cc64338e:   mov    0x10(%rsp),%r10
   0.41%        │   0x00007fc5cc643393:   xor    %r8,%r10
   0.22%        │   0x00007fc5cc643396:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.36%        │   0x00007fc5cc64339c:   andn   %rbx,%rsi,%r11
   0.23%        │   0x00007fc5cc6433a1:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.42%        │   0x00007fc5cc6433a9:   mov    %r11,0x48(%rsp)
   0.37%        │   0x00007fc5cc6433ae:   andn   %r10,%rdx,%r13
   0.38%        │   0x00007fc5cc6433b3:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.22%        │   0x00007fc5cc6433bb:   andn   %r14,%r10,%r11
   0.38%        │   0x00007fc5cc6433c0:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.34%        │   0x00007fc5cc6433c3:   mov    %r11,0x68(%rsp)
   0.52%        │   0x00007fc5cc6433c8:   andn   0xa8(%rsp),%rbx,%rcx
   0.17%        │   0x00007fc5cc6433d2:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.40%        │   0x00007fc5cc6433d5:   vmovq  %xmm4,%r11
   0.27%        │   0x00007fc5cc6433da:   xor    %r8,%r11
   0.38%        │   0x00007fc5cc6433dd:   mov    0x20(%rsp),%rdx
   0.18%        │   0x00007fc5cc6433e2:   xor    %r8,%rdx
   0.37%        │   0x00007fc5cc6433e5:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.29%        │   0x00007fc5cc6433eb:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.41%        │   0x00007fc5cc6433f1:   andn   %rbp,%r8,%rdx                ;   {no_reloc}
   0.17%        │   0x00007fc5cc6433f6:   mov    %rdx,%rsi
   0.35%        │   0x00007fc5cc6433f9:   vmovq  %xmm7,%rdx
   0.27%        │   0x00007fc5cc6433fe:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.39%        │   0x00007fc5cc643401:   mov    %rdx,%rbp
   0.19%        │   0x00007fc5cc643404:   mov    0x80(%rsp),%rdx
   0.39%        │   0x00007fc5cc64340c:   andn   %r8,%rdx,%r8
   0.26%        │   0x00007fc5cc643411:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.41%        │   0x00007fc5cc643419:   mov    %r8,0x20(%rsp)
   0.25%        │   0x00007fc5cc64341e:   mov    %rsi,%r8
   0.37%        │   0x00007fc5cc643421:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.28%        │   0x00007fc5cc643424:   mov    %r8,0x58(%rsp)
   0.40%        │   0x00007fc5cc643429:   andn   %r11,%rdi,%r8
   0.21%        │   0x00007fc5cc64342e:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.39%        │   0x00007fc5cc643436:   mov    %r8,0x40(%rsp)
   0.35%        │   0x00007fc5cc64343b:   andn   %rax,%r11,%r8
   0.36%        │   0x00007fc5cc643440:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.19%        │   0x00007fc5cc643443:   mov    %r8,0x10(%rsp)
   0.43%        │   0x00007fc5cc643448:   mov    0x38(%rsp),%r8
   0.24%        │   0x00007fc5cc64344d:   xor    0xb8(%rsp),%r8
   0.38%        │   0x00007fc5cc643455:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.20%        │   0x00007fc5cc64345b:   vmovq  %xmm11,%r8
   0.38%        │   0x00007fc5cc643460:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.33%        │   0x00007fc5cc643463:   mov    %r8,0x60(%rsp)
   0.45%        │   0x00007fc5cc643468:   andn   0x90(%rsp),%rdi,%r8
   0.15%        │   0x00007fc5cc643472:   andn   %rdi,%rax,%rdi
   0.36%        │   0x00007fc5cc643477:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.29%        │   0x00007fc5cc64347a:   mov    %rdi,0x50(%rsp)
   0.55%        │   0x00007fc5cc64347f:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.17%        │   0x00007fc5cc643482:   mov    %r8,0x30(%rsp)
   0.46%        │   0x00007fc5cc643487:   mov    0x28(%rsp),%r11
   0.20%        │   0x00007fc5cc64348c:   xor    0xb8(%rsp),%r11
   0.44%        │   0x00007fc5cc643494:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.12%        │   0x00007fc5cc64349a:   andn   0x88(%rsp),%rdi,%r8
   0.39%        │   0x00007fc5cc6434a4:   vmovq  %xmm8,%r11
   0.24%        │   0x00007fc5cc6434a9:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.40%        │   0x00007fc5cc6434ac:   mov    %r11,%rax
   0.16%        │   0x00007fc5cc6434af:   mov    0xa8(%rsp),%r11
   0.41%        │   0x00007fc5cc6434b7:   andn   %rdi,%r11,%r11
   0.23%        │   0x00007fc5cc6434bc:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.45%        │   0x00007fc5cc6434bf:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.15%        │   0x00007fc5cc6434c7:   vmovq  %xmm5,%rbx
   0.41%        │   0x00007fc5cc6434cc:   xor    0xb8(%rsp),%rbx
   0.21%        │   0x00007fc5cc6434d4:   mov    0x8(%rsp),%rsi
   0.42%        │   0x00007fc5cc6434d9:   xor    0xb8(%rsp),%rsi
   0.16%        │   0x00007fc5cc6434e1:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.40%        │   0x00007fc5cc6434e7:   andn   0xa0(%rsp),%rbx,%rdi
   0.21%        │   0x00007fc5cc6434f1:   vmovq  %xmm10,%rdx                  ;   {no_reloc}
   0.44%        │   0x00007fc5cc6434f6:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.16%        │   0x00007fc5cc6434f9:   vmovq  %rdx,%xmm7
   0.35%        │   0x00007fc5cc6434fe:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.24%        │   0x00007fc5cc643501:   mov    %rdi,0x18(%rsp)
   0.44%        │   0x00007fc5cc643506:   andn   %rbx,%r14,%rdx
   0.17%        │   0x00007fc5cc64350b:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
   0.38%        │   0x00007fc5cc64350e:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.22%        │   0x00007fc5cc643514:   vmovq  %xmm9,%rbx
   0.46%        │   0x00007fc5cc643519:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.18%        │   0x00007fc5cc64351c:   vmovq  %rbx,%xmm5
   0.38%        │   0x00007fc5cc643521:   andn   0x98(%rsp),%r10,%rbx
   0.27%        │   0x00007fc5cc64352b:   mov    0xb0(%rsp),%rdi
   0.41%        │   0x00007fc5cc643533:   andn   %r10,%rdi,%r10
   0.14%        │   0x00007fc5cc643538:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.37%        │   0x00007fc5cc64353b:   vmovq  %r10,%xmm4
   0.23%        │   0x00007fc5cc643540:   xor    %rdi,%rbx
   0.46%        │   0x00007fc5cc643543:   movabs $0x7ff12a958,%r9             ;   {oop([J{0x00000007ff12a958})}
   0.12%        │   0x00007fc5cc64354d:   vmovd  %xmm12,%r10d
   0.39%        │   0x00007fc5cc643552:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.27%        │   0x00007fc5cc643557:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.41%        │   0x00007fc5cc64355a:   vmovd  %r10d,%xmm12
   0.16%        │   0x00007fc5cc64355f:   nop
   0.37%        │   0x00007fc5cc643560:   cmp    $0x18,%r10d
                ╰   0x00007fc5cc643564:   jl     0x00007fc5cc643100           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.01%            0x00007fc5cc64356a:   vmovd  %xmm1,%r10d
   0.02%            0x00007fc5cc64356f:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
                    0x00007fc5cc643574:   mov    %r10d,%r9d
   0.02%            0x00007fc5cc643577:   vmovq  %xmm5,%r10
   0.02%            0x00007fc5cc64357c:   mov    %r10,0x18(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.02%            0x00007fc5cc643581:   mov    %r9d,%r10d
   0.01%            0x00007fc5cc643584:   vmovq  %xmm3,%r9
   0.01%            0x00007fc5cc643589:   mov    %r9,0x20(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007fc5cc64358e:   mov    %r10d,%r9d
   0.03%            0x00007fc5cc643591:   vmovq  %xmm6,%r10
   0.01%            0x00007fc5cc643596:   mov    %r10,0x28(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.01%            0x00007fc5cc64359b:   mov    %r9d,%r10d
   0.00%            0x00007fc5cc64359e:   vmovq  %xmm4,%r9
   0.02%            0x00007fc5cc6435a3:   mov    %r9,0x30(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.01%            0x00007fc5cc6435a8:   mov    %r10d,%r9d
   0.01%            0x00007fc5cc6435ab:   mov    0x58(%rsp),%r10
   0.01%            0x00007fc5cc6435b0:   mov    %r10,0x38(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.02%            0x00007fc5cc6435b5:   mov    %r9d,%r10d
   0.00%            0x00007fc5cc6435b8:   mov    %rbp,0x40(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.02%            0x00007fc5cc6435bd:   mov    %r10d,%r9d
   0.01%            0x00007fc5cc6435c0:   mov    0x70(%rsp),%r10
   0.04%            0x00007fc5cc6435c5:   mov    %r10,0x48(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
   0.01%            0x00007fc5cc6435ca:   mov    %r9d,%r10d
   0.02%            0x00007fc5cc6435cd:   mov    0x78(%rsp),%r9
   0.01%            0x00007fc5cc6435d2:   mov    %r9,0x50(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.01%            0x00007fc5cc6435d7:   mov    %r10d,%r9d
                    0x00007fc5cc6435da:   mov    0x20(%rsp),%r10
   0.01%            0x00007fc5cc6435df:   mov    %r10,0x58(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.02%            0x00007fc5cc6435e4:   mov    %r9d,%r10d
   0.01%            0x00007fc5cc6435e7:   vmovq  %xmm7,%r9
   0.01%            0x00007fc5cc6435ec:   mov    %r9,0x60(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.02%            0x00007fc5cc6435f1:   mov    %r13,0x68(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.00%            0x00007fc5cc6435f6:   mov    %r10d,%r9d
   0.01%            0x00007fc5cc6435f9:   mov    0x68(%rsp),%r10
   0.01%            0x00007fc5cc6435fe:   mov    %r10,0x70(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.03%            0x00007fc5cc643603:   mov    %r9d,%r10d
   0.00%            0x00007fc5cc643606:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.03%            0x00007fc5cc64360b:   mov    0x18(%rsp),%r10
   0.01%            0x00007fc5cc643610:   mov    %r10,0x80(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.01%            0x00007fc5cc643618:   mov    %r9d,%r10d
   0.01%            0x00007fc5cc64361b:   mov    0x50(%rsp),%r9
   0.02%            0x00007fc5cc643620:   mov    %r9,0x88(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.02%            0x00007fc5cc643628:   mov    %r10d,%r9d
   0.01%            0x00007fc5cc64362b:   mov    0x30(%rsp),%r10
   0.01%            0x00007fc5cc643630:   mov    %r10,0x90(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.03%            0x00007fc5cc643638:   mov    %r9d,%r10d
   0.00%            0x00007fc5cc64363b:   mov    0x60(%rsp),%r9
   0.02%            0x00007fc5cc643640:   mov    %r9,0x98(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
                                                                              ;   {no_reloc}
   0.01%            0x00007fc5cc643648:   mov    %r10d,%r9d
   0.02%            0x00007fc5cc64364b:   mov    0x40(%rsp),%r10
   0.01%            0x00007fc5cc643650:   mov    %r10,0xa0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.01%            0x00007fc5cc643658:   mov    %r9d,%r10d
   0.01%            0x00007fc5cc64365b:   mov    0x10(%rsp),%r9
   0.01%            0x00007fc5cc643660:   mov    %r9,0xa8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.02%            0x00007fc5cc643668:   mov    %r10d,%r9d
   0.02%            0x00007fc5cc64366b:   mov    0x48(%rsp),%r10
   0.00%            0x00007fc5cc643670:   mov    %r10,0xb0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.03%            0x00007fc5cc643678:   mov    %rcx,0xb8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.04%            0x00007fc5cc643680:   mov    %r9d,%r10d
   0.01%            0x00007fc5cc643683:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.03%            0x00007fc5cc64368b:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.03%            0x00007fc5cc643693:   mov    %rax,0xd0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.03%            0x00007fc5cc64369b:   vmovq  %xmm0,%r10
   0.00%            0x00007fc5cc6436a0:   mov    0x34(%r10),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
   0.01%            0x00007fc5cc6436a4:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007fc5cc6439a4
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.01%            0x00007fc5cc6436a9:   lea    -0x7(%r11),%eax
   0.03%            0x00007fc5cc6436ad:   test   %eax,%eax
                    0x00007fc5cc6436af:   jl     0x00007fc5cc6439a4
   0.00%            0x00007fc5cc6436b5:   movslq %r11d,%r14
   0.00%            0x00007fc5cc6436b8:   mov    %r9d,%ecx
   0.01%            0x00007fc5cc6436bb:   lea    (%r12,%r9,8),%r10
   0.03%            0x00007fc5cc6436bf:   add    $0xfffffffffffffff9,%r14
   0.01%            0x00007fc5cc6436c3:   lea    (%r12,%rbx,8),%r11
   0.01%            0x00007fc5cc6436c7:   xor    %edi,%edi
   0.00%            0x00007fc5cc6436c9:   jmp    0x00007fc5cc6437a1
                    0x00007fc5cc6436ce:   xchg   %ax,%ax
                 ↗  0x00007fc5cc6436d0:   mov    %edx,%edi
                 │  0x00007fc5cc6436d2:   vmovd  %xmm1,%edx                   ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007fc5cc6436d6:   mov    %r13d,%r9d
   0.04%         │  0x00007fc5cc6436d9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007fc5cc6436dc:   nopl   0x0(%rax)
   0.06%         │  0x00007fc5cc6436e0:   cmp    (%rsp),%r13d
                 │  0x00007fc5cc6436e4:   jae    0x00007fc5cc64388c
   0.09%         │  0x00007fc5cc6436ea:   vmovd  %edx,%xmm1
   0.04%         │  0x00007fc5cc6436ee:   mov    %edi,%edx
   0.07%         │  0x00007fc5cc6436f0:   mov    0x10(%r10,%r13,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.03%         │  0x00007fc5cc6436f5:   movslq %r8d,%rbp                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007fc5cc6436f8:   mov    %rdi,0x10(%r11,%rbp,1)       ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.04%         │  0x00007fc5cc6436fd:   lea    0x3(%r13),%edi
   0.05%         │  0x00007fc5cc643701:   cmp    (%rsp),%edi
                 │  0x00007fc5cc643704:   jae    0x00007fc5cc643897
   0.06%         │  0x00007fc5cc64370a:   movslq %r13d,%rdi
   0.10%         │  0x00007fc5cc64370d:   mov    0x18(%r10,%rdi,8),%r9        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007fc5cc643712:   mov    %r9,0x18(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007fc5cc643717:   mov    0x28(%r10,%rdi,8),%r9
   0.06%         │  0x00007fc5cc64371c:   mov    0x20(%r10,%rdi,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007fc5cc643721:   mov    %rdi,0x20(%r11,%rbp,1)
   0.07%         │  0x00007fc5cc643726:   mov    %r9,0x28(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007fc5cc64372b:   add    $0x4,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.04%         │  0x00007fc5cc64372f:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007fc5cc643733:   cmp    %esi,%r8d
                 ╰  0x00007fc5cc643736:   jl     0x00007fc5cc6436d0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%            0x00007fc5cc643738:   mov    %edx,%edi
   0.07%            0x00007fc5cc64373a:   vmovd  %xmm1,%edx
   0.06%            0x00007fc5cc64373e:   xchg   %ax,%ax
   0.10%            0x00007fc5cc643740:   cmp    %edx,%r8d                    ;   {no_reloc}
                    0x00007fc5cc643743:   jge    0x00007fc5cc64376f
                    0x00007fc5cc643745:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007fc5cc643748:   mov    %r13d,%ebp
                    0x00007fc5cc64374b:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  77.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 706 

                                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
                       0x00007fc5cc65e03b:   mov    %r11d,%eax
                       0x00007fc5cc65e03e:   cmp    $0x80000000,%eax
          ╭            0x00007fc5cc65e043:   jne    0x00007fc5cc65e04d
          │            0x00007fc5cc65e045:   xor    %edx,%edx
          │            0x00007fc5cc65e047:   cmp    $0xffffffff,%r10d
          │╭           0x00007fc5cc65e04b:   je     0x00007fc5cc65e051
          ↘│           0x00007fc5cc65e04d:   cltd   
           │           0x00007fc5cc65e04e:   idiv   %r10d
   0.01%   ↘           0x00007fc5cc65e051:   imul   %r10d,%eax
                       0x00007fc5cc65e055:   add    %r10d,%eax
                       0x00007fc5cc65e058:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlockCheck@37 (line 163)
                                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@4 (line 142)
                                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                                 ; - java.security.MessageDigest::update@36 (line 347)
                                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                                 ; - javax.crypto.Mac::update@33 (line 504)
                                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
                       0x00007fc5cc65e05a:   nopw   0x0(%rax,%rax,1)
                       0x00007fc5cc65e060:   cmp    0x24(%rsp),%eax
                       0x00007fc5cc65e064:   jge    0x00007fc5cc65e8f0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlockCheck@44 (line 164)
                                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@4 (line 142)
                                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                                 ; - java.security.MessageDigest::update@36 (line 347)
                                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                                 ; - javax.crypto.Mac::update@33 (line 504)
                                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.00%               0x00007fc5cc65e06a:   xor    %ebp,%ebp
                       0x00007fc5cc65e06c:   mov    $0x1,%esi
            ╭          0x00007fc5cc65e071:   jmp    0x00007fc5cc65e225
            │          0x00007fc5cc65e076:   data16 nopw 0x0(%rax,%rax,1)
   0.15%    │↗         0x00007fc5cc65e080:   vmovd  %xmm0,%esi                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                   ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
            ││                                                                   ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            ││                                                                   ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            ││                                                                   ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            ││                                                                   ; - java.security.MessageDigest::update@36 (line 347)
            ││                                                                   ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            ││                                                                   ; - javax.crypto.Mac::update@33 (line 504)
            ││                                                                   ; - javax.crypto.Mac::doFinal@23 (line 654)
            ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.12%    ││ ↗       0x00007fc5cc65e084:   mov    %esi,%ebx
   0.50%    ││ │       0x00007fc5cc65e086:   vmovd  %esi,%xmm0
   0.02%    ││ │       0x00007fc5cc65e08a:   add    %ecx,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            ││ │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
            ││ │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            ││ │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
            ││ │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
            ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.13%    ││ │       0x00007fc5cc65e08c:   movslq %ecx,%rax                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            ││ │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
            ││ │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            ││ │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
            ││ │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
            ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.16%    ││ │       0x00007fc5cc65e08f:   vmovq  %xmm3,%r9
   0.57%    ││ │       0x00007fc5cc65e094:   add    %rax,%r9
   0.02%    ││ │       0x00007fc5cc65e097:   mov    0x38(%rsp),%rdi
   0.14%    ││ │       0x00007fc5cc65e09c:   movsbl 0x10(%rdi,%r9,1),%r9d
   0.12%    ││ │       0x00007fc5cc65e0a2:   xor    %r9b,0x10(%r10,%rax,1)
   0.76%    ││ │       0x00007fc5cc65e0a7:   lea    (%r14,%rax,1),%rdi
   0.10%    ││ │       0x00007fc5cc65e0ab:   lea    (%r8,%rax,1),%rdx
   0.42%    ││ │       0x00007fc5cc65e0af:   lea    (%r11,%rax,1),%rbp
   0.01%    ││ │       0x00007fc5cc65e0b3:   lea    (%rax,%r13,1),%rsi
   0.21%    ││ │       0x00007fc5cc65e0b7:   mov    0x38(%rsp),%r9
   0.10%    ││ │       0x00007fc5cc65e0bc:   movsbl 0x10(%r9,%rsi,1),%r9d
   0.40%    ││ │       0x00007fc5cc65e0c2:   xor    %r9b,0x11(%r10,%rax,1)
   0.34%    ││ │       0x00007fc5cc65e0c7:   mov    0x38(%rsp),%r9
   0.43%    ││ │       0x00007fc5cc65e0cc:   movsbl 0x10(%r9,%rbp,1),%r9d
   0.04%    ││ │       0x00007fc5cc65e0d2:   xor    %r9b,0x12(%r10,%rax,1)       ;   {no_reloc}
   1.07%    ││ │       0x00007fc5cc65e0d7:   mov    0x38(%rsp),%r9
   0.01%    ││ │       0x00007fc5cc65e0dc:   movsbl 0x12(%r9,%rsi,1),%r9d
   0.10%    ││ │       0x00007fc5cc65e0e2:   xor    %r9b,0x13(%r10,%rax,1)
   0.77%    ││ │       0x00007fc5cc65e0e7:   mov    0x38(%rsp),%r9
   0.06%    ││ │       0x00007fc5cc65e0ec:   movsbl 0x10(%r9,%rdx,1),%r9d
   0.07%    ││ │       0x00007fc5cc65e0f2:   xor    %r9b,0x14(%r10,%rax,1)
   0.87%    ││ │       0x00007fc5cc65e0f7:   movslq %ebx,%rdx
   0.08%    ││ │       0x00007fc5cc65e0fa:   mov    0x38(%rsp),%r9
   0.44%    ││ │       0x00007fc5cc65e0ff:   movsbl 0x14(%r9,%rdx,1),%r9d
   0.16%    ││ │       0x00007fc5cc65e105:   xor    %r9b,0x15(%r10,%rax,1)
   1.34%    ││ │       0x00007fc5cc65e10a:   mov    0x38(%rsp),%r9
   0.01%    ││ │       0x00007fc5cc65e10f:   movsbl 0x10(%r9,%rdi,1),%r9d
   0.14%    ││ │       0x00007fc5cc65e115:   xor    %r9b,0x16(%r10,%rax,1)
   1.01%    ││ │       0x00007fc5cc65e11a:   mov    0x38(%rsp),%r9
   0.03%    ││ │       0x00007fc5cc65e11f:   movsbl 0x16(%r9,%rdx,1),%r9d
   0.61%    ││ │       0x00007fc5cc65e125:   xor    %r9b,0x17(%r10,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            ││ │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
            ││ │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            ││ │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
            ││ │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
            ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   1.75%    ││ │       0x00007fc5cc65e12a:   add    $0x8,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
            ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            ││ │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
            ││ │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            ││ │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
            ││ │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
            ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.00%    ││ │       0x00007fc5cc65e12d:   cmp    0x40(%rsp),%ecx
            │╰ │       0x00007fc5cc65e131:   jl     0x00007fc5cc65e080           ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                                 ; - java.util.Arrays::fill@17 (line 3287)
            │  │                                                                 ; - sun.security.provider.SHA3::implReset@5 (line 118)
            │  │                                                                 ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
            │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
            │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
            │  │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@16 (line 193)
            │  │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
            │  │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
            │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%    │  │       0x00007fc5cc65e137:   mov    0x458(%r15),%r9
   0.01%    │  │       0x00007fc5cc65e13e:   add    $0x7,%ebx                    ; ImmutableOopMap {r10=Oop [0]=NarrowOop [4]=NarrowOop [16]=Oop [24]=Oop [32]=NarrowOop [40]=Oop [56]=Oop }
            │  │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │  │                                                                 ; - (reexecute) sun.security.provider.SHA3::implCompress0@30 (line 94)
            │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │  │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
            │  │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │  │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
            │  │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
            │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.04%    │  │       0x00007fc5cc65e141:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                                 ; - sun.security.provider.SHA3::implCompress0@30 (line 94)
            │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │  │                                                                 ; - java.security.MessageDigest::update@36 (line 347)
            │  │                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │  │                                                                 ; - javax.crypto.Mac::update@33 (line 504)
            │  │                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
            │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
            │  │                                                                 ;   {poll}
   0.00%    │  │       0x00007fc5cc65e144:   cmp    0x34(%rsp),%ecx
            │ ╭│       0x00007fc5cc65e148:   jge    0x00007fc5cc65e19b
            │ ││       0x00007fc5cc65e14a:   vmovd  %xmm2,%ebp
            │ ││       0x00007fc5cc65e14e:   vmovd  %xmm0,%esi
            │ ││       0x00007fc5cc65e152:   vmovd  %xmm1,%edx
            │ ││       0x00007fc5cc65e156:   vmovq  %xmm3,%rax
            │ ││       0x00007fc5cc65e15b:   mov    0x34(%rsp),%ebx
   0.01%    │ ││    ↗  0x00007fc5cc65e15f:   mov    %edx,%edi
   0.01%    │ ││    │  0x00007fc5cc65e161:   sub    %ecx,%edi
   0.04%    │ ││    │  0x00007fc5cc65e163:   add    $0xfffffff9,%edi
   0.01%    │ ││    │  0x00007fc5cc65e166:   xor    %r9d,%r9d
   0.00%    │ ││    │  0x00007fc5cc65e169:   cmp    %ecx,%ebx
   0.01%    │ ││    │  0x00007fc5cc65e16b:   cmovl  %r9d,%edi
   0.02%    │ ││    │  0x00007fc5cc65e16f:   cmp    $0x1f40,%edi
   0.01%    │ ││    │  0x00007fc5cc65e175:   mov    $0x1f40,%r9d
   0.00%    │ ││    │  0x00007fc5cc65e17b:   cmova  %r9d,%edi
   0.05%    │ ││    │  0x00007fc5cc65e17f:   add    %ecx,%edi
   0.01%    │ ││    │  0x00007fc5cc65e181:   vmovd  %ebp,%xmm2
   0.00%    │ ││    │  0x00007fc5cc65e185:   vmovd  %edx,%xmm1
   0.01%    │ ││    │  0x00007fc5cc65e189:   vmovq  %rax,%xmm3
   0.03%    │ ││    │  0x00007fc5cc65e18e:   mov    %ebx,0x34(%rsp)
   0.01%    │ ││    │  0x00007fc5cc65e192:   mov    %edi,0x40(%rsp)
   0.01%    │ │╰    │  0x00007fc5cc65e196:   jmp    0x00007fc5cc65e084
   0.00%    │ ↘     │  0x00007fc5cc65e19b:   vmovd  %xmm2,%ebp
   0.01%    │       │  0x00007fc5cc65e19f:   vmovd  %xmm1,%edx
   0.03%    │       │  0x00007fc5cc65e1a3:   vmovq  %xmm3,%rax
   0.00%    │       │  0x00007fc5cc65e1a8:   cmp    %edx,%ecx
            │   ╭   │  0x00007fc5cc65e1aa:   jge    0x00007fc5cc65e1c9           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
            │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │   │   │                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │   │   │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │   │   │                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │   │   │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.06%    │   │↗  │  0x00007fc5cc65e1ac:   movslq %ecx,%r11                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
            │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │   ││  │                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │   ││  │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │   ││  │                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │   ││  │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.09%    │   ││  │  0x00007fc5cc65e1af:   lea    (%rax,%r11,1),%r8
   0.11%    │   ││  │  0x00007fc5cc65e1b3:   mov    0x38(%rsp),%r9
   0.05%    │   ││  │  0x00007fc5cc65e1b8:   movsbl 0x10(%r9,%r8,1),%r8d
   0.08%    │   ││  │  0x00007fc5cc65e1be:   xor    %r8b,0x10(%r10,%r11,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
            │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │   ││  │                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │   ││  │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │   ││  │                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │   ││  │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.35%    │   ││  │  0x00007fc5cc65e1c3:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
            │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │   ││  │                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │   ││  │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │   ││  │                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │   ││  │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.07%    │   ││  │  0x00007fc5cc65e1c5:   cmp    %edx,%ecx
            │   │╰  │  0x00007fc5cc65e1c7:   jl     0x00007fc5cc65e1ac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
            │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │   │   │                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │   │   │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │   │   │                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │   │   │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.00%    │   ↘  ↗│  0x00007fc5cc65e1c9:   mov    0x28(%rsp),%rsi
   0.01%    │      ││  0x00007fc5cc65e1ce:   xchg   %ax,%ax
   0.01%    │      ││  0x00007fc5cc65e1d0:   vzeroupper 
   0.04%    │      ││  0x00007fc5cc65e1d3:   call   0x00007fc5cc642de0           ; ImmutableOopMap {[0]=NarrowOop [4]=NarrowOop [16]=Oop [24]=Oop [32]=NarrowOop [40]=Oop [56]=Oop }
            │      ││                                                            ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
            │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
            │      ││                                                            ;   {optimized virtual_call}
   0.04%    │      ││  0x00007fc5cc65e1d8:   nopl   0x8000f48(%rax,%rax,1)       ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
            │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
            │      ││                                                            ;   {other}
   0.00%    │      ││  0x00007fc5cc65e1e0:   mov    0x28(%rsp),%rbx
   0.01%    │      ││  0x00007fc5cc65e1e5:   add    0x1c(%rbx),%ebp              ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                            ; - java.util.Arrays::fill@17 (line 3287)
            │      ││                                                            ; - sun.security.provider.SHA3::implReset@5 (line 118)
            │      ││                                                            ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
            │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
            │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
            │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@16 (line 193)
            │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.03%    │      ││  0x00007fc5cc65e1e8:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=Oop [0]=NarrowOop [4]=NarrowOop [16]=Oop [24]=Oop [32]=NarrowOop [40]=Oop [56]=Oop }
            │      ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │      ││                                                            ; - (reexecute) sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%    │      ││  0x00007fc5cc65e1ef:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
            │      ││                                                            ;   {poll}
   0.01%    │      ││  0x00007fc5cc65e1f2:   mov    0x2c(%rbx),%r8d              ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
            │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@4 (line 94)
            │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
            │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │      ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │      ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │      ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │      ││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%    │      ││  0x00007fc5cc65e1f6:   cmp    0x30(%rsp),%ebp
   0.04%    │      ││  0x00007fc5cc65e1fa:   nopw   0x0(%rax,%rax,1)
   0.01%    │     ╭││  0x00007fc5cc65e200:   jg     0x00007fc5cc65e2c7           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
            │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@2 (line 148)
            │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │     │││                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │     │││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │     │││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │     │││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%    │     │││  0x00007fc5cc65e206:   lea    0x6(%rbp),%r11d
   0.01%    │     │││  0x00007fc5cc65e20a:   mov    %r11d,0x68(%rsp)
   0.03%    │     │││  0x00007fc5cc65e20f:   mov    %ebp,%esi
   0.00%    │     │││  0x00007fc5cc65e211:   inc    %esi
   0.00%    │     │││  0x00007fc5cc65e213:   lea    0x2(%rbp),%r10d
   0.00%    │     │││  0x00007fc5cc65e217:   mov    %r10d,0x6c(%rsp)
   0.04%    │     │││  0x00007fc5cc65e21c:   lea    0x4(%rbp),%r11d
   0.01%    │     │││  0x00007fc5cc65e220:   mov    %r11d,0x70(%rsp)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@5 (line 149)
            │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
            │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
            │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
            │     │││                                                            ; - java.security.MessageDigest::update@36 (line 347)
            │     │││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
            │     │││                                                            ; - javax.crypto.Mac::update@33 (line 504)
            │     │││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
            │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%    ↘     │││  0x00007fc5cc65e225:   mov    0xc(%r12,%r8,8),%edx         ; implicit exception: dispatches to 0x00007fc5cc65e980
                  │││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                  │││                                                            ; - sun.security.provider.SHA3::implCompress0@7 (line 94)
                  │││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                  │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                  │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                  │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                  │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                  │││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                  │││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                  │││                                                            ; - javax.crypto.Mac::update@33 (line 504)
                  │││                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%          │││  0x00007fc5cc65e22a:   test   %edx,%edx
                  │╰│  0x00007fc5cc65e22c:   jbe    0x00007fc5cc65e1c9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                  │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                  │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                  │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                  │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                  │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                  │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.02%          │ │  0x00007fc5cc65e22e:   mov    0x28(%rsp),%r10
   0.00%          │ │  0x00007fc5cc65e233:   mov    0x34(%r10),%r11d             ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress0@12 (line 95)
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                  │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                  │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                  │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                  │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                  │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                  │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.01%          │ │  0x00007fc5cc65e237:   nopw   0x0(%rax,%rax,1)
   0.01%          │ │  0x00007fc5cc65e240:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fc5cc65e4be
                  │ │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                  │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                  │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                  │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                  │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                  │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                  │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.03%          │ │  0x00007fc5cc65e245:   test   %r10d,%r10d
                  │ │  0x00007fc5cc65e248:   jbe    0x00007fc5cc65e4be
   0.00%          │ │  0x00007fc5cc65e24e:   mov    %edx,%r8d
   0.00%          │ │  0x00007fc5cc65e251:   dec    %r8d
   0.00%          │ │  0x00007fc5cc65e254:   cmp    %r10d,%r8d
                  │ │  0x00007fc5cc65e257:   jae    0x00007fc5cc65e4be
   0.01%          │ │  0x00007fc5cc65e25d:   data16 xchg %ax,%ax
   0.00%          │ │  0x00007fc5cc65e260:   cmp    0x24(%rsp),%ebp
                  │ │  0x00007fc5cc65e264:   jae    0x00007fc5cc65e4be
   0.01%          │ │  0x00007fc5cc65e26a:   movslq %edx,%r10
   0.01%          │ │  0x00007fc5cc65e26d:   movslq %ebp,%rax                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress0@23 (line 95)
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                  │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                  │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                  │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                  │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                  │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                  │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.03%          │ │  0x00007fc5cc65e270:   add    %rax,%r10
   0.01%          │ │  0x00007fc5cc65e273:   dec    %r10
   0.00%          │ │  0x00007fc5cc65e276:   data16 nopw 0x0(%rax,%rax,1)
   0.01%          │ │  0x00007fc5cc65e280:   cmp    0x8(%rsp),%r10
                  │ │  0x00007fc5cc65e285:   jae    0x00007fc5cc65e4be
   0.01%          │ │  0x00007fc5cc65e28b:   mov    0x38(%rsp),%r10
   0.01%          │ │  0x00007fc5cc65e290:   movsbl 0x10(%r10,%rax,1),%r8d
   0.01%          │ │  0x00007fc5cc65e296:   xor    %r8b,0x10(%r12,%r11,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
                  │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                  │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                  │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                  │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                  │ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
                  │ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                  │ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
                  │ │                                                            ; - javax.crypto.Mac::doFinal@23 (line 654)
                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
   0.05%          │ │  0x00007fc5cc65e29b:   lea    -0x7(%rdx),%ebx
   0.01%          │ │  0x00007fc5cc65e29e:   lea    (%r12,%r11,8),%r10
   0.01%          │ │  0x00007fc5cc65e2a2:   cmp    $0x1,%ebx
                  │ │  0x00007fc5cc65e2a5:   jle    0x00007fc5cc65e4ec
   0.04%          │ │  0x00007fc5cc65e2ab:   movslq 0x68(%rsp),%r14
   0.01%          │ │  0x00007fc5cc65e2b0:   movslq %esi,%r13
                  │ │  0x00007fc5cc65e2b3:   movslq 0x6c(%rsp),%r11
   0.01%          │ │  0x00007fc5cc65e2b8:   movslq 0x70(%rsp),%r8
   0.04%          │ │  0x00007fc5cc65e2bd:   mov    $0x1,%ecx
   0.01%          │ ╰  0x00007fc5cc65e2c2:   jmp    0x00007fc5cc65e15f
   0.00%          ↘    0x00007fc5cc65e2c7:   mov    0x24(%rsp),%r13d
   0.01%               0x00007fc5cc65e2cc:   sub    %ebp,%r13d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - sun.security.provider.DigestBase::engineUpdate@155 (line 134)
                                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                                 ; - java.security.MessageDigest::update@36 (line 347)
                                                                                 ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                                 ; - javax.crypto.Mac::update@33 (line 504)
                                                                                 ; - javax.crypto.Mac::doFinal@23 (line 654)
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac@8 (line 106)
                       0x00007fc5cc65e2cf:   test   %r13d,%r13d
                       0x00007fc5cc65e2d2:   jle    0x00007fc5cc65e34f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - sun.security.provider.DigestBase::engineUpdate@156 (line 134)
....................................................................................................
  15.12%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.61%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 652 
  15.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 706 
   2.23%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 652 
   1.57%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 652 
   0.51%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.11%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.10%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 706 
   0.07%         c2, level 4  javax.crypto.Mac::doFinal, version 2, compile id 704 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 706 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.83%  <...other 443 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.41%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 652 
  15.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 706 
   2.38%              kernel  [unknown] 
   0.37%         c2, level 4  javax.crypto.Mac::doFinal, version 2, compile id 704 
   0.13%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.18%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.15%         c2, level 4
   2.38%              kernel
   0.19%           libjvm.so
   0.13%        runtime stub
   0.06%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%              [vdso]
   0.00%          ld-2.31.so
   0.00%    perf-1937170.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-384, length = 16384)

# Run progress: 83.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 129.713 us/op
# Warmup Iteration   2: 116.770 us/op
# Warmup Iteration   3: 116.122 us/op
# Warmup Iteration   4: 116.097 us/op
# Warmup Iteration   5: 116.067 us/op
Iteration   1: 116.126 us/op
Iteration   2: 116.097 us/op
Iteration   3: 116.109 us/op
Iteration   4: 116.114 us/op
Iteration   5: 116.078 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  116.105 ±(99.9%) 0.070 us/op [Average]
  (min, avg, max) = (116.078, 116.105, 116.126), stdev = 0.018
  CI (99.9%): [116.035, 116.174] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 165205 total address lines.
Perf output processed (skipped 56.719 seconds):
 Column 1: cycles (50426 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 661 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007f39a46437c8:   cmp    %edx,%r8d
          ╭         0x00007f39a46437cb:   jge    0x00007f39a46437d2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007f39a46437cd:   mov    %eax,%r10d
          │         0x00007f39a46437d0:   jmp    0x00007f39a46437ac
   0.03%  ↘         0x00007f39a46437d2:   vmovq  %xmm0,%rdi                   ;   {no_reloc}
   0.05%            0x00007f39a46437d7:   vmovd  %xmm2,%r11d
   0.05%            0x00007f39a46437dc:   vmovd  %xmm3,%r8d
   0.16%            0x00007f39a46437e1:   vmovd  %xmm1,%ecx
   0.03%            0x00007f39a46437e5:   mov    (%rsp),%r13
   0.06%            0x00007f39a46437e9:   vmovd  %xmm5,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%    ↗       0x00007f39a46437ed:   mov    0x458(%r15),%r14
   0.16%    │       0x00007f39a46437f4:   mov    %ebx,%r10d
   0.03%    │       0x00007f39a46437f7:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rbp=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%    │       0x00007f39a46437fa:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.07%    │       0x00007f39a46437fd:   data16 xchg %ax,%ax
   0.13%    │       0x00007f39a4643800:   cmp    $0x5,%r10d
           ╭│       0x00007f39a4643804:   jge    0x00007f39a46438a5
   0.02%   ││       0x00007f39a464380a:   mov    %ebx,%edx
   0.03%   ││       0x00007f39a464380c:   shl    $0x5,%edx
   0.05%   ││       0x00007f39a464380f:   lea    (%rdx,%rbx,8),%r14d
   0.10%   ││       0x00007f39a4643813:   add    $0x28,%r14d
   0.02%   ││       0x00007f39a4643817:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.03%   ││       0x00007f39a464381a:   lea    0x28(%r14),%edx
   0.05%   ││       0x00007f39a464381e:   xchg   %ax,%ax
   0.13%   ││       0x00007f39a4643820:   cmp    %edx,%r14d
           │╰       0x00007f39a4643823:   jge    0x00007f39a46437ed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.03%   │        0x00007f39a4643825:   lea    (%rbx,%rbx,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   │        0x00007f39a4643829:   cmp    %ecx,%r14d
           │        0x00007f39a464382c:   jae    0x00007f39a46441e9
   0.04%   │        0x00007f39a4643832:   vmovd  %eax,%xmm5
   0.14%   │        0x00007f39a4643836:   mov    %r13,(%rsp)
   0.03%   │        0x00007f39a464383a:   vmovd  %ecx,%xmm1
   0.03%   │        0x00007f39a464383e:   vmovd  %r8d,%xmm3
   0.05%   │        0x00007f39a4643843:   movslq %r14d,%r8
   0.14%   │        0x00007f39a4643846:   add    $0x20,%r8
   0.02%   │        0x00007f39a464384a:   cmp    %r13,%r8
           │        0x00007f39a464384d:   jae    0x00007f39a46441e4
   0.03%   │        0x00007f39a4643853:   vmovd  %r11d,%xmm2
   0.08%   │        0x00007f39a4643858:   vmovq  %rdi,%xmm0
   0.12%   │        0x00007f39a464385d:   lea    0x8(%r14),%r11d
   0.04%   │        0x00007f39a4643861:   mov    %r14d,%r8d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │  ↗     0x00007f39a4643864:   mov    0x10(%r9,%r8,1),%rdi         ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │  │     0x00007f39a4643869:   mov    %r10d,%eax
   0.12%   │  │     0x00007f39a464386c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.02%   │  │     0x00007f39a464386e:   cmp    %esi,%r10d
           │  │     0x00007f39a4643871:   jae    0x00007f39a4644144
   0.05%   │  │     0x00007f39a4643877:   mov    %rdi,0x10(%rbp,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%   │  │     0x00007f39a464387c:   lea    0x8(%r8),%ecx
   0.13%   │  │     0x00007f39a4643880:   cmp    %r11d,%ecx
           │ ╭│     0x00007f39a4643883:   jge    0x00007f39a464388d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007f39a4643885:   mov    %ecx,%r8d
           │ ││     0x00007f39a4643888:   mov    %eax,%r10d
           │ │╰     0x00007f39a464388b:   jmp    0x00007f39a4643864
   0.02%   │ ↘      0x00007f39a464388d:   lea    0x10(%r14),%r11d
   0.04%   │        0x00007f39a4643891:   cmp    %r11d,%ecx
           │        0x00007f39a4643894:   jge    0x00007f39a4644220
   0.06%   │        0x00007f39a464389a:   add    $0x8,%r8d
   0.12%   │        0x00007f39a464389e:   xchg   %ax,%ax
   0.02%   │        0x00007f39a46438a0:   jmp    0x00007f39a4643753
   0.00%   ↘        0x00007f39a46438a5:   mov    0x38(%rdi),%r10d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.01%            0x00007f39a46438a9:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f39a46442bc
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.01%            0x00007f39a46438ae:   cmp    $0x18,%r11d
                    0x00007f39a46438b2:   jbe    0x00007f39a4644288
   0.02%            0x00007f39a46438b8:   mov    %r11d,(%rsp)
   0.01%            0x00007f39a46438bc:   vmovd  %eax,%xmm2
   0.01%            0x00007f39a46438c0:   vmovq  %rdi,%xmm0
   0.02%            0x00007f39a46438c5:   mov    0x40(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.03%            0x00007f39a46438ca:   mov    %r11,0x8(%rsp)
   0.00%            0x00007f39a46438cf:   mov    0x20(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.01%            0x00007f39a46438d4:   vmovq  %r11,%xmm3
   0.01%            0x00007f39a46438d9:   mov    0xd0(%r12,%r10,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.01%            0x00007f39a46438e1:   mov    0xa8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.00%            0x00007f39a46438e9:   mov    %r11,0x10(%rsp)
   0.01%            0x00007f39a46438ee:   mov    0x80(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.02%            0x00007f39a46438f6:   mov    %r11,0x18(%rsp)              ;   {no_reloc}
   0.04%            0x00007f39a46438fb:   mov    0x58(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.01%            0x00007f39a4643900:   mov    %r11,0x20(%rsp)
   0.01%            0x00007f39a4643905:   mov    0x30(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
   0.01%            0x00007f39a464390a:   vmovq  %r11,%xmm4
   0.03%            0x00007f39a464390f:   mov    0xb8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
                    0x00007f39a4643917:   mov    %r11,0x28(%rsp)
   0.01%            0x00007f39a464391c:   mov    0x90(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
   0.03%            0x00007f39a4643924:   mov    %r11,0x30(%rsp)
   0.05%            0x00007f39a4643929:   mov    0x68(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.00%            0x00007f39a464392e:   mov    %r11,0x38(%rsp)
   0.01%            0x00007f39a4643933:   vmovd  %r10d,%xmm1
   0.02%            0x00007f39a4643938:   mov    0x18(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
   0.03%            0x00007f39a464393d:   vmovq  %r10,%xmm5
   0.00%            0x00007f39a4643942:   vmovd  %xmm1,%r10d
   0.01%            0x00007f39a4643947:   mov    0xc8(%r12,%r10,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
   0.01%            0x00007f39a464394f:   mov    0xa0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
   0.04%            0x00007f39a4643957:   mov    %r10,0x40(%rsp)
   0.02%            0x00007f39a464395c:   vmovd  %xmm1,%r10d
   0.01%            0x00007f39a4643961:   mov    0x78(%r12,%r10,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.01%            0x00007f39a4643966:   mov    0x28(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.03%            0x00007f39a464396b:   vmovq  %r10,%xmm6
   0.02%            0x00007f39a4643970:   vmovd  %xmm1,%r10d
   0.01%            0x00007f39a4643975:   mov    0xb0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
   0.01%            0x00007f39a464397d:   mov    %r10,0x48(%rsp)
   0.04%            0x00007f39a4643982:   vmovd  %xmm1,%r11d
   0.01%            0x00007f39a4643987:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.01%            0x00007f39a464398f:   mov    %r10,0x50(%rsp)
   0.00%            0x00007f39a4643994:   mov    %r11d,%r10d
   0.02%            0x00007f39a4643997:   mov    0x60(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.01%            0x00007f39a464399c:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.00%            0x00007f39a46439a1:   mov    %r11,0x58(%rsp)
   0.01%            0x00007f39a46439a6:   vmovd  %xmm1,%r9d
   0.02%            0x00007f39a46439ab:   mov    0x10(%r12,%r9,8),%rbx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.02%            0x00007f39a46439b0:   mov    0xc0(%r12,%r9,8),%r11        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.01%            0x00007f39a46439b8:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
   0.01%            0x00007f39a46439c0:   mov    %r9,0x60(%rsp)
   0.02%            0x00007f39a46439c5:   vmovd  %xmm1,%r9d
   0.01%            0x00007f39a46439ca:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.04%            0x00007f39a46439cf:   mov    %r9,0x68(%rsp)
   0.04%            0x00007f39a46439d4:   vmovd  %xmm1,%r9d
   0.01%            0x00007f39a46439d9:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.00%            0x00007f39a46439de:   mov    %r9,0x70(%rsp)
   0.01%            0x00007f39a46439e3:   vmovd  %xmm1,%r9d
   0.03%            0x00007f39a46439e8:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.02%            0x00007f39a46439ed:   mov    %r9,0x78(%rsp)
   0.01%            0x00007f39a46439f2:   xor    %r9d,%r9d
   0.00%            0x00007f39a46439f5:   vmovd  %r9d,%xmm12                  ;   {no_reloc}
   0.03%       ╭    0x00007f39a46439fa:   jmp    0x00007f39a4643a17
               │    0x00007f39a46439fc:   nopl   0x0(%rax)
   0.29%       │↗   0x00007f39a4643a00:   mov    %rcx,0x28(%rsp)
   0.41%       ││   0x00007f39a4643a05:   mov    %rax,%rcx
   0.15%       ││   0x00007f39a4643a08:   mov    %r13,0x38(%rsp)
   0.45%       ││   0x00007f39a4643a0d:   vmovq  %xmm7,%r10
   0.25%       ││   0x00007f39a4643a12:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.44%       ↘│   0x00007f39a4643a17:   vmovq  %xmm5,%rdi
   0.19%        │   0x00007f39a4643a1c:   xor    0x8(%rsp),%rdi
   0.42%        │   0x00007f39a4643a21:   xor    0x38(%rsp),%rdi
   0.38%        │   0x00007f39a4643a26:   xor    0x30(%rsp),%rdi
   0.49%        │   0x00007f39a4643a2b:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.30%        │   0x00007f39a4643a30:   vmovq  %xmm3,%r9
   0.38%        │   0x00007f39a4643a35:   xor    0x70(%rsp),%r9
   0.29%        │   0x00007f39a4643a3a:   xor    0x68(%rsp),%r9
   0.46%        │   0x00007f39a4643a3f:   xor    0x60(%rsp),%r9
   0.28%        │   0x00007f39a4643a44:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.37%        │   0x00007f39a4643a47:   rorx   $0x3f,%rdi,%rbp
   0.25%        │   0x00007f39a4643a4d:   rorx   $0x3f,%r9,%rsi
   0.45%        │   0x00007f39a4643a53:   vmovq  %rsi,%xmm7
   0.33%        │   0x00007f39a4643a58:   vmovq  %xmm4,%rsi
   0.32%        │   0x00007f39a4643a5d:   xor    0x20(%rsp),%rsi
   0.22%        │   0x00007f39a4643a62:   xor    0x18(%rsp),%rsi
   0.30%        │   0x00007f39a4643a67:   xor    0x10(%rsp),%rsi
   0.27%        │   0x00007f39a4643a6c:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.33%        │   0x00007f39a4643a6f:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.25%        │   0x00007f39a4643a72:   rorx   $0x3f,%rsi,%rax
   0.41%        │   0x00007f39a4643a78:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.34%        │   0x00007f39a4643a7b:   vmovq  %xmm6,%r9
   0.36%        │   0x00007f39a4643a80:   xor    0x78(%rsp),%r9
   0.27%        │   0x00007f39a4643a85:   xor    %rdx,%r9
   0.35%        │   0x00007f39a4643a88:   xor    0x40(%rsp),%r9
   0.28%        │   0x00007f39a4643a8d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.32%        │   0x00007f39a4643a90:   mov    0x78(%rsp),%rsi
   0.23%        │   0x00007f39a4643a95:   xor    %rax,%rsi
   0.36%        │   0x00007f39a4643a98:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.32%        │   0x00007f39a4643a9e:   rorx   $0x3f,%r9,%r13
   0.33%        │   0x00007f39a4643aa4:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.29%        │   0x00007f39a4643aa7:   vmovq  %xmm6,%rdi
   0.40%        │   0x00007f39a4643aac:   xor    %rax,%rdi
   0.35%        │   0x00007f39a4643aaf:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.34%        │   0x00007f39a4643ab5:   mov    %rdi,0x80(%rsp)
   0.44%        │   0x00007f39a4643abd:   xor    %r13,%r11
   0.38%        │   0x00007f39a4643ac0:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.24%        │   0x00007f39a4643ac6:   mov    %r11,0xc0(%rsp)
   0.57%        │   0x00007f39a4643ace:   vmovq  %xmm3,%r11
   0.22%        │   0x00007f39a4643ad3:   xor    %r13,%r11
   0.37%        │   0x00007f39a4643ad6:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.25%        │   0x00007f39a4643adc:   mov    %r11,0x88(%rsp)
   0.54%        │   0x00007f39a4643ae4:   mov    0xc0(%rsp),%r11
   0.65%        │   0x00007f39a4643aec:   andn   %rdi,%r11,%r11
   0.55%        │   0x00007f39a4643af1:   vmovq  %r11,%xmm3
   1.25%        │   0x00007f39a4643af6:   mov    0x88(%rsp),%r11              ;   {no_reloc}
   0.51%        │   0x00007f39a4643afe:   andn   %rsi,%r11,%r11
   0.22%        │   0x00007f39a4643b03:   vmovq  %r11,%xmm8
   1.18%        │   0x00007f39a4643b08:   mov    0x60(%rsp),%r11
   0.23%        │   0x00007f39a4643b0d:   xor    %r13,%r11
   0.10%        │   0x00007f39a4643b10:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
   0.09%        │   0x00007f39a4643b16:   mov    %r11,0x90(%rsp)
   0.89%        │   0x00007f39a4643b1e:   mov    0x68(%rsp),%r11
   0.25%        │   0x00007f39a4643b23:   xor    %r13,%r11
   0.10%        │   0x00007f39a4643b26:   mov    0x70(%rsp),%rdi
   0.12%        │   0x00007f39a4643b2b:   xor    %r13,%rdi
   0.76%        │   0x00007f39a4643b2e:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.25%        │   0x00007f39a4643b34:   mov    %r11,0x98(%rsp)
   0.11%        │   0x00007f39a4643b3c:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.09%        │   0x00007f39a4643b42:   mov    %r11,0xa0(%rsp)
   0.80%        │   0x00007f39a4643b4a:   mov    0x40(%rsp),%r11
   0.25%        │   0x00007f39a4643b4f:   xor    %rax,%r11
   0.10%        │   0x00007f39a4643b52:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.14%        │   0x00007f39a4643b58:   xor    %rax,%r8
   0.82%        │   0x00007f39a4643b5b:   xor    %rax,%rdx
   0.24%        │   0x00007f39a4643b5e:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.10%        │   0x00007f39a4643b64:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.13%        │   0x00007f39a4643b6a:   mov    0x98(%rsp),%r8
   0.86%        │   0x00007f39a4643b72:   andn   %r11,%r8,%r8
   0.31%        │   0x00007f39a4643b77:   vmovq  %r8,%xmm9
   0.23%        │   0x00007f39a4643b7c:   mov    0xa0(%rsp),%r8
   0.14%        │   0x00007f39a4643b84:   andn   %rdx,%r8,%r8
   0.76%        │   0x00007f39a4643b89:   vmovq  %r8,%xmm10
   0.32%        │   0x00007f39a4643b8e:   mov    0x90(%rsp),%r8
   0.17%        │   0x00007f39a4643b96:   andn   %rdi,%r8,%r8
   0.12%        │   0x00007f39a4643b9b:   vmovq  %r8,%xmm11
   0.74%        │   0x00007f39a4643ba0:   mov    0x50(%rsp),%r8
   0.29%        │   0x00007f39a4643ba5:   xor    %rbp,%r8
   0.18%        │   0x00007f39a4643ba8:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.11%        │   0x00007f39a4643bae:   mov    %r8,0xa8(%rsp)
   0.68%        │   0x00007f39a4643bb6:   mov    0x58(%rsp),%r8
   0.26%        │   0x00007f39a4643bbb:   xor    %rbp,%r8
   0.15%        │   0x00007f39a4643bbe:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.10%        │   0x00007f39a4643bc4:   mov    %rbx,%r8
   0.73%        │   0x00007f39a4643bc7:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.27%        │   0x00007f39a4643bca:   mov    %r8,0xb0(%rsp)
   0.17%        │   0x00007f39a4643bd2:   mov    %r10,%r13
   0.14%        │   0x00007f39a4643bd5:   xor    %rbp,%r13
   0.67%        │   0x00007f39a4643bd8:   mov    0x48(%rsp),%r8
   0.28%        │   0x00007f39a4643bdd:   xor    %rbp,%r8
   0.14%        │   0x00007f39a4643be0:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.11%        │   0x00007f39a4643be6:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.74%        │   0x00007f39a4643bec:   xor    0x58(%rsp),%rbx
   0.28%        │   0x00007f39a4643bf1:   xor    %r10,%rbx
   0.12%        │   0x00007f39a4643bf4:   xor    0x50(%rsp),%rbx              ;   {no_reloc}
   0.09%        │   0x00007f39a4643bf9:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.78%        │   0x00007f39a4643bfe:   vmovq  %xmm7,%r10
   0.33%        │   0x00007f39a4643c03:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.18%        │   0x00007f39a4643c06:   mov    %r10,0xb8(%rsp)
   0.12%        │   0x00007f39a4643c0e:   rorx   $0x3f,%rbx,%r8
   0.69%        │   0x00007f39a4643c14:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.29%        │   0x00007f39a4643c17:   mov    0x30(%rsp),%r10
   0.13%        │   0x00007f39a4643c1c:   xor    0xb8(%rsp),%r10
   0.33%        │   0x00007f39a4643c24:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.75%        │   0x00007f39a4643c2a:   vmovq  %xmm3,%r9
   0.28%        │   0x00007f39a4643c2f:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.28%        │   0x00007f39a4643c32:   mov    %r9,0x78(%rsp)
   0.83%        │   0x00007f39a4643c37:   xor    %r8,%rcx
   0.44%        │   0x00007f39a4643c3a:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.24%        │   0x00007f39a4643c40:   andn   0xc0(%rsp),%r10,%rcx
   0.11%        │   0x00007f39a4643c4a:   andn   %r10,%rbp,%r10
   0.46%        │   0x00007f39a4643c4f:   vmovq  %r10,%xmm7
   0.42%        │   0x00007f39a4643c54:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.20%        │   0x00007f39a4643c57:   mov    %rcx,0x70(%rsp)
   0.57%        │   0x00007f39a4643c5c:   andn   0xb0(%rsp),%r9,%r10
   0.26%        │   0x00007f39a4643c66:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.47%        │   0x00007f39a4643c69:   vmovq  %r10,%xmm6
   0.30%        │   0x00007f39a4643c6e:   andn   %r9,%r11,%r10
   0.36%        │   0x00007f39a4643c73:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.24%        │   0x00007f39a4643c7b:   vmovq  %r10,%xmm3
   0.44%        │   0x00007f39a4643c80:   mov    0x18(%rsp),%r10
   0.25%        │   0x00007f39a4643c85:   xor    %r8,%r10
   0.32%        │   0x00007f39a4643c88:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.23%        │   0x00007f39a4643c8e:   mov    0x10(%rsp),%r10
   0.52%        │   0x00007f39a4643c93:   xor    %r8,%r10
   0.23%        │   0x00007f39a4643c96:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.35%        │   0x00007f39a4643c9c:   andn   %rbx,%rsi,%r11
   0.23%        │   0x00007f39a4643ca1:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.50%        │   0x00007f39a4643ca9:   mov    %r11,0x48(%rsp)
   0.37%        │   0x00007f39a4643cae:   andn   %r10,%rdx,%r13
   0.34%        │   0x00007f39a4643cb3:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.21%        │   0x00007f39a4643cbb:   andn   %r14,%r10,%r11
   0.43%        │   0x00007f39a4643cc0:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.35%        │   0x00007f39a4643cc3:   mov    %r11,0x68(%rsp)
   0.50%        │   0x00007f39a4643cc8:   andn   0xa8(%rsp),%rbx,%rcx
   0.19%        │   0x00007f39a4643cd2:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.38%        │   0x00007f39a4643cd5:   vmovq  %xmm4,%r11
   0.28%        │   0x00007f39a4643cda:   xor    %r8,%r11
   0.44%        │   0x00007f39a4643cdd:   mov    0x20(%rsp),%rdx
   0.20%        │   0x00007f39a4643ce2:   xor    %r8,%rdx
   0.37%        │   0x00007f39a4643ce5:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.32%        │   0x00007f39a4643ceb:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.44%        │   0x00007f39a4643cf1:   andn   %rbp,%r8,%rdx                ;   {no_reloc}
   0.14%        │   0x00007f39a4643cf6:   mov    %rdx,%rsi
   0.39%        │   0x00007f39a4643cf9:   vmovq  %xmm7,%rdx
   0.30%        │   0x00007f39a4643cfe:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.41%        │   0x00007f39a4643d01:   mov    %rdx,%rbp
   0.17%        │   0x00007f39a4643d04:   mov    0x80(%rsp),%rdx
   0.39%        │   0x00007f39a4643d0c:   andn   %r8,%rdx,%r8
   0.27%        │   0x00007f39a4643d11:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.38%        │   0x00007f39a4643d19:   mov    %r8,0x20(%rsp)
   0.27%        │   0x00007f39a4643d1e:   mov    %rsi,%r8
   0.38%        │   0x00007f39a4643d21:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.26%        │   0x00007f39a4643d24:   mov    %r8,0x58(%rsp)
   0.49%        │   0x00007f39a4643d29:   andn   %r11,%rdi,%r8
   0.20%        │   0x00007f39a4643d2e:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.36%        │   0x00007f39a4643d36:   mov    %r8,0x40(%rsp)
   0.35%        │   0x00007f39a4643d3b:   andn   %rax,%r11,%r8
   0.41%        │   0x00007f39a4643d40:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.17%        │   0x00007f39a4643d43:   mov    %r8,0x10(%rsp)
   0.47%        │   0x00007f39a4643d48:   mov    0x38(%rsp),%r8
   0.30%        │   0x00007f39a4643d4d:   xor    0xb8(%rsp),%r8
   0.39%        │   0x00007f39a4643d55:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.20%        │   0x00007f39a4643d5b:   vmovq  %xmm11,%r8
   0.43%        │   0x00007f39a4643d60:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.31%        │   0x00007f39a4643d63:   mov    %r8,0x60(%rsp)
   0.46%        │   0x00007f39a4643d68:   andn   0x90(%rsp),%rdi,%r8
   0.17%        │   0x00007f39a4643d72:   andn   %rdi,%rax,%rdi
   0.39%        │   0x00007f39a4643d77:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.31%        │   0x00007f39a4643d7a:   mov    %rdi,0x50(%rsp)
   0.50%        │   0x00007f39a4643d7f:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.15%        │   0x00007f39a4643d82:   mov    %r8,0x30(%rsp)
   0.44%        │   0x00007f39a4643d87:   mov    0x28(%rsp),%r11
   0.26%        │   0x00007f39a4643d8c:   xor    0xb8(%rsp),%r11
   0.40%        │   0x00007f39a4643d94:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.19%        │   0x00007f39a4643d9a:   andn   0x88(%rsp),%rdi,%r8
   0.42%        │   0x00007f39a4643da4:   vmovq  %xmm8,%r11
   0.26%        │   0x00007f39a4643da9:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.42%        │   0x00007f39a4643dac:   mov    %r11,%rax
   0.13%        │   0x00007f39a4643daf:   mov    0xa8(%rsp),%r11
   0.44%        │   0x00007f39a4643db7:   andn   %rdi,%r11,%r11
   0.28%        │   0x00007f39a4643dbc:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.45%        │   0x00007f39a4643dbf:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.13%        │   0x00007f39a4643dc7:   vmovq  %xmm5,%rbx
   0.37%        │   0x00007f39a4643dcc:   xor    0xb8(%rsp),%rbx
   0.30%        │   0x00007f39a4643dd4:   mov    0x8(%rsp),%rsi
   0.49%        │   0x00007f39a4643dd9:   xor    0xb8(%rsp),%rsi
   0.15%        │   0x00007f39a4643de1:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.40%        │   0x00007f39a4643de7:   andn   0xa0(%rsp),%rbx,%rdi
   0.25%        │   0x00007f39a4643df1:   vmovq  %xmm10,%rdx                  ;   {no_reloc}
   0.42%        │   0x00007f39a4643df6:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.17%        │   0x00007f39a4643df9:   vmovq  %rdx,%xmm7
   0.40%        │   0x00007f39a4643dfe:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.27%        │   0x00007f39a4643e01:   mov    %rdi,0x18(%rsp)
   0.38%        │   0x00007f39a4643e06:   andn   %rbx,%r14,%rdx
   0.16%        │   0x00007f39a4643e0b:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
   0.42%        │   0x00007f39a4643e0e:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.29%        │   0x00007f39a4643e14:   vmovq  %xmm9,%rbx
   0.43%        │   0x00007f39a4643e19:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.15%        │   0x00007f39a4643e1c:   vmovq  %rbx,%xmm5
   0.43%        │   0x00007f39a4643e21:   andn   0x98(%rsp),%r10,%rbx
   0.22%        │   0x00007f39a4643e2b:   mov    0xb0(%rsp),%rdi
   0.38%        │   0x00007f39a4643e33:   andn   %r10,%rdi,%r10
   0.15%        │   0x00007f39a4643e38:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.44%        │   0x00007f39a4643e3b:   vmovq  %r10,%xmm4
   0.22%        │   0x00007f39a4643e40:   xor    %rdi,%rbx
   0.42%        │   0x00007f39a4643e43:   movabs $0x7ff12a9b0,%r9             ;   {oop([J{0x00000007ff12a9b0})}
   0.17%        │   0x00007f39a4643e4d:   vmovd  %xmm12,%r10d
   0.42%        │   0x00007f39a4643e52:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.28%        │   0x00007f39a4643e57:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.46%        │   0x00007f39a4643e5a:   vmovd  %r10d,%xmm12
   0.18%        │   0x00007f39a4643e5f:   nop
   0.38%        │   0x00007f39a4643e60:   cmp    $0x18,%r10d
                ╰   0x00007f39a4643e64:   jl     0x00007f39a4643a00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.01%            0x00007f39a4643e6a:   vmovd  %xmm1,%r10d
   0.01%            0x00007f39a4643e6f:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
   0.01%            0x00007f39a4643e74:   mov    %r10d,%r9d
   0.02%            0x00007f39a4643e77:   vmovq  %xmm5,%r10
   0.01%            0x00007f39a4643e7c:   mov    %r10,0x18(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.02%            0x00007f39a4643e81:   mov    %r9d,%r10d
                    0x00007f39a4643e84:   vmovq  %xmm3,%r9
   0.02%            0x00007f39a4643e89:   mov    %r9,0x20(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007f39a4643e8e:   mov    %r10d,%r9d
   0.03%            0x00007f39a4643e91:   vmovq  %xmm6,%r10
   0.00%            0x00007f39a4643e96:   mov    %r10,0x28(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.02%            0x00007f39a4643e9b:   mov    %r9d,%r10d
   0.01%            0x00007f39a4643e9e:   vmovq  %xmm4,%r9
   0.02%            0x00007f39a4643ea3:   mov    %r9,0x30(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.01%            0x00007f39a4643ea8:   mov    %r10d,%r9d
   0.01%            0x00007f39a4643eab:   mov    0x58(%rsp),%r10
   0.01%            0x00007f39a4643eb0:   mov    %r10,0x38(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.02%            0x00007f39a4643eb5:   mov    %r9d,%r10d
   0.01%            0x00007f39a4643eb8:   mov    %rbp,0x40(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.01%            0x00007f39a4643ebd:   mov    %r10d,%r9d
   0.01%            0x00007f39a4643ec0:   mov    0x70(%rsp),%r10
   0.02%            0x00007f39a4643ec5:   mov    %r10,0x48(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
   0.01%            0x00007f39a4643eca:   mov    %r9d,%r10d
   0.03%            0x00007f39a4643ecd:   mov    0x78(%rsp),%r9
   0.01%            0x00007f39a4643ed2:   mov    %r9,0x50(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.01%            0x00007f39a4643ed7:   mov    %r10d,%r9d
   0.00%            0x00007f39a4643eda:   mov    0x20(%rsp),%r10
   0.01%            0x00007f39a4643edf:   mov    %r10,0x58(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.01%            0x00007f39a4643ee4:   mov    %r9d,%r10d
   0.03%            0x00007f39a4643ee7:   vmovq  %xmm7,%r9
                    0x00007f39a4643eec:   mov    %r9,0x60(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.02%            0x00007f39a4643ef1:   mov    %r13,0x68(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.01%            0x00007f39a4643ef6:   mov    %r10d,%r9d
   0.03%            0x00007f39a4643ef9:   mov    0x68(%rsp),%r10
   0.01%            0x00007f39a4643efe:   mov    %r10,0x70(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.02%            0x00007f39a4643f03:   mov    %r9d,%r10d
   0.02%            0x00007f39a4643f06:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.02%            0x00007f39a4643f0b:   mov    0x18(%rsp),%r10
   0.00%            0x00007f39a4643f10:   mov    %r10,0x80(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.03%            0x00007f39a4643f18:   mov    %r9d,%r10d
   0.01%            0x00007f39a4643f1b:   mov    0x50(%rsp),%r9
   0.01%            0x00007f39a4643f20:   mov    %r9,0x88(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.01%            0x00007f39a4643f28:   mov    %r10d,%r9d
   0.02%            0x00007f39a4643f2b:   mov    0x30(%rsp),%r10
   0.01%            0x00007f39a4643f30:   mov    %r10,0x90(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.04%            0x00007f39a4643f38:   mov    %r9d,%r10d
   0.01%            0x00007f39a4643f3b:   mov    0x60(%rsp),%r9
   0.01%            0x00007f39a4643f40:   mov    %r9,0x98(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
                                                                              ;   {no_reloc}
   0.02%            0x00007f39a4643f48:   mov    %r10d,%r9d
   0.02%            0x00007f39a4643f4b:   mov    0x40(%rsp),%r10
   0.01%            0x00007f39a4643f50:   mov    %r10,0xa0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.02%            0x00007f39a4643f58:   mov    %r9d,%r10d
   0.02%            0x00007f39a4643f5b:   mov    0x10(%rsp),%r9
   0.25%            0x00007f39a4643f60:   mov    %r9,0xa8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.09%            0x00007f39a4643f68:   mov    %r10d,%r9d
                    0x00007f39a4643f6b:   mov    0x48(%rsp),%r10
                    0x00007f39a4643f70:   mov    %r10,0xb0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.01%            0x00007f39a4643f78:   mov    %rcx,0xb8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.05%            0x00007f39a4643f80:   mov    %r9d,%r10d
   0.00%            0x00007f39a4643f83:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.01%            0x00007f39a4643f8b:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.01%            0x00007f39a4643f93:   mov    %rax,0xd0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.05%            0x00007f39a4643f9b:   vmovq  %xmm0,%r10
   0.00%            0x00007f39a4643fa0:   mov    0x34(%r10),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
                    0x00007f39a4643fa4:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f39a46442a4
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.00%            0x00007f39a4643fa9:   lea    -0x7(%r11),%eax
   0.05%            0x00007f39a4643fad:   test   %eax,%eax
                    0x00007f39a4643faf:   jl     0x00007f39a46442a4
   0.00%            0x00007f39a4643fb5:   movslq %r11d,%r14
   0.00%            0x00007f39a4643fb8:   mov    %r9d,%ecx
                    0x00007f39a4643fbb:   lea    (%r12,%r9,8),%r10
   0.04%            0x00007f39a4643fbf:   add    $0xfffffffffffffff9,%r14
   0.00%            0x00007f39a4643fc3:   lea    (%r12,%rbx,8),%r11
   0.00%            0x00007f39a4643fc7:   xor    %edi,%edi
                    0x00007f39a4643fc9:   jmp    0x00007f39a46440a1
                    0x00007f39a4643fce:   xchg   %ax,%ax
                 ↗  0x00007f39a4643fd0:   mov    %edx,%edi
                 │  0x00007f39a4643fd2:   vmovd  %xmm1,%edx                   ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f39a4643fd6:   mov    %r13d,%r9d
   0.06%         │  0x00007f39a4643fd9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f39a4643fdc:   nopl   0x0(%rax)
   0.06%         │  0x00007f39a4643fe0:   cmp    (%rsp),%r13d
                 │  0x00007f39a4643fe4:   jae    0x00007f39a464418c
   0.11%         │  0x00007f39a4643fea:   vmovd  %edx,%xmm1
   0.06%         │  0x00007f39a4643fee:   mov    %edi,%edx
   0.06%         │  0x00007f39a4643ff0:   mov    0x10(%r10,%r13,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.04%         │  0x00007f39a4643ff5:   movslq %r8d,%rbp                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.10%         │  0x00007f39a4643ff8:   mov    %rdi,0x10(%r11,%rbp,1)       ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f39a4643ffd:   lea    0x3(%r13),%edi
   0.07%         │  0x00007f39a4644001:   cmp    (%rsp),%edi
                 │  0x00007f39a4644004:   jae    0x00007f39a4644197
   0.04%         │  0x00007f39a464400a:   movslq %r13d,%rdi
   0.11%         │  0x00007f39a464400d:   mov    0x18(%r10,%rdi,8),%r9        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f39a4644012:   mov    %r9,0x18(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f39a4644017:   mov    0x28(%r10,%rdi,8),%r9
   0.04%         │  0x00007f39a464401c:   mov    0x20(%r10,%rdi,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.10%         │  0x00007f39a4644021:   mov    %rdi,0x20(%r11,%rbp,1)
   0.05%         │  0x00007f39a4644026:   mov    %r9,0x28(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f39a464402b:   add    $0x4,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f39a464402f:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f39a4644033:   cmp    %esi,%r8d
                 ╰  0x00007f39a4644036:   jl     0x00007f39a4643fd0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%            0x00007f39a4644038:   mov    %edx,%edi
   0.06%            0x00007f39a464403a:   vmovd  %xmm1,%edx
   0.05%            0x00007f39a464403e:   xchg   %ax,%ax
   0.09%            0x00007f39a4644040:   cmp    %edx,%r8d                    ;   {no_reloc}
                    0x00007f39a4644043:   jge    0x00007f39a464406f
                    0x00007f39a4644045:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f39a4644048:   mov    %r13d,%ebp
                    0x00007f39a464404b:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  81.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, javax.crypto.Mac::update, version 2, compile id 709 

                                                                              ; - sun.security.provider.DigestBase::implCompressMultiBlock@4 (line 142)
                                                                              ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                                                                              ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                              ; - java.security.MessageDigest::update@36 (line 347)
                                                                              ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                              ; - javax.crypto.Mac::update@33 (line 504)
                    0x00007f39a465196c:   xor    %ebp,%ebp
                    0x00007f39a465196e:   mov    $0x1,%r8d
          ╭         0x00007f39a4651974:   jmp    0x00007f39a4651b5a
          │         0x00007f39a4651979:   nopl   0x0(%rax)
   0.12%  │↗        0x00007f39a4651980:   vmovd  %xmm4,%r8d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          ││                                                                  ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││                                                                  ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││                                                                  ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││                                                                  ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││                                                                  ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││                                                                  ; - java.security.MessageDigest::update@36 (line 347)
          ││                                                                  ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││                                                                  ; - javax.crypto.Mac::update@33 (line 504)
   0.09%  ││ ↗      0x00007f39a4651985:   mov    %r8d,%edx
   0.44%  ││ │      0x00007f39a4651988:   vmovd  %r8d,%xmm4
   0.01%  ││ │      0x00007f39a465198d:   add    %edi,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                ; - java.security.MessageDigest::update@36 (line 347)
          ││ │                                                                ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││ │                                                                ; - javax.crypto.Mac::update@33 (line 504)
   0.12%  ││ │      0x00007f39a465198f:   movslq %edi,%rax                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                ; - java.security.MessageDigest::update@36 (line 347)
          ││ │                                                                ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││ │                                                                ; - javax.crypto.Mac::update@33 (line 504)
   0.07%  ││ │      0x00007f39a4651992:   vmovq  %xmm5,%r8
   0.40%  ││ │      0x00007f39a4651997:   add    %rax,%r8
   0.01%  ││ │      0x00007f39a465199a:   mov    0x20(%rsp),%rcx
   0.12%  ││ │      0x00007f39a465199f:   movsbl 0x10(%rcx,%r8,1),%ebx
   0.06%  ││ │      0x00007f39a46519a5:   xor    %bl,0x10(%r10,%rax,1)
   0.58%  ││ │      0x00007f39a46519aa:   lea    (%r14,%rax,1),%r8
   0.07%  ││ │      0x00007f39a46519ae:   lea    (%r9,%rax,1),%rcx
   0.38%  ││ │      0x00007f39a46519b2:   lea    (%r11,%rax,1),%rbp
   0.01%  ││ │      0x00007f39a46519b6:   lea    (%rax,%r13,1),%rsi
   0.17%  ││ │      0x00007f39a46519ba:   mov    0x20(%rsp),%rbx
   0.09%  ││ │      0x00007f39a46519bf:   movsbl 0x10(%rbx,%rsi,1),%ebx
   0.40%  ││ │      0x00007f39a46519c4:   xor    %bl,0x11(%r10,%rax,1)
   0.27%  ││ │      0x00007f39a46519c9:   mov    0x20(%rsp),%rbx
   0.39%  ││ │      0x00007f39a46519ce:   movsbl 0x10(%rbx,%rbp,1),%ebx
   0.03%  ││ │      0x00007f39a46519d3:   xor    %bl,0x12(%r10,%rax,1)
   0.83%  ││ │      0x00007f39a46519d8:   mov    0x20(%rsp),%rbx
          ││ │      0x00007f39a46519dd:   movsbl 0x12(%rbx,%rsi,1),%ebx
   0.10%  ││ │      0x00007f39a46519e2:   xor    %bl,0x13(%r10,%rax,1)
   0.54%  ││ │      0x00007f39a46519e7:   mov    0x20(%rsp),%rbx              ;   {no_reloc}
   0.12%  ││ │      0x00007f39a46519ec:   movsbl 0x10(%rbx,%rcx,1),%ebx
   0.05%  ││ │      0x00007f39a46519f1:   xor    %bl,0x14(%r10,%rax,1)
   0.66%  ││ │      0x00007f39a46519f6:   movslq %edx,%rcx
   0.06%  ││ │      0x00007f39a46519f9:   mov    0x20(%rsp),%rbx
   0.39%  ││ │      0x00007f39a46519fe:   movsbl 0x14(%rbx,%rcx,1),%ebx
   0.14%  ││ │      0x00007f39a4651a03:   xor    %bl,0x15(%r10,%rax,1)
   0.82%  ││ │      0x00007f39a4651a08:   mov    0x20(%rsp),%rbx
   0.00%  ││ │      0x00007f39a4651a0d:   movsbl 0x10(%rbx,%r8,1),%ebx
   0.10%  ││ │      0x00007f39a4651a13:   xor    %bl,0x16(%r10,%rax,1)
   0.76%  ││ │      0x00007f39a4651a18:   mov    0x20(%rsp),%r8
   0.05%  ││ │      0x00007f39a4651a1d:   movsbl 0x16(%r8,%rcx,1),%ebx
   0.38%  ││ │      0x00007f39a4651a23:   xor    %bl,0x17(%r10,%rax,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                ; - java.security.MessageDigest::update@36 (line 347)
          ││ │                                                                ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││ │                                                                ; - javax.crypto.Mac::update@33 (line 504)
   1.49%  ││ │      0x00007f39a4651a28:   add    $0x8,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                ; - java.security.MessageDigest::update@36 (line 347)
          ││ │                                                                ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          ││ │                                                                ; - javax.crypto.Mac::update@33 (line 504)
   0.00%  ││ │      0x00007f39a4651a2b:   cmp    0x14(%rsp),%edi
          │╰ │      0x00007f39a4651a2f:   jl     0x00007f39a4651980           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                ; - java.util.Arrays::fill@17 (line 3287)
          │  │                                                                ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │  │                                                                ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │  │                                                                ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │  │                                                                ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                ; - com.sun.crypto.provider.HmacCore::engineUpdate@16 (line 193)
          │  │                                                                ; - javax.crypto.Mac::update@33 (line 504)
   0.01%  │  │      0x00007f39a4651a35:   mov    0x458(%r15),%r8
   0.01%  │  │      0x00007f39a4651a3c:   add    $0x7,%edx                    ; ImmutableOopMap {r10=Oop xmm0=Oop xmm1=Oop [0]=NarrowOop [32]=Oop }
          │  │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                ; - (reexecute) sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                ; - java.security.MessageDigest::update@36 (line 347)
          │  │                                                                ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │  │                                                                ; - javax.crypto.Mac::update@33 (line 504)
   0.03%  │  │      0x00007f39a4651a3f:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                ; - sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                ; - java.security.MessageDigest::update@36 (line 347)
          │  │                                                                ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │  │                                                                ; - javax.crypto.Mac::update@33 (line 504)
          │  │                                                                ;   {poll}
   0.00%  │  │      0x00007f39a4651a42:   cmp    0x10(%rsp),%edi
          │ ╭│      0x00007f39a4651a46:   jge    0x00007f39a4651a96
          │ ││      0x00007f39a4651a48:   vmovd  %xmm2,%ebp
          │ ││      0x00007f39a4651a4c:   vmovd  %xmm4,%r8d
          │ ││      0x00007f39a4651a51:   vmovd  %xmm6,%ecx
          │ ││      0x00007f39a4651a55:   vmovq  %xmm5,%rax
          │ ││      0x00007f39a4651a5a:   mov    0x10(%rsp),%edx
          │ ││   ↗  0x00007f39a4651a5e:   mov    %ecx,%esi
          │ ││   │  0x00007f39a4651a60:   sub    %edi,%esi
   0.06%  │ ││   │  0x00007f39a4651a62:   add    $0xfffffff9,%esi
   0.00%  │ ││   │  0x00007f39a4651a65:   xor    %ebx,%ebx
   0.00%  │ ││   │  0x00007f39a4651a67:   cmp    %edi,%edx
   0.00%  │ ││   │  0x00007f39a4651a69:   cmovl  %ebx,%esi
   0.04%  │ ││   │  0x00007f39a4651a6c:   cmp    $0x1f40,%esi
   0.01%  │ ││   │  0x00007f39a4651a72:   mov    $0x1f40,%ebx
          │ ││   │  0x00007f39a4651a77:   cmova  %ebx,%esi
   0.04%  │ ││   │  0x00007f39a4651a7a:   add    %edi,%esi
   0.01%  │ ││   │  0x00007f39a4651a7c:   vmovd  %ebp,%xmm2
   0.00%  │ ││   │  0x00007f39a4651a80:   vmovd  %ecx,%xmm6
          │ ││   │  0x00007f39a4651a84:   vmovq  %rax,%xmm5
   0.04%  │ ││   │  0x00007f39a4651a89:   mov    %edx,0x10(%rsp)
   0.01%  │ ││   │  0x00007f39a4651a8d:   mov    %esi,0x14(%rsp)
   0.00%  │ │╰   │  0x00007f39a4651a91:   jmp    0x00007f39a4651985
   0.01%  │ ↘    │  0x00007f39a4651a96:   vmovd  %xmm2,%ebp
   0.00%  │      │  0x00007f39a4651a9a:   vmovd  %xmm6,%ecx
   0.02%  │      │  0x00007f39a4651a9e:   vmovq  %xmm5,%rax
   0.00%  │      │  0x00007f39a4651aa3:   cmp    %ecx,%edi
          │   ╭  │  0x00007f39a4651aa5:   jge    0x00007f39a4651ac5
   0.01%  │   │  │  0x00007f39a4651aa7:   nop                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │  │                                                            ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          │   │  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │  │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   │  │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   │  │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.09%  │   │↗ │  0x00007f39a4651aa8:   movslq %edi,%r9                     ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   ││ │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          │   ││ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   ││ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   ││ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.10%  │   ││ │  0x00007f39a4651aab:   lea    (%rax,%r9,1),%r11
   0.08%  │   ││ │  0x00007f39a4651aaf:   mov    0x20(%rsp),%r8
   0.10%  │   ││ │  0x00007f39a4651ab4:   movsbl 0x10(%r8,%r11,1),%r8d
   0.11%  │   ││ │  0x00007f39a4651aba:   xor    %r8b,0x10(%r10,%r9,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │   ││ │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          │   ││ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   ││ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   ││ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.32%  │   ││ │  0x00007f39a4651abf:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││ │                                                            ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          │   ││ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││ │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │   ││ │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │   ││ │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.07%  │   ││ │  0x00007f39a4651ac1:   cmp    %ecx,%edi
          │   │╰ │  0x00007f39a4651ac3:   jl     0x00007f39a4651aa8
   0.00%  │   ↘  │  0x00007f39a4651ac5:   mov    0x4(%rsp),%r10d
   0.01%  │      │  0x00007f39a4651aca:   vmovq  %xmm0,%r13
   0.04%  │      │  0x00007f39a4651acf:   vmovq  %xmm1,%rdi
   0.01%  │      │  0x00007f39a4651ad4:   vmovd  %xmm3,%r9d
   0.01%  │      │  0x00007f39a4651ad9:   mov    %r9d,0x28(%rsp)
   0.00%  │      │  0x00007f39a4651ade:   mov    %rdi,0x18(%rsp)
   0.03%  │      │  0x00007f39a4651ae3:   mov    %r13,0x10(%rsp)
   0.01%  │      │  0x00007f39a4651ae8:   mov    %r10d,0x4(%rsp)              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
          │      │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.00%  │      │  0x00007f39a4651aed:   mov    %r13,%rsi
   0.01%  │      │  0x00007f39a4651af0:   vzeroupper 
   0.06%  │      │  0x00007f39a4651af3:   call   0x00007f39a46436e0           ; ImmutableOopMap {[0]=NarrowOop [16]=Oop [24]=Oop [32]=Oop }
          │      │                                                            ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      │                                                            ;   {optimized virtual_call}
   0.04%  │      │  0x00007f39a4651af8:   nopl   0x8000ee8(%rax,%rax,1)       ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      │                                                            ;   {other}
          │      │  0x00007f39a4651b00:   mov    0x10(%rsp),%r13
   0.00%  │      │  0x00007f39a4651b05:   add    0x1c(%r13),%ebp              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - java.util.Arrays::fill@17 (line 3287)
          │      │                                                            ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │      │                                                            ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │      │                                                            ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │      │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@16 (line 193)
          │      │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.04%  │      │  0x00007f39a4651b09:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r13=Oop [0]=NarrowOop [24]=Oop [32]=Oop }
          │      │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.00%  │      │  0x00007f39a4651b10:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      │                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │      │                                                            ;   {poll}
          │      │  0x00007f39a4651b13:   mov    0x2c(%r13),%r11d             ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - sun.security.provider.SHA3::implCompress0@4 (line 94)
          │      │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      │                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │      │                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │      │                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.00%  │      │  0x00007f39a4651b17:   cmp    0x28(%rsp),%ebp
   0.05%  │      │  0x00007f39a4651b1b:   nopl   0x0(%rax,%rax,1)
   0.00%  │     ╭│  0x00007f39a4651b20:   jg     0x00007f39a4651c05           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@2 (line 148)
          │     ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │     ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │     ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          │     ││  0x00007f39a4651b26:   lea    0x6(%rbp),%ecx
   0.00%  │     ││  0x00007f39a4651b29:   mov    %ebp,%r8d
   0.03%  │     ││  0x00007f39a4651b2c:   inc    %r8d
   0.00%  │     ││  0x00007f39a4651b2f:   lea    0x2(%rbp),%r9d
          │     ││  0x00007f39a4651b33:   lea    0x4(%rbp),%edi
   0.00%  │     ││  0x00007f39a4651b36:   mov    0x4(%rsp),%r10d
   0.05%  │     ││  0x00007f39a4651b3b:   mov    %ecx,0x50(%rsp)
   0.01%  │     ││  0x00007f39a4651b3f:   mov    %edi,0x54(%rsp)
   0.00%  │     ││  0x00007f39a4651b43:   mov    %r9d,0x58(%rsp)
   0.00%  │     ││  0x00007f39a4651b48:   mov    (%rsp),%ebx
   0.04%  │     ││  0x00007f39a4651b4b:   mov    0x8(%rsp),%rsi
   0.01%  │     ││  0x00007f39a4651b50:   mov    0x18(%rsp),%rdi
          │     ││  0x00007f39a4651b55:   mov    0x28(%rsp),%r9d              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@5 (line 149)
          │     ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
          │     ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
          │     ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
          ↘     ││  0x00007f39a4651b5a:   nopw   0x0(%rax,%rax,1)
   0.06%        ││  0x00007f39a4651b60:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f39a46522ac
                ││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - sun.security.provider.SHA3::implCompress0@7 (line 94)
                ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.00%        ││  0x00007f39a4651b65:   test   %ecx,%ecx
                ││  0x00007f39a4651b67:   jbe    0x00007f39a4651d7a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
                ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.00%        ││  0x00007f39a4651b6d:   vmovd  %r9d,%xmm3
   0.00%        ││  0x00007f39a4651b72:   vmovq  %rdi,%xmm1
   0.05%        ││  0x00007f39a4651b77:   mov    %rsi,0x8(%rsp)
   0.00%        ││  0x00007f39a4651b7c:   vmovq  %r13,%xmm0
                ││  0x00007f39a4651b81:   mov    %ebx,(%rsp)
   0.00%        ││  0x00007f39a4651b84:   mov    %r10d,0x4(%rsp)
   0.04%        ││  0x00007f39a4651b89:   mov    0x34(%r13),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - sun.security.provider.SHA3::implCompress0@12 (line 95)
                ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.01%        ││  0x00007f39a4651b8d:   mov    0xc(%r12,%rbx,8),%r10d       ; implicit exception: dispatches to 0x00007f39a4651dee
                ││                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
                ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.00%        ││  0x00007f39a4651b92:   test   %r10d,%r10d
                ││  0x00007f39a4651b95:   jbe    0x00007f39a4651dee
                ││  0x00007f39a4651b9b:   mov    %ecx,%r11d
   0.06%        ││  0x00007f39a4651b9e:   dec    %r11d
   0.00%        ││  0x00007f39a4651ba1:   cmp    %r10d,%r11d
                ││  0x00007f39a4651ba4:   jae    0x00007f39a4651dee
                ││  0x00007f39a4651baa:   cmp    0x4(%rsp),%ebp
                ││  0x00007f39a4651bae:   jae    0x00007f39a4651dee
                ││  0x00007f39a4651bb4:   movslq %ecx,%r10
   0.06%        ││  0x00007f39a4651bb7:   movslq %ebp,%rax                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - sun.security.provider.SHA3::implCompress0@23 (line 95)
                ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.00%        ││  0x00007f39a4651bba:   add    %rax,%r10
                ││  0x00007f39a4651bbd:   dec    %r10
   0.01%        ││  0x00007f39a4651bc0:   cmp    %rsi,%r10
                ││  0x00007f39a4651bc3:   jae    0x00007f39a4651dee
   0.04%        ││  0x00007f39a4651bc9:   mov    0x20(%rsp),%r10
                ││  0x00007f39a4651bce:   movsbl 0x10(%r10,%rax,1),%r10d
   0.01%        ││  0x00007f39a4651bd4:   xor    %r10b,0x10(%r12,%rbx,8)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
                ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                ││                                                            ; - java.security.MessageDigest::update@36 (line 347)
                ││                                                            ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                ││                                                            ; - javax.crypto.Mac::update@33 (line 504)
   0.05%        ││  0x00007f39a4651bd9:   lea    -0x7(%rcx),%edx
                ││  0x00007f39a4651bdc:   lea    (%r12,%rbx,8),%r10
                ││  0x00007f39a4651be0:   cmp    $0x1,%edx
                ││  0x00007f39a4651be3:   jle    0x00007f39a4651e18
   0.05%        ││  0x00007f39a4651be9:   movslq 0x50(%rsp),%r14
   0.00%        ││  0x00007f39a4651bee:   movslq %r8d,%r13
   0.00%        ││  0x00007f39a4651bf1:   movslq 0x58(%rsp),%r11
   0.00%        ││  0x00007f39a4651bf6:   movslq 0x54(%rsp),%r9
   0.05%        ││  0x00007f39a4651bfb:   mov    $0x1,%edi
   0.00%        │╰  0x00007f39a4651c00:   jmp    0x00007f39a4651a5e
   0.00%        ↘   0x00007f39a4651c05:   mov    0x4(%rsp),%r14d
   0.00%            0x00007f39a4651c0a:   sub    %ebp,%r14d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.DigestBase::engineUpdate@153 (line 131)
                                                                              ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                              ; - java.security.MessageDigest::update@36 (line 347)
                                                                              ; - com.sun.crypto.provider.HmacCore::engineUpdate@31 (line 198)
                                                                              ; - javax.crypto.Mac::update@33 (line 504)
                    0x00007f39a4651c0d:   mov    0x4(%rsp),%r10d              ;   {no_reloc}
                    0x00007f39a4651c12:   mov    (%rsp),%ebx                  ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.DigestBase::engineUpdate@155 (line 134)
                                                                              ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                              ; - java.security.MessageDigest::update@36 (line 347)
....................................................................................................
  12.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.57%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 661 
  12.47%         c2, level 4  javax.crypto.Mac::update, version 2, compile id 709 
   2.47%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 661 
   1.57%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 661 
   0.21%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  javax.crypto.Mac::update, version 2, compile id 709 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.09%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.61%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 661 
  12.61%         c2, level 4  javax.crypto.Mac::update, version 2, compile id 709 
   1.13%              kernel  [unknown] 
   0.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 712 
   0.09%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.11%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.52%         c2, level 4
   1.13%              kernel
   0.11%           libjvm.so
   0.09%        runtime stub
   0.09%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-512, length = 16384)

# Run progress: 91.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 176.588 us/op
# Warmup Iteration   2: 159.562 us/op
# Warmup Iteration   3: 159.503 us/op
# Warmup Iteration   4: 159.166 us/op
# Warmup Iteration   5: 159.178 us/op
Iteration   1: 159.181 us/op
Iteration   2: 159.191 us/op
Iteration   3: 159.191 us/op
Iteration   4: 159.195 us/op
Iteration   5: 159.171 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  159.186 ±(99.9%) 0.037 us/op [Average]
  (min, avg, max) = (159.171, 159.186, 159.195), stdev = 0.010
  CI (99.9%): [159.149, 159.223] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 159478 total address lines.
Perf output processed (skipped 56.559 seconds):
 Column 1: cycles (50838 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 640 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007f3f186433c8:   cmp    %edx,%r8d
          ╭         0x00007f3f186433cb:   jge    0x00007f3f186433d2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007f3f186433cd:   mov    %eax,%r10d
          │         0x00007f3f186433d0:   jmp    0x00007f3f186433ac
   0.06%  ↘         0x00007f3f186433d2:   vmovq  %xmm0,%rdi                   ;   {no_reloc}
   0.08%            0x00007f3f186433d7:   vmovd  %xmm2,%r11d
   0.11%            0x00007f3f186433dc:   vmovd  %xmm3,%r8d
   0.02%            0x00007f3f186433e1:   vmovd  %xmm1,%ecx
   0.05%            0x00007f3f186433e5:   mov    (%rsp),%r13
   0.07%            0x00007f3f186433e9:   vmovd  %xmm5,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.12%    ↗       0x00007f3f186433ed:   mov    0x458(%r15),%r14
   0.01%    │       0x00007f3f186433f4:   mov    %ebx,%r10d
   0.05%    │       0x00007f3f186433f7:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rbp=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.10%    │       0x00007f3f186433fa:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.15%    │       0x00007f3f186433fd:   data16 xchg %ax,%ax
   0.02%    │       0x00007f3f18643400:   cmp    $0x5,%r10d
           ╭│       0x00007f3f18643404:   jge    0x00007f3f186434a5
   0.05%   ││       0x00007f3f1864340a:   mov    %ebx,%edx
   0.08%   ││       0x00007f3f1864340c:   shl    $0x5,%edx
   0.10%   ││       0x00007f3f1864340f:   lea    (%rdx,%rbx,8),%r14d
   0.01%   ││       0x00007f3f18643413:   add    $0x28,%r14d
   0.06%   ││       0x00007f3f18643417:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%   ││       0x00007f3f1864341a:   lea    0x28(%r14),%edx
   0.14%   ││       0x00007f3f1864341e:   xchg   %ax,%ax
   0.02%   ││       0x00007f3f18643420:   cmp    %edx,%r14d
           │╰       0x00007f3f18643423:   jge    0x00007f3f186433ed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │        0x00007f3f18643425:   lea    (%rbx,%rbx,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.09%   │        0x00007f3f18643429:   cmp    %ecx,%r14d
           │        0x00007f3f1864342c:   jae    0x00007f3f18643de9
   0.11%   │        0x00007f3f18643432:   vmovd  %eax,%xmm5
   0.01%   │        0x00007f3f18643436:   mov    %r13,(%rsp)
   0.05%   │        0x00007f3f1864343a:   vmovd  %ecx,%xmm1
   0.09%   │        0x00007f3f1864343e:   vmovd  %r8d,%xmm3
   0.14%   │        0x00007f3f18643443:   movslq %r14d,%r8
   0.03%   │        0x00007f3f18643446:   add    $0x20,%r8
   0.04%   │        0x00007f3f1864344a:   cmp    %r13,%r8
           │        0x00007f3f1864344d:   jae    0x00007f3f18643de4
   0.10%   │        0x00007f3f18643453:   vmovd  %r11d,%xmm2
   0.12%   │        0x00007f3f18643458:   vmovq  %rdi,%xmm0
   0.02%   │        0x00007f3f1864345d:   lea    0x8(%r14),%r11d
   0.05%   │        0x00007f3f18643461:   mov    %r14d,%r8d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.11%   │  ↗     0x00007f3f18643464:   mov    0x10(%r9,%r8,1),%rdi         ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.13%   │  │     0x00007f3f18643469:   mov    %r10d,%eax
   0.01%   │  │     0x00007f3f1864346c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.08%   │  │     0x00007f3f1864346e:   cmp    %esi,%r10d
           │  │     0x00007f3f18643471:   jae    0x00007f3f18643d44
   0.11%   │  │     0x00007f3f18643477:   mov    %rdi,0x10(%rbp,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.11%   │  │     0x00007f3f1864347c:   lea    0x8(%r8),%ecx
   0.02%   │  │     0x00007f3f18643480:   cmp    %r11d,%ecx
           │ ╭│     0x00007f3f18643483:   jge    0x00007f3f1864348d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007f3f18643485:   mov    %ecx,%r8d
           │ ││     0x00007f3f18643488:   mov    %eax,%r10d
           │ │╰     0x00007f3f1864348b:   jmp    0x00007f3f18643464
   0.05%   │ ↘      0x00007f3f1864348d:   lea    0x10(%r14),%r11d
   0.08%   │        0x00007f3f18643491:   cmp    %r11d,%ecx
           │        0x00007f3f18643494:   jge    0x00007f3f18643e20
   0.12%   │        0x00007f3f1864349a:   add    $0x8,%r8d
   0.02%   │        0x00007f3f1864349e:   xchg   %ax,%ax
   0.03%   │        0x00007f3f186434a0:   jmp    0x00007f3f18643353
   0.01%   ↘        0x00007f3f186434a5:   mov    0x38(%rdi),%r10d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.02%            0x00007f3f186434a9:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f3f18643ebc
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.03%            0x00007f3f186434ae:   cmp    $0x18,%r11d
                    0x00007f3f186434b2:   jbe    0x00007f3f18643e88
   0.00%            0x00007f3f186434b8:   mov    %r11d,(%rsp)
   0.01%            0x00007f3f186434bc:   vmovd  %eax,%xmm2
   0.01%            0x00007f3f186434c0:   vmovq  %rdi,%xmm0
   0.02%            0x00007f3f186434c5:   mov    0x40(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.00%            0x00007f3f186434ca:   mov    %r11,0x8(%rsp)
   0.01%            0x00007f3f186434cf:   mov    0x20(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.02%            0x00007f3f186434d4:   vmovq  %r11,%xmm3
   0.03%            0x00007f3f186434d9:   mov    0xd0(%r12,%r10,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.01%            0x00007f3f186434e1:   mov    0xa8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.02%            0x00007f3f186434e9:   mov    %r11,0x10(%rsp)
   0.03%            0x00007f3f186434ee:   mov    0x80(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.03%            0x00007f3f186434f6:   mov    %r11,0x18(%rsp)              ;   {no_reloc}
   0.01%            0x00007f3f186434fb:   mov    0x58(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.01%            0x00007f3f18643500:   mov    %r11,0x20(%rsp)
   0.01%            0x00007f3f18643505:   mov    0x30(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
   0.03%            0x00007f3f1864350a:   vmovq  %r11,%xmm4
                    0x00007f3f1864350f:   mov    0xb8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
   0.01%            0x00007f3f18643517:   mov    %r11,0x28(%rsp)
   0.02%            0x00007f3f1864351c:   mov    0x90(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
   0.03%            0x00007f3f18643524:   mov    %r11,0x30(%rsp)
   0.00%            0x00007f3f18643529:   mov    0x68(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.02%            0x00007f3f1864352e:   mov    %r11,0x38(%rsp)
   0.01%            0x00007f3f18643533:   vmovd  %r10d,%xmm1
   0.04%            0x00007f3f18643538:   mov    0x18(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
                    0x00007f3f1864353d:   vmovq  %r10,%xmm5
   0.01%            0x00007f3f18643542:   vmovd  %xmm1,%r10d
   0.02%            0x00007f3f18643547:   mov    0xc8(%r12,%r10,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
   0.03%            0x00007f3f1864354f:   mov    0xa0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
                    0x00007f3f18643557:   mov    %r10,0x40(%rsp)
   0.01%            0x00007f3f1864355c:   vmovd  %xmm1,%r10d
   0.02%            0x00007f3f18643561:   mov    0x78(%r12,%r10,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.02%            0x00007f3f18643566:   mov    0x28(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.01%            0x00007f3f1864356b:   vmovq  %r10,%xmm6
   0.01%            0x00007f3f18643570:   vmovd  %xmm1,%r10d
   0.01%            0x00007f3f18643575:   mov    0xb0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
   0.04%            0x00007f3f1864357d:   mov    %r10,0x48(%rsp)
   0.00%            0x00007f3f18643582:   vmovd  %xmm1,%r11d
   0.01%            0x00007f3f18643587:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.02%            0x00007f3f1864358f:   mov    %r10,0x50(%rsp)
   0.03%            0x00007f3f18643594:   mov    %r11d,%r10d
                    0x00007f3f18643597:   mov    0x60(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.01%            0x00007f3f1864359c:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.02%            0x00007f3f186435a1:   mov    %r11,0x58(%rsp)
   0.03%            0x00007f3f186435a6:   vmovd  %xmm1,%r9d
   0.00%            0x00007f3f186435ab:   mov    0x10(%r12,%r9,8),%rbx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
                    0x00007f3f186435b0:   mov    0xc0(%r12,%r9,8),%r11        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.02%            0x00007f3f186435b8:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
   0.02%            0x00007f3f186435c0:   mov    %r9,0x60(%rsp)
   0.00%            0x00007f3f186435c5:   vmovd  %xmm1,%r9d
   0.02%            0x00007f3f186435ca:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.01%            0x00007f3f186435cf:   mov    %r9,0x68(%rsp)
   0.01%            0x00007f3f186435d4:   vmovd  %xmm1,%r9d
                    0x00007f3f186435d9:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.01%            0x00007f3f186435de:   mov    %r9,0x70(%rsp)
   0.02%            0x00007f3f186435e3:   vmovd  %xmm1,%r9d
   0.03%            0x00007f3f186435e8:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.01%            0x00007f3f186435ed:   mov    %r9,0x78(%rsp)
   0.01%            0x00007f3f186435f2:   xor    %r9d,%r9d
   0.01%            0x00007f3f186435f5:   vmovd  %r9d,%xmm12                  ;   {no_reloc}
   0.02%       ╭    0x00007f3f186435fa:   jmp    0x00007f3f18643617
               │    0x00007f3f186435fc:   nopl   0x0(%rax)
   0.29%       │↗   0x00007f3f18643600:   mov    %rcx,0x28(%rsp)
   0.48%       ││   0x00007f3f18643605:   mov    %rax,%rcx
   0.15%       ││   0x00007f3f18643608:   mov    %r13,0x38(%rsp)
   0.42%       ││   0x00007f3f1864360d:   vmovq  %xmm7,%r10
   0.25%       ││   0x00007f3f18643612:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.42%       ↘│   0x00007f3f18643617:   vmovq  %xmm5,%rdi
   0.14%        │   0x00007f3f1864361c:   xor    0x8(%rsp),%rdi
   0.43%        │   0x00007f3f18643621:   xor    0x38(%rsp),%rdi
   0.35%        │   0x00007f3f18643626:   xor    0x30(%rsp),%rdi
   0.53%        │   0x00007f3f1864362b:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.25%        │   0x00007f3f18643630:   vmovq  %xmm3,%r9
   0.35%        │   0x00007f3f18643635:   xor    0x70(%rsp),%r9
   0.27%        │   0x00007f3f1864363a:   xor    0x68(%rsp),%r9
   0.42%        │   0x00007f3f1864363f:   xor    0x60(%rsp),%r9
   0.24%        │   0x00007f3f18643644:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.37%        │   0x00007f3f18643647:   rorx   $0x3f,%rdi,%rbp
   0.29%        │   0x00007f3f1864364d:   rorx   $0x3f,%r9,%rsi
   0.38%        │   0x00007f3f18643653:   vmovq  %rsi,%xmm7
   0.34%        │   0x00007f3f18643658:   vmovq  %xmm4,%rsi
   0.39%        │   0x00007f3f1864365d:   xor    0x20(%rsp),%rsi
   0.28%        │   0x00007f3f18643662:   xor    0x18(%rsp),%rsi
   0.43%        │   0x00007f3f18643667:   xor    0x10(%rsp),%rsi
   0.25%        │   0x00007f3f1864366c:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.37%        │   0x00007f3f1864366f:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.22%        │   0x00007f3f18643672:   rorx   $0x3f,%rsi,%rax
   0.44%        │   0x00007f3f18643678:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.25%        │   0x00007f3f1864367b:   vmovq  %xmm6,%r9
   0.36%        │   0x00007f3f18643680:   xor    0x78(%rsp),%r9
   0.26%        │   0x00007f3f18643685:   xor    %rdx,%r9
   0.40%        │   0x00007f3f18643688:   xor    0x40(%rsp),%r9
   0.31%        │   0x00007f3f1864368d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.32%        │   0x00007f3f18643690:   mov    0x78(%rsp),%rsi
   0.23%        │   0x00007f3f18643695:   xor    %rax,%rsi
   0.50%        │   0x00007f3f18643698:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.29%        │   0x00007f3f1864369e:   rorx   $0x3f,%r9,%r13
   0.33%        │   0x00007f3f186436a4:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.26%        │   0x00007f3f186436a7:   vmovq  %xmm6,%rdi
   0.41%        │   0x00007f3f186436ac:   xor    %rax,%rdi
   0.29%        │   0x00007f3f186436af:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.34%        │   0x00007f3f186436b5:   mov    %rdi,0x80(%rsp)
   0.45%        │   0x00007f3f186436bd:   xor    %r13,%r11
   0.39%        │   0x00007f3f186436c0:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.22%        │   0x00007f3f186436c6:   mov    %r11,0xc0(%rsp)
   0.52%        │   0x00007f3f186436ce:   vmovq  %xmm3,%r11
   0.29%        │   0x00007f3f186436d3:   xor    %r13,%r11
   0.31%        │   0x00007f3f186436d6:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.22%        │   0x00007f3f186436dc:   mov    %r11,0x88(%rsp)
   0.54%        │   0x00007f3f186436e4:   mov    0xc0(%rsp),%r11
   0.74%        │   0x00007f3f186436ec:   andn   %rdi,%r11,%r11
   0.65%        │   0x00007f3f186436f1:   vmovq  %r11,%xmm3
   1.20%        │   0x00007f3f186436f6:   mov    0x88(%rsp),%r11              ;   {no_reloc}
   0.54%        │   0x00007f3f186436fe:   andn   %rsi,%r11,%r11
   0.27%        │   0x00007f3f18643703:   vmovq  %r11,%xmm8
   1.29%        │   0x00007f3f18643708:   mov    0x60(%rsp),%r11
   0.24%        │   0x00007f3f1864370d:   xor    %r13,%r11
   0.11%        │   0x00007f3f18643710:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
   0.15%        │   0x00007f3f18643716:   mov    %r11,0x90(%rsp)
   0.78%        │   0x00007f3f1864371e:   mov    0x68(%rsp),%r11
   0.22%        │   0x00007f3f18643723:   xor    %r13,%r11
   0.11%        │   0x00007f3f18643726:   mov    0x70(%rsp),%rdi
   0.13%        │   0x00007f3f1864372b:   xor    %r13,%rdi
   0.83%        │   0x00007f3f1864372e:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.26%        │   0x00007f3f18643734:   mov    %r11,0x98(%rsp)
   0.11%        │   0x00007f3f1864373c:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.14%        │   0x00007f3f18643742:   mov    %r11,0xa0(%rsp)
   0.83%        │   0x00007f3f1864374a:   mov    0x40(%rsp),%r11
   0.24%        │   0x00007f3f1864374f:   xor    %rax,%r11
   0.13%        │   0x00007f3f18643752:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.15%        │   0x00007f3f18643758:   xor    %rax,%r8
   0.81%        │   0x00007f3f1864375b:   xor    %rax,%rdx
   0.24%        │   0x00007f3f1864375e:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.09%        │   0x00007f3f18643764:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.18%        │   0x00007f3f1864376a:   mov    0x98(%rsp),%r8
   0.92%        │   0x00007f3f18643772:   andn   %r11,%r8,%r8
   0.27%        │   0x00007f3f18643777:   vmovq  %r8,%xmm9
   0.23%        │   0x00007f3f1864377c:   mov    0xa0(%rsp),%r8
   0.18%        │   0x00007f3f18643784:   andn   %rdx,%r8,%r8
   0.80%        │   0x00007f3f18643789:   vmovq  %r8,%xmm10
   0.39%        │   0x00007f3f1864378e:   mov    0x90(%rsp),%r8
   0.16%        │   0x00007f3f18643796:   andn   %rdi,%r8,%r8
   0.13%        │   0x00007f3f1864379b:   vmovq  %r8,%xmm11
   0.75%        │   0x00007f3f186437a0:   mov    0x50(%rsp),%r8
   0.26%        │   0x00007f3f186437a5:   xor    %rbp,%r8
   0.17%        │   0x00007f3f186437a8:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.14%        │   0x00007f3f186437ae:   mov    %r8,0xa8(%rsp)
   0.78%        │   0x00007f3f186437b6:   mov    0x58(%rsp),%r8
   0.29%        │   0x00007f3f186437bb:   xor    %rbp,%r8
   0.16%        │   0x00007f3f186437be:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.12%        │   0x00007f3f186437c4:   mov    %rbx,%r8
   0.72%        │   0x00007f3f186437c7:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.27%        │   0x00007f3f186437ca:   mov    %r8,0xb0(%rsp)
   0.15%        │   0x00007f3f186437d2:   mov    %r10,%r13
   0.12%        │   0x00007f3f186437d5:   xor    %rbp,%r13
   0.82%        │   0x00007f3f186437d8:   mov    0x48(%rsp),%r8
   0.30%        │   0x00007f3f186437dd:   xor    %rbp,%r8
   0.16%        │   0x00007f3f186437e0:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.13%        │   0x00007f3f186437e6:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.78%        │   0x00007f3f186437ec:   xor    0x58(%rsp),%rbx
   0.28%        │   0x00007f3f186437f1:   xor    %r10,%rbx
   0.15%        │   0x00007f3f186437f4:   xor    0x50(%rsp),%rbx              ;   {no_reloc}
   0.09%        │   0x00007f3f186437f9:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.68%        │   0x00007f3f186437fe:   vmovq  %xmm7,%r10
   0.33%        │   0x00007f3f18643803:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.16%        │   0x00007f3f18643806:   mov    %r10,0xb8(%rsp)
   0.15%        │   0x00007f3f1864380e:   rorx   $0x3f,%rbx,%r8
   0.73%        │   0x00007f3f18643814:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.30%        │   0x00007f3f18643817:   mov    0x30(%rsp),%r10
   0.18%        │   0x00007f3f1864381c:   xor    0xb8(%rsp),%r10
   0.36%        │   0x00007f3f18643824:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.86%        │   0x00007f3f1864382a:   vmovq  %xmm3,%r9
   0.27%        │   0x00007f3f1864382f:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.31%        │   0x00007f3f18643832:   mov    %r9,0x78(%rsp)
   0.93%        │   0x00007f3f18643837:   xor    %r8,%rcx
   0.47%        │   0x00007f3f1864383a:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.25%        │   0x00007f3f18643840:   andn   0xc0(%rsp),%r10,%rcx
   0.11%        │   0x00007f3f1864384a:   andn   %r10,%rbp,%r10
   0.53%        │   0x00007f3f1864384f:   vmovq  %r10,%xmm7
   0.45%        │   0x00007f3f18643854:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.25%        │   0x00007f3f18643857:   mov    %rcx,0x70(%rsp)
   0.61%        │   0x00007f3f1864385c:   andn   0xb0(%rsp),%r9,%r10
   0.35%        │   0x00007f3f18643866:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.43%        │   0x00007f3f18643869:   vmovq  %r10,%xmm6
   0.23%        │   0x00007f3f1864386e:   andn   %r9,%r11,%r10
   0.40%        │   0x00007f3f18643873:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.25%        │   0x00007f3f1864387b:   vmovq  %r10,%xmm3
   0.50%        │   0x00007f3f18643880:   mov    0x18(%rsp),%r10
   0.23%        │   0x00007f3f18643885:   xor    %r8,%r10
   0.37%        │   0x00007f3f18643888:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.28%        │   0x00007f3f1864388e:   mov    0x10(%rsp),%r10
   0.45%        │   0x00007f3f18643893:   xor    %r8,%r10
   0.20%        │   0x00007f3f18643896:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.32%        │   0x00007f3f1864389c:   andn   %rbx,%rsi,%r11
   0.25%        │   0x00007f3f186438a1:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.49%        │   0x00007f3f186438a9:   mov    %r11,0x48(%rsp)
   0.39%        │   0x00007f3f186438ae:   andn   %r10,%rdx,%r13
   0.34%        │   0x00007f3f186438b3:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.22%        │   0x00007f3f186438bb:   andn   %r14,%r10,%r11
   0.45%        │   0x00007f3f186438c0:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.32%        │   0x00007f3f186438c3:   mov    %r11,0x68(%rsp)
   0.55%        │   0x00007f3f186438c8:   andn   0xa8(%rsp),%rbx,%rcx
   0.21%        │   0x00007f3f186438d2:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.37%        │   0x00007f3f186438d5:   vmovq  %xmm4,%r11
   0.26%        │   0x00007f3f186438da:   xor    %r8,%r11
   0.44%        │   0x00007f3f186438dd:   mov    0x20(%rsp),%rdx
   0.20%        │   0x00007f3f186438e2:   xor    %r8,%rdx
   0.43%        │   0x00007f3f186438e5:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.28%        │   0x00007f3f186438eb:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.39%        │   0x00007f3f186438f1:   andn   %rbp,%r8,%rdx                ;   {no_reloc}
   0.19%        │   0x00007f3f186438f6:   mov    %rdx,%rsi
   0.43%        │   0x00007f3f186438f9:   vmovq  %xmm7,%rdx
   0.31%        │   0x00007f3f186438fe:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.44%        │   0x00007f3f18643901:   mov    %rdx,%rbp
   0.23%        │   0x00007f3f18643904:   mov    0x80(%rsp),%rdx
   0.39%        │   0x00007f3f1864390c:   andn   %r8,%rdx,%r8
   0.35%        │   0x00007f3f18643911:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.46%        │   0x00007f3f18643919:   mov    %r8,0x20(%rsp)
   0.24%        │   0x00007f3f1864391e:   mov    %rsi,%r8
   0.38%        │   0x00007f3f18643921:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.28%        │   0x00007f3f18643924:   mov    %r8,0x58(%rsp)
   0.39%        │   0x00007f3f18643929:   andn   %r11,%rdi,%r8
   0.19%        │   0x00007f3f1864392e:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.44%        │   0x00007f3f18643936:   mov    %r8,0x40(%rsp)
   0.33%        │   0x00007f3f1864393b:   andn   %rax,%r11,%r8
   0.45%        │   0x00007f3f18643940:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.19%        │   0x00007f3f18643943:   mov    %r8,0x10(%rsp)
   0.45%        │   0x00007f3f18643948:   mov    0x38(%rsp),%r8
   0.26%        │   0x00007f3f1864394d:   xor    0xb8(%rsp),%r8
   0.42%        │   0x00007f3f18643955:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.20%        │   0x00007f3f1864395b:   vmovq  %xmm11,%r8
   0.40%        │   0x00007f3f18643960:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.31%        │   0x00007f3f18643963:   mov    %r8,0x60(%rsp)
   0.60%        │   0x00007f3f18643968:   andn   0x90(%rsp),%rdi,%r8
   0.20%        │   0x00007f3f18643972:   andn   %rdi,%rax,%rdi
   0.41%        │   0x00007f3f18643977:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.30%        │   0x00007f3f1864397a:   mov    %rdi,0x50(%rsp)
   0.56%        │   0x00007f3f1864397f:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.19%        │   0x00007f3f18643982:   mov    %r8,0x30(%rsp)
   0.48%        │   0x00007f3f18643987:   mov    0x28(%rsp),%r11
   0.27%        │   0x00007f3f1864398c:   xor    0xb8(%rsp),%r11
   0.43%        │   0x00007f3f18643994:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.20%        │   0x00007f3f1864399a:   andn   0x88(%rsp),%rdi,%r8
   0.43%        │   0x00007f3f186439a4:   vmovq  %xmm8,%r11
   0.27%        │   0x00007f3f186439a9:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.46%        │   0x00007f3f186439ac:   mov    %r11,%rax
   0.16%        │   0x00007f3f186439af:   mov    0xa8(%rsp),%r11
   0.42%        │   0x00007f3f186439b7:   andn   %rdi,%r11,%r11
   0.25%        │   0x00007f3f186439bc:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.45%        │   0x00007f3f186439bf:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.20%        │   0x00007f3f186439c7:   vmovq  %xmm5,%rbx
   0.39%        │   0x00007f3f186439cc:   xor    0xb8(%rsp),%rbx
   0.25%        │   0x00007f3f186439d4:   mov    0x8(%rsp),%rsi
   0.45%        │   0x00007f3f186439d9:   xor    0xb8(%rsp),%rsi
   0.18%        │   0x00007f3f186439e1:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.44%        │   0x00007f3f186439e7:   andn   0xa0(%rsp),%rbx,%rdi
   0.21%        │   0x00007f3f186439f1:   vmovq  %xmm10,%rdx                  ;   {no_reloc}
   0.46%        │   0x00007f3f186439f6:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.19%        │   0x00007f3f186439f9:   vmovq  %rdx,%xmm7
   0.42%        │   0x00007f3f186439fe:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.27%        │   0x00007f3f18643a01:   mov    %rdi,0x18(%rsp)
   0.44%        │   0x00007f3f18643a06:   andn   %rbx,%r14,%rdx
   0.18%        │   0x00007f3f18643a0b:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
   0.44%        │   0x00007f3f18643a0e:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.25%        │   0x00007f3f18643a14:   vmovq  %xmm9,%rbx
   0.39%        │   0x00007f3f18643a19:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.14%        │   0x00007f3f18643a1c:   vmovq  %rbx,%xmm5
   0.37%        │   0x00007f3f18643a21:   andn   0x98(%rsp),%r10,%rbx
   0.27%        │   0x00007f3f18643a2b:   mov    0xb0(%rsp),%rdi
   0.50%        │   0x00007f3f18643a33:   andn   %r10,%rdi,%r10
   0.21%        │   0x00007f3f18643a38:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.47%        │   0x00007f3f18643a3b:   vmovq  %r10,%xmm4
   0.31%        │   0x00007f3f18643a40:   xor    %rdi,%rbx
   0.45%        │   0x00007f3f18643a43:   movabs $0x7ff12aa08,%r9             ;   {oop([J{0x00000007ff12aa08})}
   0.16%        │   0x00007f3f18643a4d:   vmovd  %xmm12,%r10d
   0.39%        │   0x00007f3f18643a52:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.26%        │   0x00007f3f18643a57:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.43%        │   0x00007f3f18643a5a:   vmovd  %r10d,%xmm12
   0.21%        │   0x00007f3f18643a5f:   nop
   0.42%        │   0x00007f3f18643a60:   cmp    $0x18,%r10d
                ╰   0x00007f3f18643a64:   jl     0x00007f3f18643600           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.01%            0x00007f3f18643a6a:   vmovd  %xmm1,%r10d
   0.02%            0x00007f3f18643a6f:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
   0.01%            0x00007f3f18643a74:   mov    %r10d,%r9d
   0.02%            0x00007f3f18643a77:   vmovq  %xmm5,%r10
   0.01%            0x00007f3f18643a7c:   mov    %r10,0x18(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.02%            0x00007f3f18643a81:   mov    %r9d,%r10d
   0.01%            0x00007f3f18643a84:   vmovq  %xmm3,%r9
   0.01%            0x00007f3f18643a89:   mov    %r9,0x20(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007f3f18643a8e:   mov    %r10d,%r9d
   0.02%            0x00007f3f18643a91:   vmovq  %xmm6,%r10
   0.01%            0x00007f3f18643a96:   mov    %r10,0x28(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.02%            0x00007f3f18643a9b:   mov    %r9d,%r10d
   0.02%            0x00007f3f18643a9e:   vmovq  %xmm4,%r9
   0.02%            0x00007f3f18643aa3:   mov    %r9,0x30(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.01%            0x00007f3f18643aa8:   mov    %r10d,%r9d
   0.01%            0x00007f3f18643aab:   mov    0x58(%rsp),%r10
   0.01%            0x00007f3f18643ab0:   mov    %r10,0x38(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.01%            0x00007f3f18643ab5:   mov    %r9d,%r10d
   0.01%            0x00007f3f18643ab8:   mov    %rbp,0x40(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.01%            0x00007f3f18643abd:   mov    %r10d,%r9d
   0.01%            0x00007f3f18643ac0:   mov    0x70(%rsp),%r10
   0.02%            0x00007f3f18643ac5:   mov    %r10,0x48(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
   0.01%            0x00007f3f18643aca:   mov    %r9d,%r10d
   0.01%            0x00007f3f18643acd:   mov    0x78(%rsp),%r9
   0.02%            0x00007f3f18643ad2:   mov    %r9,0x50(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.01%            0x00007f3f18643ad7:   mov    %r10d,%r9d
   0.01%            0x00007f3f18643ada:   mov    0x20(%rsp),%r10
   0.02%            0x00007f3f18643adf:   mov    %r10,0x58(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.01%            0x00007f3f18643ae4:   mov    %r9d,%r10d
   0.02%            0x00007f3f18643ae7:   vmovq  %xmm7,%r9
   0.00%            0x00007f3f18643aec:   mov    %r9,0x60(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.02%            0x00007f3f18643af1:   mov    %r13,0x68(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.02%            0x00007f3f18643af6:   mov    %r10d,%r9d
   0.01%            0x00007f3f18643af9:   mov    0x68(%rsp),%r10
   0.01%            0x00007f3f18643afe:   mov    %r10,0x70(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.03%            0x00007f3f18643b03:   mov    %r9d,%r10d
   0.01%            0x00007f3f18643b06:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.02%            0x00007f3f18643b0b:   mov    0x18(%rsp),%r10
   0.01%            0x00007f3f18643b10:   mov    %r10,0x80(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.03%            0x00007f3f18643b18:   mov    %r9d,%r10d
   0.01%            0x00007f3f18643b1b:   mov    0x50(%rsp),%r9
   0.01%            0x00007f3f18643b20:   mov    %r9,0x88(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.01%            0x00007f3f18643b28:   mov    %r10d,%r9d
   0.01%            0x00007f3f18643b2b:   mov    0x30(%rsp),%r10
   0.02%            0x00007f3f18643b30:   mov    %r10,0x90(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.02%            0x00007f3f18643b38:   mov    %r9d,%r10d
   0.00%            0x00007f3f18643b3b:   mov    0x60(%rsp),%r9
   0.03%            0x00007f3f18643b40:   mov    %r9,0x98(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
                                                                              ;   {no_reloc}
   0.02%            0x00007f3f18643b48:   mov    %r10d,%r9d
   0.01%            0x00007f3f18643b4b:   mov    0x40(%rsp),%r10
   0.02%            0x00007f3f18643b50:   mov    %r10,0xa0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.03%            0x00007f3f18643b58:   mov    %r9d,%r10d
   0.00%            0x00007f3f18643b5b:   mov    0x10(%rsp),%r9
   0.02%            0x00007f3f18643b60:   mov    %r9,0xa8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.01%            0x00007f3f18643b68:   mov    %r10d,%r9d
   0.01%            0x00007f3f18643b6b:   mov    0x48(%rsp),%r10
   0.01%            0x00007f3f18643b70:   mov    %r10,0xb0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.02%            0x00007f3f18643b78:   mov    %rcx,0xb8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.03%            0x00007f3f18643b80:   mov    %r9d,%r10d
   0.01%            0x00007f3f18643b83:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.03%            0x00007f3f18643b8b:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.03%            0x00007f3f18643b93:   mov    %rax,0xd0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.03%            0x00007f3f18643b9b:   vmovq  %xmm0,%r10
   0.00%            0x00007f3f18643ba0:   mov    0x34(%r10),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
   0.01%            0x00007f3f18643ba4:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f3f18643ea4
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f3f18643ba9:   lea    -0x7(%r11),%eax
   0.03%            0x00007f3f18643bad:   test   %eax,%eax
                    0x00007f3f18643baf:   jl     0x00007f3f18643ea4
   0.01%            0x00007f3f18643bb5:   movslq %r11d,%r14
   0.01%            0x00007f3f18643bb8:   mov    %r9d,%ecx
   0.01%            0x00007f3f18643bbb:   lea    (%r12,%r9,8),%r10
   0.03%            0x00007f3f18643bbf:   add    $0xfffffffffffffff9,%r14
   0.01%            0x00007f3f18643bc3:   lea    (%r12,%rbx,8),%r11
   0.00%            0x00007f3f18643bc7:   xor    %edi,%edi
   0.01%            0x00007f3f18643bc9:   jmp    0x00007f3f18643ca1
                    0x00007f3f18643bce:   xchg   %ax,%ax
                 ↗  0x00007f3f18643bd0:   mov    %edx,%edi
                 │  0x00007f3f18643bd2:   vmovd  %xmm1,%edx                   ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.11%         │  0x00007f3f18643bd6:   mov    %r13d,%r9d
   0.08%         │  0x00007f3f18643bd9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f3f18643bdc:   nopl   0x0(%rax)
   0.07%         │  0x00007f3f18643be0:   cmp    (%rsp),%r13d
                 │  0x00007f3f18643be4:   jae    0x00007f3f18643d8c
   0.09%         │  0x00007f3f18643bea:   vmovd  %edx,%xmm1
   0.06%         │  0x00007f3f18643bee:   mov    %edi,%edx
   0.07%         │  0x00007f3f18643bf0:   mov    0x10(%r10,%r13,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f3f18643bf5:   movslq %r8d,%rbp                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.10%         │  0x00007f3f18643bf8:   mov    %rdi,0x10(%r11,%rbp,1)       ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f3f18643bfd:   lea    0x3(%r13),%edi
   0.07%         │  0x00007f3f18643c01:   cmp    (%rsp),%edi
                 │  0x00007f3f18643c04:   jae    0x00007f3f18643d97
   0.07%         │  0x00007f3f18643c0a:   movslq %r13d,%rdi
   0.11%         │  0x00007f3f18643c0d:   mov    0x18(%r10,%rdi,8),%r9        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f3f18643c12:   mov    %r9,0x18(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f3f18643c17:   mov    0x28(%r10,%rdi,8),%r9
   0.05%         │  0x00007f3f18643c1c:   mov    0x20(%r10,%rdi,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.10%         │  0x00007f3f18643c21:   mov    %rdi,0x20(%r11,%rbp,1)
   0.05%         │  0x00007f3f18643c26:   mov    %r9,0x28(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f3f18643c2b:   add    $0x4,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f3f18643c2f:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f3f18643c33:   cmp    %esi,%r8d
                 ╰  0x00007f3f18643c36:   jl     0x00007f3f18643bd0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%            0x00007f3f18643c38:   mov    %edx,%edi
   0.07%            0x00007f3f18643c3a:   vmovd  %xmm1,%edx
   0.05%            0x00007f3f18643c3e:   xchg   %ax,%ax
   0.09%            0x00007f3f18643c40:   cmp    %edx,%r8d                    ;   {no_reloc}
                    0x00007f3f18643c43:   jge    0x00007f3f18643c6f
                    0x00007f3f18643c45:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f3f18643c48:   mov    %r13d,%ebp
                    0x00007f3f18643c4b:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  84.40%  <total for region 1>

....[Hottest Regions]...............................................................................
  84.40%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 640 
   8.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 691 
   2.45%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 640 
   1.75%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 640 
   0.52%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 691 
   0.03%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%         c2, level 4  javax.crypto.Mac::doFinal, version 2, compile id 689 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 691 
   1.20%  <...other 351 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.60%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 640 
   8.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 691 
   1.89%              kernel  [unknown] 
   0.22%         c2, level 4  javax.crypto.Mac::doFinal, version 2, compile id 689 
   0.04%                      <unknown> 
   0.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 731 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  os::write 
   0.00%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.15%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.75%         c2, level 4
   1.89%              kernel
   0.15%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.04%        runtime stub
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-1937298.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:21:57

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

Benchmark                       (algorithm)  (length)  Mode  Cnt    Score   Error  Units
HmacCryptoBenchmark.mac             HmacMD5     16384  avgt    5   30.986 ± 0.020  us/op
HmacCryptoBenchmark.mac:asm         HmacMD5     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac            HmacSHA1     16384  avgt    5   69.070 ± 0.082  us/op
HmacCryptoBenchmark.mac:asm        HmacSHA1     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA224     16384  avgt    5   55.667 ± 0.041  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA256     16384  avgt    5   55.687 ± 0.034  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA384     16384  avgt    5   39.365 ± 0.038  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA384     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA512     16384  avgt    5   39.663 ± 0.033  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA512     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac      HmacSHA512/224     16384  avgt    5   39.341 ± 0.102  us/op
HmacCryptoBenchmark.mac:asm  HmacSHA512/224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac      HmacSHA512/256     16384  avgt    5   39.396 ± 0.011  us/op
HmacCryptoBenchmark.mac:asm  HmacSHA512/256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-224     16384  avgt    5   85.996 ± 0.061  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-256     16384  avgt    5   92.192 ± 0.067  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-384     16384  avgt    5  116.105 ± 0.070  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-384     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-512     16384  avgt    5  159.186 ± 0.037  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-512     16384  avgt           NaN            ---
