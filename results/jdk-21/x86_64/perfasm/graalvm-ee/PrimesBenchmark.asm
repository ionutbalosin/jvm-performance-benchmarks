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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve
# Parameters: (n = 8388608)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.117 ms/op
# Warmup Iteration   2: 27.915 ms/op
# Warmup Iteration   3: 28.019 ms/op
# Warmup Iteration   4: 28.105 ms/op
# Warmup Iteration   5: 28.328 ms/op
Iteration   1: 30.496 ms/op
Iteration   2: 27.940 ms/op
Iteration   3: 27.911 ms/op
Iteration   4: 28.118 ms/op
Iteration   5: 27.923 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve":
  28.477 ±(99.9%) 4.356 ms/op [Average]
  (min, avg, max) = (27.911, 28.477, 30.496), stdev = 1.131
  CI (99.9%): [24.121, 32.834] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve:asm":
PrintAssembly processed: 249091 total address lines.
Perf output processed (skipped 71.278 seconds):
 Column 1: cycles (51011 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 11, compile id 1103 

                   0x00007fae96d9a85d:   vsqrtsd %xmm0,%xmm0,%xmm0           ;* unwind (locked if synchronized)
                                                                             ; - java.lang.Math::sqrt@-3
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@17 (line 37)
                   0x00007fae96d9a861:   mov    $0x2,%r11d
          ╭        0x00007fae96d9a867:   jmp    0x00007fae96d9a8a1           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@13 (line 37)
          │        0x00007fae96d9a86c:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        0x00007fae96d9a877:   data16 data16 xchg %ax,%ax
          │        0x00007fae96d9a87b:   nopl   0x0(%rax,%rax,1)             ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@21 (line 37)
   0.00%  │ ↗      0x00007fae96d9a880:   cmp    %r11d,%r10d
          │ │      0x00007fae96d9a883:   jbe    0x00007fae96d9ab67           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@26 (line 38)
          │ │      0x00007fae96d9a889:   cmpb   $0x0,0x10(%rax,%r11,1)
   0.05%  │╭│      0x00007fae96d9a88f:   jne    0x00007fae96d9a8b5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@28 (line 38)
   0.01%  │││   ↗  0x00007fae96d9a895:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@56 (line 37)
   0.05%  │││   │  0x00007fae96d9a898:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rax=Oop }
          │││   │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││   │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@13 (line 37)
   0.01%  │││   │  0x00007fae96d9a89f:   test   %eax,(%rdx)                  ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@13 (line 37)
          │││   │                                                            ;   {poll}
   0.00%  ↘││   │  0x00007fae96d9a8a1:   vxorpd %xmm1,%xmm1,%xmm1
           ││   │  0x00007fae96d9a8a5:   vcvtsi2sd %r11d,%xmm1,%xmm1         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
           ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@14 (line 37)
           ││   │  0x00007fae96d9a8aa:   vucomisd %xmm1,%xmm0
           │╰   │  0x00007fae96d9a8ae:   ja     0x00007fae96d9a880
           │ ╭  │  0x00007fae96d9a8b0:   jmp    0x00007fae96d9a907           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@21 (line 37)
           ↘ │  │  0x00007fae96d9a8b5:   cmp    $0x1,%r11d
             │  │  0x00007fae96d9a8b9:   jl     0x00007fae96d9ab3f           ;*iload {reexecute=0 rethrow=0 return_oop=0}
             │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@36 (line 39)
   0.00%     │  │  0x00007fae96d9a8bf:   mov    %r11d,%edx
             │  │  0x00007fae96d9a8c2:   imul   %r11d,%edx                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@33 (line 39)
   0.00%     │╭ │  0x00007fae96d9a8c6:   jmp    0x00007fae96d9a8fd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
             ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@36 (line 39)
             ││ │  0x00007fae96d9a8cb:   data16 data16 nopw 0x0(%rax,%rax,1)
             ││ │  0x00007fae96d9a8d6:   data16 data16 xchg %ax,%ax
             ││ │  0x00007fae96d9a8da:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@39 (line 39)
  19.05%     ││↗│  0x00007fae96d9a8e0:   cmp    %r8d,%r10d
   0.01%     ││││  0x00007fae96d9a8e3:   jbe    0x00007fae96d9aaf8
   5.27%     ││││  0x00007fae96d9a8e9:   mov    %r12b,0x10(%rax,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@46 (line 40)
  31.92%     ││││  0x00007fae96d9a8ee:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rax=Oop }
             ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
             ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@47 (line 39)
   1.50%     ││││  0x00007fae96d9a8f5:   test   %eax,(%rdx)                  ;   {poll}
  25.30%     ││││  0x00007fae96d9a8f7:   mov    %r11d,%edx
   0.03%     ││││  0x00007fae96d9a8fa:   add    %r8d,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@50 (line 39)
   6.54%     │↘││  0x00007fae96d9a8fd:   mov    %edx,%r8d
   0.16%     │ ││  0x00007fae96d9a900:   cmp    %r8d,%r10d
   0.01%     │ ╰│  0x00007fae96d9a903:   jg     0x00007fae96d9a8e0
             │  ╰  0x00007fae96d9a905:   jmp    0x00007fae96d9a895           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@39 (line 39)
             ↘     0x00007fae96d9a907:   cmp    $0x3,%r10d
                   0x00007fae96d9a90b:   jl     0x00007fae96d9a929
                   0x00007fae96d9a911:   mov    %r10d,%edx
                   0x00007fae96d9a914:   dec    %edx
                   0x00007fae96d9a916:   movslq %edx,%rdx
                   0x00007fae96d9a919:   nopl   0x0(%rax)
                   0x00007fae96d9a920:   cmp    %rdx,%rsi
                   0x00007fae96d9a923:   jbe    0x00007fae96d9ab76           ;*baload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  89.91%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 11, compile id 1103 
   4.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 11, compile id 1103 
   1.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 11, compile id 1103 
   1.46%         libc-2.31.so  __memset_avx2_erms 
   0.55%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.30%  <...other 392 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 11, compile id 1103 
   1.93%               kernel  [unknown] 
   1.46%         libc-2.31.so  __memset_avx2_erms 
   0.05%                       <unknown> 
   0.05%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%            libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  fileStream::write 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  outputStream::print 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  G1ParCopyClosure<(G1Barrier)1, true>::do_oop 
   0.31%  <...other 118 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.02%       jvmci, level 4
   1.93%               kernel
   1.57%         libc-2.31.so
   0.32%            libjvm.so
   0.05%                     
   0.04%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%     perf-2147095.map
   0.00%         runtime stub
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin
# Parameters: (n = 8388608)

# Run progress: 33.33% complete, ETA 00:04:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5123.037 ms/op
# Warmup Iteration   2: 5022.284 ms/op
# Warmup Iteration   3: 5022.093 ms/op
# Warmup Iteration   4: 5024.916 ms/op
# Warmup Iteration   5: 5022.200 ms/op
Iteration   1: 5022.152 ms/op
Iteration   2: 5021.764 ms/op
Iteration   3: 5022.154 ms/op
Iteration   4: 5021.571 ms/op
Iteration   5: 5022.368 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin":
  5022.002 ±(99.9%) 1.252 ms/op [Average]
  (min, avg, max) = (5021.571, 5022.002, 5022.368), stdev = 0.325
  CI (99.9%): [5020.750, 5023.253] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin:asm":
PrintAssembly processed: 252344 total address lines.
Perf output processed (skipped 71.750 seconds):
 Column 1: cycles (50742 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 

                0x00007feaaada0ffe:   mov    %esi,%eax                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::next@45 (line 445)
                                                                          ; - java.util.Random::nextInt@64 (line 565)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007feaaada1000:   mov    %r9d,%edx                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@47 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007feaaada1003:   mov    %eax,%esi
   0.00%        0x00007feaaada1005:   mov    %edx,%r9d
   0.05%        0x00007feaaada1008:   cltd   
                0x00007feaaada1009:   idiv   %r14d                        ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@52 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.55%        0x00007feaaada100c:   mov    %esi,%eax
   0.00%        0x00007feaaada100e:   sub    %edx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@55 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.03%        0x00007feaaada1010:   add    %r9d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@57 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.06%        0x00007feaaada1013:   test   %eax,%eax
                0x00007feaaada1015:   jl     0x00007feaaada0fc0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@58 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.06%        0x00007feaaada1017:   nopw   0x0(%rax,%rax,1)
                0x00007feaaada1020:   cmp    $0x1,%r13
                0x00007feaaada1024:   jl     0x00007feaaada1151           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@11 (line 94)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007feaaada102a:   lea    0x2(%rdx),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@71 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007feaaada102d:   movslq %eax,%rax                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@72 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.09%        0x00007feaaada1030:   cqto   
   0.00%        0x00007feaaada1032:   idiv   %rdi                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@6 (line 92)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   2.43%        0x00007feaaada1035:   mov    %rdx,%rsi
   0.00%        0x00007feaaada1038:   imul   %rdx,%rsi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@39 (line 99)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007feaaada103c:   nopl   0x0(%rax)
   0.04%        0x00007feaaada1040:   cmp    $0x1,%rcx
                0x00007feaaada1044:   jne    0x00007feaaada12c0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@21 (line 95)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%        0x00007feaaada104a:   mov    %rdx,%rcx
                0x00007feaaada104d:   mov    %rsi,%rax
   0.00%        0x00007feaaada1050:   cqto   
   0.06%        0x00007feaaada1052:   idiv   %rdi
   2.74%        0x00007feaaada1055:   mov    %rdx,%rsi                    ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@42 (line 99)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007feaaada1058:   mov    %rcx,%rax
                0x00007feaaada105b:   cqto   
   0.06%        0x00007feaaada105d:   idiv   %rdi                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@30 (line 96)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.86%        0x00007feaaada1060:   mov    %r13,%rax
   0.06%        0x00007feaaada1063:   shr    %rax
                0x00007feaaada1066:   mov    %rdx,%rcx
                0x00007feaaada1069:   mov    %rsi,%rdx
                0x00007feaaada106c:   mov    %rax,%rsi
   0.06%        0x00007feaaada106f:   nop                                 ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.92%    ↗↗  0x00007feaaada1070:   test   %rsi,%rsi
          ╭ ││  0x00007feaaada1073:   je     0x00007feaaada10cd           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@11 (line 94)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
          │ ││  0x00007feaaada1079:   mov    %rdx,%rax
   0.25%  │ ││  0x00007feaaada107c:   imul   %rdx,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@39 (line 99)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.08%  │ ││  0x00007feaaada1080:   mov    %rdx,%r9
   0.97%  │ ││  0x00007feaaada1083:   cqto   
   0.01%  │ ││  0x00007feaaada1085:   idiv   %rdi                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@42 (line 99)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
  43.81%  │ ││  0x00007feaaada1088:   mov    0x458(%r15),%rax             ; ImmutableOopMap {r8=Oop }
          │ ││                                                            ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%  │ ││  0x00007feaaada108f:   test   %eax,(%rax)                  ;   {poll}
   0.01%  │ ││  0x00007feaaada1091:   mov    %rsi,%rax
   1.09%  │ ││  0x00007feaaada1094:   shr    %rax
   0.23%  │ ││  0x00007feaaada1097:   mov    %rsi,%r14
   0.01%  │ ││  0x00007feaaada109a:   and    $0xfffffffffffffffe,%r14
   0.01%  │ ││  0x00007feaaada109e:   sub    %r14,%rsi                    ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@18 (line 95)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.99%  │ ││  0x00007feaaada10a1:   cmp    $0x1,%rsi
          │╭││  0x00007feaaada10a5:   jne    0x00007feaaada10c8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@21 (line 95)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.13%  ││││  0x00007feaaada10ab:   mov    %rax,%rsi
   0.00%  ││││  0x00007feaaada10ae:   mov    %rdx,%r14
   0.01%  ││││  0x00007feaaada10b1:   mov    %r9,%rdx
   0.52%  ││││  0x00007feaaada10b4:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@27 (line 96)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.14%  ││││  0x00007feaaada10b8:   mov    %rdx,%rax
   0.02%  ││││  0x00007feaaada10bb:   cqto   
   0.01%  ││││  0x00007feaaada10bd:   idiv   %rdi                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@30 (line 96)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
  16.20%  ││││  0x00007feaaada10c0:   mov    %rdx,%rcx
   0.30%  ││││  0x00007feaaada10c3:   mov    %r14,%rdx
          ││╰│  0x00007feaaada10c6:   jmp    0x00007feaaada1070
   0.09%  │↘ │  0x00007feaaada10c8:   mov    %rax,%rsi
   0.00%  │  ╰  0x00007feaaada10cb:   jmp    0x00007feaaada1070           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.07%  ↘     0x00007feaaada10cd:   cmp    $0x1,%rcx
                0x00007feaaada10d1:   je     0x00007feaaada1151           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@88 (line 63)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007feaaada10d7:   cmp    %rbp,%rcx
                0x00007feaaada10da:   je     0x00007feaaada1151           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@97 (line 63)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007feaaada10e0:   cmp    %rbp,%r13
                0x00007feaaada10e3:   jne    0x00007feaaada1310           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@111 (line 68)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007feaaada10e9:   mov    0x458(%r15),%rax             ; ImmutableOopMap {r8=Oop }
                                                                          ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@47 (line 102)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.04%        0x00007feaaada10f0:   test   %eax,(%rax)                  ;   {poll}
   0.05%        0x00007feaaada10f2:   mov    %ebx,%ecx
                0x00007feaaada10f4:   mov    0x34(%rsp),%esi
                0x00007feaaada10f8:   jmp    0x00007feaaada0f00           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@153 (line 81)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%        0x00007feaaada10fd:   mov    %rbp,%rax
                0x00007feaaada1100:   shr    %rax
                0x00007feaaada1103:   jmp    0x00007feaaada1139           ;*lload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@30 (line 55)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007feaaada1108:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007feaaada1113:   data16 data16 xchg %ax,%ax
                0x00007feaaada1117:   nopw   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@37 (line 55)
....................................................................................................
  73.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  73.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   4.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   4.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   4.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   4.71%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   2.62%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   2.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   0.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   0.14%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.10%  <...other 333 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1077 
   1.22%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  ___vsnprintf 
   0.14%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.40%      jvmci, level 4
   1.22%              kernel
   0.14%           libjvm.so
   0.09%                    
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division
# Parameters: (n = 8388608)

# Run progress: 66.67% complete, ETA 00:02:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6238.043 ms/op
# Warmup Iteration   2: 5948.521 ms/op
# Warmup Iteration   3: 5914.690 ms/op
# Warmup Iteration   4: 5913.017 ms/op
# Warmup Iteration   5: 5914.709 ms/op
Iteration   1: 5914.476 ms/op
Iteration   2: 5911.485 ms/op
Iteration   3: 5913.130 ms/op
Iteration   4: 5912.621 ms/op
Iteration   5: 5914.430 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division":
  5913.228 ±(99.9%) 4.879 ms/op [Average]
  (min, avg, max) = (5911.485, 5913.228, 5914.476), stdev = 1.267
  CI (99.9%): [5908.350, 5918.107] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division:asm":
PrintAssembly processed: 262514 total address lines.
Perf output processed (skipped 81.164 seconds):
 Column 1: cycles (59850 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 1134 

                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   7.00%         0x00007f4296db0040:   mov    %eax,%r11d
   1.69%         0x00007f4296db0043:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@24 (line 81)
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%         0x00007f4296db0046:   mov    %r11d,0xc(,%r14,8)           ;*putfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@25 (line 81)
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%         0x00007f4296db004e:   mov    %eax,%r8d
   7.00%         0x00007f4296db0051:   mov    %r13d,%eax                   ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::lambda$isPrime$0@2 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b770::test@5
                                                                           ; - java.util.stream.MatchOps$2MatchSink::accept@12 (line 119)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   1.68%         0x00007f4296db0054:   mov    %edx,%ebx
   0.00%         0x00007f4296db0056:   cltd                                ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.Streams$RangeIntSpliterator::tryAdvance@28 (line 82)
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%         0x00007f4296db0057:   idiv   %r8d                         ; implicit exception: deoptimizes
                                                                           ; ImmutableOopMap {r14=NarrowOop [8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
  69.29%         0x00007f4296db005a:   nopw   0x0(%rax,%rax,1)
                 0x00007f4296db0060:   test   %edx,%edx
          ╭      0x00007f4296db0062:   je     0x00007f4296db007e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.stream.MatchOps$2MatchSink::accept@24 (line 119)
          │                                                                ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          │                                                                ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          │                                                                ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          │                                                                ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          │                                                                ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                                ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          │                                                                ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          │                                                                ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                                ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
          │                                                                ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │                                                                ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   6.95%  │      0x00007f4296db0068:   mov    %ebx,%edx
   1.71%  │  ↗   0x00007f4296db006a:   test   %edx,%edx
          │╭ │   0x00007f4296db006c:   jne    0x00007f4296db0090           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@20 (line 163)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ │                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ │                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
          ││ │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  ││ │   0x00007f4296db0072:   mov    %r11d,%eax                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@11 (line 163)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ │                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ │                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
          ││ │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  ││ │   0x00007f4296db0075:   cmp    %eax,%esi
          ││ │   0x00007f4296db0077:   jg     0x00007f4296db0040
   0.01%  ││╭│   0x00007f4296db0079:   jmp    0x00007f4296db00b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@15 (line 80)
          ││││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
          ││││                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││││                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.20%  ↘│││   0x00007f4296db007e:   mov    $0x1,%ecx
   0.10%   │││   0x00007f4296db0083:   mov    $0x1,%edx
           │││   0x00007f4296db0088:   mov    $0x0,%r9d
   0.02%   ││╰   0x00007f4296db008e:   jmp    0x00007f4296db006a
   0.05%   ↘│ ↗  0x00007f4296db0090:   test   %r9d,%r9d                    ;   {no_reloc}
            │ │  0x00007f4296db0093:   jne    0x00007f4296db011f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - java.util.stream.IntPipeline$10$1::accept@13 (line 392)
            │ │                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
            │ │  0x00007f4296db0099:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {[16]=Oop [28]=NarrowOop [32]=Oop }
            │ │                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                            ; - (reexecute) java.util.stream.AbstractPipeline::wrapAndCopyInto@16 (line 500)
            │ │                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
            │ │                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
            │ │                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            │ │                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
            │ │                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
            │ │                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.05%    │ │  0x00007f4296db00a0:   test   %eax,(%rsi)                  ;   {poll}
   0.08%    │ │  0x00007f4296db00a2:   mov    %r10d,%r13d
   0.01%    │ │  0x00007f4296db00a5:   mov    0x38(%rsp),%rbx
            │ │  0x00007f4296db00aa:   mov    0x44(%rsp),%r11d
            │ │  0x00007f4296db00af:   jmp    0x00007f4296dafe10
            ↘ │  0x00007f4296db00b4:   cmpl   $0x1,0x14(,%r14,8)
   0.02%      ╰  0x00007f4296db00bd:   jl     0x00007f4296db0090
                 0x00007f4296db00bf:   nop
                 0x00007f4296db00c0:   jmp    0x00007f4296db06fe           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@41 (line 85)
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%         0x00007f4296db00c5:   mov    0x458(%r15),%rax             ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                           ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.stream.Streams$RangeIntSpliterator::tryAdvance@28 (line 82)
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%         0x00007f4296db00cc:   test   %eax,(%rax)                  ;   {poll}
   0.01%         0x00007f4296db00ce:   mov    %r10d,%r13d
                 0x00007f4296db00d1:   jmp    0x00007f4296dafe10           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.MatchOps$2MatchSink::accept@24 (line 119)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f421802b528::test@1
                                                                           ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                           ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%         0x00007f4296db00d6:   mov    $0x0,%edx
   0.01%         0x00007f4296db00db:   mov    $0x1,%r9d
                 0x00007f4296db00e1:   jmp    0x00007f4296db0003           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.stream.IntPipeline::forEachWithCancel@11 (line 163)
                                                                           ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                           ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                           ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                           ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                           ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                           ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
....................................................................................................
  95.97%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.97%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 1134 
   2.28%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 1134 
   0.32%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 1134 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.85%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.29%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 1134 
   1.38%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.15%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.29%      jvmci, level 4
   1.38%              kernel
   0.15%           libjvm.so
   0.07%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:06:34

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

Benchmark                                   (n)  Mode  Cnt     Score   Error  Units
PrimesBenchmark.eratosthenes_sieve      8388608  avgt    5    28.477 ± 4.356  ms/op
PrimesBenchmark.eratosthenes_sieve:asm  8388608  avgt            NaN            ---
PrimesBenchmark.miller_rabin            8388608  avgt    5  5022.002 ± 1.252  ms/op
PrimesBenchmark.miller_rabin:asm        8388608  avgt            NaN            ---
PrimesBenchmark.trial_division          8388608  avgt    5  5913.228 ± 4.879  ms/op
PrimesBenchmark.trial_division:asm      8388608  avgt            NaN            ---
