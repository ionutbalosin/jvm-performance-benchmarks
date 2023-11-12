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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 32, transformation = Blowfish/CBC/NoPadding)

# Run progress: 0.00% complete, ETA 00:16:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 187.101 us/op
# Warmup Iteration   2: 173.143 us/op
# Warmup Iteration   3: 173.155 us/op
# Warmup Iteration   4: 172.849 us/op
# Warmup Iteration   5: 172.682 us/op
Iteration   1: 172.803 us/op
Iteration   2: 173.056 us/op
Iteration   3: 173.052 us/op
Iteration   4: 172.942 us/op
Iteration   5: 172.766 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  172.924 ±(99.9%) 0.523 us/op [Average]
  (min, avg, max) = (172.766, 172.924, 173.056), stdev = 0.136
  CI (99.9%): [172.401, 173.447] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 267545 total address lines.
Perf output processed (skipped 61.876 seconds):
 Column 1: cycles (50715 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 

 <region is too big to display, has 4964 lines, but threshold is 1000>
....................................................................................................
  81.67%  <total for region 1>

....[Hottest Regions]...............................................................................
  81.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   7.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   3.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   1.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.48%               kernel  [unknown] 
   0.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   1.23%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1105 
   1.68%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%            libjvm.so  fileStream::write 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  __memset_avx2_erms 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 5, compile id 1135 
   0.01%            libjvm.so  outputStream::print 
   0.00%         libc-2.31.so  _IO_str_init_static_internal 
   0.00%         libc-2.31.so  syscall 
   0.00%            libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.16%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.98%       jvmci, level 4
   1.68%               kernel
   0.17%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%     perf-2124656.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 64, transformation = Blowfish/CBC/NoPadding)

# Run progress: 10.00% complete, ETA 00:17:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 209.138 us/op
# Warmup Iteration   2: 173.011 us/op
# Warmup Iteration   3: 173.113 us/op
# Warmup Iteration   4: 173.679 us/op
# Warmup Iteration   5: 173.879 us/op
Iteration   1: 173.923 us/op
Iteration   2: 173.702 us/op
Iteration   3: 173.699 us/op
Iteration   4: 173.842 us/op
Iteration   5: 173.914 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  173.816 ±(99.9%) 0.425 us/op [Average]
  (min, avg, max) = (173.699, 173.816, 173.923), stdev = 0.110
  CI (99.9%): [173.391, 174.241] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 270111 total address lines.
Perf output processed (skipped 61.559 seconds):
 Column 1: cycles (50919 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 

 <region is too big to display, has 4964 lines, but threshold is 1000>
....................................................................................................
  80.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   7.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   3.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   1.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.73%               kernel  [unknown] 
   0.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.11%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   1.71%  <...other 444 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1123 
   2.43%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.01%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  FreeListAllocator::reset 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 1149 
   0.24%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.13%       jvmci, level 4
   2.43%               kernel
   0.22%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%       libz.so.1.2.11
   0.00%     perf-2124728.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = Blowfish/CBC/NoPadding)

# Run progress: 20.00% complete, ETA 00:15:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 191.538 us/op
# Warmup Iteration   2: 172.654 us/op
# Warmup Iteration   3: 172.605 us/op
# Warmup Iteration   4: 173.673 us/op
# Warmup Iteration   5: 173.820 us/op
Iteration   1: 173.790 us/op
Iteration   2: 173.005 us/op
Iteration   3: 172.962 us/op
Iteration   4: 173.201 us/op
Iteration   5: 173.281 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  173.248 ±(99.9%) 1.274 us/op [Average]
  (min, avg, max) = (172.962, 173.248, 173.790), stdev = 0.331
  CI (99.9%): [171.973, 174.522] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 276213 total address lines.
Perf output processed (skipped 62.181 seconds):
 Column 1: cycles (50579 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 

 <region is too big to display, has 4964 lines, but threshold is 1000>
....................................................................................................
  81.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  81.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   7.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   3.15%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   1.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.14%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.26%  <...other 333 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1102 
   1.38%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%    perf-2124794.map  [unknown] 
   0.20%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.23%      jvmci, level 4
   1.38%              kernel
   0.19%           libjvm.so
   0.10%        libc-2.31.so
   0.05%                    
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%    perf-2124794.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = Blowfish/CBC/NoPadding)

# Run progress: 30.00% complete, ETA 00:13:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 202.023 us/op
# Warmup Iteration   2: 173.500 us/op
# Warmup Iteration   3: 173.590 us/op
# Warmup Iteration   4: 173.485 us/op
# Warmup Iteration   5: 173.369 us/op
Iteration   1: 173.466 us/op
Iteration   2: 173.903 us/op
Iteration   3: 173.897 us/op
Iteration   4: 173.680 us/op
Iteration   5: 173.155 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  173.620 ±(99.9%) 1.218 us/op [Average]
  (min, avg, max) = (173.155, 173.620, 173.903), stdev = 0.316
  CI (99.9%): [172.402, 174.838] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 281251 total address lines.
Perf output processed (skipped 62.003 seconds):
 Column 1: cycles (50860 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 

 <region is too big to display, has 4964 lines, but threshold is 1000>
....................................................................................................
  81.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  81.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   7.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   3.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   1.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.52%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.46%              kernel  [unknown] 
   0.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.17%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   1.58%  <...other 439 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1121 
   2.00%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.03%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 1150 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.25%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.47%      jvmci, level 4
   2.00%              kernel
   0.23%           libjvm.so
   0.12%        libc-2.31.so
   0.09%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt
# Parameters: (dataSize = 16384, keySize = 448, transformation = Blowfish/CBC/NoPadding)

# Run progress: 40.00% complete, ETA 00:11:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 210.257 us/op
# Warmup Iteration   2: 172.907 us/op
# Warmup Iteration   3: 173.839 us/op
# Warmup Iteration   4: 173.397 us/op
# Warmup Iteration   5: 173.530 us/op
Iteration   1: 173.561 us/op
Iteration   2: 172.749 us/op
Iteration   3: 172.744 us/op
Iteration   4: 173.023 us/op
Iteration   5: 173.311 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt":
  173.078 ±(99.9%) 1.375 us/op [Average]
  (min, avg, max) = (172.744, 173.078, 173.561), stdev = 0.357
  CI (99.9%): [171.703, 174.452] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.decrypt:asm":
PrintAssembly processed: 286290 total address lines.
Perf output processed (skipped 62.319 seconds):
 Column 1: cycles (51442 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 

 <region is too big to display, has 4964 lines, but threshold is 1000>
....................................................................................................
  80.23%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   7.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   3.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   1.89%              kernel  [unknown] 
   1.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.11%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.71%  <...other 437 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::decrypt, version 2, compile id 1119 
   3.44%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_decrypt_jmhTest::decrypt_avgt_jmhStub, version 4, compile id 1157 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.22%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.11%      jvmci, level 4
   3.44%              kernel
   0.22%           libjvm.so
   0.12%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-2124930.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 32, transformation = Blowfish/CBC/NoPadding)

# Run progress: 50.00% complete, ETA 00:09:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 233.441 us/op
# Warmup Iteration   2: 199.509 us/op
# Warmup Iteration   3: 199.426 us/op
# Warmup Iteration   4: 199.104 us/op
# Warmup Iteration   5: 198.792 us/op
Iteration   1: 198.784 us/op
Iteration   2: 199.120 us/op
Iteration   3: 199.694 us/op
Iteration   4: 199.724 us/op
Iteration   5: 199.728 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  199.410 ±(99.9%) 1.675 us/op [Average]
  (min, avg, max) = (198.784, 199.410, 199.728), stdev = 0.435
  CI (99.9%): [197.735, 201.085] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 278945 total address lines.
Perf output processed (skipped 61.713 seconds):
 Column 1: cycles (51017 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 

 <region is too big to display, has 5052 lines, but threshold is 1000>
....................................................................................................
  87.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   5.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   2.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   1.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   0.98%              kernel  [unknown] 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   0.13%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.09%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1091 
   2.16%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 1122 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  metadata_Relocation::copy_into 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.17%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.41%      jvmci, level 4
   2.16%              kernel
   0.16%           libjvm.so
   0.13%        libc-2.31.so
   0.09%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 64, transformation = Blowfish/CBC/NoPadding)

# Run progress: 60.00% complete, ETA 00:07:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 219.766 us/op
# Warmup Iteration   2: 199.152 us/op
# Warmup Iteration   3: 199.036 us/op
# Warmup Iteration   4: 199.137 us/op
# Warmup Iteration   5: 199.011 us/op
Iteration   1: 199.009 us/op
Iteration   2: 199.201 us/op
Iteration   3: 199.438 us/op
Iteration   4: 199.420 us/op
Iteration   5: 199.443 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  199.302 ±(99.9%) 0.742 us/op [Average]
  (min, avg, max) = (199.009, 199.302, 199.443), stdev = 0.193
  CI (99.9%): [198.561, 200.044] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 282776 total address lines.
Perf output processed (skipped 62.001 seconds):
 Column 1: cycles (50474 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 

 <region is too big to display, has 5052 lines, but threshold is 1000>
....................................................................................................
  88.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   4.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   2.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   1.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.14%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.95%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   1.26%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 1137 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  Klass::is_subclass_of 
   0.14%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.46%      jvmci, level 4
   1.26%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 128, transformation = Blowfish/CBC/NoPadding)

# Run progress: 70.00% complete, ETA 00:05:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 220.966 us/op
# Warmup Iteration   2: 199.649 us/op
# Warmup Iteration   3: 199.417 us/op
# Warmup Iteration   4: 199.498 us/op
# Warmup Iteration   5: 199.351 us/op
Iteration   1: 199.355 us/op
Iteration   2: 199.289 us/op
Iteration   3: 198.866 us/op
Iteration   4: 198.863 us/op
Iteration   5: 198.885 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  199.052 ±(99.9%) 0.955 us/op [Average]
  (min, avg, max) = (198.863, 199.052, 199.355), stdev = 0.248
  CI (99.9%): [198.097, 200.006] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 283564 total address lines.
Perf output processed (skipped 62.204 seconds):
 Column 1: cycles (50657 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 

 <region is too big to display, has 5052 lines, but threshold is 1000>
....................................................................................................
  87.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   5.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   2.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   1.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.34%              kernel  [unknown] 
   0.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.10%  <...other 327 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1111 
   1.53%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 1140 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  stringStream::write 
   0.16%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%      jvmci, level 4
   1.53%              kernel
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-2125122.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 256, transformation = Blowfish/CBC/NoPadding)

# Run progress: 80.00% complete, ETA 00:03:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 226.865 us/op
# Warmup Iteration   2: 199.937 us/op
# Warmup Iteration   3: 199.508 us/op
# Warmup Iteration   4: 199.435 us/op
# Warmup Iteration   5: 199.105 us/op
Iteration   1: 199.115 us/op
Iteration   2: 199.186 us/op
Iteration   3: 199.061 us/op
Iteration   4: 199.066 us/op
Iteration   5: 199.120 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  199.110 ±(99.9%) 0.194 us/op [Average]
  (min, avg, max) = (199.061, 199.110, 199.186), stdev = 0.050
  CI (99.9%): [198.916, 199.304] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 275292 total address lines.
Perf output processed (skipped 61.804 seconds):
 Column 1: cycles (50683 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 

 <region is too big to display, has 5052 lines, but threshold is 1000>
....................................................................................................
  87.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  87.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   5.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   2.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   1.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   0.46%              kernel  [unknown] 
   0.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   0.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.03%  <...other 337 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1114 
   1.51%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.BlowfishCbcCryptoBenchmark_encrypt_jmhTest::encrypt_avgt_jmhStub, version 4, compile id 1143 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.21%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%      jvmci, level 4
   1.51%              kernel
   0.23%           libjvm.so
   0.10%        libc-2.31.so
   0.05%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt
# Parameters: (dataSize = 16384, keySize = 448, transformation = Blowfish/CBC/NoPadding)

# Run progress: 90.00% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 224.478 us/op
# Warmup Iteration   2: 199.554 us/op
# Warmup Iteration   3: 199.400 us/op
# Warmup Iteration   4: 199.440 us/op
# Warmup Iteration   5: 199.341 us/op
Iteration   1: 199.369 us/op
Iteration   2: 199.443 us/op
Iteration   3: 199.459 us/op
Iteration   4: 199.459 us/op
Iteration   5: 199.525 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt":
  199.451 ±(99.9%) 0.214 us/op [Average]
  (min, avg, max) = (199.369, 199.451, 199.525), stdev = 0.056
  CI (99.9%): [199.237, 199.665] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark.encrypt:asm":
PrintAssembly processed: 280273 total address lines.
Perf output processed (skipped 61.955 seconds):
 Column 1: cycles (51114 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 

 <region is too big to display, has 5052 lines, but threshold is 1000>
....................................................................................................
  86.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  86.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   5.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   2.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   1.17%              kernel  [unknown] 
   1.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   1.14%  <...other 338 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.BlowfishCbcCryptoBenchmark::encrypt, version 2, compile id 1103 
   2.34%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.21%  <...other 97 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.21%      jvmci, level 4
   2.34%              kernel
   0.20%           libjvm.so
   0.10%        libc-2.31.so
   0.07%                    
   0.03%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-2125251.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:19:12

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
BlowfishCbcCryptoBenchmark.decrypt           16384         32  Blowfish/CBC/NoPadding  avgt    5  172.924 ± 0.523  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384         32  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384         64  Blowfish/CBC/NoPadding  avgt    5  173.816 ± 0.425  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384         64  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        128  Blowfish/CBC/NoPadding  avgt    5  173.248 ± 1.274  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        128  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        256  Blowfish/CBC/NoPadding  avgt    5  173.620 ± 1.218  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        256  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.decrypt           16384        448  Blowfish/CBC/NoPadding  avgt    5  173.078 ± 1.375  us/op
BlowfishCbcCryptoBenchmark.decrypt:asm       16384        448  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384         32  Blowfish/CBC/NoPadding  avgt    5  199.410 ± 1.675  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384         32  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384         64  Blowfish/CBC/NoPadding  avgt    5  199.302 ± 0.742  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384         64  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        128  Blowfish/CBC/NoPadding  avgt    5  199.052 ± 0.955  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        128  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        256  Blowfish/CBC/NoPadding  avgt    5  199.110 ± 0.194  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        256  Blowfish/CBC/NoPadding  avgt           NaN            ---
BlowfishCbcCryptoBenchmark.encrypt           16384        448  Blowfish/CBC/NoPadding  avgt    5  199.451 ± 0.214  us/op
BlowfishCbcCryptoBenchmark.encrypt:asm       16384        448  Blowfish/CBC/NoPadding  avgt           NaN            ---
