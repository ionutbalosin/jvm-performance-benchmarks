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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve
# Parameters: (n = 8388608)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 44.761 ms/op
# Warmup Iteration   2: 44.783 ms/op
# Warmup Iteration   3: 44.547 ms/op
# Warmup Iteration   4: 44.519 ms/op
# Warmup Iteration   5: 44.550 ms/op
Iteration   1: 44.356 ms/op
Iteration   2: 45.004 ms/op
Iteration   3: 44.979 ms/op
Iteration   4: 45.014 ms/op
Iteration   5: 45.019 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve":
  44.874 ±(99.9%) 1.118 ms/op [Average]
  (min, avg, max) = (44.356, 44.874, 45.019), stdev = 0.290
  CI (99.9%): [43.756, 45.993] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve:asm":
PrintAssembly processed: 243504 total address lines.
Perf output processed (skipped 71.854 seconds):
 Column 1: cycles (51166 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 10, compile id 1087 

                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@8 (line 35)
                 0x00007f7e3f25a0d2:   vcvtsi2sd %r10d,%xmm0,%xmm0         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@16 (line 37)
                 0x00007f7e3f25a0d7:   vsqrtsd %xmm0,%xmm0,%xmm0           ;* unwind (locked if synchronized)
                                                                           ; - java.lang.Math::sqrt@-3
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@17 (line 37)
                 0x00007f7e3f25a0db:   mov    $0x2,%r9d
                 0x00007f7e3f25a0e1:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007f7e3f25a0ec:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@13 (line 37)
   0.00%   ↗  ↗  0x00007f7e3f25a0f0:   vcvtsi2sd %r9d,%xmm1,%xmm1          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@14 (line 37)
   0.00%   │  │  0x00007f7e3f25a0f5:   vucomisd %xmm1,%xmm0
           │  │  0x00007f7e3f25a0f9:   jbe    0x00007f7e3f25a1a7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@21 (line 37)
   0.00%   │  │  0x00007f7e3f25a0ff:   nop
           │  │  0x00007f7e3f25a100:   cmp    %r9d,%r10d
           │  │  0x00007f7e3f25a103:   jbe    0x00007f7e3f25a318           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@26 (line 38)
           │  │  0x00007f7e3f25a109:   mov    %r9d,%eax
           │  │  0x00007f7e3f25a10c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@56 (line 37)
   0.00%   │  │  0x00007f7e3f25a10e:   cmpb   $0x0,0x10(%r11,%r9,1)
   0.04%  ╭│  │  0x00007f7e3f25a114:   jne    0x00007f7e3f25a128           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@28 (line 38)
          ││  │  0x00007f7e3f25a11a:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r11=Oop }
          ││  │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@13 (line 37)
          ││  │  0x00007f7e3f25a121:   test   %eax,(%rsi)                  ;   {poll}
          ││  │  0x00007f7e3f25a123:   mov    %eax,%r9d
          │╰  │  0x00007f7e3f25a126:   jmp    0x00007f7e3f25a0f0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@13 (line 37)
   0.01%  ↘   │  0x00007f7e3f25a128:   mov    %r9d,%esi
              │  0x00007f7e3f25a12b:   imul   %r9d,%esi                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@33 (line 39)
   0.00%      │  0x00007f7e3f25a12f:   cmp    %esi,%r10d
              │  0x00007f7e3f25a132:   jle    0x00007f7e3f25a196           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@39 (line 39)
              │  0x00007f7e3f25a138:   nopl   0x0(%rax,%rax,1)
              │  0x00007f7e3f25a140:   cmp    %esi,%r10d
              │  0x00007f7e3f25a143:   jbe    0x00007f7e3f25a318
              │  0x00007f7e3f25a149:   movb   $0x0,0x10(%r11,%rsi,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@46 (line 40)
   0.01%      │  0x00007f7e3f25a14f:   add    %r9d,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@50 (line 39)
            ╭ │  0x00007f7e3f25a152:   jmp    0x00007f7e3f25a17d           ;*iload {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@36 (line 39)
            │ │  0x00007f7e3f25a157:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@39 (line 39)
   4.68%    │↗│  0x00007f7e3f25a160:   cmp    %ecx,%r10d
   0.00%    │││  0x00007f7e3f25a163:   jbe    0x00007f7e3f25a33b
   4.97%    │││  0x00007f7e3f25a169:   movb   $0x0,0x10(%r11,%rcx,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@46 (line 40)
  19.76%    │││  0x00007f7e3f25a16f:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r11=Oop }
            │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@47 (line 39)
   4.96%    │││  0x00007f7e3f25a176:   test   %eax,(%rsi)                  ;   {poll}
   8.27%    │││  0x00007f7e3f25a178:   mov    %r9d,%esi
   3.64%    │││  0x00007f7e3f25a17b:   add    %ecx,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@50 (line 39)
   4.14%    ↘││  0x00007f7e3f25a17d:   mov    %esi,%ecx
   3.94%     ││  0x00007f7e3f25a17f:   nop
   5.10%     ││  0x00007f7e3f25a180:   cmp    %ecx,%r10d
   0.00%     ╰│  0x00007f7e3f25a183:   jg     0x00007f7e3f25a160           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@39 (line 39)
              │  0x00007f7e3f25a185:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r11=Oop }
              │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@56 (line 37)
              │  0x00007f7e3f25a18c:   test   %eax,(%rsi)                  ;   {poll}
              │  0x00007f7e3f25a18e:   mov    %eax,%r9d
              ╰  0x00007f7e3f25a191:   jmp    0x00007f7e3f25a0f0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@56 (line 37)
                 0x00007f7e3f25a196:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r11=Oop }
                                                                           ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  59.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 10, compile id 1087 

                0x00007f7e3f25a1c1:   lea    0x2(%rax),%rax
                0x00007f7e3f25a1c5:   cmp    %rax,%r8
                0x00007f7e3f25a1c8:   jbe    0x00007f7e3f25a35e           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
                0x00007f7e3f25a1ce:   movzbl 0x12(%r11),%eax              ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@74 (line 46)
                0x00007f7e3f25a1d3:   mov    %eax,%esi
                0x00007f7e3f25a1d5:   mov    $0x3,%eax
                0x00007f7e3f25a1da:   nopw   0x0(%rax,%rax,1)             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@64 (line 45)
   1.94%    ↗↗  0x00007f7e3f25a1e0:   cmp    %eax,%r10d
          ╭ ││  0x00007f7e3f25a1e3:   jle    0x00007f7e3f25a203           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@67 (line 45)
   0.55%  │ ││  0x00007f7e3f25a1e9:   mov    %eax,%edx
   5.90%  │ ││  0x00007f7e3f25a1eb:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   0.04%  │ ││  0x00007f7e3f25a1ed:   cmpb   $0x0,0x10(%r11,%rax,1)
   3.91%  │╭││  0x00007f7e3f25a1f3:   jne    0x00007f7e3f25a1fd           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@74 (line 46)
   6.54%  ││││  0x00007f7e3f25a1f9:   mov    %edx,%eax
   0.16%  ││╰│  0x00007f7e3f25a1fb:   jmp    0x00007f7e3f25a1e0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@64 (line 45)
   6.43%  │↘ │  0x00007f7e3f25a1fd:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@77 (line 47)
   3.62%  │  │  0x00007f7e3f25a1ff:   mov    %edx,%eax
   0.01%  │  ╰  0x00007f7e3f25a201:   jmp    0x00007f7e3f25a1e0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
          ↘     0x00007f7e3f25a203:   mov    %esi,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@87 (line 51)
                0x00007f7e3f25a205:   mov    0x10(%rsp),%rbp
                0x00007f7e3f25a20a:   add    $0x18,%rsp
                0x00007f7e3f25a20e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                0x00007f7e3f25a215:   ja     0x00007f7e3f25a3b4
                0x00007f7e3f25a21b:   vzeroupper 
                0x00007f7e3f25a21e:   ret                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Arrays::fill@5 (line 3322)
....................................................................................................
  29.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 10, compile id 1087 
  29.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 10, compile id 1087 
   7.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 10, compile id 1087 
   1.09%        libc-2.31.so  __memset_avx2_erms 
   0.61%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.16%  <...other 343 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 10, compile id 1087 
   2.04%              kernel  [unknown] 
   1.09%        libc-2.31.so  __memset_avx2_erms 
   0.06%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.03%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%           libjvm.so  fileStream::write 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  StatSamplerTask::task 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  PeriodicTask::real_time_tick 
   0.22%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.35%      jvmci, level 4
   2.04%              kernel
   1.20%        libc-2.31.so
   0.26%           libjvm.so
   0.06%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%    perf-2126354.map
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin
# Parameters: (n = 8388608)

# Run progress: 33.33% complete, ETA 00:04:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5131.315 ms/op
# Warmup Iteration   2: 5042.951 ms/op
# Warmup Iteration   3: 5042.776 ms/op
# Warmup Iteration   4: 5042.874 ms/op
# Warmup Iteration   5: 5042.899 ms/op
Iteration   1: 5042.747 ms/op
Iteration   2: 5042.999 ms/op
Iteration   3: 5042.977 ms/op
Iteration   4: 5042.947 ms/op
Iteration   5: 5043.304 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin":
  5042.995 ±(99.9%) 0.770 ms/op [Average]
  (min, avg, max) = (5042.747, 5042.995, 5043.304), stdev = 0.200
  CI (99.9%): [5042.225, 5043.765] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin:asm":
PrintAssembly processed: 241016 total address lines.
Perf output processed (skipped 72.163 seconds):
 Column 1: cycles (51041 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 

                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007f89872630b2:   mov    %r8,0x50(%rsp)
                0x00007f89872630b7:   movabs $0x7fcf89670,%r9             ;   {oop(a &apos;java/util/concurrent/atomic/AtomicLong&apos;{0x00000007fcf89670})}
                0x00007f89872630c1:   mov    $0x2,%ebx
                0x00007f89872630c6:   mov    $0x0,%rcx
                0x00007f89872630cd:   data16 xchg %ax,%ax                 ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@4 (line 38)
                0x00007f89872630d0:   mov    %rcx,0x48(%rsp)
   0.01%        0x00007f89872630d5:   cmp    %esi,%ebx
                0x00007f89872630d7:   jg     0x00007f89872643de           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@6 (line 38)
   0.04%        0x00007f89872630dd:   mov    %ebx,0x44(%rsp)
   0.02%        0x00007f89872630e1:   mov    %ebx,%edi
                0x00007f89872630e3:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@22 (line 38)
   0.01%        0x00007f89872630e5:   mov    %rcx,%rbp
   0.04%        0x00007f89872630e8:   inc    %rbp                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@20 (line 40)
   0.02%        0x00007f89872630eb:   mov    %rbp,0x38(%rsp)
                0x00007f89872630f0:   cmp    $0x4,%ebx
                0x00007f89872630f3:   jl     0x00007f8987264051           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@21 (line 50)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%        0x00007f89872630f9:   nopl   0x0(%rax)
   0.02%        0x00007f8987263100:   cmp    $0x4,%ebx
                0x00007f8987263103:   je     0x00007f89872641cd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@11 (line 47)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.02%        0x00007f8987263109:   mov    %ebx,%r13d
                0x00007f898726310c:   mov    %r13,%r14
   0.01%        0x00007f898726310f:   dec    %r14                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@28 (line 54)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.03%        0x00007f8987263112:   test   $0x1,%r14
                0x00007f8987263119:   je     0x00007f89872632bd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@37 (line 55)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.04%        0x00007f898726311f:   mov    %r14,%rax                    ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@49 (line 59)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.07%        0x00007f8987263122:   lea    -0x4(%r13),%rdx              ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@66 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.10%        0x00007f8987263126:   mov    %edx,%edx                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@67 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.03%        0x00007f8987263128:   mov    %edx,0x30(%rsp)
   0.09%        0x00007f898726312c:   cmp    $0x1,%edx
                0x00007f898726312f:   jl     0x00007f89872643fa           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@1 (line 556)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%        0x00007f8987263135:   mov    0x10(%r9),%rbx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.concurrent.atomic.AtomicLong::get@1 (line 104)
                                                                          ; - java.util.Random::next@8 (line 442)
                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%        0x00007f8987263139:   mov    %rbx,%rbp
   0.00%        0x00007f898726313c:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::next@16 (line 443)
                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.07%        0x00007f8987263140:   lea    0xb(%rbp),%rbp               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::next@20 (line 443)
                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.05%        0x00007f8987263144:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::next@24 (line 443)
                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.06%        0x00007f8987263147:   mov    %rax,%r10
   0.00%        0x00007f898726314a:   mov    %rbx,%rax
   0.01%        0x00007f898726314d:   lock cmpxchg %rbp,0x10(%r9)
   1.16%        0x00007f8987263153:   jne    0x00007f89872644d8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::next@35 (line 444)
                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007f8987263159:   shr    $0x11,%rbp                   ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::next@44 (line 445)
                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.05%        0x00007f898726315d:   mov    %edx,%ebx
                0x00007f898726315f:   mov    %rbx,0x18(%rsp)
                0x00007f8987263164:   mov    %edx,%eax
   0.00%        0x00007f8987263166:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@23 (line 559)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.07%        0x00007f8987263168:   mov    %eax,0x14(%rsp)
                0x00007f898726316c:   test   %eax,%edx
                0x00007f898726316e:   je     0x00007f8987263df8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@28 (line 560)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007f8987263174:   mov    %ebp,%ebp                    ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::next@45 (line 445)
                                                                          ; - java.util.Random::nextInt@17 (line 558)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007f8987263176:   mov    %eax,%ebx
   0.06%        0x00007f8987263178:   mov    %ebp,%eax
                0x00007f898726317a:   mov    %edx,%r11d
                0x00007f898726317d:   cltd   
   0.01%        0x00007f898726317e:   idiv   %r11d                        ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@52 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.54%        0x00007f8987263181:   sub    %edx,%ebp                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@55 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.10%        0x00007f8987263183:   mov    %ebx,%eax
   0.03%        0x00007f8987263185:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@57 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007f8987263187:   test   %eax,%eax
                0x00007f8987263189:   jl     0x00007f8987263ef8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.Random::nextInt@58 (line 564)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.02%        0x00007f898726318f:   cmp    $0x1,%r10
                0x00007f8987263193:   jl     0x00007f89872635eb           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@11 (line 94)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.05%        0x00007f8987263199:   lea    0x2(%rdx),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@71 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%        0x00007f898726319c:   movslq %eax,%rax                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@72 (line 60)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007f898726319f:   cqto   
   0.02%        0x00007f89872631a1:   idiv   %r13
   2.62%        0x00007f89872631a4:   mov    %rdx,%rbp                    ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@6 (line 92)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007f89872631a7:   mov    %r10,%rax
                0x00007f89872631aa:   and    $0xfffffffffffffffe,%rax
   0.05%        0x00007f89872631ae:   mov    %r10,%rdx
   0.00%        0x00007f89872631b1:   sub    %rax,%rdx                    ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@18 (line 95)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%        0x00007f89872631b4:   cmp    $0x1,%rdx                    ;   {no_reloc}
                0x00007f89872631b8:   jne    0x00007f898726330f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@21 (line 95)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007f89872631be:   mov    %rbp,%rax
   0.04%        0x00007f89872631c1:   cqto   
   0.01%        0x00007f89872631c3:   idiv   %r13                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@30 (line 96)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   2.51%        0x00007f89872631c6:   imul   %rbp,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@39 (line 99)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007f89872631ca:   mov    %rbp,%rax
                0x00007f89872631cd:   mov    %rdx,%rbp
   0.05%        0x00007f89872631d0:   cqto   
   0.00%        0x00007f89872631d2:   idiv   %r13                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@42 (line 99)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.85%        0x00007f89872631d5:   mov    %r10,%rax
   0.06%        0x00007f89872631d8:   shr    %rax
                0x00007f89872631db:   mov    %rax,0x28(%rsp)
                0x00007f89872631e0:   mov    %rdx,%rax
                0x00007f89872631e3:   mov    0x28(%rsp),%rdx
   0.05%        0x00007f89872631e8:   nopl   0x0(%rax,%rax,1)             ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%    ↗↗  0x00007f89872631f0:   test   %rdx,%rdx
          ╭ ││  0x00007f89872631f3:   je     0x00007f8987263268           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@11 (line 94)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.82%  │ ││  0x00007f89872631f9:   mov    %rax,%r11
   0.11%  │ ││  0x00007f89872631fc:   imul   %rax,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@39 (line 99)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.36%  │ ││  0x00007f8987263200:   mov    %rax,%rbx
          │ ││  0x00007f8987263203:   mov    %r11,%rax
   0.85%  │ ││  0x00007f8987263206:   mov    %rdx,%r11
   0.10%  │ ││  0x00007f8987263209:   cqto   
   0.36%  │ ││  0x00007f898726320b:   idiv   %r13                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@42 (line 99)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
  43.58%  │ ││  0x00007f898726320e:   mov    %r11,%rax
   0.01%  │ ││  0x00007f8987263211:   shr    %rax
   0.01%  │ ││  0x00007f8987263214:   mov    %r11,%r8
   1.05%  │ ││  0x00007f8987263217:   and    $0xfffffffffffffffe,%r8
   0.23%  │ ││  0x00007f898726321b:   mov    %r11,%r9
   0.02%  │ ││  0x00007f898726321e:   sub    %r8,%r9                      ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@18 (line 95)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%  │ ││  0x00007f8987263221:   cmp    $0x1,%r9
          │╭││  0x00007f8987263225:   jne    0x00007f8987263251           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@21 (line 95)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.53%  ││││  0x00007f898726322b:   mov    %rax,%r8
   0.10%  ││││  0x00007f898726322e:   mov    %rdx,%r9
   0.00%  ││││  0x00007f8987263231:   mov    %rbx,%rax
   0.02%  ││││  0x00007f8987263234:   imul   %rbp,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@27 (line 96)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.51%  ││││  0x00007f8987263238:   cqto                                ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.13%  ││││  0x00007f898726323a:   idiv   %r13                         ; implicit exception: deoptimizes
          ││││                                                            ; ImmutableOopMap {[0]=Oop }
  14.15%  ││││  0x00007f898726323d:   mov    0x458(%r15),%rax             ; ImmutableOopMap {[0]=Oop }
          ││││                                                            ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.35%  ││││  0x00007f8987263244:   test   %eax,(%rax)                  ;   {poll}
          ││││  0x00007f8987263246:   mov    %r9,%rax
   0.31%  ││││  0x00007f8987263249:   mov    %rdx,%rbp
   0.01%  ││││  0x00007f898726324c:   mov    %r8,%rdx
   0.35%  ││╰│  0x00007f898726324f:   jmp    0x00007f89872631f0           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@33 (line 98)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.48%  │↘ │  0x00007f8987263251:   mov    %rax,%r8
   0.11%  │  │  0x00007f8987263254:   mov    %rdx,%r9
   0.01%  │  │  0x00007f8987263257:   mov    0x458(%r15),%rax             ; ImmutableOopMap {[0]=Oop }
          │  │                                                            ;*lload_2 {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%  │  │  0x00007f898726325e:   test   %eax,(%rax)                  ;   {poll}
   0.51%  │  │  0x00007f8987263260:   mov    %r9,%rax
   0.07%  │  │  0x00007f8987263263:   mov    %r8,%rdx
   0.00%  │  ╰  0x00007f8987263266:   jmp    0x00007f89872631f0           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@8 (line 94)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.05%  ↘     0x00007f8987263268:   cmp    $0x1,%rbp
                0x00007f898726326c:   je     0x00007f89872633ab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@88 (line 63)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                0x00007f8987263272:   cmp    %r14,%rbp
                0x00007f8987263275:   je     0x00007f8987263549           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@97 (line 63)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
....................................................................................................
  74.37%  <total for region 1>

....[Hottest Regions]...............................................................................
  74.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   8.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   5.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   5.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   5.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   0.52%              kernel  [unknown] 
   0.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   0.08%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.85%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 1086 
   1.52%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%      jvmci, level 4  java.util.Random::next, version 2, compile id 1074 
   0.01%           libjvm.so  defaultStream::write 
   0.00%      hsdis-amd64.so  hsdis_read_memory_func 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  InstanceKlass::find_method_index 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  resource_allocate_bytes 
   0.00%        libc-2.31.so  __strncmp_avx2 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.23%      jvmci, level 4
   1.52%              kernel
   0.09%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%        libjimage.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division
# Parameters: (n = 8388608)

# Run progress: 66.67% complete, ETA 00:02:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5200.101 ms/op
# Warmup Iteration   2: 5020.155 ms/op
# Warmup Iteration   3: 5018.330 ms/op
# Warmup Iteration   4: 5020.955 ms/op
# Warmup Iteration   5: 5022.438 ms/op
Iteration   1: 5023.154 ms/op
Iteration   2: 5037.252 ms/op
Iteration   3: 5015.206 ms/op
Iteration   4: 5022.246 ms/op
Iteration   5: 5020.679 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division":
  5023.707 ±(99.9%) 31.481 ms/op [Average]
  (min, avg, max) = (5015.206, 5023.707, 5037.252), stdev = 8.176
  CI (99.9%): [4992.226, 5055.189] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division:asm":
PrintAssembly processed: 251621 total address lines.
Perf output processed (skipped 72.230 seconds):
 Column 1: cycles (51126 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 

                        0x00007f549f25e166:   mov    0x8(,%r11,8),%eax
   0.05%                0x00007f549f25e16e:   movabs $0x7f5423000000,%rdx
   0.00%                0x00007f549f25e178:   lea    (%rdx,%rax,1),%rax
                        0x00007f549f25e17c:   cmp    -0x263(%rip),%rax        # 0x00007f549f25df20
                                                                                  ;   {section_word}
          ╭             0x00007f549f25e183:   je     0x00007f549f25e19b
          │             0x00007f549f25e189:   cmp    -0x268(%rip),%rax        # 0x00007f549f25df28
          │                                                                       ;   {section_word}
          │             0x00007f549f25e190:   je     0x00007f549f25e4c5
          │             0x00007f549f25e196:   jmp    0x00007f549f25e60d
   0.05%  ↘             0x00007f549f25e19b:   mov    $0x4555,%ebx
                        0x00007f549f25e1a0:   cmp    -0x287(%rip),%rax        # 0x00007f549f25df20
                                                                                  ;   {section_word}
   0.00%   ╭            0x00007f549f25e1a7:   je     0x00007f549f25e1bf
           │            0x00007f549f25e1ad:   cmp    -0x28c(%rip),%rax        # 0x00007f549f25df28
           │                                                                      ;   {section_word}
           │            0x00007f549f25e1b4:   je     0x00007f549f25e4cf
           │            0x00007f549f25e1ba:   jmp    0x00007f549f25e6bf
   0.07%   ↘            0x00007f549f25e1bf:   movslq 0x10(,%r11,8),%rax           ;*getfield upTo {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::estimateSize@1 (line 115)
                                                                                  ; - java.util.Spliterator::getExactSizeIfKnown@19 (line 414)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@19 (line 526)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                        0x00007f549f25e1c7:   movslq 0xc(,%r11,8),%rdx            ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::estimateSize@6 (line 115)
                                                                                  ; - java.util.Spliterator::getExactSizeIfKnown@19 (line 414)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@19 (line 526)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.00%                0x00007f549f25e1cf:   sub    %rdx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::estimateSize@10 (line 115)
                                                                                  ; - java.util.Spliterator::getExactSizeIfKnown@19 (line 414)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@19 (line 526)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                        0x00007f549f25e1d2:   movslq 0x14(,%r11,8),%rdx           ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::estimateSize@15 (line 115)
                                                                                  ; - java.util.Spliterator::getExactSizeIfKnown@19 (line 414)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@19 (line 526)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.05%                0x00007f549f25e1da:   add    %rdx,%rax
                        0x00007f549f25e1dd:   movabs $0x7f54230e3be0,%rdx         ;   {metadata(&apos;java/util/Spliterator$OfInt&apos;)}
   0.00%                0x00007f549f25e1e7:   cmp    0x20(%rsi),%rdx
            ╭           0x00007f549f25e1eb:   je     0x00007f549f25e1fe
            │           0x00007f549f25e1f1:   cmp    $0xe3be0,%r9d                ;   {metadata(&apos;java/util/Spliterator$OfInt&apos;)}
            │           0x00007f549f25e1f8:   jne    0x00007f549f25e325           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                                     ; - java.util.stream.IntPipeline::adapt@4 (line 118)
            │                                                                     ; - java.util.stream.IntPipeline::forEachWithCancel@1 (line 160)
            │                                                                     ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
            │                                                                     ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
            │                                                                     ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
            │                                                                     ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
            │                                                                     ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
            │                                                                     ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            │                                                                     ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
            │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.00%    ↘           0x00007f549f25e1fe:   mov    0x8(,%r11,8),%edx
   0.06%                0x00007f549f25e206:   movabs $0x7f5423000000,%rsi
                        0x00007f549f25e210:   lea    (%rsi,%rdx,1),%r9
   0.00%                0x00007f549f25e214:   cmp    -0x2fb(%rip),%r9        # 0x00007f549f25df20
                                                                                  ;   {section_word}
                        0x00007f549f25e21b:   nopl   0x0(%rax,%rax,1)
   0.07%     ╭          0x00007f549f25e220:   je     0x00007f549f25e238
             │          0x00007f549f25e226:   cmp    -0x305(%rip),%r9        # 0x00007f549f25df28
             │                                                                    ;   {section_word}
             │          0x00007f549f25e22d:   je     0x00007f549f25e59f
             │          0x00007f549f25e233:   jmp    0x00007f549f25e65b
             ↘          0x00007f549f25e238:   mov    0xc(,%r11,8),%esi            ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@6 (line 79)
                                                                                  ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.01%                0x00007f549f25e240:   mov    0x10(,%r11,8),%ebx           ;*getfield upTo {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@12 (line 80)
                                                                                  ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                        0x00007f549f25e248:   cmp    %esi,%ebx
                        0x00007f549f25e24a:   jle    0x00007f549f25e3de           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@15 (line 80)
                                                                                  ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.07%                0x00007f549f25e250:   mov    %esi,%r10d
                        0x00007f549f25e253:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
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
   0.00%                0x00007f549f25e256:   mov    %r10d,0xc(,%r11,8)           ;*putfield from {reexecute=0 rethrow=0 return_oop=0}
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
                        0x00007f549f25e25e:   mov    %r8d,%eax                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::lambda$isPrime$0@2 (line 35)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f542402b770::test@5
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
   0.07%                0x00007f549f25e261:   cltd                                ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
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
                        0x00007f549f25e262:   idiv   %esi                         ; implicit exception: deoptimizes
                                                                                  ; ImmutableOopMap {rcx=Oop r11=NarrowOop }
   0.83%                0x00007f549f25e264:   test   %edx,%edx
                        0x00007f549f25e266:   je     0x00007f549f25e36e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
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
   0.02%                0x00007f549f25e26c:   mov    $0x1,%edx
                        0x00007f549f25e271:   mov    $0x0,%eax
   0.01%                0x00007f549f25e276:   mov    %r10d,%edi
                        0x00007f549f25e279:   mov    %edx,%r10d
   0.03%                0x00007f549f25e27c:   mov    %eax,%esi
                        0x00007f549f25e27e:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.IntPipeline::forEachWithCancel@11 (line 163)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                  ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   1.52%           ↗↗   0x00007f549f25e280:   test   %esi,%esi
              ╭    ││   0x00007f549f25e282:   jne    0x00007f549f25e2e9
   1.40%      │    ││   0x00007f549f25e288:   cmp    -0x36f(%rip),%r9        # 0x00007f549f25df20
              │    ││                                                             ;   {section_word}
   7.38%      │╭   ││   0x00007f549f25e28f:   je     0x00007f549f25e2ab
              ││   ││   0x00007f549f25e295:   cmp    -0x374(%rip),%r9        # 0x00007f549f25df28
              ││   ││                                                             ;   {section_word}
              ││   ││   0x00007f549f25e29c:   nopl   0x0(%rax)
              ││╭  ││   0x00007f549f25e2a0:   je     0x00007f549f25e2e9
              │││  ││   0x00007f549f25e2a6:   jmp    0x00007f549f25e6ed
   1.43%      │↘│  ││   0x00007f549f25e2ab:   cmp    %edi,%ebx
              │ │╭ ││   0x00007f549f25e2ad:   jle    0x00007f549f25e311           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││                                                             ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@15 (line 80)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
              │ ││ ││   0x00007f549f25e2b3:   mov    %edi,%ebp
   1.33%      │ ││ ││   0x00007f549f25e2b5:   inc    %ebp                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││                                                             ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@24 (line 81)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   7.50%      │ ││ ││   0x00007f549f25e2b7:   mov    %ebp,0xc(,%r11,8)            ;*putfield from {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││                                                             ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@25 (line 81)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   1.40%      │ ││ ││   0x00007f549f25e2bf:   mov    %r8d,%eax                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::lambda$isPrime$0@2 (line 35)
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f542402b770::test@5
              │ ││ ││                                                             ; - java.util.stream.MatchOps$2MatchSink::accept@12 (line 119)
              │ ││ ││                                                             ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
              │ ││ ││   0x00007f549f25e2c2:   cltd                                ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││                                                             ; - (reexecute) java.util.stream.Streams$RangeIntSpliterator::tryAdvance@28 (line 82)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   1.35%      │ ││ ││   0x00007f549f25e2c3:   idiv   %edi                         ; implicit exception: deoptimizes
              │ ││ ││                                                             ; ImmutableOopMap {rcx=Oop r11=NarrowOop }
  58.84%      │ ││ ││   0x00007f549f25e2c5:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rcx=Oop r11=NarrowOop }
              │ ││ ││                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││                                                             ; - (reexecute) java.util.stream.Streams$RangeIntSpliterator::tryAdvance@28 (line 82)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ ││ ││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ ││ ││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ ││ ││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   1.47%      │ ││ ││   0x00007f549f25e2cc:   test   %eax,(%rax)                  ;   {poll}
   1.44%      │ ││ ││   0x00007f549f25e2ce:   test   %edx,%edx
              │ ││╭││   0x00007f549f25e2d0:   je     0x00007f549f25e2da           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
              │ │││││                                                             ; - java.util.stream.MatchOps$2MatchSink::accept@24 (line 119)
              │ │││││                                                             ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
              │ │││││                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ │││││                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ │││││                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ │││││                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ │││││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ │││││                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ │││││                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ │││││                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   7.35%      │ │││││   0x00007f549f25e2d6:   mov    %ebp,%edi
   0.02%      │ │││╰│   0x00007f549f25e2d8:   jmp    0x00007f549f25e280           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
              │ │││ │                                                             ; - java.util.stream.IntPipeline::forEachWithCancel@11 (line 163)
              │ │││ │                                                             ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ │││ │                                                             ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ │││ │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ │││ │                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ │││ │                                                             ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ │││ │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ │││ │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ │││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.28%      │ ││↘ │   0x00007f549f25e2da:   mov    %ebp,%edi
   0.04%      │ ││  │   0x00007f549f25e2dc:   mov    $0x0,%r10d
   0.13%      │ ││  │   0x00007f549f25e2e2:   mov    $0x1,%esi
              │ ││  ╰   0x00007f549f25e2e7:   jmp    0x00007f549f25e280           ;*return {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                                ; - java.util.stream.MatchOps$2MatchSink::accept@43 (line 123)
              │ ││                                                                ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
              │ ││                                                                ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
              │ ││                                                                ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
              │ ││                                                                ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
              │ ││                                                                ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
              │ ││                                                                ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
              │ ││                                                                ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
              │ ││                                                                ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
              │ ││                                                                ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
              │ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.04%      ↘ ↘│   ↗  0x00007f549f25e2e9:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@36 (line 35)
                 │   │  0x00007f549f25e2ec:   mov    0x20(%rsp),%rbp
   0.13%         │   │  0x00007f549f25e2f1:   add    $0x28,%rsp
   0.05%         │   │  0x00007f549f25e2f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.02%         │   │  0x00007f549f25e300:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 │   │  0x00007f549f25e307:   ja     0x00007f549f25e7b9
   0.04%         │   │  0x00007f549f25e30d:   vzeroupper 
   0.08%         │   │  0x00007f549f25e310:   ret                                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                 │   │                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@11 (line 163)
                 │   │                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                 │   │                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                 │   │                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                 │   │                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                 │   │                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                 │   │                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                 │   │                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                 │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
   0.00%         ↘   │  0x00007f549f25e311:   cmpl   $0x1,0x14(,%r11,8)
   0.00%             ╰  0x00007f549f25e31a:   jl     0x00007f549f25e2e9
                        0x00007f549f25e31c:   nopl   0x0(%rax)
                        0x00007f549f25e320:   jmp    0x00007f549f25e68d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@41 (line 85)
                                                                                  ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
                                                                                  ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
                                                                                  ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
                                                                                  ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
                                                                                  ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                  ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
....................................................................................................
  94.61%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 
   1.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 
   0.91%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 1109 
   0.59%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 
   0.09%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 
   0.07%              kernel  [unknown] 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.03%  <...other 340 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime, version 4, compile id 1106 
   1.99%              kernel  [unknown] 
   0.91%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 1109 
   0.08%                      <unknown> 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.21%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.57%      jvmci, level 4
   1.99%              kernel
   0.22%           libjvm.so
   0.08%        libc-2.31.so
   0.08%                    
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:06:17

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

Benchmark                                   (n)  Mode  Cnt     Score    Error  Units
PrimesBenchmark.eratosthenes_sieve      8388608  avgt    5    44.874 ±  1.118  ms/op
PrimesBenchmark.eratosthenes_sieve:asm  8388608  avgt            NaN             ---
PrimesBenchmark.miller_rabin            8388608  avgt    5  5042.995 ±  0.770  ms/op
PrimesBenchmark.miller_rabin:asm        8388608  avgt            NaN             ---
PrimesBenchmark.trial_division          8388608  avgt    5  5023.707 ± 31.481  ms/op
PrimesBenchmark.trial_division:asm      8388608  avgt            NaN             ---
