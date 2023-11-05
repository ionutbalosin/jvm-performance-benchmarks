# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 166.935 us/op
# Warmup Iteration   2: 165.635 us/op
# Warmup Iteration   3: 166.314 us/op
# Warmup Iteration   4: 165.873 us/op
# Warmup Iteration   5: 165.959 us/op
Iteration   1: 165.681 us/op
Iteration   2: 165.949 us/op
Iteration   3: 166.292 us/op
Iteration   4: 165.695 us/op
Iteration   5: 166.017 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter":
  165.927 ±(99.9%) 0.975 us/op [Average]
  (min, avg, max) = (165.681, 165.927, 166.292), stdev = 0.253
  CI (99.9%): [164.952, 166.902] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter:·asm":
PrintAssembly processed: 194067 total address lines.
Perf output processed (skipped 58.769 seconds):
 Column 1: cycles (50668 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 734 

              0x00007fe2eab1ada8:   je     0x00007fe2eab1adb2
              0x00007fe2eab1adae:   mov    %edi,%ecx
              0x00007fe2eab1adb0:   jmp    0x00007fe2eab1ad90           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
              0x00007fe2eab1adb2:   mov    %ebx,0x10(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
              0x00007fe2eab1adb7:   mov    %edi,%ecx
              0x00007fe2eab1adb9:   jmp    0x00007fe2eab1ad90
              0x00007fe2eab1adbb:   lea    -0x8(%r8),%r9d
              0x00007fe2eab1adbf:   nop
   0.00%   ↗  0x00007fe2eab1adc0:   cmp    %ecx,%r9d
           │  0x00007fe2eab1adc3:   jle    0x00007fe2eab1aec0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@17 (line 99)
           │  0x00007fe2eab1adc9:   mov    0x10(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   3.63%   │  0x00007fe2eab1adce:   test   $0x1,%ebx
          ╭│  0x00007fe2eab1add4:   je     0x00007fe2eab1ae67           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.84%  ││  0x00007fe2eab1adda:   mov    0x14(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   0.04%  ││  0x00007fe2eab1addf:   nop
          ││  0x00007fe2eab1ade0:   test   $0x1,%ebx
          ││  0x00007fe2eab1ade6:   je     0x00007fe2eab1ae92           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.12%  ││  0x00007fe2eab1adec:   mov    0x18(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   0.05%  ││  0x00007fe2eab1adf1:   test   $0x1,%ebx
          ││  0x00007fe2eab1adf7:   je     0x00007fe2eab1ae71           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   0.43%  ││  0x00007fe2eab1adfd:   mov    0x1c(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
  24.48%  ││  0x00007fe2eab1ae02:   test   $0x1,%ebx
          ││  0x00007fe2eab1ae08:   je     0x00007fe2eab1ae78           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   4.17%  ││  0x00007fe2eab1ae0e:   mov    0x20(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   3.40%  ││  0x00007fe2eab1ae13:   test   $0x1,%ebx
          ││  0x00007fe2eab1ae19:   je     0x00007fe2eab1aea3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.41%  ││  0x00007fe2eab1ae1f:   mov    0x24(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   0.09%  ││  0x00007fe2eab1ae24:   test   $0x1,%ebx
          ││  0x00007fe2eab1ae2a:   je     0x00007fe2eab1ae8b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   4.37%  ││  0x00007fe2eab1ae30:   mov    0x28(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   0.08%  ││  0x00007fe2eab1ae35:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││  0x00007fe2eab1ae40:   test   $0x1,%ebx
          ││  0x00007fe2eab1ae46:   je     0x00007fe2eab1ae9c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.08%  ││  0x00007fe2eab1ae4c:   mov    0x2c(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   7.62%  ││  0x00007fe2eab1ae51:   lea    0x8(%rcx),%edi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@41 (line 99)
          ││  0x00007fe2eab1ae54:   test   $0x1,%ebx
          ││  0x00007fe2eab1ae5a:   je     0x00007fe2eab1ae7f
          ││  0x00007fe2eab1ae60:   mov    %edi,%ecx
          │╰  0x00007fe2eab1ae62:   jmp    0x00007fe2eab1adc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
          ↘   0x00007fe2eab1ae67:   mov    %ebx,0x10(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
              0x00007fe2eab1ae6c:   jmp    0x00007fe2eab1adda           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  61.81%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 734 

            0x00007fe2eab1ae62:   jmp    0x00007fe2eab1adc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
            0x00007fe2eab1ae67:   mov    %ebx,0x10(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
            0x00007fe2eab1ae6c:   jmp    0x00007fe2eab1adda           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
            0x00007fe2eab1ae71:   mov    %ebx,0x18(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
            0x00007fe2eab1ae76:   jmp    0x00007fe2eab1adfd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   6.51%    0x00007fe2eab1ae78:   mov    %ebx,0x1c(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   3.31%    0x00007fe2eab1ae7d:   jmp    0x00007fe2eab1ae0e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.54%    0x00007fe2eab1ae7f:   mov    %ebx,0x2c(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   3.68%    0x00007fe2eab1ae84:   mov    %edi,%ecx
   4.06%    0x00007fe2eab1ae86:   jmp    0x00007fe2eab1adc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   4.33%    0x00007fe2eab1ae8b:   mov    %ebx,0x24(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   3.10%    0x00007fe2eab1ae90:   jmp    0x00007fe2eab1ae30           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.50%    0x00007fe2eab1ae92:   mov    %ebx,0x14(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   4.31%    0x00007fe2eab1ae97:   jmp    0x00007fe2eab1adec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
            0x00007fe2eab1ae9c:   mov    %ebx,0x28(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
            0x00007fe2eab1aea1:   jmp    0x00007fe2eab1ae4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
            0x00007fe2eab1aea3:   mov    %ebx,0x20(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
            0x00007fe2eab1aea8:   jmp    0x00007fe2eab1ae1f
            0x00007fe2eab1aead:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  36.33%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 734 
  36.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 734 
   0.60%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 734 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 734 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.77%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 734 
   1.45%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%       jvmci, level 4
   1.45%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%       perf-48720.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter
# Parameters: (size = 1048576)

# Run progress: 8.33% complete, ETA 00:20:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 524.407 us/op
# Warmup Iteration   2: 521.909 us/op
# Warmup Iteration   3: 522.561 us/op
# Warmup Iteration   4: 501.566 us/op
# Warmup Iteration   5: 499.247 us/op
Iteration   1: 501.881 us/op
Iteration   2: 500.892 us/op
Iteration   3: 498.104 us/op
Iteration   4: 499.925 us/op
Iteration   5: 501.015 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter":
  500.363 ±(99.9%) 5.548 us/op [Average]
  (min, avg, max) = (498.104, 500.363, 501.881), stdev = 1.441
  CI (99.9%): [494.815, 505.912] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter:·asm":
PrintAssembly processed: 190544 total address lines.
Perf output processed (skipped 58.590 seconds):
 Column 1: cycles (51012 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 728 

                           0x00007f5bb2b1a928:   jne    0x00007f5bb2b1a937           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
                           0x00007f5bb2b1a92e:   mov    %ebx,0x10(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
                           0x00007f5bb2b1a933:   mov    %edi,%ecx
                           0x00007f5bb2b1a935:   jmp    0x00007f5bb2b1a910
                           0x00007f5bb2b1a937:   mov    %edi,%ecx
                           0x00007f5bb2b1a939:   jmp    0x00007f5bb2b1a910
                           0x00007f5bb2b1a93b:   lea    -0x8(%r8),%r9d
                           0x00007f5bb2b1a93f:   nop
   2.46%           ↗↗      0x00007f5bb2b1a940:   cmp    %ecx,%r9d
          ╭        ││      0x00007f5bb2b1a943:   jle    0x00007f5bb2b1aa40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@17 (line 99)
   2.60%  │        ││      0x00007f5bb2b1a949:   mov    0x10(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   2.66%  │        ││      0x00007f5bb2b1a94e:   test   $0x1,%ebx
   0.00%  │╭       ││      0x00007f5bb2b1a954:   jne    0x00007f5bb2b1a95f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││       ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
          ││       ││      0x00007f5bb2b1a95a:   mov    %ebx,0x10(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││       ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   4.79%  │↘       ││      0x00007f5bb2b1a95f:   mov    0x14(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   0.18%  │        ││      0x00007f5bb2b1a964:   test   $0x1,%ebx
          │ ╭      ││      0x00007f5bb2b1a96a:   jne    0x00007f5bb2b1a975           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │      ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   3.04%  │ │      ││      0x00007f5bb2b1a970:   mov    %ebx,0x14(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │      ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   2.48%  │ ↘      ││      0x00007f5bb2b1a975:   mov    0x18(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   4.84%  │        ││      0x00007f5bb2b1a97a:   nopw   0x0(%rax,%rax,1)
   0.00%  │        ││      0x00007f5bb2b1a980:   test   $0x1,%ebx
          │  ╭     ││      0x00007f5bb2b1a986:   jne    0x00007f5bb2b1a991           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │     ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
          │  │     ││      0x00007f5bb2b1a98c:   mov    %ebx,0x18(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │     ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   2.52%  │  ↘     ││      0x00007f5bb2b1a991:   mov    0x1c(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
  16.51%  │        ││      0x00007f5bb2b1a996:   data16 nopw 0x0(%rax,%rax,1)
   3.56%  │        ││      0x00007f5bb2b1a9a0:   test   $0x1,%ebx
          │   ╭    ││      0x00007f5bb2b1a9a6:   jne    0x00007f5bb2b1a9b1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │    ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   1.68%  │   │    ││      0x00007f5bb2b1a9ac:   mov    %ebx,0x1c(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │   │    ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   4.00%  │   ↘    ││      0x00007f5bb2b1a9b1:   mov    0x20(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   7.99%  │        ││      0x00007f5bb2b1a9b6:   data16 nopw 0x0(%rax,%rax,1)
   2.50%  │        ││      0x00007f5bb2b1a9c0:   test   $0x1,%ebx
          │    ╭   ││      0x00007f5bb2b1a9c6:   jne    0x00007f5bb2b1a9d1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │    │   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
          │    │   ││      0x00007f5bb2b1a9cc:   mov    %ebx,0x20(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    │   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   2.28%  │    ↘   ││      0x00007f5bb2b1a9d1:   mov    0x24(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   2.77%  │        ││      0x00007f5bb2b1a9d6:   data16 nopw 0x0(%rax,%rax,1)
   2.44%  │        ││      0x00007f5bb2b1a9e0:   test   $0x1,%ebx
          │     ╭  ││      0x00007f5bb2b1a9e6:   jne    0x00007f5bb2b1a9f1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │     │  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   2.71%  │     │  ││      0x00007f5bb2b1a9ec:   mov    %ebx,0x24(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │     │  ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   2.39%  │     ↘  ││      0x00007f5bb2b1a9f1:   mov    0x28(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   2.71%  │        ││      0x00007f5bb2b1a9f6:   data16 nopw 0x0(%rax,%rax,1)
   2.55%  │        ││      0x00007f5bb2b1aa00:   test   $0x1,%ebx
   0.00%  │      ╭ ││      0x00007f5bb2b1aa06:   jne    0x00007f5bb2b1aa11           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │      │ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
          │      │ ││      0x00007f5bb2b1aa0c:   mov    %ebx,0x28(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │      │ ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   2.70%  │      ↘ ││      0x00007f5bb2b1aa11:   mov    0x2c(%r11,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   2.61%  │        ││      0x00007f5bb2b1aa16:   lea    0x8(%rcx),%edi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │        ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@41 (line 99)
   2.52%  │        ││      0x00007f5bb2b1aa19:   nopl   0x0(%rax)
   2.42%  │        ││      0x00007f5bb2b1aa20:   test   $0x1,%ebx
          │       ╭││      0x00007f5bb2b1aa26:   jne    0x00007f5bb2b1aa38           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   2.81%  │       │││      0x00007f5bb2b1aa2c:   mov    %ebx,0x2c(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │       │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   2.32%  │       │││      0x00007f5bb2b1aa31:   mov    %edi,%ecx
   2.47%  │       │╰│      0x00007f5bb2b1aa33:   jmp    0x00007f5bb2b1a940
          │       ↘ │      0x00007f5bb2b1aa38:   mov    %edi,%ecx
          │         ╰      0x00007f5bb2b1aa3a:   jmp    0x00007f5bb2b1a940
          │                0x00007f5bb2b1aa3f:   nop
          ↘            ↗↗  0x00007f5bb2b1aa40:   cmp    %ecx,%r8d
                     ╭ ││  0x00007f5bb2b1aa43:   jbe    0x00007f5bb2b1aa6c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                     │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@17 (line 99)
                     │ ││  0x00007f5bb2b1aa49:   mov    0x10(%r11,%rcx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                     │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   0.02%             │ ││  0x00007f5bb2b1aa4e:   mov    %ecx,%ebx
                     │ ││  0x00007f5bb2b1aa50:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                     │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@41 (line 99)
                     │ ││  0x00007f5bb2b1aa52:   test   $0x1,%r9d
                     │╭││  0x00007f5bb2b1aa59:   jne    0x00007f5bb2b1aa68           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
                     ││││  0x00007f5bb2b1aa5f:   mov    %r9d,0x10(%r10,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                     ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   0.00%             ││││  0x00007f5bb2b1aa64:   mov    %ebx,%ecx
                     ││╰│  0x00007f5bb2b1aa66:   jmp    0x00007f5bb2b1aa40
                     │↘ │  0x00007f5bb2b1aa68:   mov    %ebx,%ecx
                     │  ╰  0x00007f5bb2b1aa6a:   jmp    0x00007f5bb2b1aa40           ; ImmutableOopMap {r10=Oop }
                     │                                                               ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                     │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@47 (line 105)
                     ↘     0x00007f5bb2b1aa6c:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f5bb2b1aab9
                                                                                     ;* unwind (locked if synchronized)
                                                                                     ; - org.openjdk.jmh.infra.Blackhole::consume@-3
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@49 (line 105)
   0.00%                   0x00007f5bb2b1aa6e:   mov    0x10(%rsp),%rbp
                           0x00007f5bb2b1aa73:   add    $0x18,%rsp
                           0x00007f5bb2b1aa77:   mov    0x348(%r15),%rcx
   0.00%                   0x00007f5bb2b1aa7e:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%                   0x00007f5bb2b1aa80:   ret    
                           0x00007f5bb2b1aa81:   movl   $0xffffffe5,0x370(%r15)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
                           0x00007f5bb2b1aa8c:   movq   $0x294,0x378(%r15)
                           0x00007f5bb2b1aa97:   call   0x00007f5bab02427a           ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                                     ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@0 (line 97)
                                                                                     ;   {runtime_call DeoptimizationBlob}
                           0x00007f5bb2b1aa9c:   nop
                           0x00007f5bb2b1aa9d:   movl   $0xfffffff5,0x370(%r15)
                           0x00007f5bb2b1aaa8:   movq   $0x0,0x378(%r15)
....................................................................................................
  97.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 728 
   0.78%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.99%  <...other 344 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 728 
   1.99%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  _nl_cleanup_time 
   0.01%            libjvm.so  G1Analytics::predict_scan_card_num 
   0.24%  <...other 109 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.55%       jvmci, level 4
   1.99%               kernel
   0.19%            libjvm.so
   0.10%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 1
   0.00%          c1, level 3
   0.00%       perf-48782.map
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul
# Parameters: (size = 262144)

# Run progress: 16.67% complete, ETA 00:18:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 32439.209 us/op
# Warmup Iteration   2: 32849.774 us/op
# Warmup Iteration   3: 32878.260 us/op
# Warmup Iteration   4: 32385.085 us/op
# Warmup Iteration   5: 33239.910 us/op
Iteration   1: 33185.975 us/op
Iteration   2: 32848.565 us/op
Iteration   3: 32827.542 us/op
Iteration   4: 31220.463 us/op
Iteration   5: 32025.008 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul":
  32421.511 ±(99.9%) 3063.242 us/op [Average]
  (min, avg, max) = (31220.463, 32421.511, 33185.975), stdev = 795.514
  CI (99.9%): [29358.269, 35484.752] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul:·asm":
PrintAssembly processed: 193423 total address lines.
Perf output processed (skipped 58.745 seconds):
 Column 1: cycles (50945 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 

              0x00007fe276b1da24:   movslq %ebx,%rbp
              0x00007fe276b1da27:   add    %rdx,%rbp
              0x00007fe276b1da2a:   cmp    %rbp,%rcx
              0x00007fe276b1da2d:   jbe    0x00007fe276b1e045
              0x00007fe276b1da33:   cmp    %ebx,%eax
              0x00007fe276b1da35:   jbe    0x00007fe276b1e045           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
              0x00007fe276b1da3b:   mov    %ebx,0x48(%rsp)
              0x00007fe276b1da3f:   mov    $0x0,%ebp
              0x00007fe276b1da44:   mov    $0x0,%ecx
   0.00%      0x00007fe276b1da49:   mov    0x18(%rsp),%rdx
              0x00007fe276b1da4e:   jmp    0x00007fe276b1dbbf           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@49 (line 139)
              0x00007fe276b1da53:   nopw   0x0(%rax,%rax,1)
              0x00007fe276b1da5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@52 (line 139)
              0x00007fe276b1da60:   test   %ebp,%ebp
              0x00007fe276b1da62:   jl     0x00007fe276b1e06b
   0.01%      0x00007fe276b1da68:   cmp    %esi,%ebp
              0x00007fe276b1da6a:   jg     0x00007fe276b1e06b           ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
              0x00007fe276b1da70:   mov    %ecx,%eax
   0.30%      0x00007fe276b1da72:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@60 (line 140)
   0.00%      0x00007fe276b1da74:   mov    0x10(%r8,%rax,4),%eax        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
   0.06%      0x00007fe276b1da79:   lea    0x10(%r9),%rbx
              0x00007fe276b1da7d:   lea    0x10(%r8,%rbp,4),%rsi
   0.28%      0x00007fe276b1da82:   cmp    $0x8,%r13d
              0x00007fe276b1da86:   jb     0x00007fe276b1dbda
              0x00007fe276b1da8c:   mov    $0x0,%r8
   0.02%      0x00007fe276b1da93:   nopw   0x0(%rax,%rax,1)
              0x00007fe276b1da9c:   data16 data16 xchg %ax,%ax
   4.00%  ↗   0x00007fe276b1daa0:   vmovdqu (%rsi,%r8,4),%ymm1
  20.63%  │   0x00007fe276b1daa6:   vmovdqu %ymm1,(%rbx,%r8,4)
  23.42%  │   0x00007fe276b1daac:   lea    0x8(%r8),%r8
          │   0x00007fe276b1dab0:   cmp    %rdi,%r8
          ╰   0x00007fe276b1dab3:   jle    0x00007fe276b1daa0
              0x00007fe276b1dab5:   cmp    %r14,%r8
           ╭  0x00007fe276b1dab8:   jg     0x00007fe276b1dace
           │  0x00007fe276b1dabe:   vmovdqu (%rsi,%r8,4),%xmm1
           │  0x00007fe276b1dac4:   vmovdqu %xmm1,(%rbx,%r8,4)
           │  0x00007fe276b1daca:   lea    0x4(%r8),%r8
           ↘  0x00007fe276b1dace:   cmp    %r11,%r8
              0x00007fe276b1dad1:   jg     0x00007fe276b1dae7
              0x00007fe276b1dad7:   vmovq  (%rsi,%r8,4),%xmm1
....................................................................................................
  48.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 

                0x00007fe276b1dab5:   cmp    %r14,%r8
          ╭     0x00007fe276b1dab8:   jg     0x00007fe276b1dace
          │     0x00007fe276b1dabe:   vmovdqu (%rsi,%r8,4),%xmm1
          │     0x00007fe276b1dac4:   vmovdqu %xmm1,(%rbx,%r8,4)
          │     0x00007fe276b1daca:   lea    0x4(%r8),%r8
          ↘     0x00007fe276b1dace:   cmp    %r11,%r8
           ╭    0x00007fe276b1dad1:   jg     0x00007fe276b1dae7
           │    0x00007fe276b1dad7:   vmovq  (%rsi,%r8,4),%xmm1
           │    0x00007fe276b1dadd:   vmovq  %xmm1,(%rbx,%r8,4)
           │    0x00007fe276b1dae3:   lea    0x2(%r8),%r8
   0.27%   ↘    0x00007fe276b1dae7:   cmp    %r10,%r8
            ╭   0x00007fe276b1daea:   jg     0x00007fe276b1daf8
            │   0x00007fe276b1daf0:   mov    (%rsi,%r8,4),%esi
            │   0x00007fe276b1daf4:   mov    %esi,(%rbx,%r8,4)            ;* unwind (locked if synchronized)
            │                                                             ; - java.lang.System::arraycopy@-3
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
   0.31%    ↘   0x00007fe276b1daf8:   lea    0x10(%rdx),%rsi
                0x00007fe276b1dafc:   lea    0x10(%r9),%r8
                0x00007fe276b1db00:   vmovd  %eax,%xmm1
                0x00007fe276b1db04:   vpbroadcastd %xmm1,%ymm1
   0.28%        0x00007fe276b1db09:   cmp    $0x8,%r13d
                0x00007fe276b1db0d:   jb     0x00007fe276b1dbce
                0x00007fe276b1db13:   mov    $0x0,%rbx
                0x00007fe276b1db1a:   nopw   0x0(%rax,%rax,1)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   4.90%     ↗  0x00007fe276b1db20:   vmovdqu (%r8,%rbx,4),%ymm2
   5.04%     │  0x00007fe276b1db26:   vmovdqu (%rsi,%rbx,4),%ymm3
   4.80%     │  0x00007fe276b1db2b:   vpmulld %ymm2,%ymm1,%ymm2           ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   9.78%     │  0x00007fe276b1db30:   vpaddd %ymm3,%ymm2,%ymm2            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   5.01%     │  0x00007fe276b1db34:   vmovdqu %ymm2,(%rsi,%rbx,4)
   7.03%     │  0x00007fe276b1db39:   lea    0x8(%rbx),%rbx
   4.95%     │  0x00007fe276b1db3d:   data16 xchg %ax,%ax
   4.86%     │  0x00007fe276b1db40:   cmp    %rdi,%rbx
             ╰  0x00007fe276b1db43:   jle    0x00007fe276b1db20
   0.02%        0x00007fe276b1db45:   cmp    %r14,%rbx
                0x00007fe276b1db48:   jg     0x00007fe276b1db6b           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
                0x00007fe276b1db4e:   vmovdqu (%r8,%rbx,4),%xmm2
                0x00007fe276b1db54:   vmovdqu (%rsi,%rbx,4),%xmm3
                0x00007fe276b1db59:   vpmulld %xmm2,%xmm1,%xmm2           ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
                0x00007fe276b1db5e:   vpaddd %xmm3,%xmm2,%xmm2            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
....................................................................................................
  47.24%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
  47.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
   1.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
   0.70%               kernel  [unknown] 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
   0.13%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  re_search_stub 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   1.17%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
   2.01%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%         libc-2.31.so  re_search_stub 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%            libjvm.so  outputStream::update_position 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.59%       jvmci, level 4
   2.01%               kernel
   0.15%            libjvm.so
   0.13%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.00%               [vdso]
   0.00%         runtime stub
   0.00%       perf-48843.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul
# Parameters: (size = 1048576)

# Run progress: 25.00% complete, ETA 00:16:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 336808.547 us/op
# Warmup Iteration   2: 296864.719 us/op
# Warmup Iteration   3: 323306.669 us/op
# Warmup Iteration   4: 315766.533 us/op
# Warmup Iteration   5: 296797.937 us/op
Iteration   1: 330042.905 us/op
Iteration   2: 294942.618 us/op
Iteration   3: 314279.609 us/op
Iteration   4: 297270.628 us/op
Iteration   5: 330073.704 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul":
  313321.893 ±(99.9%) 65477.184 us/op [Average]
  (min, avg, max) = (294942.618, 313321.893, 330073.704), stdev = 17004.217
  CI (99.9%): [247844.709, 378799.076] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul:·asm":
PrintAssembly processed: 194837 total address lines.
Perf output processed (skipped 59.120 seconds):
 Column 1: cycles (51212 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 

                0x00007fae7eb214b5:   cmp    %r14,%r8
          ╭     0x00007fae7eb214b8:   jg     0x00007fae7eb214ce
          │     0x00007fae7eb214be:   vmovdqu (%rsi,%r8,4),%xmm1
          │     0x00007fae7eb214c4:   vmovdqu %xmm1,(%rbx,%r8,4)
          │     0x00007fae7eb214ca:   lea    0x4(%r8),%r8
          ↘     0x00007fae7eb214ce:   cmp    %r11,%r8
           ╭    0x00007fae7eb214d1:   jg     0x00007fae7eb214e7
           │    0x00007fae7eb214d7:   vmovq  (%rsi,%r8,4),%xmm1
           │    0x00007fae7eb214dd:   vmovq  %xmm1,(%rbx,%r8,4)
           │    0x00007fae7eb214e3:   lea    0x2(%r8),%r8
   0.15%   ↘    0x00007fae7eb214e7:   cmp    %r10,%r8
            ╭   0x00007fae7eb214ea:   jg     0x00007fae7eb214f8
            │   0x00007fae7eb214f0:   mov    (%rsi,%r8,4),%esi
            │   0x00007fae7eb214f4:   mov    %esi,(%rbx,%r8,4)            ;* unwind (locked if synchronized)
            │                                                             ; - java.lang.System::arraycopy@-3
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
   0.11%    ↘   0x00007fae7eb214f8:   lea    0x10(%rdx),%rsi
                0x00007fae7eb214fc:   lea    0x10(%r9),%r8
                0x00007fae7eb21500:   vmovd  %eax,%xmm1
                0x00007fae7eb21504:   vpbroadcastd %xmm1,%ymm1
   0.13%        0x00007fae7eb21509:   cmp    $0x8,%r13d
                0x00007fae7eb2150d:   jb     0x00007fae7eb215ce
                0x00007fae7eb21513:   mov    $0x0,%rbx
                0x00007fae7eb2151a:   nopw   0x0(%rax,%rax,1)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   4.66%     ↗  0x00007fae7eb21520:   vmovdqu (%r8,%rbx,4),%ymm2
   7.16%     │  0x00007fae7eb21526:   vmovdqu (%rsi,%rbx,4),%ymm3
   3.41%     │  0x00007fae7eb2152b:   vpmulld %ymm2,%ymm1,%ymm2           ;*imul {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
  11.62%     │  0x00007fae7eb21530:   vpaddd %ymm3,%ymm2,%ymm2            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   9.10%     │  0x00007fae7eb21534:   vmovdqu %ymm2,(%rsi,%rbx,4)
   5.74%     │  0x00007fae7eb21539:   lea    0x8(%rbx),%rbx
   3.23%     │  0x00007fae7eb2153d:   data16 xchg %ax,%ax
   4.23%     │  0x00007fae7eb21540:   cmp    %rdi,%rbx
             ╰  0x00007fae7eb21543:   jle    0x00007fae7eb21520
   0.07%        0x00007fae7eb21545:   cmp    %r14,%rbx
                0x00007fae7eb21548:   jg     0x00007fae7eb2156b           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
                0x00007fae7eb2154e:   vmovdqu (%r8,%rbx,4),%xmm2
                0x00007fae7eb21554:   vmovdqu (%rsi,%rbx,4),%xmm3
                0x00007fae7eb21559:   vpmulld %xmm2,%xmm1,%xmm2           ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
                0x00007fae7eb2155e:   vpaddd %xmm3,%xmm2,%xmm2            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
....................................................................................................
  49.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 

              0x00007fae7eb2143f:   mov    $0x0,%ebp
              0x00007fae7eb21444:   mov    $0x0,%ecx
              0x00007fae7eb21449:   mov    0x18(%rsp),%rdx
              0x00007fae7eb2144e:   jmp    0x00007fae7eb215bf           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@49 (line 139)
              0x00007fae7eb21453:   nopw   0x0(%rax,%rax,1)
              0x00007fae7eb2145c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@52 (line 139)
              0x00007fae7eb21460:   test   %ebp,%ebp
              0x00007fae7eb21462:   jl     0x00007fae7eb21a6b
   0.00%      0x00007fae7eb21468:   cmp    %esi,%ebp
              0x00007fae7eb2146a:   jg     0x00007fae7eb21a6b           ;* unwind (locked if synchronized)
                                                                        ; - java.lang.System::arraycopy@-3
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
              0x00007fae7eb21470:   mov    %ecx,%eax
   0.12%      0x00007fae7eb21472:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@60 (line 140)
              0x00007fae7eb21474:   mov    0x10(%r8,%rax,4),%eax        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
   0.06%      0x00007fae7eb21479:   lea    0x10(%r9),%rbx
              0x00007fae7eb2147d:   lea    0x10(%r8,%rbp,4),%rsi
   0.12%      0x00007fae7eb21482:   cmp    $0x8,%r13d
              0x00007fae7eb21486:   jb     0x00007fae7eb215da
              0x00007fae7eb2148c:   mov    $0x0,%r8
              0x00007fae7eb21493:   nopw   0x0(%rax,%rax,1)
              0x00007fae7eb2149c:   data16 data16 xchg %ax,%ax
   0.91%  ↗   0x00007fae7eb214a0:   vmovdqu (%rsi,%r8,4),%ymm1
  23.34%  │   0x00007fae7eb214a6:   vmovdqu %ymm1,(%rbx,%r8,4)
  23.35%  │   0x00007fae7eb214ac:   lea    0x8(%r8),%r8
          │   0x00007fae7eb214b0:   cmp    %rdi,%r8
          ╰   0x00007fae7eb214b3:   jle    0x00007fae7eb214a0
              0x00007fae7eb214b5:   cmp    %r14,%r8
           ╭  0x00007fae7eb214b8:   jg     0x00007fae7eb214ce
           │  0x00007fae7eb214be:   vmovdqu (%rsi,%r8,4),%xmm1
           │  0x00007fae7eb214c4:   vmovdqu %xmm1,(%rbx,%r8,4)
           │  0x00007fae7eb214ca:   lea    0x4(%r8),%r8
           ↘  0x00007fae7eb214ce:   cmp    %r11,%r8
              0x00007fae7eb214d1:   jg     0x00007fae7eb214e7
              0x00007fae7eb214d7:   vmovq  (%rsi,%r8,4),%xmm1
....................................................................................................
  47.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 
  47.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 
   0.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 
   0.13%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.13%  <...other 363 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 6, compile id 745 
   1.42%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  defaultStream::write 
   0.15%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.20%       jvmci, level 4
   1.42%               kernel
   0.15%            libjvm.so
   0.09%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum
# Parameters: (size = 262144)

# Run progress: 33.33% complete, ETA 00:14:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.923 us/op
# Warmup Iteration   2: 28.157 us/op
# Warmup Iteration   3: 28.145 us/op
# Warmup Iteration   4: 28.147 us/op
# Warmup Iteration   5: 28.145 us/op
Iteration   1: 28.146 us/op
Iteration   2: 28.092 us/op
Iteration   3: 28.068 us/op
Iteration   4: 28.068 us/op
Iteration   5: 28.148 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum":
  28.104 ±(99.9%) 0.155 us/op [Average]
  (min, avg, max) = (28.068, 28.104, 28.148), stdev = 0.040
  CI (99.9%): [27.950, 28.259] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum:·asm":
PrintAssembly processed: 191539 total address lines.
Perf output processed (skipped 58.574 seconds):
 Column 1: cycles (50969 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 726 

   0.01%      0x00007ffa62b19ab3:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007ffa62b19b76
   0.04%      0x00007ffa62b19abb:   nopl   0x0(%rax,%rax,1)
              0x00007ffa62b19ac0:   test   %r10,%r10
              0x00007ffa62b19ac3:   je     0x00007ffa62b19b6e
              0x00007ffa62b19ac9:   shl    $0x3,%rax                    ;*getfield intArr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@1 (line 71)
              0x00007ffa62b19acd:   lea    0x10(%rax),%rax
              0x00007ffa62b19ad1:   vpxor  %xmm0,%xmm0,%xmm0
              0x00007ffa62b19ad5:   cmp    $0x8,%r10
              0x00007ffa62b19ad9:   jb     0x00007ffa62b19b65
   0.00%      0x00007ffa62b19adf:   lea    -0x8(%r10),%r11
              0x00007ffa62b19ae3:   mov    $0x0,%r8
              0x00007ffa62b19aea:   nopw   0x0(%rax,%rax,1)
  10.95%  ↗   0x00007ffa62b19af0:   vmovdqu (%rax,%r8,4),%ymm1
  37.99%  │   0x00007ffa62b19af6:   vpaddd %ymm1,%ymm0,%ymm0
  29.50%  │   0x00007ffa62b19afa:   lea    0x8(%r8),%r8
   9.12%  │   0x00007ffa62b19afe:   xchg   %ax,%ax
   9.95%  │   0x00007ffa62b19b00:   cmp    %r11,%r8
          ╰   0x00007ffa62b19b03:   jle    0x00007ffa62b19af0
              0x00007ffa62b19b05:   vextracti128 $0x1,%ymm0,%xmm1
   0.00%      0x00007ffa62b19b0b:   vpaddd %xmm1,%xmm0,%xmm0
   0.01%      0x00007ffa62b19b0f:   vpshufd $0xe,%xmm0,%xmm1
              0x00007ffa62b19b14:   vpaddd %xmm1,%xmm0,%xmm0
              0x00007ffa62b19b18:   vmovd  %xmm0,%r11d
              0x00007ffa62b19b1d:   vpextrd $0x1,%xmm0,%r9d
   0.00%      0x00007ffa62b19b23:   add    %r9d,%r11d
              0x00007ffa62b19b26:   dec    %r10
           ╭  0x00007ffa62b19b29:   jmp    0x00007ffa62b19b47
           │  0x00007ffa62b19b2e:   data16 data16 nopw 0x0(%rax,%rax,1)
           │  0x00007ffa62b19b39:   data16 data16 xchg %ax,%ax
           │  0x00007ffa62b19b3d:   data16 xchg %ax,%ax
           │  0x00007ffa62b19b40:   add    (%rax,%r8,4),%r11d           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@19 (line 74)
           │  0x00007ffa62b19b44:   inc    %r8
           ↘  0x00007ffa62b19b47:   cmp    %r10,%r8
              0x00007ffa62b19b4a:   jle    0x00007ffa62b19b40
....................................................................................................
  97.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 726 
   0.88%               kernel  [unknown] 
   0.27%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 726 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 726 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.77%  <...other 247 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 726 
   2.10%               kernel  [unknown] 
   0.02%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.VectorApiBenchmark_baseline_sum_jmhTest::baseline_sum_avgt_jmhStub, version 5, compile id 761 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.13%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.61%       jvmci, level 4
   2.10%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.02%                     
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum
# Parameters: (size = 1048576)

# Run progress: 41.67% complete, ETA 00:13:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 134.326 us/op
# Warmup Iteration   2: 102.989 us/op
# Warmup Iteration   3: 102.957 us/op
# Warmup Iteration   4: 102.968 us/op
# Warmup Iteration   5: 102.971 us/op
Iteration   1: 102.975 us/op
Iteration   2: 112.361 us/op
Iteration   3: 112.346 us/op
Iteration   4: 102.956 us/op
Iteration   5: 102.968 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum":
  106.721 ±(99.9%) 19.797 us/op [Average]
  (min, avg, max) = (102.956, 106.721, 112.361), stdev = 5.141
  CI (99.9%): [86.924, 126.519] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum:·asm":
PrintAssembly processed: 195491 total address lines.
Perf output processed (skipped 58.730 seconds):
 Column 1: cycles (50755 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 729 

             0x00007f2d06b19dc3:   je     0x00007f2d06b19e6e
             0x00007f2d06b19dc9:   shl    $0x3,%rax                    ;*getfield intArr {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@1 (line 71)
             0x00007f2d06b19dcd:   lea    0x10(%rax),%rax
             0x00007f2d06b19dd1:   vpxor  %xmm0,%xmm0,%xmm0
             0x00007f2d06b19dd5:   cmp    $0x8,%r10
             0x00007f2d06b19dd9:   jb     0x00007f2d06b19e65
             0x00007f2d06b19ddf:   lea    -0x8(%r10),%r11
             0x00007f2d06b19de3:   mov    $0x0,%r8
             0x00007f2d06b19dea:   nopw   0x0(%rax,%rax,1)
  11.76%  ↗  0x00007f2d06b19df0:   vmovdqu (%rax,%r8,4),%ymm1
  34.58%  │  0x00007f2d06b19df6:   vpaddd %ymm1,%ymm0,%ymm0
  31.64%  │  0x00007f2d06b19dfa:   lea    0x8(%r8),%r8
   9.34%  │  0x00007f2d06b19dfe:   xchg   %ax,%ax
  10.43%  │  0x00007f2d06b19e00:   cmp    %r11,%r8
          ╰  0x00007f2d06b19e03:   jle    0x00007f2d06b19df0
             0x00007f2d06b19e05:   vextracti128 $0x1,%ymm0,%xmm1
             0x00007f2d06b19e0b:   vpaddd %xmm1,%xmm0,%xmm0
   0.00%     0x00007f2d06b19e0f:   vpshufd $0xe,%xmm0,%xmm1
             0x00007f2d06b19e14:   vpaddd %xmm1,%xmm0,%xmm0
   0.00%     0x00007f2d06b19e18:   vmovd  %xmm0,%r11d
             0x00007f2d06b19e1d:   vpextrd $0x1,%xmm0,%r9d
             0x00007f2d06b19e23:   add    %r9d,%r11d
             0x00007f2d06b19e26:   dec    %r10
             0x00007f2d06b19e29:   jmp    0x00007f2d06b19e47
             0x00007f2d06b19e2e:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f2d06b19e39:   data16 data16 xchg %ax,%ax
             0x00007f2d06b19e3d:   data16 xchg %ax,%ax
             0x00007f2d06b19e40:   add    (%rax,%r8,4),%r11d           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@19 (line 74)
             0x00007f2d06b19e44:   inc    %r8
....................................................................................................
  97.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 729 
   0.71%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 729 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 729 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               kernel  [unknown] 
   0.99%  <...other 335 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 729 
   1.86%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  os::current_thread_id 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.13%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.79%       jvmci, level 4
   1.86%               kernel
   0.14%            libjvm.so
   0.08%         libc-2.31.so
   0.06%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%           libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:11:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 382.920 us/op
# Warmup Iteration   2: 231.786 us/op
# Warmup Iteration   3: 231.372 us/op
# Warmup Iteration   4: 230.863 us/op
# Warmup Iteration   5: 231.388 us/op
Iteration   1: 230.821 us/op
Iteration   2: 230.818 us/op
Iteration   3: 231.396 us/op
Iteration   4: 231.398 us/op
Iteration   5: 231.398 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter":
  231.166 ±(99.9%) 1.219 us/op [Average]
  (min, avg, max) = (230.818, 231.166, 231.398), stdev = 0.317
  CI (99.9%): [229.947, 232.385] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter:·asm":
PrintAssembly processed: 266685 total address lines.
Perf output processed (skipped 58.648 seconds):
 Column 1: cycles (50529 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@1 (line 111)
            0x00007f4fa6b3f263:   mov    %r8,0x10(%rsp)
            0x00007f4fa6b3f268:   shl    $0x3,%r10
            0x00007f4fa6b3f26c:   movabs $0x7f2e00a98,%rbx            ;   {oop([I{0x00000007f2e00a98})}
            0x00007f4fa6b3f276:   mov    $0x0,%edi
            0x00007f4fa6b3f27b:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@13 (line 114)
            0x00007f4fa6b3f280:   cmp    %edi,%ecx
            0x00007f4fa6b3f282:   jbe    0x00007f4fa6b3f63e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@25 (line 114)
   5.42%    0x00007f4fa6b3f288:   mov    0x10(%r8,%rdi,4),%eax
   0.01%    0x00007f4fa6b3f28d:   mov    0x14(%r8,%rdi,4),%ebp
            0x00007f4fa6b3f292:   mov    0x18(%r8,%rdi,4),%r13d
   0.01%    0x00007f4fa6b3f297:   mov    0x1c(%r8,%rdi,4),%r14d
   5.40%    0x00007f4fa6b3f29c:   mov    0x20(%r8,%rdi,4),%esi
   4.86%    0x00007f4fa6b3f2a1:   mov    0x24(%r8,%rdi,4),%edx
  10.69%    0x00007f4fa6b3f2a6:   mov    0x28(%r8,%rdi,4),%r9d
   1.78%    0x00007f4fa6b3f2ab:   mov    0x2c(%r8,%rdi,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800c2ac00::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800c2ba80::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   3.12%    0x00007f4fa6b3f2b0:   mov    %r11d,%r8d
   0.01%    0x00007f4fa6b3f2b3:   sub    %edi,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@3 (line 244)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   1.75%    0x00007f4fa6b3f2b6:   cmp    $0x9,%r8d
   0.50%    0x00007f4fa6b3f2ba:   mov    $0x8,%r11d
   3.12%    0x00007f4fa6b3f2c0:   cmovl  %r8d,%r11d                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Math::min@2 (line 1649)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@6 (line 244)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.01%    0x00007f4fa6b3f2c4:   cmp    $0x1,%r11d
   1.77%    0x00007f4fa6b3f2c8:   mov    $0x0,%r8d
   0.47%    0x00007f4fa6b3f2ce:   cmovl  %r8d,%r11d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Math::max@2 (line 1562)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@9 (line 244)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   3.10%    0x00007f4fa6b3f2d2:   test   $0x1,%eax
            0x00007f4fa6b3f2d8:   je     0x00007f4fa6b3f425           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::allTrueHelper@19 (line 135)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$allTrue$10@7 (line 697)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$71/0x0000000800c85288::apply@8
....................................................................................................
  42.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 

                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f41b:   mov    %esi,0x20(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f420:   jmp    0x00007f4fa6b3f36c
   0.01%    0x00007f4fa6b3f425:   test   $0x1,%ebp
            0x00007f4fa6b3f42b:   je     0x00007f4fa6b3f4c6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::allTrueHelper@19 (line 135)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$allTrue$10@7 (line 697)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$71/0x0000000800c85288::apply@8
                                                                      ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask::allTrue@23 (line 695)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@1 (line 3028)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   1.77%    0x00007f4fa6b3f431:   cmp    0x10(%rbx),%r11d
            0x00007f4fa6b3f435:   jle    0x00007f4fa6b3faa5
   0.48%    0x00007f4fa6b3f43b:   nopl   0x0(%rax,%rax,1)
   3.31%    0x00007f4fa6b3f440:   cmp    0x14(%rbx),%r11d
            0x00007f4fa6b3f444:   jle    0x00007f4fa6b3f846
   0.01%    0x00007f4fa6b3f44a:   cmp    0x18(%rbx),%r11d
            0x00007f4fa6b3f44e:   jle    0x00007f4fa6b3f717
   1.75%    0x00007f4fa6b3f454:   cmp    0x1c(%rbx),%r11d
            0x00007f4fa6b3f458:   jle    0x00007f4fa6b3f6e6
   0.49%    0x00007f4fa6b3f45e:   xchg   %ax,%ax
   3.26%    0x00007f4fa6b3f460:   cmp    0x20(%rbx),%r11d
            0x00007f4fa6b3f464:   jle    0x00007f4fa6b3fae5
   0.01%    0x00007f4fa6b3f46a:   cmp    0x24(%rbx),%r11d
            0x00007f4fa6b3f46e:   jle    0x00007f4fa6b3fbdb
   1.69%    0x00007f4fa6b3f474:   cmp    0x28(%rbx),%r11d
            0x00007f4fa6b3f478:   jle    0x00007f4fa6b3f865
   0.45%    0x00007f4fa6b3f47e:   xchg   %ax,%ax
   3.12%    0x00007f4fa6b3f480:   cmp    0x2c(%rbx),%r11d
            0x00007f4fa6b3f484:   jle    0x00007f4fa6b3f885           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800c84e48::apply@9
                                                                      ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800c84a28::apply@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                      ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                      ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
                                                                      ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.01%    0x00007f4fa6b3f48a:   mov    %eax,0x10(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   1.73%    0x00007f4fa6b3f48f:   jmp    0x00007f4fa6b3f334           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.32%    0x00007f4fa6b3f494:   mov    %r9d,0x28(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f499:   jmp    0x00007f4fa6b3f38d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f49e:   mov    %r13d,0x18(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f4a3:   jmp    0x00007f4fa6b3f34d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f4a8:   mov    %r9d,0x28(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f4ad:   jmp    0x00007f4fa6b3f38d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   2.27%    0x00007f4fa6b3f4b2:   mov    %r13d,0x18(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f4b7:   jmp    0x00007f4fa6b3f34d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.46%    0x00007f4fa6b3f4bc:   mov    %esi,0x20(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f4c1:   jmp    0x00007f4fa6b3f36c
            0x00007f4fa6b3f4c6:   test   $0x1,%r13d
....................................................................................................
  31.14%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 

                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800c84a28::apply@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                      ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                      ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
                                                                      ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.50%    0x00007f4fa6b3f334:   test   $0x1,%ebp
            0x00007f4fa6b3f33a:   je     0x00007f4fa6b3f3b3
   3.19%    0x00007f4fa6b3f340:   test   $0x1,%r13d
            0x00007f4fa6b3f347:   je     0x00007f4fa6b3f4b2
   5.36%    0x00007f4fa6b3f34d:   test   $0x1,%r14d
            0x00007f4fa6b3f354:   je     0x00007f4fa6b3f40a
            0x00007f4fa6b3f35a:   nopw   0x0(%rax,%rax,1)
            0x00007f4fa6b3f360:   test   $0x1,%esi
            0x00007f4fa6b3f366:   je     0x00007f4fa6b3f4bc
   5.43%    0x00007f4fa6b3f36c:   test   $0x1,%edx
            0x00007f4fa6b3f372:   je     0x00007f4fa6b3f3d2
            0x00007f4fa6b3f378:   nopl   0x0(%rax,%rax,1)
            0x00007f4fa6b3f380:   test   $0x1,%r9d
            0x00007f4fa6b3f387:   je     0x00007f4fa6b3f494           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.30%    0x00007f4fa6b3f38d:   lea    0x8(%rdi),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@67 (line 114)
            0x00007f4fa6b3f391:   test   $0x1,%ecx
....................................................................................................
  14.49%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 

            0x00007f4fa6b3f360:   test   $0x1,%esi
            0x00007f4fa6b3f366:   je     0x00007f4fa6b3f4bc
   5.43%    0x00007f4fa6b3f36c:   test   $0x1,%edx
            0x00007f4fa6b3f372:   je     0x00007f4fa6b3f3d2
            0x00007f4fa6b3f378:   nopl   0x0(%rax,%rax,1)
            0x00007f4fa6b3f380:   test   $0x1,%r9d
            0x00007f4fa6b3f387:   je     0x00007f4fa6b3f494           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.30%    0x00007f4fa6b3f38d:   lea    0x8(%rdi),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@67 (line 114)
            0x00007f4fa6b3f391:   test   $0x1,%ecx
            0x00007f4fa6b3f397:   je     0x00007f4fa6b3f3ef           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f39d:   mov    %r11d,%edi
            0x00007f4fa6b3f3a0:   mov    0x10(%rsp),%r8
   5.50%    0x00007f4fa6b3f3a5:   mov    0x2c(%rsp),%ecx
            0x00007f4fa6b3f3a9:   mov    0x34(%rsp),%r11d
            0x00007f4fa6b3f3ae:   jmp    0x00007f4fa6b3f280           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@13 (line 114)
            0x00007f4fa6b3f3b3:   mov    %ebp,0x14(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007f4fa6b3f3b8:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  10.80%  <total for region 4>

....[Hottest Regions]...............................................................................
  42.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 
  31.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 
  14.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 
  10.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 
   0.23%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.86%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1020 
   1.14%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%       hsdis-amd64.so  hsdis_read_memory_func 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  OtherRegionsTable::occupied 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%         libc-2.31.so  _int_memalign 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.47%       jvmci, level 4
   1.14%               kernel
   0.15%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%       perf-49069.map
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter
# Parameters: (size = 1048576)

# Run progress: 58.33% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1352.902 us/op
# Warmup Iteration   2: 849.968 us/op
# Warmup Iteration   3: 850.015 us/op
# Warmup Iteration   4: 849.858 us/op
# Warmup Iteration   5: 849.060 us/op
Iteration   1: 848.675 us/op
Iteration   2: 848.999 us/op
Iteration   3: 848.568 us/op
Iteration   4: 848.580 us/op
Iteration   5: 850.355 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter":
  849.036 ±(99.9%) 2.918 us/op [Average]
  (min, avg, max) = (848.568, 849.036, 850.355), stdev = 0.758
  CI (99.9%): [846.117, 851.954] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter:·asm":
PrintAssembly processed: 258203 total address lines.
Perf output processed (skipped 58.509 seconds):
 Column 1: cycles (50851 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 

                                                                        ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                        ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
                                                                        ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                        ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
                                                                        ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                        ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                        ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
              0x00007fd79eb41c34:   test   $0x1,%ebp
          ╭   0x00007fd79eb41c3a:   je     0x00007fd79eb41d2c
   5.67%  │↗  0x00007fd79eb41c40:   test   $0x1,%r13d
   0.01%  ││  0x00007fd79eb41c47:   je     0x00007fd79eb41e2f
   6.08%  ││  0x00007fd79eb41c4d:   test   $0x1,%r14d
          ││  0x00007fd79eb41c54:   je     0x00007fd79eb41d77
   0.01%  ││  0x00007fd79eb41c5a:   nopw   0x0(%rax,%rax,1)
          ││  0x00007fd79eb41c60:   test   $0x1,%esi
   0.00%  ││  0x00007fd79eb41c66:   je     0x00007fd79eb41e39
   5.96%  ││  0x00007fd79eb41c6c:   test   $0x1,%edx
          ││  0x00007fd79eb41c72:   je     0x00007fd79eb41d45
   0.01%  ││  0x00007fd79eb41c78:   nopl   0x0(%rax,%rax,1)
          ││  0x00007fd79eb41c80:   test   $0x1,%r9d
   0.00%  ││  0x00007fd79eb41c87:   je     0x00007fd79eb41daa           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
          ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.89%  ││  0x00007fd79eb41c8d:   lea    0x8(%rdi),%r11d              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@67 (line 114)
   0.01%  ││  0x00007fd79eb41c91:   test   $0x1,%ecx
          ││  0x00007fd79eb41c97:   je     0x00007fd79eb41d5c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
          ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
          ││  0x00007fd79eb41c9d:   mov    %r11d,%edi
          ││  0x00007fd79eb41ca0:   mov    0x10(%rsp),%r8
   5.68%  ││  0x00007fd79eb41ca5:   mov    0x2c(%rsp),%ecx
   0.00%  ││  0x00007fd79eb41ca9:   mov    0x34(%rsp),%r11d
          ││  0x00007fd79eb41cae:   jmp    0x00007fd79eb41b80           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@13 (line 114)
   0.01%  ││  0x00007fd79eb41cb3:   test   $0x1,%ebp
          ││  0x00007fd79eb41cb9:   je     0x00007fd79eb41db4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.AbstractMask::allTrueHelper@19 (line 135)
          ││                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$allTrue$10@7 (line 697)
          ││                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$71/0x0000000800c85288::apply@8
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          ││                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::allTrue@23 (line 695)
          ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@1 (line 3028)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.04%  ││  0x00007fd79eb41cbf:   nop
   0.15%  ││  0x00007fd79eb41cc0:   cmp    0x10(%rbx),%r11d
   0.01%  ││  0x00007fd79eb41cc4:   jle    0x00007fd79eb42459
   5.61%  ││  0x00007fd79eb41cca:   cmp    0x14(%rbx),%r11d
          ││  0x00007fd79eb41cce:   jle    0x00007fd79eb420da
   0.00%  ││  0x00007fd79eb41cd4:   cmp    0x18(%rbx),%r11d
          ││  0x00007fd79eb41cd8:   jle    0x00007fd79eb423aa
   0.05%  ││  0x00007fd79eb41cde:   xchg   %ax,%ax
   0.13%  ││  0x00007fd79eb41ce0:   cmp    0x1c(%rbx),%r11d
   0.01%  ││  0x00007fd79eb41ce4:   jle    0x00007fd79eb42285
   5.61%  ││  0x00007fd79eb41cea:   cmp    0x20(%rbx),%r11d
          ││  0x00007fd79eb41cee:   jle    0x00007fd79eb4236e
          ││  0x00007fd79eb41cf4:   cmp    0x24(%rbx),%r11d
          ││  0x00007fd79eb41cf8:   jle    0x00007fd79eb42350
   0.06%  ││  0x00007fd79eb41cfe:   xchg   %ax,%ax
   0.10%  ││  0x00007fd79eb41d00:   cmp    0x28(%rbx),%r11d
   0.01%  ││  0x00007fd79eb41d04:   jle    0x00007fd79eb422fb
   5.74%  ││  0x00007fd79eb41d0a:   cmp    0x2c(%rbx),%r11d
          ││  0x00007fd79eb41d0e:   jle    0x00007fd79eb424d4           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800c84e48::apply@9
          ││                                                            ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800c84a28::apply@9
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
          ││                                                            ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
          ││                                                            ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
          ││                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
          ││                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.00%  ││  0x00007fd79eb41d14:   mov    %eax,0x10(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
          ││                                                            ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
          ││                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.05%  ││  0x00007fd79eb41d19:   nopl   0x0(%rax)
   0.12%  ││  0x00007fd79eb41d20:   test   $0x1,%ebp
   0.00%  │╰  0x00007fd79eb41d26:   jne    0x00007fd79eb41c40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
          │                                                             ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
          ↘   0x00007fd79eb41d2c:   mov    %ebp,0x14(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                        ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                        ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                        ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
              0x00007fd79eb41d31:   test   $0x1,%r13d
....................................................................................................
  47.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 

                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
            0x00007fd79eb41b5f:   shl    $0x3,%r8                     ;*getfield intArr {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@1 (line 111)
            0x00007fd79eb41b63:   mov    %r8,0x10(%rsp)
            0x00007fd79eb41b68:   shl    $0x3,%r10
            0x00007fd79eb41b6c:   movabs $0x7f2e561a0,%rbx            ;   {oop([I{0x00000007f2e561a0})}
            0x00007fd79eb41b76:   mov    $0x0,%edi
            0x00007fd79eb41b7b:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@13 (line 114)
   0.01%    0x00007fd79eb41b80:   cmp    %edi,%ecx
            0x00007fd79eb41b82:   jbe    0x00007fd79eb41f3e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@25 (line 114)
   5.74%    0x00007fd79eb41b88:   mov    0x10(%r8,%rdi,4),%eax
   0.00%    0x00007fd79eb41b8d:   mov    0x14(%r8,%rdi,4),%ebp
            0x00007fd79eb41b92:   mov    0x18(%r8,%rdi,4),%r13d
            0x00007fd79eb41b97:   mov    0x1c(%r8,%rdi,4),%r14d
   5.79%    0x00007fd79eb41b9c:   mov    0x20(%r8,%rdi,4),%esi
   4.00%    0x00007fd79eb41ba1:   mov    0x24(%r8,%rdi,4),%edx
   0.19%    0x00007fd79eb41ba6:   mov    0x28(%r8,%rdi,4),%r9d
   0.11%    0x00007fd79eb41bab:   mov    0x2c(%r8,%rdi,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800c2ac00::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800c2ba80::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   5.55%    0x00007fd79eb41bb0:   mov    %r11d,%r8d
   0.01%    0x00007fd79eb41bb3:   sub    %edi,%r8d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@3 (line 244)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.05%    0x00007fd79eb41bb6:   cmp    $0x9,%r8d
   0.14%    0x00007fd79eb41bba:   mov    $0x8,%r11d
   5.63%    0x00007fd79eb41bc0:   cmovl  %r8d,%r11d                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Math::min@2 (line 1649)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@6 (line 244)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.01%    0x00007fd79eb41bc4:   cmp    $0x1,%r11d
   0.03%    0x00007fd79eb41bc8:   mov    $0x0,%r8d
   0.14%    0x00007fd79eb41bce:   cmovl  %r8d,%r11d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Math::max@2 (line 1562)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@9 (line 244)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.69%    0x00007fd79eb41bd2:   test   $0x1,%eax
            0x00007fd79eb41bd8:   je     0x00007fd79eb41cb3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::allTrueHelper@19 (line 135)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$allTrue$10@7 (line 697)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$71/0x0000000800c85288::apply@8
....................................................................................................
  33.09%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 

                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800c84a28::apply@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                      ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                      ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
                                                                      ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
                                                                      ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                      ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.93%    0x00007fd79eb41e2f:   mov    %r13d,0x18(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.00%    0x00007fd79eb41e34:   jmp    0x00007fd79eb41c4d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   5.78%    0x00007fd79eb41e39:   mov    %esi,0x20(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800c85f38::apply@8
                                                                      ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                      ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.03%    0x00007fd79eb41e3e:   xchg   %ax,%ax
            0x00007fd79eb41e40:   jmp    0x00007fd79eb41c6c
            0x00007fd79eb41e45:   test   $0x1,%r14d
            0x00007fd79eb41e4c:   je     0x00007fd79eb41eaf           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.AbstractMask::allTrueHelper@19 (line 135)
                                                                      ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$allTrue$10@7 (line 697)
....................................................................................................
  11.74%  <total for region 3>

....[Hottest Regions]...............................................................................
  47.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 
  33.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 
  11.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 
   6.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 
   0.48%               kernel  [unknown] 
   0.18%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.02%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 
   0.01%               kernel  [unknown] 
   1.05%  <...other 366 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1010 
   1.68%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%         libc-2.31.so  [unknown] 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  PeriodicTask::real_time_tick 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.22%  <...other 96 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%       jvmci, level 4
   1.68%               kernel
   0.17%            libjvm.so
   0.15%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%       perf-49139.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul
# Parameters: (size = 262144)

# Run progress: 66.67% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1436468.040 us/op
# Warmup Iteration   2: 179704.833 us/op
# Warmup Iteration   3: 179595.199 us/op
# Warmup Iteration   4: 179700.219 us/op
# Warmup Iteration   5: 179607.070 us/op
Iteration   1: 179757.483 us/op
Iteration   2: 179648.852 us/op
Iteration   3: 179650.762 us/op
Iteration   4: 179141.832 us/op
Iteration   5: 179664.791 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul":
  179572.744 ±(99.9%) 943.537 us/op [Average]
  (min, avg, max) = (179141.832, 179572.744, 179757.483), stdev = 245.034
  CI (99.9%): [178629.207, 180516.281] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul:·asm":
PrintAssembly processed: 302369 total address lines.
Perf output processed (skipped 58.873 seconds):
 Column 1: cycles (51101 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 

 <region is too big to display, has 2780 lines, but threshold is 1000>
....................................................................................................
  97.09%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 
   0.48%               kernel  [unknown] 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 
   0.13%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   1.46%  <...other 458 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 4, compile id 930 
   1.80%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.06%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.32%  <...other 126 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.54%       jvmci, level 4
   1.80%               kernel
   0.35%            libjvm.so
   0.15%         libc-2.31.so
   0.07%                     
   0.04%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul
# Parameters: (size = 1048576)

# Run progress: 75.00% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15435393.185 us/op
# Warmup Iteration   2: 2652418.654 us/op
# Warmup Iteration   3: 1485952.354 us/op
# Warmup Iteration   4: 1486603.777 us/op
# Warmup Iteration   5: 1486857.400 us/op
Iteration   1: 1486021.065 us/op
Iteration   2: 1485960.487 us/op
Iteration   3: 1486164.006 us/op
Iteration   4: 1486208.021 us/op
Iteration   5: 1487247.156 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul":
  1486320.147 ±(99.9%) 2033.110 us/op [Average]
  (min, avg, max) = (1485960.487, 1486320.147, 1487247.156), stdev = 527.992
  CI (99.9%): [1484287.037, 1488353.257] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul:·asm":
PrintAssembly processed: 370367 total address lines.
Perf output processed (skipped 66.013 seconds):
 Column 1: cycles (52722 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 

 <region is too big to display, has 2780 lines, but threshold is 1000>
....................................................................................................
  97.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   0.12%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.50%  <...other 457 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 10, compile id 947 
   1.50%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  StatSamplerTask::task 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  TypeArrayKlass::allocate_common 
   0.01%            libjvm.so  fileStream::write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  SpinPause 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.35%  <...other 121 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.84%       jvmci, level 4
   1.50%               kernel
   0.38%            libjvm.so
   0.13%         libc-2.31.so
   0.05%                     
   0.04%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%       perf-49256.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum
# Parameters: (size = 262144)

# Run progress: 83.33% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 116.079 us/op
# Warmup Iteration   2: 118.015 us/op
# Warmup Iteration   3: 118.056 us/op
# Warmup Iteration   4: 118.054 us/op
# Warmup Iteration   5: 118.057 us/op
Iteration   1: 118.054 us/op
Iteration   2: 118.055 us/op
Iteration   3: 118.028 us/op
Iteration   4: 118.020 us/op
Iteration   5: 118.017 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum":
  118.034 ±(99.9%) 0.071 us/op [Average]
  (min, avg, max) = (118.017, 118.034, 118.055), stdev = 0.018
  CI (99.9%): [117.964, 118.105] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum:·asm":
PrintAssembly processed: 208827 total address lines.
Perf output processed (skipped 58.415 seconds):
 Column 1: cycles (50424 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 835 

                                                                        ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$53@2 (line 2447)
                                                                        ; - jdk.incubator.vector.IntVector$$Lambda$65/0x0000000800c83dc0::apply@3
                                                                        ; - jdk.incubator.vector.IntVector::rOpTemplate@23 (line 289)
                                                                        ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
                                                                        ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
                                                                        ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800c83980::apply@4
                                                                        ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
                                                                        ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
                                                                        ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   0.00%      0x00007f577ab273d5:   add    %r14d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@42 (line 86)
              0x00007f577ab273d8:   lea    0x8(%rcx),%ecx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@53 (line 84)
              0x00007f577ab273db:   cmp    %ecx,%r8d
              0x00007f577ab273de:   ja     0x00007f577ab273a0
              0x00007f577ab273e0:   lea    -0x10(%r11),%r8d
   0.00%      0x00007f577ab273e4:   mov    %r8d,0x1c(%rsp)
   0.00%  ╭   0x00007f577ab273e9:   jmp    0x00007f577ab27499
          │   0x00007f577ab273ee:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f577ab273f9:   data16 data16 xchg %ax,%ax
          │   0x00007f577ab273fd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
   5.26%  │↗  0x00007f577ab27400:   mov    0x2c(%rax,%rcx,4),%ebx
  11.88%  ││  0x00007f577ab27404:   mov    0x28(%rax,%rcx,4),%edi
  11.47%  ││  0x00007f577ab27408:   mov    0x24(%rax,%rcx,4),%edx
   1.59%  ││  0x00007f577ab2740c:   mov    0x20(%rax,%rcx,4),%esi
   2.34%  ││  0x00007f577ab27410:   mov    0x1c(%rax,%rcx,4),%ebp
   0.04%  ││  0x00007f577ab27414:   mov    0x18(%rax,%rcx,4),%r13d
   1.62%  ││  0x00007f577ab27419:   mov    0x14(%rax,%rcx,4),%r14d
   1.57%  ││  0x00007f577ab2741e:   add    0x10(%rax,%rcx,4),%r14d
   2.26%  ││  0x00007f577ab27423:   mov    0x4c(%rax,%rcx,4),%r10d
   1.56%  ││  0x00007f577ab27428:   mov    0x48(%rax,%rcx,4),%r11d
   3.18%  ││  0x00007f577ab2742d:   mov    0x44(%rax,%rcx,4),%r8d
   2.83%  ││  0x00007f577ab27432:   mov    %r10d,0x18(%rsp)
   2.48%  ││  0x00007f577ab27437:   mov    0x40(%rax,%rcx,4),%r10d
   1.35%  ││  0x00007f577ab2743c:   mov    %r11d,0x14(%rsp)
   3.47%  ││  0x00007f577ab27441:   mov    0x3c(%rax,%rcx,4),%r11d
   0.15%  ││  0x00007f577ab27446:   mov    %r8d,0x10(%rsp)
   3.49%  ││  0x00007f577ab2744b:   mov    0x38(%rax,%rcx,4),%r8d
   0.28%  ││  0x00007f577ab27450:   mov    %r10d,0xc(%rsp)
   4.60%  ││  0x00007f577ab27455:   mov    0x34(%rax,%rcx,4),%r10d
   0.17%  ││  0x00007f577ab2745a:   add    0x30(%rax,%rcx,4),%r10d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800c2ac00::apply@6
          ││                                                            ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
          ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800c2ba80::load@9
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
          ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
          ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
   1.46%  ││  0x00007f577ab2745f:   add    %r13d,%r14d
   0.05%  ││  0x00007f577ab27462:   add    %ebp,%r14d
   4.28%  ││  0x00007f577ab27465:   add    %esi,%r14d
   0.05%  ││  0x00007f577ab27468:   add    %edx,%r14d
   0.83%  ││  0x00007f577ab2746b:   add    %edi,%r14d
   0.10%  ││  0x00007f577ab2746e:   add    %ebx,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$53@2 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$65/0x0000000800c83dc0::apply@3
          ││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@23 (line 289)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800c83980::apply@4
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          ││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   4.55%  ││  0x00007f577ab27471:   add    %r14d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@42 (line 86)
   0.18%  ││  0x00007f577ab27474:   add    %r8d,%r10d
   1.17%  ││  0x00007f577ab27477:   add    %r11d,%r10d
   0.12%  ││  0x00007f577ab2747a:   add    0xc(%rsp),%r10d
   7.52%  ││  0x00007f577ab2747f:   add    0x10(%rsp),%r10d
   2.53%  ││  0x00007f577ab27484:   add    0x14(%rsp),%r10d
   4.18%  ││  0x00007f577ab27489:   add    0x18(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$53@2 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$65/0x0000000800c83dc0::apply@3
          ││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@23 (line 289)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800c83980::apply@4
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          ││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   4.53%  ││  0x00007f577ab2748e:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@42 (line 86)
   5.02%  ││  0x00007f577ab27491:   lea    0x10(%rcx),%ecx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@53 (line 84)
   0.03%  ││  0x00007f577ab27494:   mov    0x1c(%rsp),%r8d              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
   0.17%  ↘│  0x00007f577ab27499:   nopl   0x0(%rax)
   0.00%   │  0x00007f577ab274a0:   cmp    %ecx,%r8d
           ╰  0x00007f577ab274a3:   jg     0x00007f577ab27400
   0.00%      0x00007f577ab274a9:   mov    0x20(%rsp),%r11d
   0.01%      0x00007f577ab274ae:   jmp    0x00007f577ab274fa
              0x00007f577ab274b3:   nopw   0x0(%rax,%rax,1)
              0x00007f577ab274bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
              0x00007f577ab274c0:   mov    0x2c(%rax,%rcx,4),%r10d
   0.01%      0x00007f577ab274c5:   mov    0x28(%rax,%rcx,4),%r8d
              0x00007f577ab274ca:   mov    0x24(%rax,%rcx,4),%ebx
              0x00007f577ab274ce:   mov    0x20(%rax,%rcx,4),%edi
              0x00007f577ab274d2:   mov    0x1c(%rax,%rcx,4),%edx
              0x00007f577ab274d6:   mov    0x18(%rax,%rcx,4),%esi
              0x00007f577ab274da:   mov    0x14(%rax,%rcx,4),%ebp
              0x00007f577ab274de:   add    0x10(%rax,%rcx,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                        ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800c2ac00::apply@6
                                                                        ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                        ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
....................................................................................................
  98.40%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 835 
   0.18%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 835 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.87%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 835 
   1.31%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%          c1, level 3  java.io.ObjectOutputStream$HandleTable::lookup, version 1, compile id 861 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%            libjvm.so  stringStream::write 
   0.00%          interpreter  iconst_0  3 iconst_0  
   0.00%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%            libjvm.so  LinearScan::calc_operand_for_interval 
   0.10%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.44%       jvmci, level 4
   1.31%               kernel
   0.11%            libjvm.so
   0.07%         libc-2.31.so
   0.02%                     
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          c1, level 3
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%   libpthread-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum
# Parameters: (size = 1048576)

# Run progress: 91.67% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 546.576 us/op
# Warmup Iteration   2: 475.484 us/op
# Warmup Iteration   3: 475.337 us/op
# Warmup Iteration   4: 474.886 us/op
# Warmup Iteration   5: 472.701 us/op
Iteration   1: 474.701 us/op
Iteration   2: 472.366 us/op
Iteration   3: 472.317 us/op
Iteration   4: 472.303 us/op
Iteration   5: 472.276 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum":
  472.792 ±(99.9%) 4.110 us/op [Average]
  (min, avg, max) = (472.276, 472.792, 474.701), stdev = 1.067
  CI (99.9%): [468.682, 476.903] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum:·asm":
PrintAssembly processed: 215724 total address lines.
Perf output processed (skipped 58.526 seconds):
 Column 1: cycles (50794 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 851 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@53 (line 84)
              0x00007ff352b28f5b:   cmp    %ecx,%r8d
              0x00007ff352b28f5e:   ja     0x00007ff352b28f20
              0x00007ff352b28f60:   lea    -0x10(%r11),%r8d
              0x00007ff352b28f64:   mov    %r8d,0x1c(%rsp)
          ╭   0x00007ff352b28f69:   jmp    0x00007ff352b29019
          │   0x00007ff352b28f6e:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007ff352b28f79:   data16 data16 xchg %ax,%ax
          │   0x00007ff352b28f7d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
   5.05%  │↗  0x00007ff352b28f80:   mov    0x2c(%rax,%rcx,4),%ebx
  12.45%  ││  0x00007ff352b28f84:   mov    0x28(%rax,%rcx,4),%edi
  11.14%  ││  0x00007ff352b28f88:   mov    0x24(%rax,%rcx,4),%edx
   1.62%  ││  0x00007ff352b28f8c:   mov    0x20(%rax,%rcx,4),%esi
   2.37%  ││  0x00007ff352b28f90:   mov    0x1c(%rax,%rcx,4),%ebp
   0.03%  ││  0x00007ff352b28f94:   mov    0x18(%rax,%rcx,4),%r13d
   1.52%  ││  0x00007ff352b28f99:   mov    0x14(%rax,%rcx,4),%r14d
   1.59%  ││  0x00007ff352b28f9e:   add    0x10(%rax,%rcx,4),%r14d
   2.35%  ││  0x00007ff352b28fa3:   mov    0x4c(%rax,%rcx,4),%r10d
   1.51%  ││  0x00007ff352b28fa8:   mov    0x48(%rax,%rcx,4),%r11d
   3.03%  ││  0x00007ff352b28fad:   mov    0x44(%rax,%rcx,4),%r8d
   2.73%  ││  0x00007ff352b28fb2:   mov    %r10d,0x18(%rsp)
   2.36%  ││  0x00007ff352b28fb7:   mov    0x40(%rax,%rcx,4),%r10d
   1.12%  ││  0x00007ff352b28fbc:   mov    %r11d,0x14(%rsp)
   3.43%  ││  0x00007ff352b28fc1:   mov    0x3c(%rax,%rcx,4),%r11d
   0.16%  ││  0x00007ff352b28fc6:   mov    %r8d,0x10(%rsp)
   3.54%  ││  0x00007ff352b28fcb:   mov    0x38(%rax,%rcx,4),%r8d
   0.28%  ││  0x00007ff352b28fd0:   mov    %r10d,0xc(%rsp)
   4.44%  ││  0x00007ff352b28fd5:   mov    0x34(%rax,%rcx,4),%r10d
   0.24%  ││  0x00007ff352b28fda:   add    0x30(%rax,%rcx,4),%r10d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800c2ac00::apply@6
          ││                                                            ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
          ││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800c2ba80::load@9
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
          ││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
          ││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
   1.68%  ││  0x00007ff352b28fdf:   add    %r13d,%r14d
   0.07%  ││  0x00007ff352b28fe2:   add    %ebp,%r14d
   4.22%  ││  0x00007ff352b28fe5:   add    %esi,%r14d
   0.06%  ││  0x00007ff352b28fe8:   add    %edx,%r14d
   1.00%  ││  0x00007ff352b28feb:   add    %edi,%r14d
   0.09%  ││  0x00007ff352b28fee:   add    %ebx,%r14d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$53@2 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$65/0x0000000800c83dc0::apply@3
          ││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@23 (line 289)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800c83980::apply@4
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          ││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   4.21%  ││  0x00007ff352b28ff1:   add    %r14d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@42 (line 86)
   0.14%  ││  0x00007ff352b28ff4:   add    %r8d,%r10d
   1.40%  ││  0x00007ff352b28ff7:   add    %r11d,%r10d
   0.08%  ││  0x00007ff352b28ffa:   add    0xc(%rsp),%r10d
   7.06%  ││  0x00007ff352b28fff:   add    0x10(%rsp),%r10d
   2.72%  ││  0x00007ff352b29004:   add    0x14(%rsp),%r10d
   4.13%  ││  0x00007ff352b29009:   add    0x18(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$53@2 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$65/0x0000000800c83dc0::apply@3
          ││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@23 (line 289)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          ││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800c83980::apply@4
          ││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          ││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          ││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   4.66%  ││  0x00007ff352b2900e:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@42 (line 86)
   5.01%  ││  0x00007ff352b29011:   lea    0x10(%rcx),%ecx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@53 (line 84)
   0.03%  ││  0x00007ff352b29014:   mov    0x1c(%rsp),%r8d              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
   0.17%  ↘│  0x00007ff352b29019:   nopl   0x0(%rax)
   0.00%   │  0x00007ff352b29020:   cmp    %ecx,%r8d
           ╰  0x00007ff352b29023:   jg     0x00007ff352b28f80
              0x00007ff352b29029:   mov    0x20(%rsp),%r11d
   0.00%      0x00007ff352b2902e:   jmp    0x00007ff352b2907a
              0x00007ff352b29033:   nopw   0x0(%rax,%rax,1)
              0x00007ff352b2903c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
              0x00007ff352b29040:   mov    0x2c(%rax,%rcx,4),%r10d
   0.00%      0x00007ff352b29045:   mov    0x28(%rax,%rcx,4),%r8d
              0x00007ff352b2904a:   mov    0x24(%rax,%rcx,4),%ebx
              0x00007ff352b2904e:   mov    0x20(%rax,%rcx,4),%edi
              0x00007ff352b29052:   mov    0x1c(%rax,%rcx,4),%edx
              0x00007ff352b29056:   mov    0x18(%rax,%rcx,4),%esi
              0x00007ff352b2905a:   mov    0x14(%rax,%rcx,4),%ebp
              0x00007ff352b2905e:   add    0x10(%rax,%rcx,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                        ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800c2ac00::apply@6
                                                                        ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                        ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
....................................................................................................
  97.70%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 851 
   0.68%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.98%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 851 
   1.89%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%       perf-49653.map  [unknown] 
   0.00%            libjvm.so  Method::line_number_from_bci 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%  libjvmcicompiler.so  JNIFunctions_NewStringUTF_b441abb130f9a9263d4ca1ead1e1568e4c50be39 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%       jvmci, level 4
   1.89%               kernel
   0.17%            libjvm.so
   0.12%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%       perf-49653.map
   0.00%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:26

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

Benchmark                                       (size)  Mode  Cnt        Score       Error  Units
VectorApiBenchmark.baseline_filter              262144  avgt    5      165.927 ±     0.975  us/op
VectorApiBenchmark.baseline_filter:·asm         262144  avgt               NaN                ---
VectorApiBenchmark.baseline_filter             1048576  avgt    5      500.363 ±     5.548  us/op
VectorApiBenchmark.baseline_filter:·asm        1048576  avgt               NaN                ---
VectorApiBenchmark.baseline_matrix_mul          262144  avgt    5    32421.511 ±  3063.242  us/op
VectorApiBenchmark.baseline_matrix_mul:·asm     262144  avgt               NaN                ---
VectorApiBenchmark.baseline_matrix_mul         1048576  avgt    5   313321.893 ± 65477.184  us/op
VectorApiBenchmark.baseline_matrix_mul:·asm    1048576  avgt               NaN                ---
VectorApiBenchmark.baseline_sum                 262144  avgt    5       28.104 ±     0.155  us/op
VectorApiBenchmark.baseline_sum:·asm            262144  avgt               NaN                ---
VectorApiBenchmark.baseline_sum                1048576  avgt    5      106.721 ±    19.797  us/op
VectorApiBenchmark.baseline_sum:·asm           1048576  avgt               NaN                ---
VectorApiBenchmark.vectorized_filter            262144  avgt    5      231.166 ±     1.219  us/op
VectorApiBenchmark.vectorized_filter:·asm       262144  avgt               NaN                ---
VectorApiBenchmark.vectorized_filter           1048576  avgt    5      849.036 ±     2.918  us/op
VectorApiBenchmark.vectorized_filter:·asm      1048576  avgt               NaN                ---
VectorApiBenchmark.vectorized_matrix_mul        262144  avgt    5   179572.744 ±   943.537  us/op
VectorApiBenchmark.vectorized_matrix_mul:·asm   262144  avgt               NaN                ---
VectorApiBenchmark.vectorized_matrix_mul       1048576  avgt    5  1486320.147 ±  2033.110  us/op
VectorApiBenchmark.vectorized_matrix_mul:·asm  1048576  avgt               NaN                ---
VectorApiBenchmark.vectorized_sum               262144  avgt    5      118.034 ±     0.071  us/op
VectorApiBenchmark.vectorized_sum:·asm          262144  avgt               NaN                ---
VectorApiBenchmark.vectorized_sum              1048576  avgt    5      472.792 ±     4.110  us/op
VectorApiBenchmark.vectorized_sum:·asm         1048576  avgt               NaN                ---
