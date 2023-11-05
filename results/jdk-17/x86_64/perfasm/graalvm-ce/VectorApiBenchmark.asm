# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 222.617 us/op
# Warmup Iteration   2: 221.092 us/op
# Warmup Iteration   3: 220.955 us/op
# Warmup Iteration   4: 220.920 us/op
# Warmup Iteration   5: 220.479 us/op
Iteration   1: 220.459 us/op
Iteration   2: 220.854 us/op
Iteration   3: 220.854 us/op
Iteration   4: 220.247 us/op
Iteration   5: 220.832 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter":
  220.649 ±(99.9%) 1.081 us/op [Average]
  (min, avg, max) = (220.247, 220.649, 220.854), stdev = 0.281
  CI (99.9%): [219.568, 221.730] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter:·asm":
PrintAssembly processed: 197962 total address lines.
Perf output processed (skipped 58.823 seconds):
 Column 1: cycles (51016 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 750 

                  0x00007f6262ffe256:   jb     0x00007f6262ffe27a
                  0x00007f6262ffe25c:   mov    0xc(,%r8,8),%r8d
                  0x00007f6262ffe264:   mov    %r8d,%ebx
                  0x00007f6262ffe267:   cmp    %rcx,%rbx
          ╭       0x00007f6262ffe26a:   jbe    0x00007f6262ffe2c3
          │       0x00007f6262ffe270:   cmp    $0x2,%r8d
          │╭      0x00007f6262ffe274:   jb     0x00007f6262ffe2c3           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
          ││      0x00007f6262ffe27a:   mov    $0x1,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@13 (line 99)
  42.25%  ││  ↗↗  0x00007f6262ffe280:   cmp    %r8d,%r11d
          ││╭ ││  0x00007f6262ffe283:   jle    0x00007f6262ffe2ae           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@17 (line 99)
          │││ ││  0x00007f6262ffe289:   mov    0x10(%r10,%r8,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   8.26%  │││ ││  0x00007f6262ffe28e:   mov    %r8d,%ebx
   0.71%  │││ ││  0x00007f6262ffe291:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@41 (line 99)
  40.67%  │││ ││  0x00007f6262ffe293:   test   $0x1,%ecx
          │││╭││  0x00007f6262ffe299:   jne    0x00007f6262ffe2a9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   1.42%  ││││││  0x00007f6262ffe29f:   mov    %ecx,0x10(%r9,%r8,4)         ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   1.93%  ││││││  0x00007f6262ffe2a4:   mov    %ebx,%r8d
   0.34%  ││││╰│  0x00007f6262ffe2a7:   jmp    0x00007f6262ffe280           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@41 (line 99)
   1.53%  │││↘ │  0x00007f6262ffe2a9:   mov    %ebx,%r8d
   0.39%  │││  ╰  0x00007f6262ffe2ac:   jmp    0x00007f6262ffe280           ; ImmutableOopMap {r9=Oop }
          │││                                                               ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@47 (line 105)
          ││↘     0x00007f6262ffe2ae:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f6262ffe333
          ││                                                                ;* unwind (locked if synchronized)
          ││                                                                ; - org.openjdk.jmh.infra.Blackhole::consume@-3
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@49 (line 105)
   0.01%  ││      0x00007f6262ffe2b0:   mov    0x10(%rsp),%rbp
          ││      0x00007f6262ffe2b5:   add    $0x18,%rsp
          ││      0x00007f6262ffe2b9:   mov    0x348(%r15),%rcx
          ││      0x00007f6262ffe2c0:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  ││      0x00007f6262ffe2c2:   ret    
          ↘↘      0x00007f6262ffe2c3:   movl   $0xffffffe5,0x370(%r15)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
                  0x00007f6262ffe2ce:   movq   $0x14,0x378(%r15)
                  0x00007f6262ffe2d9:   call   0x00007f625b50527a           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=Oop r10=Oop }
                                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@13 (line 99)
                                                                            ;   {runtime_call DeoptimizationBlob}
                  0x00007f6262ffe2de:   nop                                 ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
                  0x00007f6262ffe2df:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 750 
   0.96%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 750 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.95%  <...other 329 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 750 
   2.06%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  fileStream::flush 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%         libm-2.31.so  __mpranred_fma 
   0.19%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.53%       jvmci, level 4
   2.06%               kernel
   0.17%            libjvm.so
   0.11%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%       perf-36274.map
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter
# Parameters: (size = 1048576)

# Run progress: 8.33% complete, ETA 00:20:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 900.782 us/op
# Warmup Iteration   2: 894.723 us/op
# Warmup Iteration   3: 894.737 us/op
# Warmup Iteration   4: 894.465 us/op
# Warmup Iteration   5: 894.506 us/op
Iteration   1: 895.404 us/op
Iteration   2: 894.411 us/op
Iteration   3: 895.287 us/op
Iteration   4: 895.178 us/op
Iteration   5: 895.450 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter":
  895.146 ±(99.9%) 1.633 us/op [Average]
  (min, avg, max) = (894.411, 895.146, 895.450), stdev = 0.424
  CI (99.9%): [893.513, 896.779] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_filter:·asm":
PrintAssembly processed: 198085 total address lines.
Perf output processed (skipped 58.798 seconds):
 Column 1: cycles (50789 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 737 

                  0x00007f6546ffbd56:   jb     0x00007f6546ffbd7a
                  0x00007f6546ffbd5c:   mov    0xc(,%r8,8),%r8d
                  0x00007f6546ffbd64:   mov    %r8d,%ebx
                  0x00007f6546ffbd67:   cmp    %rcx,%rbx
          ╭       0x00007f6546ffbd6a:   jbe    0x00007f6546ffbdc3
          │       0x00007f6546ffbd70:   cmp    $0x2,%r8d
          │╭      0x00007f6546ffbd74:   jb     0x00007f6546ffbdc3           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
          ││      0x00007f6546ffbd7a:   mov    $0x1,%r8d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@13 (line 99)
  41.92%  ││  ↗↗  0x00007f6546ffbd80:   cmp    %r8d,%r11d
          ││╭ ││  0x00007f6546ffbd83:   jle    0x00007f6546ffbdae           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@17 (line 99)
   0.02%  │││ ││  0x00007f6546ffbd89:   mov    0x10(%r10,%r8,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@23 (line 100)
   9.24%  │││ ││  0x00007f6546ffbd8e:   mov    %r8d,%ebx
   0.72%  │││ ││  0x00007f6546ffbd91:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@41 (line 99)
  40.25%  │││ ││  0x00007f6546ffbd93:   test   $0x1,%ecx
   0.00%  │││╭││  0x00007f6546ffbd99:   jne    0x00007f6546ffbda9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@32 (line 101)
   1.50%  ││││││  0x00007f6546ffbd9f:   mov    %ecx,0x10(%r9,%r8,4)         ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
   1.98%  ││││││  0x00007f6546ffbda4:   mov    %ebx,%r8d
   0.38%  ││││╰│  0x00007f6546ffbda7:   jmp    0x00007f6546ffbd80           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@41 (line 99)
   1.56%  │││↘ │  0x00007f6546ffbda9:   mov    %ebx,%r8d
   0.37%  │││  ╰  0x00007f6546ffbdac:   jmp    0x00007f6546ffbd80           ; ImmutableOopMap {r9=Oop }
          │││                                                               ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@47 (line 105)
          ││↘     0x00007f6546ffbdae:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f6546ffbe33
          ││                                                                ;* unwind (locked if synchronized)
          ││                                                                ; - org.openjdk.jmh.infra.Blackhole::consume@-3
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@49 (line 105)
   0.00%  ││      0x00007f6546ffbdb0:   mov    0x10(%rsp),%rbp
          ││      0x00007f6546ffbdb5:   add    $0x18,%rsp
          ││      0x00007f6546ffbdb9:   mov    0x348(%r15),%rcx
          ││      0x00007f6546ffbdc0:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%  ││      0x00007f6546ffbdc2:   ret    
          ↘↘      0x00007f6546ffbdc3:   movl   $0xffffffe5,0x370(%r15)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
                  0x00007f6546ffbdce:   movq   $0x14,0x378(%r15)
                  0x00007f6546ffbdd9:   call   0x00007f653f50527a           ; ImmutableOopMap {rdx=Oop rsi=Oop r9=Oop r10=Oop }
                                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@13 (line 99)
                                                                            ;   {runtime_call DeoptimizationBlob}
                  0x00007f6546ffbdde:   nop                                 ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter@40 (line 102)
                  0x00007f6546ffbddf:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.95%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 737 
   0.39%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.96%  <...other 360 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_filter, version 3, compile id 737 
   1.56%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.VectorApiBenchmark_baseline_filter_jmhTest::baseline_filter_avgt_jmhStub, version 2, compile id 756 
   0.01%            libjvm.so  outputStream::print 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.22%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.96%       jvmci, level 4
   1.56%               kernel
   0.18%            libjvm.so
   0.12%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.05%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          c1, level 3
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%       perf-36336.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul
# Parameters: (size = 262144)

# Run progress: 16.67% complete, ETA 00:18:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 106654.804 us/op
# Warmup Iteration   2: 103782.433 us/op
# Warmup Iteration   3: 104542.831 us/op
# Warmup Iteration   4: 103927.583 us/op
# Warmup Iteration   5: 104084.274 us/op
Iteration   1: 104714.008 us/op
Iteration   2: 103666.160 us/op
Iteration   3: 102539.828 us/op
Iteration   4: 102124.830 us/op
Iteration   5: 102354.009 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul":
  103079.767 ±(99.9%) 4193.828 us/op [Average]
  (min, avg, max) = (102124.830, 103079.767, 104714.008), stdev = 1089.124
  CI (99.9%): [98885.939, 107273.595] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul:·asm":
PrintAssembly processed: 190479 total address lines.
Perf output processed (skipped 58.797 seconds):
 Column 1: cycles (51028 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 

                    0x00007f25f6fff08e:   jbe    0x00007f25f6fff676           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
                    0x00007f25f6fff094:   mov    0x68(%rsp),%rbx
                    0x00007f25f6fff099:   mov    $0x0,%r9d
                    0x00007f25f6fff09f:   mov    $0x0,%r11d
          ╭         0x00007f25f6fff0a5:   jmp    0x00007f25f6fff2a8
          │         0x00007f25f6fff0aa:   data16 data16 nopw 0x0(%rax,%rax,1)
          │         0x00007f25f6fff0b5:   data16 data16 xchg %ax,%ax
          │         0x00007f25f6fff0b9:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@52 (line 139)
   0.01%  │      ↗  0x00007f25f6fff0c0:   test   %r11d,%r11d
          │      │  0x00007f25f6fff0c3:   jl     0x00007f25f6fff697
          │      │  0x00007f25f6fff0c9:   cmp    %esi,%r11d
          │      │  0x00007f25f6fff0cc:   jg     0x00007f25f6fff697
          │      │  0x00007f25f6fff0d2:   mov    %r10,%rcx
   0.10%  │      │  0x00007f25f6fff0d5:   mov    %rax,%rbp                    ;* unwind (locked if synchronized)
          │      │                                                            ; - java.lang.System::arraycopy@-3
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
   0.00%  │      │  0x00007f25f6fff0d8:   mov    %r9d,%eax
          │      │  0x00007f25f6fff0db:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@60 (line 140)
          │      │  0x00007f25f6fff0de:   mov    0x10(%r10,%rax,4),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
   0.14%  │      │  0x00007f25f6fff0e3:   lea    0x10(%rcx,%r11,4),%rdi
   0.01%  │      │  0x00007f25f6fff0e8:   lea    0x10(%rbp),%rsi
          │      │  0x00007f25f6fff0ec:   mov    %rbx,%rdx                    ;* unwind (locked if synchronized)
          │      │                                                            ; - java.lang.System::arraycopy@-3
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
          │      │  0x00007f25f6fff0ef:   mov    %r11d,0x44(%rsp)
   0.12%  │      │  0x00007f25f6fff0f4:   mov    %r9d,0x40(%rsp)
   0.00%  │      │  0x00007f25f6fff0f9:   mov    %eax,0x3c(%rsp)
   0.01%  │      │  0x00007f25f6fff0fd:   data16 xchg %ax,%ax
   0.00%  │      │  0x00007f25f6fff100:   call   Stub::jint_arraycopy         ;   {runtime_call StubRoutines (2)}
          │      │  0x00007f25f6fff105:   nop
          │      │  0x00007f25f6fff106:   mov    0x18(%rsp),%r10
   0.10%  │      │  0x00007f25f6fff10b:   mov    0x10(%r10),%edi              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f25f6fff10f:   mov    0x3c(%rsp),%esi
          │      │  0x00007f25f6fff113:   mov    0x20(%rsp),%rax
          │      │  0x00007f25f6fff118:   mov    %esi,%edx
   0.10%  │      │  0x00007f25f6fff11a:   imul   0x10(%rax),%edx              ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.00%  │      │  0x00007f25f6fff11e:   add    %edi,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.02%  │      │  0x00007f25f6fff120:   mov    %edx,0x10(%r10)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.01%  │      │  0x00007f25f6fff124:   mov    $0x1,%edi
   0.07%  │      │  0x00007f25f6fff129:   mov    0x74(%rsp),%r13d
          │╭     │  0x00007f25f6fff12e:   jmp    0x00007f25f6fff158           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@3 (line 223)
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          ││     │  0x00007f25f6fff133:   nopw   0x0(%rax,%rax,1)
          ││     │  0x00007f25f6fff13c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.10%  ││↗    │  0x00007f25f6fff140:   mov    0x10(%r10,%rdi,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │││    │  0x00007f25f6fff145:   mov    %esi,%r11d
          │││    │  0x00007f25f6fff148:   imul   0x10(%rax,%rdi,4),%r11d      ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │││    │  0x00007f25f6fff14e:   add    %edx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.09%  │││    │  0x00007f25f6fff151:   mov    %r11d,0x10(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.06%  │││    │  0x00007f25f6fff156:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@23 (line 223)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │↘│    │  0x00007f25f6fff158:   cmp    %edi,%r13d
          │ ╰    │  0x00007f25f6fff15b:   jg     0x00007f25f6fff140
          │      │  0x00007f25f6fff15d:   mov    0x78(%rsp),%ebp
   0.09%  │  ╭   │  0x00007f25f6fff161:   jmp    0x00007f25f6fff236
          │  │   │  0x00007f25f6fff166:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  │   │  0x00007f25f6fff171:   data16 data16 xchg %ax,%ax
          │  │   │  0x00007f25f6fff175:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          │  │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.24%  │  │↗  │  0x00007f25f6fff180:   mov    0x10(%r10,%rdi,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.72%  │  ││  │  0x00007f25f6fff185:   mov    %esi,%r11d
   1.95%  │  ││  │  0x00007f25f6fff188:   imul   0x10(%rax,%rdi,4),%r11d      ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.17%  │  ││  │  0x00007f25f6fff18e:   add    %edx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.27%  │  ││  │  0x00007f25f6fff191:   mov    %r11d,0x10(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.83%  │  ││  │  0x00007f25f6fff196:   movslq %edi,%rdx
   1.67%  │  ││  │  0x00007f25f6fff199:   mov    0x14(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.09%  │  ││  │  0x00007f25f6fff19e:   mov    %esi,%r8d
   1.27%  │  ││  │  0x00007f25f6fff1a1:   imul   0x14(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.98%  │  ││  │  0x00007f25f6fff1a7:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.74%  │  ││  │  0x00007f25f6fff1aa:   mov    %r8d,0x14(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.31%  │  ││  │  0x00007f25f6fff1af:   mov    0x18(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.22%  │  ││  │  0x00007f25f6fff1b4:   mov    %esi,%r8d
   1.91%  │  ││  │  0x00007f25f6fff1b7:   imul   0x18(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.57%  │  ││  │  0x00007f25f6fff1bd:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.50%  │  ││  │  0x00007f25f6fff1c0:   mov    %r8d,0x18(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.94%  │  ││  │  0x00007f25f6fff1c5:   mov    0x1c(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.48%  │  ││  │  0x00007f25f6fff1ca:   mov    %esi,%r8d
   1.40%  │  ││  │  0x00007f25f6fff1cd:   imul   0x1c(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.41%  │  ││  │  0x00007f25f6fff1d3:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.80%  │  ││  │  0x00007f25f6fff1d6:   mov    %r8d,0x1c(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   3.76%  │  ││  │  0x00007f25f6fff1db:   mov    0x20(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.17%  │  ││  │  0x00007f25f6fff1e0:   mov    %esi,%r8d
   1.16%  │  ││  │  0x00007f25f6fff1e3:   imul   0x20(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.52%  │  ││  │  0x00007f25f6fff1e9:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.20%  │  ││  │  0x00007f25f6fff1ec:   mov    %r8d,0x20(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   3.50%  │  ││  │  0x00007f25f6fff1f1:   mov    0x24(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.99%  │  ││  │  0x00007f25f6fff1f6:   mov    %esi,%r8d
   1.26%  │  ││  │  0x00007f25f6fff1f9:   imul   0x24(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.90%  │  ││  │  0x00007f25f6fff1ff:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.99%  │  ││  │  0x00007f25f6fff202:   mov    %r8d,0x24(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   3.17%  │  ││  │  0x00007f25f6fff207:   mov    0x28(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.92%  │  ││  │  0x00007f25f6fff20c:   mov    %esi,%r8d
   1.54%  │  ││  │  0x00007f25f6fff20f:   imul   0x28(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.70%  │  ││  │  0x00007f25f6fff215:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.72%  │  ││  │  0x00007f25f6fff218:   mov    %r8d,0x28(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.86%  │  ││  │  0x00007f25f6fff21d:   mov    0x2c(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.23%  │  ││  │  0x00007f25f6fff222:   mov    %esi,%r8d
   1.25%  │  ││  │  0x00007f25f6fff225:   imul   0x2c(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.63%  │  ││  │  0x00007f25f6fff22b:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.93%  │  ││  │  0x00007f25f6fff22e:   mov    %r8d,0x2c(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.82%  │  ││  │  0x00007f25f6fff233:   lea    0x8(%rdi),%edi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@23 (line 223)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.24%  │  ↘│  │  0x00007f25f6fff236:   cmp    %edi,%ebp
          │   ╰  │  0x00007f25f6fff238:   jg     0x00007f25f6fff180
   0.03%  │      │  0x00007f25f6fff23e:   mov    0x90(%rsp),%ecx
   0.02%  │    ╭ │  0x00007f25f6fff245:   jmp    0x00007f25f6fff278
          │    │ │  0x00007f25f6fff24a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    │ │  0x00007f25f6fff255:   data16 data16 xchg %ax,%ax
          │    │ │  0x00007f25f6fff259:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.20%  │    │↗│  0x00007f25f6fff260:   mov    0x10(%r10,%rdi,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.18%  │    │││  0x00007f25f6fff265:   mov    %esi,%r11d
   0.07%  │    │││  0x00007f25f6fff268:   imul   0x10(%rax,%rdi,4),%r11d      ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.09%  │    │││  0x00007f25f6fff26e:   add    %edx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.19%  │    │││  0x00007f25f6fff271:   mov    %r11d,0x10(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.20%  │    │││  0x00007f25f6fff276:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@23 (line 223)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.12%  │    ↘││  0x00007f25f6fff278:   cmp    %edi,%ecx
          │     ╰│  0x00007f25f6fff27a:   jg     0x00007f25f6fff260           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f25f6fff27c:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │      │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@29 (line 226)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f25f6fff283:   test   %eax,(%rdi)                  ;   {poll}
   0.10%  │      │  0x00007f25f6fff285:   mov    0x40(%rsp),%r9d
          │      │  0x00007f25f6fff28a:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@91 (line 139)
          │      │  0x00007f25f6fff28d:   mov    0x44(%rsp),%r11d
          │      │  0x00007f25f6fff292:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@88 (line 143)
   0.10%  │      │  0x00007f25f6fff295:   mov    0x4c(%rsp),%r8d
          │      │  0x00007f25f6fff29a:   mov    0x64(%rsp),%esi
          │      │  0x00007f25f6fff29e:   mov    0x68(%rsp),%rbx
          │      │  0x00007f25f6fff2a3:   mov    0x8(%rsp),%r10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@49 (line 139)
   0.09%  ↘      │  0x00007f25f6fff2a8:   cmp    %r9d,%ecx
                 ╰  0x00007f25f6fff2ab:   jg     0x00007f25f6fff0c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@52 (line 139)
                    0x00007f25f6fff2b1:   mov    0x74(%rsp),%r13d
                    0x00007f25f6fff2b6:   mov    0x78(%rsp),%ebp
                    0x00007f25f6fff2ba:   mov    0x18(%rsp),%r10
                    0x00007f25f6fff2bf:   nop
   0.00%            0x00007f25f6fff2c0:   test   %r8d,%r8d
                    0x00007f25f6fff2c3:   jl     0x00007f25f6fff655
                    0x00007f25f6fff2c9:   test   %ecx,%ecx
                    0x00007f25f6fff2cb:   jl     0x00007f25f6fff655
                    0x00007f25f6fff2d1:   cmp    0x7c(%rsp),%r8d
                    0x00007f25f6fff2d6:   jg     0x00007f25f6fff655
   0.00%            0x00007f25f6fff2dc:   mov    %r10,%rdi
                    0x00007f25f6fff2df:   mov    0x10(%rsp),%rsi
                    0x00007f25f6fff2e4:   lea    0x10(%rdi),%rdi
                    0x00007f25f6fff2e8:   lea    0x10(%rsi,%r8,4),%rsi        ;* unwind (locked if synchronized)
                                                                              ; - java.lang.System::arraycopy@-3
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@105 (line 145)
                    0x00007f25f6fff2ed:   mov    0x80(%rsp),%rdx
                    0x00007f25f6fff2f5:   call   Stub::jint_arraycopy         ;   {runtime_call StubRoutines (2)}
                    0x00007f25f6fff2fa:   nop
                    0x00007f25f6fff2fb:   mov    0x48(%rsp),%r9d
                    0x00007f25f6fff300:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  79.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jint_disjoint_arraycopy 

   0.10%           0x00007f25ef4e6994:   neg    %rdx
   0.00%  ╭        0x00007f25ef4e6997:   jmp    Stub::jint_disjoint_arraycopy+104 0x00007f25ef4e69e8
          │↗   ↗   0x00007f25ef4e699c:   mov    0x8(%rdi,%rdx,8),%rax
          ││   │   0x00007f25ef4e69a1:   mov    %rax,0x8(%rsi,%rdx,8)
          ││   │   0x00007f25ef4e69a6:   inc    %rdx
          │╰   │   0x00007f25ef4e69a9:   jne    Stub::jint_disjoint_arraycopy+28 0x00007f25ef4e699c
          │    │↗  0x00007f25ef4e69ab:   test   $0x1,%ecx
          │ ╭  ││  0x00007f25ef4e69b1:   je     Stub::jint_disjoint_arraycopy+57 0x00007f25ef4e69b9
          │ │  ││  0x00007f25ef4e69b3:   mov    0x8(%rdi),%eax
          │ │  ││  0x00007f25ef4e69b6:   mov    %eax,0x8(%rsi)
   0.10%  │ ↘  ││  0x00007f25ef4e69b9:   vzeroupper 
   0.09%  │    ││  0x00007f25ef4e69bc:   xor    %rax,%rax
          │    ││  0x00007f25ef4e69bf:   leave  
   0.10%  │    ││  0x00007f25ef4e69c0:   ret    
          │    ││  0x00007f25ef4e69c1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    ││  0x00007f25ef4e69cc:   data16 data16 xchg %ax,%ax
   0.57%  │  ↗ ││  0x00007f25ef4e69d0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   3.11%  │  │ ││  0x00007f25ef4e69d6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
   2.15%  │  │ ││  0x00007f25ef4e69dc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
   8.63%  │  │ ││  0x00007f25ef4e69e2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
   2.96%  ↘  │ ││  0x00007f25ef4e69e8:   add    $0x8,%rdx
             ╰ ││  0x00007f25ef4e69ec:   jle    Stub::jint_disjoint_arraycopy+80 0x00007f25ef4e69d0
   0.01%       ││  0x00007f25ef4e69ee:   sub    $0x4,%rdx
              ╭││  0x00007f25ef4e69f2:   jg     Stub::jint_disjoint_arraycopy+132 0x00007f25ef4e6a04
              │││  0x00007f25ef4e69f4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
              │││  0x00007f25ef4e69fa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
              │││  0x00007f25ef4e6a00:   add    $0x4,%rdx
   0.00%      ↘││  0x00007f25ef4e6a04:   vpxor  %ymm0,%ymm0,%ymm0
   0.00%       ││  0x00007f25ef4e6a08:   vpxor  %ymm1,%ymm1,%ymm1
   0.09%       ││  0x00007f25ef4e6a0c:   sub    $0x4,%rdx
               ╰│  0x00007f25ef4e6a10:   jl     Stub::jint_disjoint_arraycopy+28 0x00007f25ef4e699c
                ╰  0x00007f25ef4e6a12:   jmp    Stub::jint_disjoint_arraycopy+43 0x00007f25ef4e69ab
                 --------------------------------------------------------------------------------
                 - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                 - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                 StubRoutines::jint_arraycopy [0x00007f25ef4e6a20, 0x00007f25ef4e6ab6] (150 bytes)
                 --------------------------------------------------------------------------------
   0.06%           0x00007f25ef4e6a20:   push   %rbp
   0.01%           0x00007f25ef4e6a21:   mov    %rsp,%rbp
   0.08%           0x00007f25ef4e6a24:   cmp    %rdi,%rsi
....................................................................................................
  17.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  79.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
  17.98%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.84%               kernel  [unknown] 
   0.20%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.11%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               kernel  [unknown] 
   0.97%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  79.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 4, compile id 736 
  18.19%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   2.01%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  putop 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  ptmalloc_init.part.0 
   0.00%       hsdis-amd64.so  print_insn 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  79.47%       jvmci, level 4
  18.19%         runtime stub
   2.01%               kernel
   0.14%            libjvm.so
   0.07%         libc-2.31.so
   0.06%                     
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%            libnio.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul
# Parameters: (size = 1048576)

# Run progress: 25.00% complete, ETA 00:16:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1016505.176 us/op
# Warmup Iteration   2: 995339.449 us/op
# Warmup Iteration   3: 992302.220 us/op
# Warmup Iteration   4: 998828.051 us/op
# Warmup Iteration   5: 975763.196 us/op
Iteration   1: 979582.449 us/op
Iteration   2: 995076.603 us/op
Iteration   3: 1000080.518 us/op
Iteration   4: 992646.631 us/op
Iteration   5: 1000510.570 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul":
  993579.354 ±(99.9%) 32749.267 us/op [Average]
  (min, avg, max) = (979582.449, 993579.354, 1000510.570), stdev = 8504.881
  CI (99.9%): [960830.087, 1026328.621] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_matrix_mul:·asm":
PrintAssembly processed: 196589 total address lines.
Perf output processed (skipped 62.468 seconds):
 Column 1: cycles (53238 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 5, compile id 760 

                    0x00007f7483003b8e:   jbe    0x00007f7483004191           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
                    0x00007f7483003b94:   mov    0x68(%rsp),%rbx
                    0x00007f7483003b99:   mov    $0x0,%r9d
                    0x00007f7483003b9f:   mov    $0x0,%r11d
          ╭         0x00007f7483003ba5:   jmp    0x00007f7483003da8
          │         0x00007f7483003baa:   data16 data16 nopw 0x0(%rax,%rax,1)
          │         0x00007f7483003bb5:   data16 data16 xchg %ax,%ax
          │         0x00007f7483003bb9:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@52 (line 139)
   0.01%  │      ↗  0x00007f7483003bc0:   test   %r11d,%r11d
          │      │  0x00007f7483003bc3:   jl     0x00007f74830041b2
   0.01%  │      │  0x00007f7483003bc9:   cmp    %esi,%r11d
          │      │  0x00007f7483003bcc:   jg     0x00007f74830041b2
   0.00%  │      │  0x00007f7483003bd2:   mov    %r10,%rcx
   0.03%  │      │  0x00007f7483003bd5:   mov    %rax,%rbp                    ;* unwind (locked if synchronized)
          │      │                                                            ; - java.lang.System::arraycopy@-3
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
   0.01%  │      │  0x00007f7483003bd8:   mov    %r9d,%eax
   0.00%  │      │  0x00007f7483003bdb:   add    %r8d,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@60 (line 140)
   0.00%  │      │  0x00007f7483003bde:   mov    0x10(%r10,%rax,4),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@61 (line 140)
   0.06%  │      │  0x00007f7483003be3:   lea    0x10(%rcx,%r11,4),%rdi
   0.00%  │      │  0x00007f7483003be8:   lea    0x10(%rbp),%rsi
   0.01%  │      │  0x00007f7483003bec:   mov    %rbx,%rdx                    ;* unwind (locked if synchronized)
          │      │                                                            ; - java.lang.System::arraycopy@-3
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@71 (line 141)
   0.00%  │      │  0x00007f7483003bef:   mov    %r11d,0x44(%rsp)
   0.02%  │      │  0x00007f7483003bf4:   mov    %r9d,0x40(%rsp)
   0.00%  │      │  0x00007f7483003bf9:   mov    %eax,0x3c(%rsp)
   0.01%  │      │  0x00007f7483003bfd:   data16 xchg %ax,%ax
   0.01%  │      │  0x00007f7483003c00:   call   Stub::jint_arraycopy         ;   {runtime_call StubRoutines (2)}
          │      │  0x00007f7483003c05:   nop
          │      │  0x00007f7483003c06:   mov    0x18(%rsp),%r10
   0.03%  │      │  0x00007f7483003c0b:   mov    0x10(%r10),%edi              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f7483003c0f:   mov    0x3c(%rsp),%esi
          │      │  0x00007f7483003c13:   mov    0x20(%rsp),%rax
          │      │  0x00007f7483003c18:   mov    %esi,%edx
   0.05%  │      │  0x00007f7483003c1a:   imul   0x10(%rax),%edx              ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f7483003c1e:   add    %edi,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f7483003c20:   mov    %edx,0x10(%r10)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f7483003c24:   mov    $0x1,%edi
   0.04%  │      │  0x00007f7483003c29:   mov    0x74(%rsp),%r13d
          │╭     │  0x00007f7483003c2e:   jmp    0x00007f7483003c58           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@3 (line 223)
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          ││     │  0x00007f7483003c33:   nopw   0x0(%rax,%rax,1)
          ││     │  0x00007f7483003c3c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.06%  ││↗    │  0x00007f7483003c40:   mov    0x10(%r10,%rdi,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │││    │  0x00007f7483003c45:   mov    %esi,%r11d
          │││    │  0x00007f7483003c48:   imul   0x10(%rax,%rdi,4),%r11d      ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │││    │  0x00007f7483003c4e:   add    %edx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.02%  │││    │  0x00007f7483003c51:   mov    %r11d,0x10(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │││    │  0x00007f7483003c56:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@23 (line 223)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │↘│    │  0x00007f7483003c58:   cmp    %edi,%r13d
          │ ╰    │  0x00007f7483003c5b:   jg     0x00007f7483003c40
          │      │  0x00007f7483003c5d:   mov    0x78(%rsp),%ebp
   0.04%  │  ╭   │  0x00007f7483003c61:   jmp    0x00007f7483003d36
          │  │   │  0x00007f7483003c66:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  │   │  0x00007f7483003c71:   data16 data16 xchg %ax,%ax
          │  │   │  0x00007f7483003c75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          │  │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.94%  │  │↗  │  0x00007f7483003c80:   mov    0x10(%r10,%rdi,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.43%  │  ││  │  0x00007f7483003c85:   mov    %esi,%r11d
   2.19%  │  ││  │  0x00007f7483003c88:   imul   0x10(%rax,%rdi,4),%r11d      ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.64%  │  ││  │  0x00007f7483003c8e:   add    %edx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.91%  │  ││  │  0x00007f7483003c91:   mov    %r11d,0x10(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   5.00%  │  ││  │  0x00007f7483003c96:   movslq %edi,%rdx
   1.50%  │  ││  │  0x00007f7483003c99:   mov    0x14(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.53%  │  ││  │  0x00007f7483003c9e:   mov    %esi,%r8d
   0.87%  │  ││  │  0x00007f7483003ca1:   imul   0x14(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.37%  │  ││  │  0x00007f7483003ca7:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.45%  │  ││  │  0x00007f7483003caa:   mov    %r8d,0x14(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   4.16%  │  ││  │  0x00007f7483003caf:   mov    0x18(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.62%  │  ││  │  0x00007f7483003cb4:   mov    %esi,%r8d
   1.77%  │  ││  │  0x00007f7483003cb7:   imul   0x18(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.13%  │  ││  │  0x00007f7483003cbd:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.58%  │  ││  │  0x00007f7483003cc0:   mov    %r8d,0x18(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   4.96%  │  ││  │  0x00007f7483003cc5:   mov    0x1c(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.15%  │  ││  │  0x00007f7483003cca:   mov    %esi,%r8d
   0.95%  │  ││  │  0x00007f7483003ccd:   imul   0x1c(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.21%  │  ││  │  0x00007f7483003cd3:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.00%  │  ││  │  0x00007f7483003cd6:   mov    %r8d,0x1c(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   5.05%  │  ││  │  0x00007f7483003cdb:   mov    0x20(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.66%  │  ││  │  0x00007f7483003ce0:   mov    %esi,%r8d
   0.73%  │  ││  │  0x00007f7483003ce3:   imul   0x20(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.30%  │  ││  │  0x00007f7483003ce9:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.30%  │  ││  │  0x00007f7483003cec:   mov    %r8d,0x20(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   4.95%  │  ││  │  0x00007f7483003cf1:   mov    0x24(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.65%  │  ││  │  0x00007f7483003cf6:   mov    %esi,%r8d
   0.88%  │  ││  │  0x00007f7483003cf9:   imul   0x24(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.59%  │  ││  │  0x00007f7483003cff:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.13%  │  ││  │  0x00007f7483003d02:   mov    %r8d,0x24(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   4.94%  │  ││  │  0x00007f7483003d07:   mov    0x28(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.68%  │  ││  │  0x00007f7483003d0c:   mov    %esi,%r8d
   1.03%  │  ││  │  0x00007f7483003d0f:   imul   0x28(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.36%  │  ││  │  0x00007f7483003d15:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.20%  │  ││  │  0x00007f7483003d18:   mov    %r8d,0x28(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   4.92%  │  ││  │  0x00007f7483003d1d:   mov    0x2c(%r10,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.79%  │  ││  │  0x00007f7483003d22:   mov    %esi,%r8d
   0.85%  │  ││  │  0x00007f7483003d25:   imul   0x2c(%rax,%rdx,4),%r8d       ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   1.43%  │  ││  │  0x00007f7483003d2b:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   2.02%  │  ││  │  0x00007f7483003d2e:   mov    %r8d,0x2c(%r10,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   5.11%  │  ││  │  0x00007f7483003d33:   lea    0x8(%rdi),%edi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@23 (line 223)
          │  ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.67%  │  ↘│  │  0x00007f7483003d36:   cmp    %edi,%ebp
          │   ╰  │  0x00007f7483003d38:   jg     0x00007f7483003c80
   0.01%  │      │  0x00007f7483003d3e:   mov    0x90(%rsp),%ecx
   0.01%  │    ╭ │  0x00007f7483003d45:   jmp    0x00007f7483003d78
          │    │ │  0x00007f7483003d4a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    │ │  0x00007f7483003d55:   data16 data16 xchg %ax,%ax
          │    │ │  0x00007f7483003d59:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.06%  │    │↗│  0x00007f7483003d60:   mov    0x10(%r10,%rdi,4),%edx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@14 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.05%  │    │││  0x00007f7483003d65:   mov    %esi,%r11d
   0.08%  │    │││  0x00007f7483003d68:   imul   0x10(%rax,%rdi,4),%r11d      ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@20 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.07%  │    │││  0x00007f7483003d6e:   add    %edx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@21 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.08%  │    │││  0x00007f7483003d71:   mov    %r11d,0x10(%r10,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@22 (line 224)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.12%  │    │││  0x00007f7483003d76:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@23 (line 223)
          │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.06%  │    ↘││  0x00007f7483003d78:   cmp    %edi,%ecx
          │     ╰│  0x00007f7483003d7a:   jg     0x00007f7483003d60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@6 (line 223)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
          │      │  0x00007f7483003d7c:   mov    0x348(%r15),%rdi             ; ImmutableOopMap {rax=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
          │      │                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::saxpy@29 (line 226)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@82 (line 142)
   0.01%  │      │  0x00007f7483003d83:   test   %eax,(%rdi)                  ;   {poll}
   0.03%  │      │  0x00007f7483003d85:   mov    0x40(%rsp),%r9d
   0.01%  │      │  0x00007f7483003d8a:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@91 (line 139)
   0.01%  │      │  0x00007f7483003d8d:   mov    0x44(%rsp),%r11d
   0.00%  │      │  0x00007f7483003d92:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@88 (line 143)
   0.02%  │      │  0x00007f7483003d95:   mov    0x4c(%rsp),%r8d
   0.00%  │      │  0x00007f7483003d9a:   mov    0x64(%rsp),%esi
   0.00%  │      │  0x00007f7483003d9e:   mov    0x68(%rsp),%rbx
   0.00%  │      │  0x00007f7483003da3:   mov    0x8(%rsp),%r10               ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@49 (line 139)
   0.02%  ↘      │  0x00007f7483003da8:   cmp    %r9d,%ecx
                 ╰  0x00007f7483003dab:   jg     0x00007f7483003bc0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul@52 (line 139)
                    0x00007f7483003db1:   mov    0x74(%rsp),%r13d
                    0x00007f7483003db6:   mov    0x78(%rsp),%ebp
                    0x00007f7483003dba:   mov    0x18(%rsp),%r10
                    0x00007f7483003dbf:   nop
                    0x00007f7483003dc0:   test   %r8d,%r8d
                    0x00007f7483003dc3:   jl     0x00007f748300415c
                    0x00007f7483003dc9:   test   %ecx,%ecx
....................................................................................................
  84.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jint_disjoint_arraycopy 

   0.02%         0x00007f747b4e6994:   neg    %rdx
          ╭      0x00007f747b4e6997:   jmp    Stub::jint_disjoint_arraycopy+104 0x00007f747b4e69e8
          │↗     0x00007f747b4e699c:   mov    0x8(%rdi,%rdx,8),%rax
          ││     0x00007f747b4e69a1:   mov    %rax,0x8(%rsi,%rdx,8)
          ││     0x00007f747b4e69a6:   inc    %rdx
          │╰     0x00007f747b4e69a9:   jne    Stub::jint_disjoint_arraycopy+28 0x00007f747b4e699c
          │      0x00007f747b4e69ab:   test   $0x1,%ecx
          │ ╭    0x00007f747b4e69b1:   je     Stub::jint_disjoint_arraycopy+57 0x00007f747b4e69b9
          │ │    0x00007f747b4e69b3:   mov    0x8(%rdi),%eax
          │ │    0x00007f747b4e69b6:   mov    %eax,0x8(%rsi)
   0.05%  │ ↘    0x00007f747b4e69b9:   vzeroupper 
   0.03%  │      0x00007f747b4e69bc:   xor    %rax,%rax
          │      0x00007f747b4e69bf:   leave  
   0.04%  │      0x00007f747b4e69c0:   ret    
          │      0x00007f747b4e69c1:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      0x00007f747b4e69cc:   data16 data16 xchg %ax,%ax
   0.53%  │  ↗   0x00007f747b4e69d0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   1.95%  │  │   0x00007f747b4e69d6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
   2.21%  │  │   0x00007f747b4e69dc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
   5.89%  │  │   0x00007f747b4e69e2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
   2.88%  ↘  │   0x00007f747b4e69e8:   add    $0x8,%rdx
             ╰   0x00007f747b4e69ec:   jle    Stub::jint_disjoint_arraycopy+80 0x00007f747b4e69d0
                 0x00007f747b4e69ee:   sub    $0x4,%rdx
              ╭  0x00007f747b4e69f2:   jg     Stub::jint_disjoint_arraycopy+132 0x00007f747b4e6a04
              │  0x00007f747b4e69f4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
              │  0x00007f747b4e69fa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
              │  0x00007f747b4e6a00:   add    $0x4,%rdx
              ↘  0x00007f747b4e6a04:   vpxor  %ymm0,%ymm0,%ymm0
                 0x00007f747b4e6a08:   vpxor  %ymm1,%ymm1,%ymm1
   0.05%         0x00007f747b4e6a0c:   sub    $0x4,%rdx
                 0x00007f747b4e6a10:   jl     Stub::jint_disjoint_arraycopy+28 0x00007f747b4e699c
....................................................................................................
  13.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  84.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 5, compile id 760 
  13.57%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.23%               kernel  [unknown] 
   0.14%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.05%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 5, compile id 760 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.81%  <...other 286 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_matrix_mul, version 5, compile id 760 
  13.76%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   1.19%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.15%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  84.68%       jvmci, level 4
  13.76%         runtime stub
   1.19%               kernel
   0.16%            libjvm.so
   0.07%         libc-2.31.so
   0.06%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.02%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum
# Parameters: (size = 262144)

# Run progress: 33.33% complete, ETA 00:15:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 133.475 us/op
# Warmup Iteration   2: 133.621 us/op
# Warmup Iteration   3: 133.305 us/op
# Warmup Iteration   4: 133.670 us/op
# Warmup Iteration   5: 133.368 us/op
Iteration   1: 133.650 us/op
Iteration   2: 133.584 us/op
Iteration   3: 133.648 us/op
Iteration   4: 133.761 us/op
Iteration   5: 133.009 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum":
  133.530 ±(99.9%) 1.148 us/op [Average]
  (min, avg, max) = (133.009, 133.530, 133.761), stdev = 0.298
  CI (99.9%): [132.383, 134.678] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum:·asm":
PrintAssembly processed: 196942 total address lines.
Perf output processed (skipped 58.815 seconds):
 Column 1: cycles (50798 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 740 

   0.00%         0x00007f01deffc732:   lea    -0x10(%r10),%r8d
                 0x00007f01deffc736:   mov    %r8d,0x20(%rsp)
                 0x00007f01deffc73b:   mov    %r9d,0x1c(%rsp)
                 0x00007f01deffc740:   mov    %r11d,%r9d
                 0x00007f01deffc743:   mov    0x1c(%rsp),%r11d
          ╭      0x00007f01deffc748:   jmp    0x00007f01deffc807
          │      0x00007f01deffc74d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      0x00007f01deffc758:   data16 data16 xchg %ax,%ax
          │      0x00007f01deffc75c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@12 (line 73)
   4.64%  │↗     0x00007f01deffc760:   add    0x10(%rax,%r9,4),%r11d
   0.06%  ││     0x00007f01deffc765:   movslq %r9d,%rcx
          ││     0x00007f01deffc768:   mov    0x14(%rax,%rcx,4),%ebx
   0.05%  ││     0x00007f01deffc76c:   mov    0x18(%rax,%rcx,4),%edi
   4.65%  ││     0x00007f01deffc770:   mov    0x1c(%rax,%rcx,4),%edx
   0.14%  ││     0x00007f01deffc774:   mov    0x20(%rax,%rcx,4),%esi
   0.19%  ││     0x00007f01deffc778:   mov    0x24(%rax,%rcx,4),%ebp
   0.33%  ││     0x00007f01deffc77c:   mov    0x28(%rax,%rcx,4),%r13d
   4.44%  ││     0x00007f01deffc781:   mov    0x2c(%rax,%rcx,4),%r14d
   0.20%  ││     0x00007f01deffc786:   mov    0x30(%rax,%rcx,4),%r10d
   0.11%  ││     0x00007f01deffc78b:   mov    0x34(%rax,%rcx,4),%r8d
   0.14%  ││     0x00007f01deffc790:   mov    %r9d,0x1c(%rsp)
   4.19%  ││     0x00007f01deffc795:   mov    0x38(%rax,%rcx,4),%r9d
  19.34%  ││     0x00007f01deffc79a:   mov    %r9d,0x18(%rsp)
   7.71%  ││     0x00007f01deffc79f:   mov    0x3c(%rax,%rcx,4),%r9d
   5.70%  ││     0x00007f01deffc7a4:   mov    %r9d,0x14(%rsp)
   6.43%  ││     0x00007f01deffc7a9:   mov    0x40(%rax,%rcx,4),%r9d
   1.12%  ││     0x00007f01deffc7ae:   mov    %r9d,0x10(%rsp)
   4.32%  ││     0x00007f01deffc7b3:   mov    0x44(%rax,%rcx,4),%r9d
   0.22%  ││     0x00007f01deffc7b8:   mov    %r9d,0xc(%rsp)
   3.56%  ││     0x00007f01deffc7bd:   mov    0x48(%rax,%rcx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@18 (line 74)
   0.25%  ││     0x00007f01deffc7c2:   add    %ebx,%r11d
   1.24%  ││     0x00007f01deffc7c5:   add    %edi,%r11d
   0.04%  ││     0x00007f01deffc7c8:   add    %edx,%r11d
   3.24%  ││     0x00007f01deffc7cb:   add    %esi,%r11d
   0.13%  ││     0x00007f01deffc7ce:   add    %ebp,%r11d
   1.15%  ││     0x00007f01deffc7d1:   add    %r13d,%r11d
   0.06%  ││     0x00007f01deffc7d4:   add    %r14d,%r11d
   3.61%  ││     0x00007f01deffc7d7:   add    %r10d,%r11d
   0.26%  ││     0x00007f01deffc7da:   add    %r8d,%r11d
   1.83%  ││     0x00007f01deffc7dd:   add    0x18(%rsp),%r11d
   0.42%  ││     0x00007f01deffc7e2:   add    0x14(%rsp),%r11d
   3.57%  ││     0x00007f01deffc7e7:   add    0x10(%rsp),%r11d
   1.33%  ││     0x00007f01deffc7ec:   add    0xc(%rsp),%r11d
   4.10%  ││     0x00007f01deffc7f1:   add    %r9d,%r11d
   4.28%  ││     0x00007f01deffc7f4:   add    0x4c(%rax,%rcx,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@19 (line 74)
   4.54%  ││     0x00007f01deffc7f9:   mov    0x1c(%rsp),%r9d
   0.03%  ││     0x00007f01deffc7fe:   lea    0x10(%r9),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@21 (line 73)
          ││     0x00007f01deffc802:   mov    0x20(%rsp),%r8d              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@9 (line 73)
          ↘│     0x00007f01deffc807:   cmp    %r9d,%r8d
           ╰     0x00007f01deffc80a:   jg     0x00007f01deffc760
   0.00%         0x00007f01deffc810:   mov    0x24(%rsp),%r10d
            ╭    0x00007f01deffc815:   jmp    0x00007f01deffc828
            │    0x00007f01deffc81a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@12 (line 73)
   0.00%    │↗   0x00007f01deffc820:   add    0x10(%rax,%r9,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@19 (line 74)
   0.03%    ││   0x00007f01deffc825:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@21 (line 73)
            ↘│   0x00007f01deffc828:   cmp    %r9d,%r10d
             ╰   0x00007f01deffc82b:   jg     0x00007f01deffc820           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@12 (line 73)
              ↗  0x00007f01deffc82d:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@28 (line 76)
              │  0x00007f01deffc830:   mov    0x30(%rsp),%rbp
   0.00%      │  0x00007f01deffc835:   add    $0x38,%rsp
              │  0x00007f01deffc839:   mov    0x348(%r15),%rcx
   0.01%      │  0x00007f01deffc840:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%      │  0x00007f01deffc842:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@12 (line 73)
              │  0x00007f01deffc843:   mov    $0x0,%r11d
              ╰  0x00007f01deffc849:   jmp    0x00007f01deffc82d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@28 (line 76)
                 0x00007f01deffc84b:   movl   $0xffffffe5,0x370(%r15)      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@11 (line 73)
                 0x00007f01deffc856:   movq   $0x14,0x378(%r15)
                 0x00007f01deffc861:   call   0x00007f01d750527a           ; ImmutableOopMap {rsi=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@0 (line 71)
....................................................................................................
  97.68%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 740 
   0.41%               kernel  [unknown] 
   0.22%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 740 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.03%  <...other 363 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 740 
   1.95%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%            libjvm.so  os::PlatformMonitor::wait 
   0.16%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%       jvmci, level 4
   1.95%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%     Unknown, level 0
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum
# Parameters: (size = 1048576)

# Run progress: 41.67% complete, ETA 00:13:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 533.713 us/op
# Warmup Iteration   2: 531.855 us/op
# Warmup Iteration   3: 531.613 us/op
# Warmup Iteration   4: 533.272 us/op
# Warmup Iteration   5: 535.967 us/op
Iteration   1: 535.939 us/op
Iteration   2: 531.024 us/op
Iteration   3: 531.178 us/op
Iteration   4: 530.865 us/op
Iteration   5: 530.928 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum":
  531.987 ±(99.9%) 8.520 us/op [Average]
  (min, avg, max) = (530.865, 531.987, 535.939), stdev = 2.213
  CI (99.9%): [523.466, 540.507] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.baseline_sum:·asm":
PrintAssembly processed: 194482 total address lines.
Perf output processed (skipped 58.639 seconds):
 Column 1: cycles (51252 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 750 

              0x00007f4ca6ffc1b2:   lea    -0x10(%r10),%r8d
              0x00007f4ca6ffc1b6:   mov    %r8d,0x20(%rsp)
   0.00%      0x00007f4ca6ffc1bb:   mov    %r9d,0x1c(%rsp)
              0x00007f4ca6ffc1c0:   mov    %r11d,%r9d
              0x00007f4ca6ffc1c3:   mov    0x1c(%rsp),%r11d
          ╭   0x00007f4ca6ffc1c8:   jmp    0x00007f4ca6ffc287
          │   0x00007f4ca6ffc1cd:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f4ca6ffc1d8:   data16 data16 xchg %ax,%ax
          │   0x00007f4ca6ffc1dc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@12 (line 73)
   4.52%  │↗  0x00007f4ca6ffc1e0:   add    0x10(%rax,%r9,4),%r11d
   0.04%  ││  0x00007f4ca6ffc1e5:   movslq %r9d,%rcx
          ││  0x00007f4ca6ffc1e8:   mov    0x14(%rax,%rcx,4),%ebx
   0.04%  ││  0x00007f4ca6ffc1ec:   mov    0x18(%rax,%rcx,4),%edi
   4.65%  ││  0x00007f4ca6ffc1f0:   mov    0x1c(%rax,%rcx,4),%edx
   0.17%  ││  0x00007f4ca6ffc1f4:   mov    0x20(%rax,%rcx,4),%esi
   0.18%  ││  0x00007f4ca6ffc1f8:   mov    0x24(%rax,%rcx,4),%ebp
   0.33%  ││  0x00007f4ca6ffc1fc:   mov    0x28(%rax,%rcx,4),%r13d
   4.41%  ││  0x00007f4ca6ffc201:   mov    0x2c(%rax,%rcx,4),%r14d
   0.20%  ││  0x00007f4ca6ffc206:   mov    0x30(%rax,%rcx,4),%r10d
   0.11%  ││  0x00007f4ca6ffc20b:   mov    0x34(%rax,%rcx,4),%r8d
   0.15%  ││  0x00007f4ca6ffc210:   mov    %r9d,0x1c(%rsp)
   4.37%  ││  0x00007f4ca6ffc215:   mov    0x38(%rax,%rcx,4),%r9d
  18.91%  ││  0x00007f4ca6ffc21a:   mov    %r9d,0x18(%rsp)
   7.62%  ││  0x00007f4ca6ffc21f:   mov    0x3c(%rax,%rcx,4),%r9d
   5.77%  ││  0x00007f4ca6ffc224:   mov    %r9d,0x14(%rsp)
   6.48%  ││  0x00007f4ca6ffc229:   mov    0x40(%rax,%rcx,4),%r9d
   1.07%  ││  0x00007f4ca6ffc22e:   mov    %r9d,0x10(%rsp)
   4.11%  ││  0x00007f4ca6ffc233:   mov    0x44(%rax,%rcx,4),%r9d
   0.22%  ││  0x00007f4ca6ffc238:   mov    %r9d,0xc(%rsp)
   3.74%  ││  0x00007f4ca6ffc23d:   mov    0x48(%rax,%rcx,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@18 (line 74)
   0.20%  ││  0x00007f4ca6ffc242:   add    %ebx,%r11d
   1.11%  ││  0x00007f4ca6ffc245:   add    %edi,%r11d
   0.04%  ││  0x00007f4ca6ffc248:   add    %edx,%r11d
   3.31%  ││  0x00007f4ca6ffc24b:   add    %esi,%r11d
   0.11%  ││  0x00007f4ca6ffc24e:   add    %ebp,%r11d
   1.11%  ││  0x00007f4ca6ffc251:   add    %r13d,%r11d
   0.05%  ││  0x00007f4ca6ffc254:   add    %r14d,%r11d
   3.64%  ││  0x00007f4ca6ffc257:   add    %r10d,%r11d
   0.20%  ││  0x00007f4ca6ffc25a:   add    %r8d,%r11d
   1.70%  ││  0x00007f4ca6ffc25d:   add    0x18(%rsp),%r11d
   0.43%  ││  0x00007f4ca6ffc262:   add    0x14(%rsp),%r11d
   3.77%  ││  0x00007f4ca6ffc267:   add    0x10(%rsp),%r11d
   1.23%  ││  0x00007f4ca6ffc26c:   add    0xc(%rsp),%r11d
   3.96%  ││  0x00007f4ca6ffc271:   add    %r9d,%r11d
   4.13%  ││  0x00007f4ca6ffc274:   add    0x4c(%rax,%rcx,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@19 (line 74)
   4.48%  ││  0x00007f4ca6ffc279:   mov    0x1c(%rsp),%r9d
   0.04%  ││  0x00007f4ca6ffc27e:   lea    0x10(%r9),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@21 (line 73)
          ││  0x00007f4ca6ffc282:   mov    0x20(%rsp),%r8d              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@9 (line 73)
          ↘│  0x00007f4ca6ffc287:   cmp    %r9d,%r8d
           ╰  0x00007f4ca6ffc28a:   jg     0x00007f4ca6ffc1e0
              0x00007f4ca6ffc290:   mov    0x24(%rsp),%r10d
              0x00007f4ca6ffc295:   jmp    0x00007f4ca6ffc2a8
              0x00007f4ca6ffc29a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum@12 (line 73)
              0x00007f4ca6ffc2a0:   add    0x10(%rax,%r9,4),%r11d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  96.61%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 750 
   1.31%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 750 
   1.32%  <...other 422 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::baseline_sum, version 3, compile id 750 
   2.87%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.03%            libjvm.so  xmlStream::write_text 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  defaultStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.23%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.64%       jvmci, level 4
   2.87%               kernel
   0.19%            libjvm.so
   0.12%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.04%                     
   0.03%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%         runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:11:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8013.528 us/op
# Warmup Iteration   2: 4890.948 us/op
# Warmup Iteration   3: 4883.623 us/op
# Warmup Iteration   4: 4884.088 us/op
# Warmup Iteration   5: 4882.472 us/op
Iteration   1: 4884.308 us/op
Iteration   2: 4886.151 us/op
Iteration   3: 4885.838 us/op
Iteration   4: 4882.015 us/op
Iteration   5: 4882.872 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter":
  4884.237 ±(99.9%) 6.951 us/op [Average]
  (min, avg, max) = (4882.015, 4884.237, 4886.151), stdev = 1.805
  CI (99.9%): [4877.285, 4891.188] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter:·asm":
PrintAssembly processed: 263390 total address lines.
Perf output processed (skipped 58.739 seconds):
 Column 1: cycles (50671 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 997 

                   0x00007f67b70137a6:   cmp    $0x17,%r10d
                   0x00007f67b70137aa:   je     0x00007f67b701418d
                   0x00007f67b70137b0:   jmp    0x00007f67b701418d           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@1 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.15%           0x00007f67b70137b5:   cmp    %ecx,%r9d
                   0x00007f67b70137b8:   jle    0x00007f67b701405c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.09%           0x00007f67b70137be:   mov    $0x0,%r11d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.19%           0x00007f67b70137c4:   mov    %ebp,%r8d
   0.04%           0x00007f67b70137c7:   shl    $0x3,%r8                     ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@10 (line 375)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.12%           0x00007f67b70137cb:   mov    %esi,%ebx
   0.08%           0x00007f67b70137cd:   shl    $0x3,%rbx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@1 (line 374)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.22%           0x00007f67b70137d1:   cmp    $0x2,%edx
                   0x00007f67b70137d4:   jb     0x00007f67b7013c85           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.06%           0x00007f67b70137da:   nopw   0x0(%rax,%rax,1)
   0.16%           0x00007f67b70137e0:   cmp    $0x2,%eax
                   0x00007f67b70137e3:   jb     0x00007f67b7013e65
   0.10%           0x00007f67b70137e9:   mov    0x14(,%rsi,8),%r13d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.21%           0x00007f67b70137f1:   mov    0x14(,%rbp,8),%r14d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.07%           0x00007f67b70137f9:   cmp    $0x7,%r10d
   0.14%           0x00007f67b70137fd:   data16 xchg %ax,%ax
   0.09%  ╭        0x00007f67b7013800:   je     0x00007f67b7013815
   0.15%  │        0x00007f67b7013806:   cmp    $0x0,%r10d
          │        0x00007f67b701380a:   je     0x00007f67b7013b80
          │        0x00007f67b7013810:   jmp    0x00007f67b7014011           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
          │                                                                  ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
          │                                                                  ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
          │                                                                  ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
          │                                                                  ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
          │                                                                  ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
          │                                                                  ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.01%  ↘        0x00007f67b7013815:   cmp    %r13d,%r14d
                   0x00007f67b7013818:   jle    0x00007f67b701412b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.08%           0x00007f67b701381e:   mov    $0x0,%r9d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.16%           0x00007f67b7013824:   cmp    $0x3,%edx
                   0x00007f67b7013827:   jb     0x00007f67b7013cf0           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.13%           0x00007f67b701382d:   cmp    $0x3,%eax
                   0x00007f67b7013830:   jb     0x00007f67b70140bd
   0.04%           0x00007f67b7013836:   mov    %r8,(%rsp)
   0.25%           0x00007f67b701383a:   mov    0x18(,%rsi,8),%ecx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.13%           0x00007f67b7013841:   mov    0x18(,%rbp,8),%r8d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.10%           0x00007f67b7013849:   cmp    $0x7,%r10d
           ╭       0x00007f67b701384d:   je     0x00007f67b7013865
   0.03%   │       0x00007f67b7013853:   cmp    $0x0,%r10d
           │       0x00007f67b7013857:   je     0x00007f67b7013b4e
           │       0x00007f67b701385d:   data16 xchg %ax,%ax
           │       0x00007f67b7013860:   jmp    0x00007f67b7014105           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
           │                                                                 ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
           │                                                                 ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
           │                                                                 ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
           │                                                                 ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
           │                                                                 ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
           │                                                                 ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.00%   ↘       0x00007f67b7013865:   cmp    %ecx,%r8d
                   0x00007f67b7013868:   jle    0x00007f67b7013f3e           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.09%           0x00007f67b701386e:   mov    $0x0,%r13d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.36%           0x00007f67b7013874:   cmp    $0x4,%edx
                   0x00007f67b7013877:   jb     0x00007f67b7013d58           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.17%           0x00007f67b701387d:   data16 xchg %ax,%ax
   0.01%           0x00007f67b7013880:   cmp    $0x4,%eax
                   0x00007f67b7013883:   jb     0x00007f67b7013efc
   0.14%           0x00007f67b7013889:   mov    %rbx,0x8(%rsp)
   0.27%           0x00007f67b701388e:   mov    0x1c(,%rsi,8),%r14d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.11%           0x00007f67b7013896:   mov    0x1c(,%rbp,8),%ebx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.01%           0x00007f67b701389d:   cmp    $0x7,%r10d
            ╭      0x00007f67b70138a1:   je     0x00007f67b70138b6
   0.01%    │      0x00007f67b70138a7:   cmp    $0x0,%r10d
            │      0x00007f67b70138ab:   je     0x00007f67b7013b3e
            │      0x00007f67b70138b1:   jmp    0x00007f67b7013eb0           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
            │                                                                ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
            │                                                                ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
            │                                                                ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
            │                                                                ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
            │                                                                ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
            │                                                                ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.10%    ↘      0x00007f67b70138b6:   cmp    %r14d,%ebx
                   0x00007f67b70138b9:   jle    0x00007f67b7013e8f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.45%           0x00007f67b70138bf:   mov    $0x0,%r8d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.10%           0x00007f67b70138c5:   cmp    $0x5,%edx
                   0x00007f67b70138c8:   jb     0x00007f67b7013e3f           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.15%           0x00007f67b70138ce:   cmp    $0x5,%eax
                   0x00007f67b70138d1:   jb     0x00007f67b7013cbe
   0.11%           0x00007f67b70138d7:   mov    %ebx,0x2c(%rsp)
   0.29%           0x00007f67b70138db:   mov    0x20(,%rsi,8),%ecx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.12%           0x00007f67b70138e2:   mov    0x20(,%rbp,8),%ebx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.09%           0x00007f67b70138e9:   cmp    $0x7,%r10d
             ╭     0x00007f67b70138ed:   je     0x00007f67b7013905
   0.01%     │     0x00007f67b70138f3:   cmp    $0x0,%r10d
             │     0x00007f67b70138f7:   je     0x00007f67b7013b9d
             │     0x00007f67b70138fd:   data16 xchg %ax,%ax
             │     0x00007f67b7013900:   jmp    0x00007f67b7014078           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
             │                                                               ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
             │                                                               ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
             │                                                               ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
             │                                                               ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
             │                                                               ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
             │                                                               ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.13%     ↘     0x00007f67b7013905:   cmp    %ecx,%ebx
                   0x00007f67b7013907:   jle    0x00007f67b7013dfa           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.23%           0x00007f67b701390d:   mov    $0x0,%r14d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.02%           0x00007f67b7013913:   cmp    $0x6,%edx
                   0x00007f67b7013916:   jb     0x00007f67b701403b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.24%           0x00007f67b701391c:   nopl   0x0(%rax)
   0.12%           0x00007f67b7013920:   cmp    $0x6,%eax
                   0x00007f67b7013923:   jb     0x00007f67b7013dbc
   0.27%           0x00007f67b7013929:   mov    %ecx,0x28(%rsp)
   0.01%           0x00007f67b701392d:   mov    %rdi,0x10(%rsp)
   0.11%           0x00007f67b7013932:   mov    0x24(,%rsi,8),%edi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.12%           0x00007f67b7013939:   mov    0x24(,%rbp,8),%ecx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.28%           0x00007f67b7013940:   cmp    $0x7,%r10d
              ╭    0x00007f67b7013944:   je     0x00007f67b7013959
   0.02%      │    0x00007f67b701394a:   cmp    $0x0,%r10d
              │    0x00007f67b701394e:   je     0x00007f67b7013b90
              │    0x00007f67b7013954:   jmp    0x00007f67b7013d29           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
              │                                                              ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
              │                                                              ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
              │                                                              ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
              │                                                              ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
              │                                                              ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
              │                                                              ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.03%      ↘    0x00007f67b7013959:   nopl   0x0(%rax)
   0.02%           0x00007f67b7013960:   cmp    %edi,%ecx
                   0x00007f67b7013962:   jle    0x00007f67b7013ff1           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.11%           0x00007f67b7013968:   mov    $0x0,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.18%           0x00007f67b701396d:   cmp    $0x7,%edx
                   0x00007f67b7013970:   jb     0x00007f67b7013ed1           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.22%           0x00007f67b7013976:   cmp    $0x7,%eax
                   0x00007f67b7013979:   jb     0x00007f67b7013f25
   0.24%           0x00007f67b701397f:   mov    %ecx,0x24(%rsp)
   0.09%           0x00007f67b7013983:   mov    %edi,0x20(%rsp)
   0.32%           0x00007f67b7013987:   mov    0x28(,%rsi,8),%ecx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.09%           0x00007f67b701398e:   mov    0x28(,%rbp,8),%edi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.07%           0x00007f67b7013995:   cmp    $0x7,%r10d
               ╭   0x00007f67b7013999:   je     0x00007f67b70139ae
   0.03%       │   0x00007f67b701399f:   cmp    $0x0,%r10d
               │   0x00007f67b70139a3:   je     0x00007f67b7013b6f
               │   0x00007f67b70139a9:   jmp    0x00007f67b7013fb4           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
               │                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
               │                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
               │                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
               │                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
               │                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
               │                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.04%       ↘   0x00007f67b70139ae:   cmp    %ecx,%edi
                   0x00007f67b70139b0:   jle    0x00007f67b7013f65           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.11%           0x00007f67b70139b6:   mov    %ecx,0x1c(%rsp)
   0.03%           0x00007f67b70139ba:   mov    $0x0,%ecx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.09%           0x00007f67b70139bf:   nop
   0.24%           0x00007f67b70139c0:   cmp    $0x8,%edx
                   0x00007f67b70139c3:   jb     0x00007f67b701409d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.10%           0x00007f67b70139c9:   cmp    $0x8,%eax
                   0x00007f67b70139cc:   jb     0x00007f67b7013ddd
   0.10%           0x00007f67b70139d2:   mov    0x2c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.08%           0x00007f67b70139d9:   mov    0x2c(,%rbp,8),%ebp           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.23%           0x00007f67b70139e0:   cmp    $0x7,%r10d
                ╭  0x00007f67b70139e4:   je     0x00007f67b70139f9
   0.02%        │  0x00007f67b70139ea:   cmp    $0x0,%r10d
                │  0x00007f67b70139ee:   je     0x00007f67b7013b5e
                │  0x00007f67b70139f4:   jmp    0x00007f67b7013e1f           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                │                                                            ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                │                                                            ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                │                                                            ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                │                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.11%        ↘  0x00007f67b70139f9:   nopl   0x0(%rax)
   0.03%           0x00007f67b7013a00:   cmp    %edx,%ebp
                   0x00007f67b7013a02:   jle    0x00007f67b7013d8d           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.04%           0x00007f67b7013a08:   mov    $0x0,%edi                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.07%           0x00007f67b7013a0d:   mov    0x108(%r15),%rsi
   0.10%           0x00007f67b7013a14:   lea    0x10(%rsi),%rax
   0.19%           0x00007f67b7013a18:   nopl   0x0(%rax,%rax,1)
   0.06%           0x00007f67b7013a20:   cmp    0x118(%r15),%rax
                   0x00007f67b7013a27:   ja     0x00007f67b7013bf3
   0.25%           0x00007f67b7013a2d:   mov    %rax,0x108(%r15)             ;   {no_reloc}
   0.36%           0x00007f67b7013a34:   prefetchw 0xd0(%rsi)
   0.53%           0x00007f67b7013a3b:   movq   $0x1,(%rsi)
   0.75%           0x00007f67b7013a42:   movl   $0xc3e338,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.18%           0x00007f67b7013a49:   movl   $0x0,0xc(%rsi)
   0.56%           0x00007f67b7013a50:   mov    %r10d,0x34(%rsp)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@0 (line 137)
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@2 (line 41)
                                                                             ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 315)
                                                                             ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 115)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@68 (line 380)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.06%           0x00007f67b7013a55:   mov    0x108(%r15),%rax
   0.17%           0x00007f67b7013a5c:   lea    0x18(%rax),%r10
   0.22%           0x00007f67b7013a60:   cmp    0x118(%r15),%r10
                   0x00007f67b7013a67:   ja     0x00007f67b7013c12
   0.28%           0x00007f67b7013a6d:   mov    %r10,0x108(%r15)
   0.25%           0x00007f67b7013a74:   prefetchw 0xd8(%rax)
   0.61%           0x00007f67b7013a7b:   prefetchw 0x118(%rax)
   0.11%           0x00007f67b7013a82:   prefetchw 0x158(%rax)
   0.52%           0x00007f67b7013a89:   prefetchw 0x198(%rax)
   0.17%           0x00007f67b7013a90:   movq   $0x1,(%rax)
   0.39%           0x00007f67b7013a97:   movl   $0x960,0x8(%rax)             ;   {metadata({type array bool})}
   1.41%           0x00007f67b7013a9e:   movl   $0x8,0xc(%rax)
   0.30%           0x00007f67b7013aa5:   movq   $0x0,0x10(%rax)
   0.88%           0x00007f67b7013aad:   mov    %dil,0x17(%rax)
   0.22%           0x00007f67b7013ab1:   mov    %cl,0x16(%rax)
   0.29%           0x00007f67b7013ab4:   mov    %bl,0x15(%rax)
   0.25%           0x00007f67b7013ab7:   mov    %r14b,0x14(%rax)
   0.27%           0x00007f67b7013abb:   mov    %r8b,0x13(%rax)
   0.13%           0x00007f67b7013abf:   mov    %r13b,0x12(%rax)
   0.29%           0x00007f67b7013ac3:   mov    %r9b,0x11(%rax)
   0.23%           0x00007f67b7013ac7:   mov    %r11b,0x10(%rax)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@5 (line 137)
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@2 (line 41)
                                                                             ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 315)
                                                                             ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 115)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@68 (line 380)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                             ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
   0.33%           0x00007f67b7013acb:   mov    %rax,%rdx
   0.00%           0x00007f67b7013ace:   shr    $0x3,%rdx
   0.09%           0x00007f67b7013ad2:   mov    %edx,0xc(%rsi)
   0.20%           0x00007f67b7013ad5:   mov    %rsi,%rdx
   0.24%           0x00007f67b7013ad8:   xor    %rax,%rdx
   0.00%           0x00007f67b7013adb:   nopl   0x0(%rax,%rax,1)
   0.09%           0x00007f67b7013ae0:   test   $0xffffffffffe00000,%rdx
                   0x00007f67b7013ae7:   je     0x00007f67b7013bac
                   0x00007f67b7013aed:   test   %rax,%rax
                   0x00007f67b7013af0:   je     0x00007f67b7013bcc
                   0x00007f67b7013af6:   mov    %rsi,%r10
                   0x00007f67b7013af9:   shr    $0x9,%r10
                   0x00007f67b7013afd:   movabs $0x7f67ca629000,%rbp
                   0x00007f67b7013b07:   cmpb   $0x4,(%r10,%rbp,1)
   0.00%           0x00007f67b7013b0c:   jne    0x00007f67b7013bd4
                   0x00007f67b7013b12:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@0 (line 137)
....................................................................................................
  20.63%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 

            0x00007f67b7026614:   mov    0x90(%rsp),%r9
            0x00007f67b702661c:   mov    0x68(%rsp),%r10
            0x00007f67b7026621:   mov    0xac(%rsp),%ecx
            0x00007f67b7026628:   mov    $0x0,%r11d
            0x00007f67b702662e:   mov    0x98(%rsp),%r8
            0x00007f67b7026636:   data16 nopw 0x0(%rax,%rax,1)        ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@13 (line 114)
            0x00007f67b7026640:   cmp    %r11d,%ecx
            0x00007f67b7026643:   jle    0x00007f67b70272db           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@25 (line 114)
   0.25%    0x00007f67b7026649:   mov    %r11d,0x84(%rsp)
   0.00%    0x00007f67b7026651:   mov    0x108(%r15),%r14
            0x00007f67b7026658:   lea    0x10(%r14),%rbx
            0x00007f67b702665c:   nopl   0x0(%rax)
   0.25%    0x00007f67b7026660:   cmp    0x118(%r15),%rbx
            0x00007f67b7026667:   ja     0x00007f67b70270e6
            0x00007f67b702666d:   mov    %rbx,0x108(%r15)
   0.00%    0x00007f67b7026674:   prefetchw 0xd0(%r14)
            0x00007f67b702667c:   movq   $0x1,(%r14)
   0.27%    0x00007f67b7026683:   movl   $0xc3dd00,0x8(%r14)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.02%    0x00007f67b702668b:   movl   $0x0,0xc(%r14)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@43 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.01%    0x00007f67b7026693:   mov    %r14,0x38(%rsp)
   0.00%    0x00007f67b7026698:   mov    0x108(%r15),%rbx
   0.23%    0x00007f67b702669f:   lea    0x30(%rbx),%rcx
   0.05%    0x00007f67b70266a3:   cmp    0x118(%r15),%rcx
            0x00007f67b70266aa:   ja     0x00007f67b70270c6
   0.07%    0x00007f67b70266b0:   mov    %rcx,0x108(%r15)
   0.09%    0x00007f67b70266b7:   prefetchw 0xf0(%rbx)
   0.36%    0x00007f67b70266be:   prefetchw 0x130(%rbx)
   0.01%    0x00007f67b70266c5:   prefetchw 0x170(%rbx)
   0.16%    0x00007f67b70266cc:   prefetchw 0x1b0(%rbx)
   0.18%    0x00007f67b70266d3:   movq   $0x1,(%rbx)
   0.61%    0x00007f67b70266da:   movl   $0x6c38,0x8(%rbx)            ;   {metadata({type array int})}
   0.54%    0x00007f67b70266e1:   movl   $0x8,0xc(%rbx)
   0.17%    0x00007f67b70266e8:   movq   $0x0,0x10(%rbx)
   0.34%    0x00007f67b70266f0:   movq   $0x0,0x18(%rbx)
   0.13%    0x00007f67b70266f8:   movq   $0x0,0x20(%rbx)
   0.10%    0x00007f67b7026700:   movq   $0x0,0x28(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.08%    0x00007f67b7026708:   mov    0x2c(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.35%    0x00007f67b702670d:   mov    %ecx,0x2c(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.08%    0x00007f67b7026710:   mov    0x28(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.13%    0x00007f67b7026715:   mov    %ecx,0x28(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.13%    0x00007f67b7026718:   mov    0x24(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.07%    0x00007f67b702671d:   mov    %ecx,0x24(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.17%    0x00007f67b7026720:   mov    0x20(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.06%    0x00007f67b7026725:   mov    %ecx,0x20(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.15%    0x00007f67b7026728:   mov    0x1c(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.04%    0x00007f67b702672d:   mov    %ecx,0x1c(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.12%    0x00007f67b7026730:   mov    0x18(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.02%    0x00007f67b7026735:   mov    %ecx,0x18(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.15%    0x00007f67b7026738:   mov    0x14(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.02%    0x00007f67b702673d:   mov    %ecx,0x14(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.16%    0x00007f67b7026740:   mov    0x10(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.00%    0x00007f67b7026745:   mov    %ecx,0x10(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.20%    0x00007f67b7026748:   mov    0x108(%r15),%rcx
   0.05%    0x00007f67b702674f:   lea    0x10(%rcx),%r11
   0.07%    0x00007f67b7026753:   cmp    0x118(%r15),%r11
            0x00007f67b702675a:   ja     0x00007f67b70270b3
   0.02%    0x00007f67b7026760:   mov    %r11,0x108(%r15)
   0.16%    0x00007f67b7026767:   prefetchw 0xd0(%rcx)
   0.02%    0x00007f67b702676e:   movq   $0x1,(%rcx)
   0.61%    0x00007f67b7026775:   movl   $0xc3dd00,0x8(%rcx)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.22%    0x00007f67b702677c:   movl   $0x0,0xc(%rcx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::rvOp@45 (line 3618)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::lambda$broadcastBits$1@7 (line 3539)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies$$Lambda$63/0x0000000800cc3fa0::broadcast@5
                                                                      ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcastBits@18 (line 3536)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcast@5 (line 3545)
                                                                      ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector::lanewise@40 (line 711)
                                                                      ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::test_value_vector@2 (line 233)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.22%    0x00007f67b7026783:   mov    0x108(%r15),%r11
   0.13%    0x00007f67b702678a:   lea    0x30(%r11),%rdi
   0.08%    0x00007f67b702678e:   cmp    0x118(%r15),%rdi
            0x00007f67b7026795:   ja     0x00007f67b7027105
   0.08%    0x00007f67b702679b:   mov    %rdi,0x108(%r15)
   0.19%    0x00007f67b70267a2:   prefetchw 0xf0(%r11)
   0.27%    0x00007f67b70267aa:   prefetchw 0x130(%r11)
   0.03%    0x00007f67b70267b2:   prefetchw 0x170(%r11)
   0.12%    0x00007f67b70267ba:   prefetchw 0x1b0(%r11)
   0.21%    0x00007f67b70267c2:   movq   $0x1,(%r11)
   0.75%    0x00007f67b70267c9:   movl   $0x6c38,0x8(%r11)            ;   {metadata({type array int})}
   0.28%    0x00007f67b70267d1:   movl   $0x8,0xc(%r11)
   0.17%    0x00007f67b70267d9:   movq   $0x0,0x10(%r11)
   0.19%    0x00007f67b70267e1:   movq   $0x0,0x18(%r11)
   0.31%    0x00007f67b70267e9:   movq   $0x0,0x20(%r11)
   0.11%    0x00007f67b70267f1:   movq   $0x0,0x28(%r11)
   0.22%    0x00007f67b70267f9:   movl   $0x1,0x2c(%r11)
   0.15%    0x00007f67b7026801:   movl   $0x1,0x28(%r11)
   0.20%    0x00007f67b7026809:   movl   $0x1,0x24(%r11)
   0.15%    0x00007f67b7026811:   movl   $0x1,0x20(%r11)
   0.20%    0x00007f67b7026819:   movl   $0x1,0x1c(%r11)
   0.22%    0x00007f67b7026821:   movl   $0x1,0x18(%r11)
   0.19%    0x00007f67b7026829:   movl   $0x1,0x14(%r11)
   0.28%    0x00007f67b7026831:   movl   $0x1,0x10(%r11)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::rvOp@4 (line 3613)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::lambda$broadcastBits$1@7 (line 3539)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies$$Lambda$63/0x0000000800cc3fa0::broadcast@5
                                                                      ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcastBits@18 (line 3536)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcast@5 (line 3545)
                                                                      ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector::lanewise@40 (line 711)
                                                                      ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::test_value_vector@2 (line 233)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.23%    0x00007f67b7026839:   mov    %rbx,%rdi
   0.00%    0x00007f67b702683c:   shr    $0x3,%rdi
   0.00%    0x00007f67b7026840:   mov    %edi,0xc(%r14)
   0.03%    0x00007f67b7026844:   mov    %r14,%rdi
   0.21%    0x00007f67b7026847:   xor    %rbx,%rdi
   0.01%    0x00007f67b702684a:   test   $0xffffffffffe00000,%rdi
            0x00007f67b7026851:   je     0x00007f67b7026872
            0x00007f67b7026857:   test   %rbx,%rbx
            0x00007f67b702685a:   je     0x00007f67b7026872
            0x00007f67b7026860:   mov    %r14,%rdi
            0x00007f67b7026863:   shr    $0x9,%rdi
            0x00007f67b7026867:   cmpb   $0x4,(%rdi,%r8,1)
            0x00007f67b702686c:   jne    0x00007f67b7027045           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@43 (line 311)
....................................................................................................
  12.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  20.63%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 997 
  12.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   9.72%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1003 
   8.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   8.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   7.28%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1003 
   6.59%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 997 
   6.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   6.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   5.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   5.05%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 997 
   0.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   0.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
   0.17%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.10%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1003 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%            libjvm.so  HeapRegionClaimer::claim_region 
   1.92%  <...other 486 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1042 
  32.27%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::compare, version 2, compile id 997 
  17.11%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 1003 
   1.20%               kernel  [unknown] 
   0.23%                       <unknown> 
   0.06%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  JVMCIRuntime::new_array_common 
   0.02%            libjvm.so  ClassLoaderData::holder_phantom 
   0.02%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.66%  <...other 181 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.55%       jvmci, level 4
   1.20%               kernel
   0.78%            libjvm.so
   0.23%                     
   0.07%         libc-2.31.so
   0.06%   libpthread-2.31.so
   0.03%          interpreter
   0.02%           ld-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%       perf-36633.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter
# Parameters: (size = 1048576)

# Run progress: 58.33% complete, ETA 00:09:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 29893.323 us/op
# Warmup Iteration   2: 18978.474 us/op
# Warmup Iteration   3: 18865.018 us/op
# Warmup Iteration   4: 18962.782 us/op
# Warmup Iteration   5: 18922.947 us/op
Iteration   1: 18952.660 us/op
Iteration   2: 18936.528 us/op
Iteration   3: 18951.768 us/op
Iteration   4: 18927.377 us/op
Iteration   5: 18961.248 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter":
  18945.916 ±(99.9%) 52.608 us/op [Average]
  (min, avg, max) = (18927.377, 18945.916, 18961.248), stdev = 13.662
  CI (99.9%): [18893.308, 18998.524] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_filter:·asm":
PrintAssembly processed: 259777 total address lines.
Perf output processed (skipped 58.713 seconds):
 Column 1: cycles (50957 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.incubator.vector.IntVector::lambda$compareTemplate$41, version 2, compile id 991 

                   0x00007fc50f011b8a:   je     0x00007fc50f0122f1
                   0x00007fc50f011b90:   cmp    $0x17,%r10d
                   0x00007fc50f011b94:   je     0x00007fc50f0122f1
                   0x00007fc50f011b9a:   jmp    0x00007fc50f0122f1           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@1 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
                   0x00007fc50f011b9f:   nop
   0.04%           0x00007fc50f011ba0:   cmp    %r9d,%r8d
                   0x00007fc50f011ba3:   jle    0x00007fc50f0120b9           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.06%           0x00007fc50f011ba9:   mov    $0x0,%ecx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.15%           0x00007fc50f011bae:   mov    %ebp,%ebx
   0.00%           0x00007fc50f011bb0:   shl    $0x3,%rbx                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@10 (line 375)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.18%           0x00007fc50f011bb4:   mov    %esi,%edi
   0.18%           0x00007fc50f011bb6:   shl    $0x3,%rdi                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                             ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@1 (line 374)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.14%           0x00007fc50f011bba:   nopw   0x0(%rax,%rax,1)
   0.00%           0x00007fc50f011bc0:   cmp    $0x2,%edx
                   0x00007fc50f011bc3:   jb     0x00007fc50f0123f7           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.18%           0x00007fc50f011bc9:   cmp    $0x2,%eax
                   0x00007fc50f011bcc:   jb     0x00007fc50f012085
   0.19%           0x00007fc50f011bd2:   mov    0x14(,%rsi,8),%r13d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.15%           0x00007fc50f011bda:   mov    0x14(,%rbp,8),%r14d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.00%           0x00007fc50f011be2:   cmp    $0x7,%r10d
          ╭        0x00007fc50f011be6:   je     0x00007fc50f011bfb
   0.13%  │        0x00007fc50f011bec:   cmp    $0x0,%r10d
          │        0x00007fc50f011bf0:   je     0x00007fc50f011f92
          │        0x00007fc50f011bf6:   jmp    0x00007fc50f0124e7           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
          │                                                                  ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
          │                                                                  ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
          │                                                                  ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
          │                                                                  ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.07%  ↘        0x00007fc50f011bfb:   nopl   0x0(%rax,%rax,1)
   0.06%           0x00007fc50f011c00:   cmp    %r13d,%r14d
                   0x00007fc50f011c03:   jle    0x00007fc50f012157           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.18%           0x00007fc50f011c09:   mov    $0x0,%r8d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.01%           0x00007fc50f011c0f:   cmp    $0x3,%edx
                   0x00007fc50f011c12:   jb     0x00007fc50f0123b1           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.09%           0x00007fc50f011c18:   nopl   0x0(%rax,%rax,1)
   0.16%           0x00007fc50f011c20:   cmp    $0x3,%eax
                   0x00007fc50f011c23:   jb     0x00007fc50f012370
   0.31%           0x00007fc50f011c29:   mov    %r11,(%rsp)
   0.05%           0x00007fc50f011c2d:   mov    0x18(,%rsi,8),%r9d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.04%           0x00007fc50f011c35:   mov    0x18(,%rbp,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.18%           0x00007fc50f011c3d:   cmp    $0x7,%r10d
           ╭       0x00007fc50f011c41:   je     0x00007fc50f011c56
   0.11%   │       0x00007fc50f011c47:   cmp    $0x0,%r10d
           │       0x00007fc50f011c4b:   je     0x00007fc50f011f6d
           │       0x00007fc50f011c51:   jmp    0x00007fc50f01232a           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
           │                                                                 ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
           │                                                                 ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
           │                                                                 ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
           │                                                                 ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.22%   ↘       0x00007fc50f011c56:   cmp    %r9d,%r11d
                   0x00007fc50f011c59:   jle    0x00007fc50f01217c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.14%           0x00007fc50f011c5f:   mov    $0x0,%r13d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.10%           0x00007fc50f011c65:   cmp    $0x4,%edx
                   0x00007fc50f011c68:   jb     0x00007fc50f012434           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.18%           0x00007fc50f011c6e:   cmp    $0x4,%eax
                   0x00007fc50f011c71:   jb     0x00007fc50f012455
   0.30%           0x00007fc50f011c77:   mov    %rbx,0x8(%rsp)
   0.34%           0x00007fc50f011c7c:   mov    0x1c(,%rsi,8),%r14d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.01%           0x00007fc50f011c84:   mov    0x1c(,%rbp,8),%ebx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.05%           0x00007fc50f011c8b:   cmp    $0x7,%r10d
            ╭      0x00007fc50f011c8f:   je     0x00007fc50f011ca5
   0.15%    │      0x00007fc50f011c95:   cmp    $0x0,%r10d
            │      0x00007fc50f011c99:   je     0x00007fc50f011f2e
            │      0x00007fc50f011c9f:   nop
            │      0x00007fc50f011ca0:   jmp    0x00007fc50f0124cb           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
            │                                                                ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
            │                                                                ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
            │                                                                ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
            │                                                                ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.19%    ↘      0x00007fc50f011ca5:   cmp    %r14d,%ebx
                   0x00007fc50f011ca8:   jle    0x00007fc50f012257           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.13%           0x00007fc50f011cae:   mov    $0x0,%r11d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.16%           0x00007fc50f011cb4:   cmp    $0x5,%edx
                   0x00007fc50f011cb7:   jb     0x00007fc50f01223b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.20%           0x00007fc50f011cbd:   data16 xchg %ax,%ax
   0.10%           0x00007fc50f011cc0:   cmp    $0x5,%eax
                   0x00007fc50f011cc3:   jb     0x00007fc50f0121ff
   0.21%           0x00007fc50f011cc9:   mov    %ebx,0x30(%rsp)
   0.21%           0x00007fc50f011ccd:   mov    0x20(,%rsi,8),%r9d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.17%           0x00007fc50f011cd5:   mov    0x20(,%rbp,8),%ebx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.12%           0x00007fc50f011cdc:   cmp    $0x7,%r10d
             ╭     0x00007fc50f011ce0:   je     0x00007fc50f011cf5
   0.03%     │     0x00007fc50f011ce6:   cmp    $0x0,%r10d
             │     0x00007fc50f011cea:   je     0x00007fc50f011f3e
             │     0x00007fc50f011cf0:   jmp    0x00007fc50f01221b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
             │                                                               ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
             │                                                               ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
             │                                                               ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
             │                                                               ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.06%     ↘     0x00007fc50f011cf5:   cmp    %r9d,%ebx
                   0x00007fc50f011cf8:   jle    0x00007fc50f0121cd           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.07%           0x00007fc50f011cfe:   mov    $0x0,%r14d                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.13%           0x00007fc50f011d04:   cmp    $0x6,%edx
                   0x00007fc50f011d07:   jb     0x00007fc50f0121ac           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.19%           0x00007fc50f011d0d:   cmp    $0x6,%eax
                   0x00007fc50f011d10:   jb     0x00007fc50f0123d6
   0.05%           0x00007fc50f011d16:   mov    %r9d,0x28(%rsp)
   0.13%           0x00007fc50f011d1b:   mov    %rdi,0x10(%rsp)
   0.41%           0x00007fc50f011d20:   mov    0x24(,%rsi,8),%edi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.17%           0x00007fc50f011d27:   mov    0x24(,%rbp,8),%r9d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.06%           0x00007fc50f011d2f:   cmp    $0x7,%r10d
              ╭    0x00007fc50f011d33:   je     0x00007fc50f011d4b
   0.02%      │    0x00007fc50f011d39:   cmp    $0x0,%r10d
   0.15%      │    0x00007fc50f011d3d:   data16 xchg %ax,%ax
   0.10%      │    0x00007fc50f011d40:   je     0x00007fc50f011fa5
              │    0x00007fc50f011d46:   jmp    0x00007fc50f01210f           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
              │                                                              ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
              │                                                              ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
              │                                                              ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
              │                                                              ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.02%      ↘    0x00007fc50f011d4b:   cmp    %edi,%r9d
                   0x00007fc50f011d4e:   jle    0x00007fc50f012309           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.12%           0x00007fc50f011d54:   mov    $0x0,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.09%           0x00007fc50f011d59:   nopl   0x0(%rax)
   0.05%           0x00007fc50f011d60:   cmp    $0x7,%edx
                   0x00007fc50f011d63:   jb     0x00007fc50f012395           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.31%           0x00007fc50f011d69:   cmp    $0x7,%eax
                   0x00007fc50f011d6c:   jb     0x00007fc50f0122c6
   0.25%           0x00007fc50f011d72:   mov    %r9d,0x24(%rsp)
   0.50%           0x00007fc50f011d77:   mov    %edi,0x20(%rsp)
   0.11%           0x00007fc50f011d7b:   mov    0x28(,%rsi,8),%r9d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.14%           0x00007fc50f011d83:   mov    0x28(,%rbp,8),%edi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.15%           0x00007fc50f011d8a:   cmp    $0x7,%r10d
               ╭   0x00007fc50f011d8e:   je     0x00007fc50f011da5
   0.00%       │   0x00007fc50f011d94:   cmp    $0x0,%r10d
               │   0x00007fc50f011d98:   je     0x00007fc50f011f7d
               │   0x00007fc50f011d9e:   xchg   %ax,%ax
               │   0x00007fc50f011da0:   jmp    0x00007fc50f012476           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
               │                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
               │                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
               │                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
               │                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.16%       ↘   0x00007fc50f011da5:   cmp    %r9d,%edi
                   0x00007fc50f011da8:   jle    0x00007fc50f01234b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.02%           0x00007fc50f011dae:   mov    %r9d,0x1c(%rsp)
   0.01%           0x00007fc50f011db3:   mov    $0x0,%r9d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.13%           0x00007fc50f011db9:   nopl   0x0(%rax)
   0.24%           0x00007fc50f011dc0:   cmp    $0x8,%edx
                   0x00007fc50f011dc3:   jb     0x00007fc50f0122a6           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.03%           0x00007fc50f011dc9:   cmp    $0x8,%eax
                   0x00007fc50f011dcc:   jb     0x00007fc50f012286
   0.12%           0x00007fc50f011dd2:   mov    0x2c(,%rsi,8),%edx           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@47 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.11%           0x00007fc50f011dd9:   mov    0x2c(,%rbp,8),%ebp           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::bTest@52 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.33%           0x00007fc50f011de0:   cmp    $0x7,%r10d
                ╭  0x00007fc50f011de4:   je     0x00007fc50f011df9
                │  0x00007fc50f011dea:   cmp    $0x0,%r10d
                │  0x00007fc50f011dee:   je     0x00007fc50f011f5c
                │  0x00007fc50f011df4:   jmp    0x00007fc50f01253d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                │                                                            ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                │                                                            ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                │                                                            ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.01%        ↘  0x00007fc50f011df9:   nopl   0x0(%rax)
   0.03%           0x00007fc50f011e00:   cmp    %edx,%ebp
                   0x00007fc50f011e02:   jle    0x00007fc50f0120e0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@179 (line 1763)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.02%           0x00007fc50f011e08:   mov    $0x0,%edi                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.IntVector::compareWithOp@262 (line 1757)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$40@4 (line 1748)
                                                                             ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc5488::apply@9
                                                                             ; - jdk.incubator.vector.IntVector::bTest@53 (line 378)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.32%           0x00007fc50f011e0d:   mov    0x108(%r15),%rsi
   0.12%           0x00007fc50f011e14:   lea    0x10(%rsi),%rax
   0.03%           0x00007fc50f011e18:   nopl   0x0(%rax,%rax,1)             ;   {no_reloc}
   0.11%           0x00007fc50f011e20:   cmp    0x118(%r15),%rax
                   0x00007fc50f011e27:   ja     0x00007fc50f011ff3
   0.33%           0x00007fc50f011e2d:   mov    %rax,0x108(%r15)
   0.13%           0x00007fc50f011e34:   prefetchw 0xd0(%rsi)
   0.03%           0x00007fc50f011e3b:   movq   $0x1,(%rsi)
   0.84%           0x00007fc50f011e42:   movl   $0xc3e338,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.50%           0x00007fc50f011e49:   movl   $0x0,0xc(%rsi)
   0.01%           0x00007fc50f011e50:   mov    %r10d,0x34(%rsp)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@0 (line 137)
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@2 (line 41)
                                                                             ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 315)
                                                                             ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 115)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@68 (line 380)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.02%           0x00007fc50f011e55:   mov    0x108(%r15),%rax
   0.26%           0x00007fc50f011e5c:   lea    0x18(%rax),%r10
   0.25%           0x00007fc50f011e60:   cmp    0x118(%r15),%r10
                   0x00007fc50f011e67:   ja     0x00007fc50f012012
   0.18%           0x00007fc50f011e6d:   mov    %r10,0x108(%r15)
   0.26%           0x00007fc50f011e74:   prefetchw 0xd8(%rax)
   0.56%           0x00007fc50f011e7b:   prefetchw 0x118(%rax)
   0.28%           0x00007fc50f011e82:   prefetchw 0x158(%rax)
   0.15%           0x00007fc50f011e89:   prefetchw 0x198(%rax)
   0.21%           0x00007fc50f011e90:   movq   $0x1,(%rax)
   1.32%           0x00007fc50f011e97:   movl   $0x960,0x8(%rax)             ;   {metadata({type array bool})}
   0.78%           0x00007fc50f011e9e:   movl   $0x8,0xc(%rax)
   0.12%           0x00007fc50f011ea5:   movq   $0x0,0x10(%rax)
   0.40%           0x00007fc50f011ead:   mov    %dil,0x17(%rax)
   0.33%           0x00007fc50f011eb1:   mov    %r9b,0x16(%rax)
   0.32%           0x00007fc50f011eb5:   mov    %bl,0x15(%rax)
   0.40%           0x00007fc50f011eb8:   mov    %r14b,0x14(%rax)
   0.26%           0x00007fc50f011ebc:   mov    %r11b,0x13(%rax)
   0.40%           0x00007fc50f011ec0:   mov    %r13b,0x12(%rax)
   0.26%           0x00007fc50f011ec4:   mov    %r8b,0x11(%rax)
   0.35%           0x00007fc50f011ec8:   mov    %cl,0x10(%rax)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@5 (line 137)
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@2 (line 41)
                                                                             ; - jdk.incubator.vector.AbstractSpecies::maskFactory@5 (line 315)
                                                                             ; - jdk.incubator.vector.IntVector::maskFactory@5 (line 115)
                                                                             ; - jdk.incubator.vector.IntVector::bTest@68 (line 380)
                                                                             ; - jdk.incubator.vector.IntVector::lambda$compareTemplate$41@9 (line 1747)
   0.24%           0x00007fc50f011ecb:   mov    %rax,%rdx
   0.01%           0x00007fc50f011ece:   shr    $0x3,%rdx
   0.05%           0x00007fc50f011ed2:   mov    %edx,0xc(%rsi)
   0.39%           0x00007fc50f011ed5:   mov    %rsi,%rdx
   0.09%           0x00007fc50f011ed8:   xor    %rax,%rdx
   0.02%           0x00007fc50f011edb:   nopl   0x0(%rax,%rax,1)
   0.04%           0x00007fc50f011ee0:   test   $0xffffffffffe00000,%rdx
   0.00%           0x00007fc50f011ee7:   je     0x00007fc50f011fbf
                   0x00007fc50f011eed:   test   %rax,%rax
                   0x00007fc50f011ef0:   je     0x00007fc50f011fd3
                   0x00007fc50f011ef6:   mov    %rsi,%r10
                   0x00007fc50f011ef9:   shr    $0x9,%r10
                   0x00007fc50f011efd:   movabs $0x7fc52151e000,%rbp
                   0x00007fc50f011f07:   cmpb   $0x4,(%r10,%rbp,1)
                   0x00007fc50f011f0c:   jne    0x00007fc50f011fdb
                   0x00007fc50f011f12:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@0 (line 137)
                                                                             ; - jdk.incubator.vector.Int256Vector::maskFromArray@2 (line 41)
....................................................................................................
  20.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 

                                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::broadcast@6 (line 3551)
                                                                            ; - jdk.incubator.vector.IntVector::broadcastTemplate@5 (line 521)
                                                                            ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 131)
                                                                            ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndex0@22 (line 246)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
                  0x00007fc50f0246e5:   mov    $0x7,%esi
   0.05%          0x00007fc50f0246ea:   mov    0x50(%rsp),%rdx
   0.22%          0x00007fc50f0246ef:   mov    %r9,%rcx                     ;*invokestatic lambda$compareTemplate$41 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                            ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                            ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
                                                                            ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.01%          0x00007fc50f0246f2:   mov    %r9,0x18(%rsp)
                  0x00007fc50f0246f7:   call   0x00007fc50f0119c0           ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
                                                                            ;*invokestatic lambda$compareTemplate$41 {reexecute=0 rethrow=0 return_oop=1}
                                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@9
                                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                            ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                            ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
                                                                            ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
                                                                            ;   {static_call}
   0.01%          0x00007fc50f0246fc:   nop
   0.03%          0x00007fc50f0246fd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rax=Oop [24]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
                                                                            ;*areturn {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc5068::apply@12
                                                                            ; - jdk.internal.vm.vector.VectorSupport::compare@31 (line 394)
                                                                            ; - jdk.incubator.vector.IntVector::compareTemplate@52 (line 1742)
                                                                            ; - jdk.incubator.vector.Int256Vector::compare@5 (line 351)
                                                                            ; - jdk.incubator.vector.Int256Vector::compare@3 (line 41)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndex0@25 (line 246)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@25 (line 211)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.22%          0x00007fc50f024700:   cmpl   $0xc3e338,0x8(%rax)          ; implicit exception: dispatches to 0x00007fc50f025166
                                                                            ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.00%          0x00007fc50f024707:   jne    0x00007fc50f024e9a
   0.01%          0x00007fc50f02470d:   movabs $0x7f165efd0,%r8             ;   {oop(a &apos;jdk/incubator/vector/Int256Vector$Int256Mask$$Lambda$72+0x0000000800cc5af8&apos;{0x00000007f165efd0})}
   0.03%          0x00007fc50f024717:   mov    $0xa,%esi
   0.24%          0x00007fc50f02471c:   mov    0x58(%rsp),%rdx
   0.02%          0x00007fc50f024721:   mov    0x40(%rsp),%rcx
   0.05%          0x00007fc50f024726:   mov    %r8,%r10
   0.21%          0x00007fc50f024729:   mov    $0x8,%r8d
   0.00%          0x00007fc50f02472f:   mov    %rax,%r9
   0.01%          0x00007fc50f024732:   mov    0x20(%rsp),%rdi
   0.04%          0x00007fc50f024737:   mov    %r10,(%rsp)                  ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@27 (line 634)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 508)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@140 (line 227)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.20%          0x00007fc50f02473b:   mov    %rax,0x10(%rsp)
   0.01%          0x00007fc50f024740:   data16 xchg %ax,%ax
   0.00%          0x00007fc50f024743:   call   0x00007fc50f013800           ; ImmutableOopMap {[16]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
                                                                            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=1}
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@27 (line 634)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 508)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@140 (line 227)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
                                                                            ;   {static_call}
   0.39%          0x00007fc50f024748:   nop
   0.01%          0x00007fc50f024749:   test   %rax,%rax
                  0x00007fc50f02474c:   je     0x00007fc50f024ab9
   0.26%          0x00007fc50f024752:   mov    0x8(%rax),%r10d
   0.89%          0x00007fc50f024756:   movabs $0x800000000,%r11
   0.01%          0x00007fc50f024760:   lea    (%r11,%r10,1),%r10           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@30 (line 634)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 508)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@140 (line 227)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.24%          0x00007fc50f024764:   test   %rax,%rax
                  0x00007fc50f024767:   je     0x00007fc50f024a37
   0.00%          0x00007fc50f02476d:   movabs $0x800c3e338,%rdi            ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.01%          0x00007fc50f024777:   cmp    %r10,%rdi
                  0x00007fc50f02477a:   jne    0x00007fc50f024faa           ; ImmutableOopMap {rax=Oop [16]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
                                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::and@30 (line 634)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 508)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@140 (line 227)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.52%          0x00007fc50f024780:   mov    0xc(%rax),%r10d              ; implicit exception: dispatches to 0x00007fc50f025186
   0.00%          0x00007fc50f024784:   test   %r10d,%r10d
                  0x00007fc50f024787:   je     0x00007fc50f024a79
   0.26%          0x00007fc50f02478d:   mov    0x8(,%r10,8),%r11d
   1.00%          0x00007fc50f024795:   movabs $0x800000000,%r8
   0.01%          0x00007fc50f02479f:   lea    (%r8,%r11,1),%r11            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 549)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@4 (line 689)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
                                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.23%          0x00007fc50f0247a3:   test   %r10d,%r10d
                  0x00007fc50f0247a6:   je     0x00007fc50f024a14
                  0x00007fc50f0247ac:   movabs $0x800000960,%rbp            ;   {metadata({type array bool})}
                  0x00007fc50f0247b6:   cmp    %r11,%rbp
                  0x00007fc50f0247b9:   jne    0x00007fc50f024f6c           ; ImmutableOopMap {rax=Oop r10=NarrowOop [16]=Oop [32]=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
                                                                            ;*checkcast {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) jdk.incubator.vector.Int256Vector$Int256Mask::and@30 (line 634)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::and@2 (line 508)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@140 (line 227)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.56%          0x00007fc50f0247bf:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fc50f0251a6
   0.00%          0x00007fc50f0247c7:   test   %r11d,%r11d
          ╭       0x00007fc50f0247ca:   je     0x00007fc50f024834           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          │                                                                 ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          │                                                                 ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          │                                                                 ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          │                                                                 ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │       0x00007fc50f0247d0:   cmpb   $0x0,0x10(,%r10,8)
   0.31%  │       0x00007fc50f0247d9:   jne    0x00007fc50f02500d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          │                                                                 ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          │                                                                 ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          │                                                                 ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          │                                                                 ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.28%  │       0x00007fc50f0247df:   mov    %r11d,%r8d
   0.00%  │       0x00007fc50f0247e2:   dec    %r8d
   0.00%  │       0x00007fc50f0247e5:   movslq %r8d,%r8
   0.00%  │       0x00007fc50f0247e8:   mov    %r11d,%r9d
   0.26%  │       0x00007fc50f0247eb:   cmp    %r8,%r9
          │╭      0x00007fc50f0247ee:   ja     0x00007fc50f0247fe
          ││      0x00007fc50f0247f4:   cmp    $0x2,%r11d
          ││      0x00007fc50f0247f8:   jae    0x00007fc50f024fc5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@14 (line 125)
          ││                                                                ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          ││                                                                ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          ││                                                                ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          ││                                                                ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          ││                                                                ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          ││                                                                ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          ││                                                                ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │↘      0x00007fc50f0247fe:   mov    $0x1,%r8d
   0.00%  │ ╭     0x00007fc50f024804:   jmp    0x00007fc50f02482f           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@7 (line 125)
          │ │                                                               ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          │ │                                                               ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          │ │                                                               ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │                                                               ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          │ │                                                               ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          │ │                                                               ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          │ │                                                               ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
          │ │     0x00007fc50f024809:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │     0x00007fc50f024814:   data16 data16 xchg %ax,%ax
          │ │     0x00007fc50f024818:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │ │                                                               ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          │ │                                                               ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          │ │                                                               ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ │                                                               ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          │ │                                                               ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          │ │                                                               ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          │ │                                                               ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.97%  │ │↗    0x00007fc50f024820:   cmpb   $0x0,0x10(%r8,%r10,8)
   1.05%  │ ││    0x00007fc50f024826:   jne    0x00007fc50f025088           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@19 (line 126)
          │ ││                                                              ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          │ ││                                                              ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          │ ││                                                              ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ ││                                                              ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          │ ││                                                              ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          │ ││                                                              ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          │ ││                                                              ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   1.09%  │ ││    0x00007fc50f02482c:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                              ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@24 (line 125)
          │ ││                                                              ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          │ ││                                                              ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          │ ││                                                              ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │ ││                                                              ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          │ ││                                                              ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          │ ││                                                              ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          │ ││                                                              ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.76%  │ ↘│    0x00007fc50f02482f:   cmp    %r8d,%r11d
          │  ╰    0x00007fc50f024832:   jg     0x00007fc50f024820           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - jdk.incubator.vector.AbstractMask::anyTrueHelper@9 (line 125)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
          │                                                                 ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
          │                                                                 ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
          │                                                                 ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
          │                                                                 ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
          │                                                                 ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.07%  ↘       0x00007fc50f024834:   mov    0x38(%rsp),%r14
   0.10%          0x00007fc50f024839:   mov    0xc(%r14),%r10d              ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.26%          0x00007fc50f02483d:   data16 xchg %ax,%ax
   0.03%          0x00007fc50f024840:   test   %r10d,%r10d
                  0x00007fc50f024843:   je     0x00007fc50f024a6d
   0.21%          0x00007fc50f024849:   mov    0x8(,%r10,8),%r11d
   1.15%          0x00007fc50f024851:   movabs $0x800000000,%r8
                  0x00007fc50f02485b:   lea    (%r8,%r11,1),%r11
   0.29%          0x00007fc50f02485f:   nop
   0.00%          0x00007fc50f024860:   test   %r10d,%r10d
                  0x00007fc50f024863:   je     0x00007fc50f024a25
                  0x00007fc50f024869:   mov    0x90(%rsp),%r13
                  0x00007fc50f024871:   cmp    %r11,%r13
                  0x00007fc50f024874:   jne    0x00007fc50f024dd9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.28%          0x00007fc50f02487a:   mov    0x20(%rsp),%r9               ; ImmutableOopMap {rax=Oop r9=Oop r10=NarrowOop r14=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) jdk.incubator.vector.AbstractMask::anyTrueHelper@30 (line 128)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
                                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.00%          0x00007fc50f02487f:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fc50f0251c6
                  0x00007fc50f024887:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 549)
                                                                            ; - jdk.incubator.vector.IntVector::stOp@10 (line 353)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
                  0x00007fc50f02488b:   test   %r8d,%r8d
                  0x00007fc50f02488e:   je     0x00007fc50f024aad
   0.22%          0x00007fc50f024894:   mov    0x8(,%r8,8),%ecx
                  0x00007fc50f02489c:   movabs $0x800000000,%rbx
                  0x00007fc50f0248a6:   lea    (%rbx,%rcx,1),%rcx
   0.00%          0x00007fc50f0248aa:   test   %r8d,%r8d
              ╭   0x00007fc50f0248ad:   je     0x00007fc50f0248bc
   0.24%      │   0x00007fc50f0248b3:   cmp    %rcx,%rbp
              │   0x00007fc50f0248b6:   jne    0x00007fc50f02501f           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 549)
              │                                                             ; - jdk.incubator.vector.IntVector::stOp@10 (line 353)
              │                                                             ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.00%      ↘   0x00007fc50f0248bc:   mov    0x84(%rsp),%ecx
                  0x00007fc50f0248c3:   lea    0x8(%rcx),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@67 (line 114)
                  0x00007fc50f0248c6:   test   %r11d,%r11d
                  0x00007fc50f0248c9:   je     0x00007fc50f024a46           ; ImmutableOopMap {rax=Oop r8=NarrowOop r9=Oop r10=NarrowOop r14=Oop [56]=Oop [64]=Oop [72]=Oop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [112]=Oop [120]=Oop }
                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) jdk.incubator.vector.AbstractMask::anyTrueHelper@30 (line 128)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$anyTrue$9@7 (line 689)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$74/0x0000000800cc6148::apply@8
                                                                            ; - jdk.internal.vm.vector.VectorSupport::test@30 (line 377)
                                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::anyTrue@23 (line 687)
                                                                            ; - jdk.incubator.vector.AbstractMask::checkIndexByLane@147 (line 228)
                                                                            ; - jdk.incubator.vector.IntVector::checkMaskFromIndexSize@12 (line 3342)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@29 (line 3033)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.26%          0x00007fc50f0248cf:   mov    0xc(,%r8,8),%edx             ; implicit exception: dispatches to 0x00007fc50f0251e6
   0.00%          0x00007fc50f0248d7:   test   %edx,%edx
                  0x00007fc50f0248d9:   je     0x00007fc50f02507d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.IntVector::stOp@30 (line 355)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
                  0x00007fc50f0248df:   nop
                  0x00007fc50f0248e0:   cmpb   $0x0,0x10(,%r8,8)
   0.31%          0x00007fc50f0248e9:   je     0x00007fc50f0249fb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.IntVector::stOp@31 (line 355)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
                  0x00007fc50f0248ef:   mov    0x60(%rsp),%rsi
                  0x00007fc50f0248f4:   mov    0x10(,%r10,8),%eax           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.IntVector::stOp@44 (line 356)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.24%          0x00007fc50f0248fc:   mov    %eax,0x10(%rsi,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.incubator.vector.IntVector::lambda$intoArray$82@5 (line 3034)
                                                                            ; - jdk.incubator.vector.IntVector$$Lambda$75/0x0000000800cc6578::apply@8
                                                                            ; - jdk.incubator.vector.IntVector::stOp@45 (line 356)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.05%          0x00007fc50f024900:   mov    %r11d,%eax
                  0x00007fc50f024903:   dec    %eax
                  0x00007fc50f024905:   movslq %eax,%rax
   0.23%          0x00007fc50f024908:   shl    $0x3,%r10                    ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
                                                                            ; - jdk.incubator.vector.IntVector::stOp@1 (line 352)
                                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
   0.01%          0x00007fc50f02490c:   cmp    $0x2,%r11d
               ╭  0x00007fc50f024910:   jb     0x00007fc50f024932
               │  0x00007fc50f024916:   mov    %edx,%r14d
               │  0x00007fc50f024919:   nopl   0x0(%rax)
   0.27%       │  0x00007fc50f024920:   cmp    %rax,%r14
               │  0x00007fc50f024923:   jbe    0x00007fc50f024db4
   0.01%       │  0x00007fc50f024929:   cmp    $0x2,%edx
               │  0x00007fc50f02492c:   jb     0x00007fc50f024db4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - jdk.incubator.vector.IntVector::stOp@30 (line 355)
               │                                                            ; - jdk.incubator.vector.IntVector::intoArray@41 (line 3034)
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@54 (line 117)
               ↘  0x00007fc50f024932:   mov    %r11d,%edx
                  0x00007fc50f024935:   cmp    %rax,%rdx
                  0x00007fc50f024938:   ja     0x00007fc50f02494a
                  0x00007fc50f02493e:   xchg   %ax,%ax
                  0x00007fc50f024940:   cmp    $0x2,%r11d
                  0x00007fc50f024944:   jae    0x00007fc50f024db4           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.77%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 

            0x00007fc50f0240ea:   mov    0x98(%rsp),%r8
            0x00007fc50f0240f2:   mov    0x68(%rsp),%r10
            0x00007fc50f0240f7:   mov    0xac(%rsp),%ecx
            0x00007fc50f0240fe:   mov    $0x0,%r11d
            0x00007fc50f024104:   mov    0x90(%rsp),%r9
            0x00007fc50f02410c:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@13 (line 114)
            0x00007fc50f024110:   cmp    %r11d,%ecx
            0x00007fc50f024113:   jle    0x00007fc50f024d7a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@25 (line 114)
   0.26%    0x00007fc50f024119:   mov    %r11d,0x84(%rsp)
            0x00007fc50f024121:   mov    0x108(%r15),%r14
            0x00007fc50f024128:   lea    0x10(%r14),%rbx
            0x00007fc50f02412c:   cmp    0x118(%r15),%rbx
            0x00007fc50f024133:   ja     0x00007fc50f024b7f
   0.26%    0x00007fc50f024139:   mov    %rbx,0x108(%r15)
   0.01%    0x00007fc50f024140:   prefetchw 0xd0(%r14)
   0.01%    0x00007fc50f024148:   movq   $0x1,(%r14)
   0.05%    0x00007fc50f02414f:   movl   $0xc3dd00,0x8(%r14)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.34%    0x00007fc50f024157:   movl   $0x0,0xc(%r14)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@43 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.00%    0x00007fc50f02415f:   mov    0x108(%r15),%rbx
   0.02%    0x00007fc50f024166:   lea    0x30(%rbx),%rcx
   0.01%    0x00007fc50f02416a:   cmp    0x118(%r15),%rcx
            0x00007fc50f024171:   ja     0x00007fc50f024b5f
   0.27%    0x00007fc50f024177:   mov    %rcx,0x108(%r15)
   0.01%    0x00007fc50f02417e:   prefetchw 0xf0(%rbx)
   0.08%    0x00007fc50f024185:   prefetchw 0x130(%rbx)
   0.05%    0x00007fc50f02418c:   prefetchw 0x170(%rbx)
   0.23%    0x00007fc50f024193:   prefetchw 0x1b0(%rbx)
   0.09%    0x00007fc50f02419a:   movq   $0x1,(%rbx)
   0.13%    0x00007fc50f0241a1:   movl   $0x6c38,0x8(%rbx)            ;   {metadata({type array int})}
   0.02%    0x00007fc50f0241a8:   movl   $0x8,0xc(%rbx)
   0.45%    0x00007fc50f0241af:   movq   $0x0,0x10(%rbx)
   0.64%    0x00007fc50f0241b7:   movq   $0x0,0x18(%rbx)
   0.05%    0x00007fc50f0241bf:   movq   $0x0,0x20(%rbx)
   0.47%    0x00007fc50f0241c7:   movq   $0x0,0x28(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.04%    0x00007fc50f0241cf:   mov    0x2c(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.49%    0x00007fc50f0241d4:   mov    %ecx,0x2c(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.31%    0x00007fc50f0241d7:   mov    0x28(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.13%    0x00007fc50f0241dc:   mov    %ecx,0x28(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.05%    0x00007fc50f0241df:   mov    0x24(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.03%    0x00007fc50f0241e4:   mov    %ecx,0x24(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.12%    0x00007fc50f0241e7:   mov    0x20(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.08%    0x00007fc50f0241ec:   mov    %ecx,0x20(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.23%    0x00007fc50f0241ef:   mov    0x1c(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.04%    0x00007fc50f0241f4:   mov    %ecx,0x1c(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.08%    0x00007fc50f0241f7:   mov    0x18(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.07%    0x00007fc50f0241fc:   mov    %ecx,0x18(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.19%    0x00007fc50f0241ff:   mov    0x14(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.01%    0x00007fc50f024204:   mov    %ecx,0x14(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.18%    0x00007fc50f024207:   mov    0x10(%r10,%r11,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.00%    0x00007fc50f02420c:   mov    %ecx,0x10(%rbx)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                      ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                      ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                      ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                      ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                      ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@34 (line 115)
   0.18%    0x00007fc50f02420f:   mov    0x108(%r15),%rcx
   0.03%    0x00007fc50f024216:   lea    0x10(%rcx),%r11
   0.07%    0x00007fc50f02421a:   nopw   0x0(%rax,%rax,1)
            0x00007fc50f024220:   cmp    0x118(%r15),%r11
            0x00007fc50f024227:   ja     0x00007fc50f024b4c
   0.21%    0x00007fc50f02422d:   mov    %r11,0x108(%r15)
   0.00%    0x00007fc50f024234:   prefetchw 0xd0(%rcx)
   0.05%    0x00007fc50f02423b:   movq   $0x1,(%rcx)
   0.47%    0x00007fc50f024242:   movl   $0xc3dd00,0x8(%rcx)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.23%    0x00007fc50f024249:   movl   $0x0,0xc(%rcx)               ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::rvOp@45 (line 3618)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::lambda$broadcastBits$1@7 (line 3539)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies$$Lambda$63/0x0000000800cc3fa0::broadcast@5
                                                                      ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcastBits@18 (line 3536)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcast@5 (line 3545)
                                                                      ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector::lanewise@40 (line 711)
                                                                      ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::test_value_vector@2 (line 233)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.26%    0x00007fc50f024250:   mov    0x108(%r15),%r11
   0.16%    0x00007fc50f024257:   lea    0x30(%r11),%rdi
   0.04%    0x00007fc50f02425b:   nopl   0x0(%rax,%rax,1)
   0.05%    0x00007fc50f024260:   cmp    0x118(%r15),%rdi
            0x00007fc50f024267:   ja     0x00007fc50f024b9a
   0.20%    0x00007fc50f02426d:   mov    %rdi,0x108(%r15)
   0.10%    0x00007fc50f024274:   prefetchw 0xf0(%r11)
   0.23%    0x00007fc50f02427c:   prefetchw 0x130(%r11)
   0.38%    0x00007fc50f024284:   prefetchw 0x170(%r11)
   0.04%    0x00007fc50f02428c:   prefetchw 0x1b0(%r11)
   0.12%    0x00007fc50f024294:   movq   $0x1,(%r11)
   1.01%    0x00007fc50f02429b:   movl   $0x6c38,0x8(%r11)            ;   {metadata({type array int})}
   0.07%    0x00007fc50f0242a3:   movl   $0x8,0xc(%r11)
   0.24%    0x00007fc50f0242ab:   movq   $0x0,0x10(%r11)
   0.12%    0x00007fc50f0242b3:   movq   $0x0,0x18(%r11)
   0.38%    0x00007fc50f0242bb:   movq   $0x0,0x20(%r11)
   0.14%    0x00007fc50f0242c3:   movq   $0x0,0x28(%r11)
   0.13%    0x00007fc50f0242cb:   movl   $0x1,0x2c(%r11)
   0.22%    0x00007fc50f0242d3:   movl   $0x1,0x28(%r11)
   0.19%    0x00007fc50f0242db:   movl   $0x1,0x24(%r11)
   0.20%    0x00007fc50f0242e3:   movl   $0x1,0x20(%r11)
   0.20%    0x00007fc50f0242eb:   movl   $0x1,0x1c(%r11)
   0.23%    0x00007fc50f0242f3:   movl   $0x1,0x18(%r11)
   0.24%    0x00007fc50f0242fb:   movl   $0x1,0x14(%r11)
   0.22%    0x00007fc50f024303:   movl   $0x1,0x10(%r11)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::rvOp@4 (line 3613)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::lambda$broadcastBits$1@7 (line 3539)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies$$Lambda$63/0x0000000800cc3fa0::broadcast@5
                                                                      ; - jdk.internal.vm.vector.VectorSupport::broadcastCoerced@29 (line 166)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcastBits@18 (line 3536)
                                                                      ; - jdk.incubator.vector.IntVector$IntSpecies::broadcast@5 (line 3545)
                                                                      ; - jdk.incubator.vector.IntVector::broadcastTemplate@7 (line 478)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 125)
                                                                      ; - jdk.incubator.vector.Int256Vector::broadcast@2 (line 41)
                                                                      ; - jdk.incubator.vector.IntVector::lanewise@40 (line 711)
                                                                      ; - jdk.incubator.vector.IntVector::and@5 (line 1510)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::test_value_vector@2 (line 233)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter@42 (line 116)
   0.24%    0x00007fc50f02430b:   mov    %rbx,%rdi
            0x00007fc50f02430e:   shr    $0x3,%rdi
            0x00007fc50f024312:   mov    %edi,0xc(%r14)
   0.03%    0x00007fc50f024316:   mov    %r14,%rdi
   0.21%    0x00007fc50f024319:   xor    %rbx,%rdi
   0.01%    0x00007fc50f02431c:   nopl   0x0(%rax)
            0x00007fc50f024320:   test   $0xffffffffffe00000,%rdi
            0x00007fc50f024327:   je     0x00007fc50f02434b
            0x00007fc50f02432d:   test   %rbx,%rbx
            0x00007fc50f024330:   je     0x00007fc50f02434b
            0x00007fc50f024336:   mov    %r14,%rdi
            0x00007fc50f024339:   shr    $0x9,%rdi
            0x00007fc50f02433d:   data16 xchg %ax,%ax
            0x00007fc50f024340:   cmpb   $0x4,(%rdi,%r8,1)
            0x00007fc50f024345:   jne    0x00007fc50f024ae5           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
....................................................................................................
  12.39%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 988 

               --------------------------------------------------------------------------------
               [Verified Entry Point]
                 # {method} {0x0000000800005590} &apos;binaryOp&apos; &apos;(ILjava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
                 # parm0:    rsi       = int
                 # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
                 # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
                 # parm3:    r8        = int
                 # parm4:    r9:r9     = &apos;java/lang/Object&apos;
                 # parm5:    rdi:rdi   = &apos;java/lang/Object&apos;
                 # parm6:    [sp+0x20]   = &apos;java/util/function/BiFunction&apos;  (sp of caller)
   0.48%         0x00007fc50f013800:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   0.03%         0x00007fc50f013807:   sub    $0x18,%rsp
   0.24%         0x00007fc50f01380b:   mov    %rbp,0x10(%rsp)
   0.23%         0x00007fc50f013810:   mov    0x20(%rsp),%r10              ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
                                                                           ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.02%         0x00007fc50f013815:   mov    0x8(%r10),%esi               ; implicit exception: dispatches to 0x00007fc50f013f8f
   0.14%         0x00007fc50f013819:   movabs $0x800000000,%rdx
   0.29%         0x00007fc50f013823:   lea    (%rdx,%rsi,1),%rsi
   0.22%         0x00007fc50f013827:   cmp    -0x4e(%rip),%rsi        # 0x00007fc50f0137e0
                                                                           ;   {section_word}
   0.11%  ╭      0x00007fc50f01382e:   je     0x00007fc50f01384b
   0.04%  │      0x00007fc50f013834:   cmp    -0x53(%rip),%rsi        # 0x00007fc50f0137e8
          │                                                                ;   {section_word}
   0.19%  │      0x00007fc50f01383b:   nopl   0x0(%rax,%rax,1)
   0.01%  │      0x00007fc50f013840:   je     0x00007fc50f013b05
          │      0x00007fc50f013846:   jmp    0x00007fc50f013f7d
   0.07%  ↘      0x00007fc50f01384b:   test   %r9,%r9
                 0x00007fc50f01384e:   je     0x00007fc50f013d5d
   0.02%         0x00007fc50f013854:   mov    0x8(%r9),%esi
   0.17%         0x00007fc50f013858:   movabs $0x800000000,%rdx
                 0x00007fc50f013862:   lea    (%rdx,%rsi,1),%rsi
   0.05%         0x00007fc50f013866:   movabs $0x800c3e338,%rbp            ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.03%         0x00007fc50f013870:   test   %r9,%r9
           ╭     0x00007fc50f013873:   je     0x00007fc50f013889
   0.18%   │     0x00007fc50f013879:   nopl   0x0(%rax)
   0.00%   │     0x00007fc50f013880:   cmp    %rsi,%rbp
           │     0x00007fc50f013883:   jne    0x00007fc50f013f59           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@1
           │                                                               ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.06%   ↘     0x00007fc50f013889:   test   %rdi,%rdi
                 0x00007fc50f01388c:   je     0x00007fc50f013d45
   0.02%         0x00007fc50f013892:   mov    0x8(%rdi),%esi
   0.15%         0x00007fc50f013895:   movabs $0x800000000,%rdx
   0.00%         0x00007fc50f01389f:   lea    (%rdx,%rsi,1),%rsi
   0.06%         0x00007fc50f0138a3:   test   %rdi,%rdi
            ╭    0x00007fc50f0138a6:   je     0x00007fc50f0138b5           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@5
            │                                                              ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%    │    0x00007fc50f0138ac:   cmp    %rsi,%rbp
            │    0x00007fc50f0138af:   jne    0x00007fc50f013f17           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
            │                                                              ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            │                                                              ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.23%    ↘    0x00007fc50f0138b5:   test   %eax,(%r9)                   ; implicit exception: dispatches to 0x00007fc50f013fab
                                                                           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
                                                                           ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.00%         0x00007fc50f0138b8:   test   %eax,(%rdi)                  ; implicit exception: dispatches to 0x00007fc50f013fc7
   0.06%         0x00007fc50f0138ba:   mov    0xc(%r9),%r11d               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 549)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 565)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%         0x00007fc50f0138be:   xchg   %ax,%ax
   0.18%         0x00007fc50f0138c0:   test   %r11d,%r11d
                 0x00007fc50f0138c3:   je     0x00007fc50f013d69
   0.01%         0x00007fc50f0138c9:   mov    0x8(,%r11,8),%esi
   0.08%         0x00007fc50f0138d1:   movabs $0x800000000,%rdx
   0.02%         0x00007fc50f0138db:   lea    (%rdx,%rsi,1),%rsi
   0.20%         0x00007fc50f0138df:   movabs $0x800000960,%r8             ;   {metadata({type array bool})}
   0.01%         0x00007fc50f0138e9:   test   %r11d,%r11d
             ╭   0x00007fc50f0138ec:   je     0x00007fc50f0138fb
   0.06%     │   0x00007fc50f0138f2:   cmp    %rsi,%r8
             │   0x00007fc50f0138f5:   jne    0x00007fc50f013f08           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 549)
             │                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@11 (line 565)
             │                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
             │                                                             ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
             │                                                             ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%     ↘   0x00007fc50f0138fb:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop r11=NarrowOop }
                                                                           ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.15%         0x00007fc50f013900:   cmpl   $0x8,0xc(,%r11,8)            ; implicit exception: dispatches to 0x00007fc50f013fe6
   0.06%         0x00007fc50f013909:   jb     0x00007fc50f013ecc
   0.05%         0x00007fc50f01390f:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@1 (line 549)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 566)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.17%         0x00007fc50f013912:   test   %ecx,%ecx
                 0x00007fc50f013914:   je     0x00007fc50f013d51
   0.00%         0x00007fc50f01391a:   mov    0x8(,%rcx,8),%esi
   0.17%         0x00007fc50f013921:   movabs $0x800000000,%rdx
   0.02%         0x00007fc50f01392b:   lea    (%rdx,%rsi,1),%rsi
   0.19%         0x00007fc50f01392f:   test   %ecx,%ecx
              ╭  0x00007fc50f013931:   je     0x00007fc50f013940           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::getBits@4 (line 549)
              │                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@20 (line 566)
              │                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
              │                                                            ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
              │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%      │  0x00007fc50f013937:   cmp    %rsi,%r8
              │  0x00007fc50f01393a:   jne    0x00007fc50f013f35           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r9=Oop r10=Oop r11=NarrowOop }
              │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.12%      ↘  0x00007fc50f013940:   cmpl   $0x8,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007fc50f014006
   0.15%         0x00007fc50f013948:   jb     0x00007fc50f013f47
   0.10%         0x00007fc50f01394e:   mov    0x108(%r15),%rsi
   0.03%         0x00007fc50f013955:   lea    0x10(%rsi),%rdx
   0.02%         0x00007fc50f013959:   nopl   0x0(%rax)
   0.10%         0x00007fc50f013960:   cmp    0x118(%r15),%rdx
                 0x00007fc50f013967:   ja     0x00007fc50f013e17
   0.09%         0x00007fc50f01396d:   mov    %rdx,0x108(%r15)
   0.03%         0x00007fc50f013974:   prefetchw 0xd0(%rsi)
   0.02%         0x00007fc50f01397b:   movq   $0x1,(%rsi)
   0.27%         0x00007fc50f013982:   movl   $0xc3e338,0x8(%rsi)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector$Int256Mask&apos;)}
   0.61%         0x00007fc50f013989:   movl   $0x0,0xc(%rsi)
   0.03%         0x00007fc50f013990:   mov    %rsi,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@63 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%         0x00007fc50f013993:   mov    0x108(%r15),%rsi
   0.04%         0x00007fc50f01399a:   lea    0x18(%rsi),%rdx
   0.17%         0x00007fc50f01399e:   xchg   %ax,%ax
   0.01%         0x00007fc50f0139a0:   cmp    0x118(%r15),%rdx
                 0x00007fc50f0139a7:   ja     0x00007fc50f013dff
   0.02%         0x00007fc50f0139ad:   mov    %rdx,0x108(%r15)
   0.07%         0x00007fc50f0139b4:   prefetchw 0xd8(%rsi)
   0.20%         0x00007fc50f0139bb:   prefetchw 0x118(%rsi)
   0.01%         0x00007fc50f0139c2:   prefetchw 0x158(%rsi)
   0.03%         0x00007fc50f0139c9:   prefetchw 0x198(%rsi)
   0.09%         0x00007fc50f0139d0:   movq   $0x1,(%rsi)
   0.20%         0x00007fc50f0139d7:   movl   $0x960,0x8(%rsi)             ;   {metadata({type array bool})}
   0.62%         0x00007fc50f0139de:   movl   $0x8,0xc(%rsi)
   0.02%         0x00007fc50f0139e5:   movq   $0x0,0x10(%rsi)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.14%         0x00007fc50f0139ed:   movzbl 0x17(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                 0x00007fc50f0139f6:   movzbl 0x17(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.16%         0x00007fc50f0139fe:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%         0x00007fc50f013a00:   mov    %dl,0x17(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.34%         0x00007fc50f013a03:   movzbl 0x16(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a0c:   movzbl 0x16(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%         0x00007fc50f013a14:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                 0x00007fc50f013a16:   mov    %dl,0x16(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.25%         0x00007fc50f013a19:   movzbl 0x15(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a22:   movzbl 0x15(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%         0x00007fc50f013a2a:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%         0x00007fc50f013a2c:   mov    %dl,0x15(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.24%         0x00007fc50f013a2f:   movzbl 0x14(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a38:   movzbl 0x14(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%         0x00007fc50f013a40:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a42:   mov    %dl,0x14(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.26%         0x00007fc50f013a45:   movzbl 0x13(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a4e:   movzbl 0x13(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%         0x00007fc50f013a56:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                 0x00007fc50f013a58:   mov    %dl,0x13(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.19%         0x00007fc50f013a5b:   movzbl 0x12(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a64:   movzbl 0x12(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%         0x00007fc50f013a6c:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%         0x00007fc50f013a6e:   mov    %dl,0x12(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.24%         0x00007fc50f013a71:   movzbl 0x11(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                 0x00007fc50f013a7a:   movzbl 0x11(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%         0x00007fc50f013a82:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a84:   mov    %dl,0x11(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.21%         0x00007fc50f013a87:   movzbl 0x10(,%r11,8),%edx           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@45 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a90:   movzbl 0x10(,%rcx,8),%eax           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@50 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%         0x00007fc50f013a98:   and    %eax,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$0@2 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$73/0x0000000800cc5f28::apply@3
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@51 (line 568)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.00%         0x00007fc50f013a9a:   mov    %dl,0x10(%rsi)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::prepare@6 (line 525)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 517)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::&lt;init&gt;@3 (line 513)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::bOp@68 (line 570)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask::lambda$and$1@7 (line 636)
                                                                           ; - jdk.incubator.vector.Int256Vector$Int256Mask$$Lambda$72/0x0000000800cc5af8::apply@8
                                                                           ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.18%         0x00007fc50f013a9d:   mov    %rsi,%rdx
                 0x00007fc50f013aa0:   shr    $0x3,%rdx
   0.02%         0x00007fc50f013aa4:   mov    %edx,0xc(%rbx)
   0.01%         0x00007fc50f013aa7:   mov    %rbx,%rdx
   0.22%         0x00007fc50f013aaa:   xor    %rsi,%rdx
   0.00%         0x00007fc50f013aad:   test   $0xffffffffffe00000,%rdx
                 0x00007fc50f013ab4:   je     0x00007fc50f013aec
                 0x00007fc50f013aba:   nopw   0x0(%rax,%rax,1)
                 0x00007fc50f013ac0:   test   %rsi,%rsi
                 0x00007fc50f013ac3:   je     0x00007fc50f013aec
                 0x00007fc50f013ac9:   movabs $0x7fc52151e000,%r10
                 0x00007fc50f013ad3:   mov    %rbx,%rbp
                 0x00007fc50f013ad6:   shr    $0x9,%rbp
                 0x00007fc50f013ada:   nopw   0x0(%rax,%rax,1)
                 0x00007fc50f013ae0:   cmpb   $0x4,0x0(%rbp,%r10,1)
                 0x00007fc50f013ae6:   jne    0x00007fc50f013d91           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  10.39%  <total for region 4>

....[Hottest Regions]...............................................................................
  20.57%       jvmci, level 4  jdk.incubator.vector.IntVector::lambda$compareTemplate$41, version 2, compile id 991 
  14.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
  12.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
  10.39%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 988 
   8.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
   7.06%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 988 
   6.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
   5.74%       jvmci, level 4  jdk.incubator.vector.IntVector::lambda$compareTemplate$41, version 2, compile id 991 
   4.90%       jvmci, level 4  jdk.incubator.vector.IntVector::lambda$compareTemplate$41, version 2, compile id 991 
   4.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
   0.61%               kernel  [unknown] 
   0.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
   0.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
   0.17%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 988 
   0.12%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%            libjvm.so  HeapRegionClaimer::claim_region 
   2.04%  <...other 518 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_filter, version 4, compile id 1027 
  31.21%       jvmci, level 4  jdk.incubator.vector.IntVector::lambda$compareTemplate$41, version 2, compile id 991 
  17.62%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 988 
   1.75%               kernel  [unknown] 
   0.20%                       <unknown> 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  JVMCIRuntime::new_array_common 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%            libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.02%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%            libjvm.so  G1Policy::preventive_collection_required 
   0.68%  <...other 176 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.94%       jvmci, level 4
   1.75%               kernel
   0.87%            libjvm.so
   0.20%                     
   0.08%         libc-2.31.so
   0.04%           ld-2.31.so
   0.04%               [vdso]
   0.04%   libpthread-2.31.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%       perf-36689.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul
# Parameters: (size = 262144)

# Run progress: 66.67% complete, ETA 00:07:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3959027.977 us/op
# Warmup Iteration   2: 2006933.268 us/op
# Warmup Iteration   3: 927826.162 us/op
# Warmup Iteration   4: 927087.688 us/op
# Warmup Iteration   5: 927042.203 us/op
Iteration   1: 927628.688 us/op
Iteration   2: 927254.552 us/op
Iteration   3: 927410.822 us/op
Iteration   4: 926984.170 us/op
Iteration   5: 926756.778 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul":
  927207.002 ±(99.9%) 1325.508 us/op [Average]
  (min, avg, max) = (926756.778, 927207.002, 927628.688), stdev = 344.230
  CI (99.9%): [925881.494, 928532.510] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul:·asm":
PrintAssembly processed: 332206 total address lines.
Perf output processed (skipped 60.974 seconds):
 Column 1: cycles (51602 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 881 

                   --------------------------------------------------------------------------------
                   [Verified Entry Point]
                     # {method} {0x0000000800005590} &apos;binaryOp&apos; &apos;(ILjava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;&apos; in &apos;jdk/internal/vm/vector/VectorSupport&apos;
                     # parm0:    rsi       = int
                     # parm1:    rdx:rdx   = &apos;java/lang/Class&apos;
                     # parm2:    rcx:rcx   = &apos;java/lang/Class&apos;
                     # parm3:    r8        = int
                     # parm4:    r9:r9     = &apos;java/lang/Object&apos;
                     # parm5:    rdi:rdi   = &apos;java/lang/Object&apos;
                     # parm6:    [sp+0x20]   = &apos;java/util/function/BiFunction&apos;  (sp of caller)
   0.86%             0x00007f6db7005080:   mov    %eax,-0x14000(%rsp)          ;   {no_reloc}
   0.66%             0x00007f6db7005087:   sub    $0x18,%rsp
   0.56%             0x00007f6db700508b:   mov    %rbp,0x10(%rsp)
   0.78%             0x00007f6db7005090:   mov    0x20(%rsp),%r10              ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
                                                                               ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.22%             0x00007f6db7005095:   mov    0x8(%r10),%eax               ; implicit exception: dispatches to 0x00007f6db70055fe
   1.97%             0x00007f6db7005099:   movabs $0x800000000,%rsi
   0.41%             0x00007f6db70050a3:   lea    (%rsi,%rax,1),%rax
   0.75%             0x00007f6db70050a7:   movabs $0x800006c38,%r11            ;   {metadata({type array int})}
   0.02%             0x00007f6db70050b1:   cmp    -0x58(%rip),%rax        # 0x00007f6db7005060
                                                                               ;   {section_word}
   0.82%  ╭          0x00007f6db70050b8:   je     0x00007f6db70050d0
   0.51%  │          0x00007f6db70050be:   cmp    -0x5d(%rip),%rax        # 0x00007f6db7005068
          │                                                                    ;   {section_word}
   0.03%  │╭         0x00007f6db70050c5:   je     0x00007f6db70052ed
          ││         0x00007f6db70050cb:   jmp    0x00007f6db7005586           ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
          ││                                                                   ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                   ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.47%  ↘│         0x00007f6db70050d0:   cmpl   $0xc3dd00,0x8(%r9)           ; implicit exception: dispatches to 0x00007f6db700561a
           │                                                                   ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.24%   │         0x00007f6db70050d8:   jne    0x00007f6db700554a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@1
           │                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%   │         0x00007f6db70050de:   xchg   %ax,%ax                      ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           │                                                                   ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │                                                                   ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.08%   │         0x00007f6db70050e0:   cmpl   $0xc3dd00,0x8(%rdi)          ; implicit exception: dispatches to 0x00007f6db7005636
           │                                                                   ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.58%   │         0x00007f6db70050e7:   jne    0x00007f6db70055ec           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@5
           │                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.13%   │         0x00007f6db70050ed:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
           │                                                                   ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
           │                                                                   ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 201)
           │                                                                   ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           │                                                                   ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           │                                                                   ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           │                                                                   ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           │                                                                   ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%   │         0x00007f6db70050f1:   test   %r8d,%r8d
           │╭        0x00007f6db70050f4:   je     0x00007f6db70054a5
   0.11%   ││        0x00007f6db70050fa:   mov    0x8(,%r8,8),%eax
   0.47%   ││        0x00007f6db7005102:   movabs $0x800000000,%rsi
   0.14%   ││        0x00007f6db700510c:   lea    (%rsi,%rax,1),%rax
   0.05%   ││     ↗  0x00007f6db7005110:   test   %r8d,%r8d
           ││╭    │  0x00007f6db7005113:   je     0x00007f6db7005129           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │││    │                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
           │││    │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 201)
           │││    │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           │││    │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           │││    │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           │││    │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           │││    │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%   │││    │  0x00007f6db7005119:   nopl   0x0(%rax)
   0.44%   │││    │  0x00007f6db7005120:   cmp    %rax,%r11
           │││    │  0x00007f6db7005123:   jne    0x00007f6db7005595           ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
           │││    │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           │││    │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.16%   ││↘    │  0x00007f6db7005129:   cmpl   $0x8,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f6db7005652
   0.08%   ││     │  0x00007f6db7005132:   jb     0x00007f6db70055b6
   0.45%   ││     │  0x00007f6db7005138:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@17 (line 202)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.15%   ││     │  0x00007f6db700513b:   nopl   0x0(%rax,%rax,1)
   0.03%   ││     │  0x00007f6db7005140:   test   %ecx,%ecx
           ││     │  0x00007f6db7005142:   je     0x00007f6db70054b1
   0.08%   ││     │  0x00007f6db7005148:   mov    0x8(,%rcx,8),%eax
   0.41%   ││     │  0x00007f6db700514f:   movabs $0x800000000,%rsi
   0.17%   ││     │  0x00007f6db7005159:   lea    (%rsi,%rax,1),%rax
   0.02%   ││     │  0x00007f6db700515d:   data16 xchg %ax,%ax
   0.08%   ││     │  0x00007f6db7005160:   test   %ecx,%ecx
           ││ ╭   │  0x00007f6db7005162:   je     0x00007f6db7005171           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││ │   │                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
           ││ │   │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@17 (line 202)
           ││ │   │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││ │   │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││ │   │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││ │   │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││ │   │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.43%   ││ │   │  0x00007f6db7005168:   cmp    %rax,%r11
           ││ │   │  0x00007f6db700516b:   jne    0x00007f6db70055da           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
           ││ │   │                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           ││ │   │                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.11%   ││ ↘   │  0x00007f6db7005171:   cmpl   $0x8,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f6db700566e
   0.15%   ││     │  0x00007f6db7005179:   jb     0x00007f6db70055c8
   0.45%   ││     │  0x00007f6db700517f:   mov    0x108(%r15),%rax
   0.13%   ││     │  0x00007f6db7005186:   lea    0x30(%rax),%rsi
   0.02%   ││     │  0x00007f6db700518a:   cmp    0x118(%r15),%rsi
           ││     │  0x00007f6db7005191:   ja     0x00007f6db70054ed
   0.09%   ││     │  0x00007f6db7005197:   mov    %rsi,0x108(%r15)
   0.48%   ││     │  0x00007f6db700519e:   prefetchw 0xf0(%rax)
   0.10%   ││     │  0x00007f6db70051a5:   prefetchw 0x130(%rax)
   0.03%   ││     │  0x00007f6db70051ac:   prefetchw 0x170(%rax)
   0.09%   ││     │  0x00007f6db70051b3:   prefetchw 0x1b0(%rax)
   0.45%   ││     │  0x00007f6db70051ba:   movq   $0x1,(%rax)
   0.12%   ││     │  0x00007f6db70051c1:   movl   $0x6c38,0x8(%rax)            ;   {metadata({type array int})}
   0.03%   ││     │  0x00007f6db70051c8:   movl   $0x8,0xc(%rax)
   0.09%   ││     │  0x00007f6db70051cf:   movq   $0x0,0x10(%rax)
   0.46%   ││     │  0x00007f6db70051d7:   movq   $0x0,0x18(%rax)
   0.15%   ││     │  0x00007f6db70051df:   movq   $0x0,0x20(%rax)
   0.04%   ││     │  0x00007f6db70051e7:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.10%   ││     │  0x00007f6db70051ef:   mov    0x2c(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.46%   ││     │  0x00007f6db70051f7:   imul   0x2c(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.09%   ││     │  0x00007f6db70051ff:   mov    %esi,0x2c(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.10%   ││     │  0x00007f6db7005202:   mov    0x28(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.11%   ││     │  0x00007f6db700520a:   imul   0x28(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.41%   ││     │  0x00007f6db7005212:   mov    %esi,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.16%   ││     │  0x00007f6db7005215:   mov    0x24(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%   ││     │  0x00007f6db700521d:   imul   0x24(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.09%   ││     │  0x00007f6db7005225:   mov    %esi,0x24(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.45%   ││     │  0x00007f6db7005228:   mov    0x20(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.09%   ││     │  0x00007f6db7005230:   imul   0x20(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.06%   ││     │  0x00007f6db7005238:   mov    %esi,0x20(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.13%   ││     │  0x00007f6db700523b:   mov    0x1c(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.43%   ││     │  0x00007f6db7005243:   imul   0x1c(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.09%   ││     │  0x00007f6db700524b:   mov    %esi,0x1c(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.09%   ││     │  0x00007f6db700524e:   mov    0x18(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.11%   ││     │  0x00007f6db7005256:   imul   0x18(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.44%   ││     │  0x00007f6db700525e:   mov    %esi,0x18(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.14%   ││     │  0x00007f6db7005261:   mov    0x14(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%   ││     │  0x00007f6db7005269:   imul   0x14(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.08%   ││     │  0x00007f6db7005271:   mov    %esi,0x14(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.48%   ││     │  0x00007f6db7005274:   mov    0x10(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.06%   ││     │  0x00007f6db700527c:   imul   0x10(,%rcx,8),%esi           ;*imul {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$11@2 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$67/0x0000000800cc4c48::apply@3
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%   ││     │  0x00007f6db7005284:   mov    %esi,0x10(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
           ││     │                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││     │                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││     │                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││     │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││     │                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.26%   ││    ↗│  0x00007f6db7005287:   mov    %rax,%rdx
   0.47%   ││    ││  0x00007f6db700528a:   mov    0x108(%r15),%rax
   0.44%   ││    ││  0x00007f6db7005291:   lea    0x10(%rax),%rsi
   0.43%   ││    ││  0x00007f6db7005295:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.24%   ││    ││  0x00007f6db70052a0:   cmp    0x118(%r15),%rsi
           ││    ││  0x00007f6db70052a7:   ja     0x00007f6db70054d5
   0.48%   ││    ││  0x00007f6db70052ad:   mov    %rsi,0x108(%r15)
   1.09%   ││    ││  0x00007f6db70052b4:   prefetchw 0xd0(%rax)
   0.11%   ││    ││  0x00007f6db70052bb:   movq   $0x1,(%rax)
   1.83%   ││    ││  0x00007f6db70052c2:   movl   $0xc3dd00,0x8(%rax)          ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   1.80%   ││    ││  0x00007f6db70052c9:   movl   $0x0,0xc(%rax)
   0.37%   ││    ││  0x00007f6db70052d0:   shr    $0x3,%rdx
   0.05%   ││    ││  0x00007f6db70052d4:   mov    %edx,0xc(%rax)               ;*new {reexecute=0 rethrow=0 return_oop=0}
           ││    ││                                                            ; - jdk.incubator.vector.Int256Vector::vectorFactory@0 (line 171)
           ││    ││                                                            ; - jdk.incubator.vector.Int256Vector::vectorFactory@2 (line 41)
           ││    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@62 (line 206)
           ││    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
           ││    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
           ││    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
           ││    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
           ││    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.64%   ││    ││  0x00007f6db70052d7:   mov    0x10(%rsp),%rbp
   0.61%   ││    ││  0x00007f6db70052dc:   add    $0x18,%rsp
   0.22%   ││    ││  0x00007f6db70052e0:   mov    0x348(%r15),%rcx
   0.16%   ││    ││  0x00007f6db70052e7:   test   %eax,(%rcx)                  ;   {poll_return}
   0.68%   ││    ││  0x00007f6db70052e9:   vzeroupper 
   1.41%   ││    ││  0x00007f6db70052ec:   ret                                 ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
           ││    ││                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
           ││    ││                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.45%   ↘│    ││  0x00007f6db70052ed:   cmpl   $0xc3dd00,0x8(%r9)           ; implicit exception: dispatches to 0x00007f6db700568a
            │    ││                                                            ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.05%    │    ││  0x00007f6db70052f5:   jne    0x00007f6db7005568           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@1
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.15%    │    ││  0x00007f6db70052fb:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdi=Oop r9=Oop r10=Oop }
            │    ││                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            │    ││                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.04%    │    ││  0x00007f6db7005300:   cmpl   $0xc3dd00,0x8(%rdi)          ; implicit exception: dispatches to 0x00007f6db70056a6
            │    ││                                                            ;   {metadata(&apos;jdk/incubator/vector/Int256Vector&apos;)}
   0.45%    │    ││  0x00007f6db7005307:   jne    0x00007f6db70055a4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@5
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    │    ││  0x00007f6db700530d:   mov    0xc(%r9),%r8d                ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 201)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.12%    │    ││  0x00007f6db7005311:   test   %r8d,%r8d
            │    ││  0x00007f6db7005314:   je     0x00007f6db70054bd
   0.03%    │    ││  0x00007f6db700531a:   mov    0x8(,%r8,8),%eax
   0.54%    │    ││  0x00007f6db7005322:   movabs $0x800000000,%rsi
   0.06%    │    ││  0x00007f6db700532c:   lea    (%rsi,%rax,1),%rax
   0.37%    │    ││  0x00007f6db7005330:   test   %r8d,%r8d
            │  ╭ ││  0x00007f6db7005333:   je     0x00007f6db7005349           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
            │  │ ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 201)
            │  │ ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │  │ ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │  │ ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │  │ ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │  │ ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.01%    │  │ ││  0x00007f6db7005339:   nopl   0x0(%rax)
   0.26%    │  │ ││  0x00007f6db7005340:   cmp    %rax,%r11
            │  │ ││  0x00007f6db7005343:   jne    0x00007f6db7005577           ; ImmutableOopMap {rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
            │  │ ││                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.48%    │  ↘ ││  0x00007f6db7005349:   cmpl   $0x8,0xc(,%r8,8)             ; implicit exception: dispatches to 0x00007f6db70056c6
   0.16%    │    ││  0x00007f6db7005352:   jb     0x00007f6db7005559
   0.25%    │    ││  0x00007f6db7005358:   mov    0xc(%rdi),%ecx               ;*getfield payload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport$VectorPayload::getPayload@7 (line 133)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::vec@1 (line 117)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@17 (line 202)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.29%    │    ││  0x00007f6db700535b:   nopl   0x0(%rax,%rax,1)
   0.13%    │    ││  0x00007f6db7005360:   test   %ecx,%ecx
            │    ││  0x00007f6db7005362:   je     0x00007f6db70054c9
   0.03%    │    ││  0x00007f6db7005368:   mov    0x8(,%rcx,8),%eax
   0.30%    │    ││  0x00007f6db700536f:   movabs $0x800000000,%rsi
   0.28%    │    ││  0x00007f6db7005379:   lea    (%rsi,%rax,1),%rax
   0.15%    │    ││  0x00007f6db700537d:   data16 xchg %ax,%ax
   0.04%    │    ││  0x00007f6db7005380:   test   %ecx,%ecx
            │   ╭││  0x00007f6db7005382:   je     0x00007f6db7005391           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │   │││                                                            ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
            │   │││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@17 (line 202)
            │   │││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │   │││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │   │││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │   │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │   │││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.30%    │   │││  0x00007f6db7005388:   cmp    %rax,%r11
            │   │││  0x00007f6db700538b:   jne    0x00007f6db700553b           ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r8=NarrowOop r9=Oop r10=Oop }
            │   │││                                                            ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
            │   │││                                                            ; - (reexecute) jdk.internal.vm.vector.VectorSupport::binaryOp@0 (line 275)
   0.29%    │   ↘││  0x00007f6db7005391:   cmpl   $0x8,0xc(,%rcx,8)            ; implicit exception: dispatches to 0x00007f6db70056e6
   0.16%    │    ││  0x00007f6db7005399:   jb     0x00007f6db700551a
   0.21%    │    ││  0x00007f6db700539f:   mov    0x108(%r15),%rax
   0.25%    │    ││  0x00007f6db70053a6:   lea    0x30(%rax),%rsi
   0.09%    │    ││  0x00007f6db70053aa:   cmp    0x118(%r15),%rsi
            │    ││  0x00007f6db70053b1:   ja     0x00007f6db7005505
   0.22%    │    ││  0x00007f6db70053b7:   mov    %rsi,0x108(%r15)
   0.06%    │    ││  0x00007f6db70053be:   prefetchw 0xf0(%rax)
   0.52%    │    ││  0x00007f6db70053c5:   prefetchw 0x130(%rax)
   0.13%    │    ││  0x00007f6db70053cc:   prefetchw 0x170(%rax)
   0.45%    │    ││  0x00007f6db70053d3:   prefetchw 0x1b0(%rax)
   0.31%    │    ││  0x00007f6db70053da:   movq   $0x1,(%rax)
   0.93%    │    ││  0x00007f6db70053e1:   movl   $0x6c38,0x8(%rax)            ;   {metadata({type array int})}
   0.40%    │    ││  0x00007f6db70053e8:   movl   $0x8,0xc(%rax)
   0.26%    │    ││  0x00007f6db70053ef:   movq   $0x0,0x10(%rax)
   0.58%    │    ││  0x00007f6db70053f7:   movq   $0x0,0x18(%rax)
   1.18%    │    ││  0x00007f6db70053ff:   movq   $0x0,0x20(%rax)
   0.23%    │    ││  0x00007f6db7005407:   movq   $0x0,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.58%    │    ││  0x00007f6db700540f:   mov    0x2c(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    │    ││  0x00007f6db7005417:   add    0x2c(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%    │    ││  0x00007f6db700541e:   mov    %esi,0x2c(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   1.53%    │    ││  0x00007f6db7005421:   mov    0x28(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    │    ││  0x00007f6db7005429:   add    0x28(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.02%    │    ││  0x00007f6db7005430:   mov    %esi,0x28(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.65%    │    ││  0x00007f6db7005433:   mov    0x24(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.09%    │    ││  0x00007f6db700543b:   add    0x24(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%    │    ││  0x00007f6db7005442:   mov    %esi,0x24(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.53%    │    ││  0x00007f6db7005445:   mov    0x20(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%    │    ││  0x00007f6db700544d:   add    0x20(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%    │    ││  0x00007f6db7005454:   mov    %esi,0x20(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%    │    ││  0x00007f6db7005457:   mov    0x1c(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.54%    │    ││  0x00007f6db700545f:   add    0x1c(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.07%    │    ││  0x00007f6db7005466:   mov    %esi,0x1c(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.09%    │    ││  0x00007f6db7005469:   mov    0x18(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%    │    ││  0x00007f6db7005471:   add    0x18(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.51%    │    ││  0x00007f6db7005478:   mov    %esi,0x18(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.11%    │    ││  0x00007f6db700547b:   mov    0x14(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.06%    │    ││  0x00007f6db7005483:   add    0x14(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.03%    │    ││  0x00007f6db700548a:   mov    %esi,0x14(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.54%    │    ││  0x00007f6db700548d:   mov    0x10(,%r8,8),%esi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@42 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.04%    │    ││  0x00007f6db7005495:   add    0x10(,%rcx,8),%esi           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$7@2 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$69/0x0000000800cc50b0::apply@3
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@48 (line 204)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.05%    │    ││  0x00007f6db700549c:   mov    %esi,0x10(%rax)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                            ; - jdk.incubator.vector.IntVector::bOpTemplate@4 (line 200)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
            │    ││                                                            ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
            │    ││                                                            ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$8@7 (line 626)
            │    ││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$68/0x0000000800cc4e68::apply@8
            │    ││                                                            ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
   0.20%    │    ││  0x00007f6db700549f:   nop
   0.38%    │    ╰│  0x00007f6db70054a0:   jmp    0x00007f6db7005287
            ↘     │  0x00007f6db70054a5:   mov    $0x0,%rax
                  ╰  0x00007f6db70054ac:   jmp    0x00007f6db7005110           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - jdk.incubator.vector.Int256Vector::vec@4 (line 117)
                                                                               ; - jdk.incubator.vector.IntVector::bOpTemplate@8 (line 201)
                                                                               ; - jdk.incubator.vector.Int256Vector::bOp@6 (line 206)
                                                                               ; - jdk.incubator.vector.Int256Vector::bOp@3 (line 41)
                                                                               ; - jdk.incubator.vector.IntVector::lambda$lanewiseTemplate$12@7 (line 630)
                                                                               ; - jdk.incubator.vector.IntVector$$Lambda$66/0x0000000800cc4800::apply@8
                                                                               ; - jdk.internal.vm.vector.VectorSupport::binaryOp@30 (line 276)
                     0x00007f6db70054b1:   mov    $0x0,%rax
....................................................................................................
  48.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  48.73%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 881 
   7.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   5.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   4.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   4.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   4.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   4.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   3.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   3.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   3.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   1.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   0.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
   4.31%  <...other 537 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 5, compile id 933 
  48.73%       jvmci, level 4  jdk.internal.vm.vector.VectorSupport::binaryOp, version 2, compile id 881 
   1.02%               kernel  [unknown] 
   0.14%         libc-2.31.so  [unknown] 
   0.12%                       <unknown> 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%            libjvm.so  ThreadLocalAllocBuffer::fill 
   0.02%            libjvm.so  MemAllocator::allocate 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  TypeArrayKlass::allocate_common 
   0.02%            libjvm.so  G1CollectedHeap::attempt_allocation_slow 
   0.77%  <...other 173 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.54%       jvmci, level 4
   1.02%               kernel
   0.93%            libjvm.so
   0.21%         libc-2.31.so
   0.12%                     
   0.05%   libpthread-2.31.so
   0.05%           ld-2.31.so
   0.03%       hsdis-amd64.so
   0.02%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%       perf-36745.map
   0.00%          c1, level 3
   0.00%         runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul
# Parameters: (size = 1048576)

# Run progress: 75.00% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 21004903.557 us/op
# Warmup Iteration   2: 9866999.914 us/op
# Warmup Iteration   3: 2536297.765 us/op
# Warmup Iteration   4: 2536908.906 us/op
# Warmup Iteration   5: 2536827.349 us/op
Iteration   1: 2537251.459 us/op
Iteration   2: 2539354.748 us/op
Iteration   3: 2545758.418 us/op
Iteration   4: 2536613.133 us/op
Iteration   5: 2536442.619 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul":
  2539084.075 ±(99.9%) 15044.818 us/op [Average]
  (min, avg, max) = (2536442.619, 2539084.075, 2545758.418), stdev = 3907.091
  CI (99.9%): [2524039.257, 2554128.893] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_matrix_mul:·asm":
PrintAssembly processed: 364724 total address lines.
Perf output processed (skipped 79.976 seconds):
 Column 1: cycles (51886 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 

 <region is too big to display, has 6115 lines, but threshold is 1000>
....................................................................................................
  80.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   7.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   1.00%               kernel  [unknown] 
   0.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   0.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   3.22%  <...other 512 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_matrix_mul, version 8, compile id 950 
   2.42%               kernel  [unknown] 
   0.19%                       <unknown> 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ObjArrayAllocator::initialize 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%            libjvm.so  MemAllocator::allocate 
   0.02%            libjvm.so  OtherRegionsTable::is_empty 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  JVMCIRuntime::new_array_common 
   0.01%            libjvm.so  TypeArrayKlass::allocate_common 
   0.01%            libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.56%  <...other 159 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.42%       jvmci, level 4
   2.42%               kernel
   0.78%            libjvm.so
   0.19%                     
   0.07%         libc-2.31.so
   0.04%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       perf-36804.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum
# Parameters: (size = 262144)

# Run progress: 83.33% complete, ETA 00:03:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 306.054 us/op
# Warmup Iteration   2: 265.232 us/op
# Warmup Iteration   3: 264.407 us/op
# Warmup Iteration   4: 263.932 us/op
# Warmup Iteration   5: 263.986 us/op
Iteration   1: 263.897 us/op
Iteration   2: 264.267 us/op
Iteration   3: 264.244 us/op
Iteration   4: 264.117 us/op
Iteration   5: 264.058 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum":
  264.116 ±(99.9%) 0.578 us/op [Average]
  (min, avg, max) = (263.897, 264.116, 264.267), stdev = 0.150
  CI (99.9%): [263.538, 264.695] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum:·asm":
PrintAssembly processed: 225087 total address lines.
Perf output processed (skipped 58.851 seconds):
 Column 1: cycles (50834 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 867 

               0x00007fe6bb00a2d1:   mov    %r8,(%rsp)
               0x00007fe6bb00a2d5:   movabs $0x800006c38,%r9             ;   {metadata({type array int})}
               0x00007fe6bb00a2df:   mov    $0x0,%ebx
               0x00007fe6bb00a2e4:   mov    $0x0,%ecx
          ╭    0x00007fe6bb00a2e9:   jmp    0x00007fe6bb00a401           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
          │    0x00007fe6bb00a2ee:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fe6bb00a2f9:   data16 data16 xchg %ax,%ax
          │    0x00007fe6bb00a2fd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
   3.88%  │ ↗  0x00007fe6bb00a300:   mov    0x2c(%r8,%rbx,4),%edi
   9.49%  │ │  0x00007fe6bb00a305:   mov    0x28(%r8,%rbx,4),%ebp
   5.63%  │ │  0x00007fe6bb00a30a:   mov    0x24(%r8,%rbx,4),%r13d
   1.29%  │ │  0x00007fe6bb00a30f:   mov    0x20(%r8,%rbx,4),%r14d
   3.60%  │ │  0x00007fe6bb00a314:   mov    0x1c(%r8,%rbx,4),%eax
   0.38%  │ │  0x00007fe6bb00a319:   mov    0x18(%r8,%rbx,4),%edx
   0.80%  │ │  0x00007fe6bb00a31e:   mov    0x14(%r8,%rbx,4),%esi
   0.93%  │ │  0x00007fe6bb00a323:   mov    0x10(%r8,%rbx,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
          │ │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
          │ │                                                            ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
          │ │                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
          │ │                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
          │ │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
          │ │                                                            ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
          │ │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
          │ │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
          │ │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
   2.72%  │ │  0x00007fe6bb00a328:   mov    0x108(%r15),%r11
   0.49%  │ │  0x00007fe6bb00a32f:   lea    0x30(%r11),%r8
   0.86%  │ │  0x00007fe6bb00a333:   cmp    0x118(%r15),%r8
          │╭│  0x00007fe6bb00a33a:   ja     0x00007fe6bb00a40f
   1.07%  │││  0x00007fe6bb00a340:   mov    %r8,0x108(%r15)
   2.68%  │││  0x00007fe6bb00a347:   prefetchw 0xf0(%r11)
   0.31%  │││  0x00007fe6bb00a34f:   prefetchw 0x130(%r11)
   0.86%  │││  0x00007fe6bb00a357:   prefetchw 0x170(%r11)
   1.10%  │││  0x00007fe6bb00a35f:   prefetchw 0x1b0(%r11)
   4.30%  │││  0x00007fe6bb00a367:   movq   $0x1,(%r11)
   0.35%  │││  0x00007fe6bb00a36e:   movl   $0x6c38,0x8(%r11)            ;   {metadata({type array int})}
   0.97%  │││  0x00007fe6bb00a376:   movl   $0x8,0xc(%r11)
   1.22%  │││  0x00007fe6bb00a37e:   movq   $0x0,0x10(%r11)
   2.92%  │││  0x00007fe6bb00a386:   movq   $0x0,0x18(%r11)
   1.10%  │││  0x00007fe6bb00a38e:   movq   $0x0,0x20(%r11)
   1.85%  │││  0x00007fe6bb00a396:   movq   $0x0,0x28(%r11)
   1.99%  │││  0x00007fe6bb00a39e:   mov    %edi,0x2c(%r11)
   2.74%  │││  0x00007fe6bb00a3a2:   mov    %ebp,0x28(%r11)
   1.20%  │││  0x00007fe6bb00a3a6:   mov    %r13d,0x24(%r11)
   1.63%  │││  0x00007fe6bb00a3aa:   mov    %r14d,0x20(%r11)
   1.74%  │││  0x00007fe6bb00a3ae:   mov    %eax,0x1c(%r11)
   2.21%  │││  0x00007fe6bb00a3b2:   mov    %edx,0x18(%r11)
   1.21%  │││  0x00007fe6bb00a3b6:   mov    %esi,0x14(%r11)
   1.51%  │││  0x00007fe6bb00a3ba:   mov    %r10d,0x10(%r11)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
          │││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
          │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
          │││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
          │││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
   1.66%  │││  0x00007fe6bb00a3be:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {r11=Oop [0]=Oop }
          │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
   1.88%  │││  0x00007fe6bb00a3c5:   test   %eax,(%rsi)                  ;   {poll}
   2.28%  │││  0x00007fe6bb00a3c7:   add    0x14(%r11),%r10d
   2.02%  │││  0x00007fe6bb00a3cb:   mov    0x18(%r11),%esi
   1.27%  │││  0x00007fe6bb00a3cf:   mov    0x1c(%r11),%edx
   1.06%  │││  0x00007fe6bb00a3d3:   mov    0x20(%r11),%eax
   1.24%  │││  0x00007fe6bb00a3d7:   mov    0x24(%r11),%r8d
   1.64%  │││  0x00007fe6bb00a3db:   mov    0x28(%r11),%edi              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@22 (line 289)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800cc3fc0::apply@4
          │││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          │││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   1.11%  │││  0x00007fe6bb00a3df:   add    %esi,%r10d
   0.87%  │││  0x00007fe6bb00a3e2:   add    %edx,%r10d
   1.86%  │││  0x00007fe6bb00a3e5:   add    %eax,%r10d
   3.01%  │││  0x00007fe6bb00a3e8:   add    %r8d,%r10d
   2.31%  │││  0x00007fe6bb00a3eb:   add    %edi,%r10d
   2.62%  │││  0x00007fe6bb00a3ee:   add    0x2c(%r11),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$53@2 (line 2447)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$65/0x0000000800cc4400::apply@3
          │││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@23 (line 289)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800cc3fc0::apply@4
          │││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          │││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   3.65%  │││  0x00007fe6bb00a3f2:   add    %r10d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@42 (line 86)
   3.92%  │││  0x00007fe6bb00a3f5:   lea    0x8(%rbx),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@53 (line 84)
   0.18%  │││  0x00007fe6bb00a3f8:   mov    (%rsp),%r8
   0.70%  │││  0x00007fe6bb00a3fc:   mov    0x10(%rsp),%r11d             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
   0.40%  ↘││  0x00007fe6bb00a401:   cmp    %ebx,%r11d
           │╰  0x00007fe6bb00a404:   jg     0x00007fe6bb00a300
           │   0x00007fe6bb00a40a:   jmp    0x00007fe6bb00a43f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
           ↘   0x00007fe6bb00a40f:   mov    %esi,%r11d
   0.00%       0x00007fe6bb00a412:   mov    %edx,%r8d
               0x00007fe6bb00a415:   mov    %ecx,0xc(%rsp)
   0.00%       0x00007fe6bb00a419:   mov    %r9,%rsi
               0x00007fe6bb00a41c:   mov    $0x8,%edx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                         ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                         ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                         ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                         ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                         ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                         ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                         ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
....................................................................................................
  96.70%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 867 
   0.15%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%            libjvm.so  HeapRegionClaimer::claim_region 
   0.09%         libc-2.31.so  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%               kernel  [unknown] 
   0.06%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%               kernel  [unknown] 
   0.04%            libjvm.so  ObjArrayAllocator::initialize 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.03%            libjvm.so  HandleMark::initialize 
   0.03%            libjvm.so  HeapRegion::clear_cardtable 
   0.03%            libjvm.so  G1FromCardCache::clear 
   2.17%  <...other 538 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 867 
   1.20%               kernel  [unknown] 
   0.15%                       <unknown> 
   0.14%         libc-2.31.so  [unknown] 
   0.10%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%            libjvm.so  ObjArrayAllocator::initialize 
   0.07%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  G1FromCardCache::clear 
   0.04%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.04%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   0.03%            libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.03%            libjvm.so  HandleMark::initialize 
   0.03%            libjvm.so  HeapRegion::clear_cardtable 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   1.02%  <...other 200 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.74%       jvmci, level 4
   1.51%            libjvm.so
   1.20%               kernel
   0.21%         libc-2.31.so
   0.15%                     
   0.06%   libpthread-2.31.so
   0.04%           ld-2.31.so
   0.04%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum
# Parameters: (size = 1048576)

# Run progress: 91.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1232.142 us/op
# Warmup Iteration   2: 1066.503 us/op
# Warmup Iteration   3: 1066.430 us/op
# Warmup Iteration   4: 1067.212 us/op
# Warmup Iteration   5: 1065.076 us/op
Iteration   1: 1065.211 us/op
Iteration   2: 1065.610 us/op
Iteration   3: 1066.287 us/op
Iteration   4: 1068.124 us/op
Iteration   5: 1067.756 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum":
  1066.597 ±(99.9%) 4.971 us/op [Average]
  (min, avg, max) = (1065.211, 1066.597, 1068.124), stdev = 1.291
  CI (99.9%): [1061.626, 1071.569] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark.vectorized_sum:·asm":
PrintAssembly processed: 221488 total address lines.
Perf output processed (skipped 58.780 seconds):
 Column 1: cycles (50841 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 876 

               0x00007f792f007fd1:   mov    %r8,(%rsp)
               0x00007f792f007fd5:   movabs $0x800006c38,%r9             ;   {metadata({type array int})}
               0x00007f792f007fdf:   mov    $0x0,%ebx
               0x00007f792f007fe4:   mov    $0x0,%ecx
          ╭    0x00007f792f007fe9:   jmp    0x00007f792f008101           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
          │    0x00007f792f007fee:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f792f007ff9:   data16 data16 xchg %ax,%ax
          │    0x00007f792f007ffd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
   3.63%  │ ↗  0x00007f792f008000:   mov    0x2c(%r8,%rbx,4),%edi
  10.18%  │ │  0x00007f792f008005:   mov    0x28(%r8,%rbx,4),%ebp
   5.37%  │ │  0x00007f792f00800a:   mov    0x24(%r8,%rbx,4),%r13d
   1.29%  │ │  0x00007f792f00800f:   mov    0x20(%r8,%rbx,4),%r14d
   3.45%  │ │  0x00007f792f008014:   mov    0x1c(%r8,%rbx,4),%eax
   0.44%  │ │  0x00007f792f008019:   mov    0x18(%r8,%rbx,4),%edx
   0.89%  │ │  0x00007f792f00801e:   mov    0x14(%r8,%rbx,4),%esi
   0.92%  │ │  0x00007f792f008023:   mov    0x10(%r8,%rbx,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$88@4 (line 3244)
          │ │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$62/0x0000000800cc0420::apply@6
          │ │                                                            ; - jdk.incubator.vector.IntVector::ldOp@28 (line 309)
          │ │                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
          │ │                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
          │ │                                                            ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
          │ │                                                            ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
          │ │                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
          │ │                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
          │ │                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
   2.85%  │ │  0x00007f792f008028:   mov    0x108(%r15),%r11
   0.57%  │ │  0x00007f792f00802f:   lea    0x30(%r11),%r8
   0.85%  │ │  0x00007f792f008033:   cmp    0x118(%r15),%r8
          │╭│  0x00007f792f00803a:   ja     0x00007f792f00810f
   1.08%  │││  0x00007f792f008040:   mov    %r8,0x108(%r15)
   2.70%  │││  0x00007f792f008047:   prefetchw 0xf0(%r11)
   0.33%  │││  0x00007f792f00804f:   prefetchw 0x130(%r11)
   0.83%  │││  0x00007f792f008057:   prefetchw 0x170(%r11)
   1.18%  │││  0x00007f792f00805f:   prefetchw 0x1b0(%r11)
   4.28%  │││  0x00007f792f008067:   movq   $0x1,(%r11)
   0.29%  │││  0x00007f792f00806e:   movl   $0x6c38,0x8(%r11)            ;   {metadata({type array int})}
   0.91%  │││  0x00007f792f008076:   movl   $0x8,0xc(%r11)
   1.12%  │││  0x00007f792f00807e:   movq   $0x0,0x10(%r11)
   3.09%  │││  0x00007f792f008086:   movq   $0x0,0x18(%r11)
   1.13%  │││  0x00007f792f00808e:   movq   $0x0,0x20(%r11)
   1.86%  │││  0x00007f792f008096:   movq   $0x0,0x28(%r11)
   1.91%  │││  0x00007f792f00809e:   mov    %edi,0x2c(%r11)
   2.86%  │││  0x00007f792f0080a2:   mov    %ebp,0x28(%r11)
   1.18%  │││  0x00007f792f0080a6:   mov    %r13d,0x24(%r11)
   1.64%  │││  0x00007f792f0080aa:   mov    %r14d,0x20(%r11)
   1.77%  │││  0x00007f792f0080ae:   mov    %eax,0x1c(%r11)
   2.18%  │││  0x00007f792f0080b2:   mov    %edx,0x18(%r11)
   1.18%  │││  0x00007f792f0080b6:   mov    %esi,0x14(%r11)
   1.38%  │││  0x00007f792f0080ba:   mov    %r10d,0x10(%r11)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
          │││                                                            ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
          │││                                                            ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
          │││                                                            ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
          │││                                                            ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
   1.62%  │││  0x00007f792f0080be:   mov    0x348(%r15),%rsi             ; ImmutableOopMap {r11=Oop [0]=Oop }
          │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
   1.77%  │││  0x00007f792f0080c5:   test   %eax,(%rsi)                  ;   {poll}
   2.22%  │││  0x00007f792f0080c7:   add    0x14(%r11),%r10d
   1.91%  │││  0x00007f792f0080cb:   mov    0x18(%r11),%esi
   1.35%  │││  0x00007f792f0080cf:   mov    0x1c(%r11),%edx
   0.99%  │││  0x00007f792f0080d3:   mov    0x20(%r11),%eax
   1.26%  │││  0x00007f792f0080d7:   mov    0x24(%r11),%r8d
   1.50%  │││  0x00007f792f0080db:   mov    0x28(%r11),%edi              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@22 (line 289)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800cc3fc0::apply@4
          │││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          │││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   1.19%  │││  0x00007f792f0080df:   add    %esi,%r10d
   0.90%  │││  0x00007f792f0080e2:   add    %edx,%r10d
   1.82%  │││  0x00007f792f0080e5:   add    %eax,%r10d
   2.97%  │││  0x00007f792f0080e8:   add    %r8d,%r10d
   2.29%  │││  0x00007f792f0080eb:   add    %edi,%r10d
   2.70%  │││  0x00007f792f0080ee:   add    0x2c(%r11),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$53@2 (line 2447)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$65/0x0000000800cc4400::apply@3
          │││                                                            ; - jdk.incubator.vector.IntVector::rOpTemplate@23 (line 289)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::rOp@3 (line 240)
          │││                                                            ; - jdk.incubator.vector.IntVector::lambda$reduceLanesTemplate$54@7 (line 2447)
          │││                                                            ; - jdk.incubator.vector.IntVector$$Lambda$64/0x0000000800cc3fc0::apply@4
          │││                                                            ; - jdk.internal.vm.vector.VectorSupport::reductionCoerced@28 (line 220)
          │││                                                            ; - jdk.incubator.vector.IntVector::reduceLanesTemplate@62 (line 2441)
          │││                                                            ; - jdk.incubator.vector.Int256Vector::reduceLanes@2 (line 310)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@39 (line 86)
   3.48%  │││  0x00007f792f0080f2:   add    %r10d,%ecx                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@42 (line 86)
   3.76%  │││  0x00007f792f0080f5:   lea    0x8(%rbx),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@53 (line 84)
   0.22%  │││  0x00007f792f0080f8:   mov    (%rsp),%r8
   0.68%  │││  0x00007f792f0080fc:   mov    0x10(%rsp),%r11d             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@9 (line 84)
   0.42%  ↘││  0x00007f792f008101:   cmp    %ebx,%r11d
           │╰  0x00007f792f008104:   jg     0x00007f792f008000
           │   0x00007f792f00810a:   jmp    0x00007f792f00813f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@20 (line 84)
           ↘   0x00007f792f00810f:   mov    %esi,%r11d
               0x00007f792f008112:   mov    %edx,%r8d
   0.00%       0x00007f792f008115:   mov    %ecx,0xc(%rsp)
   0.00%       0x00007f792f008119:   mov    %r9,%rsi
               0x00007f792f00811c:   mov    $0x8,%edx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.IntVector::ldOp@4 (line 307)
                                                                         ; - jdk.incubator.vector.IntVector$IntSpecies::ldOp@7 (line 3644)
                                                                         ; - jdk.incubator.vector.IntVector::lambda$fromArray0Template$89@8 (line 3243)
                                                                         ; - jdk.incubator.vector.IntVector$$Lambda$61/0x0000000800cc0000::load@9
                                                                         ; - jdk.internal.vm.vector.VectorSupport::load@32 (line 311)
                                                                         ; - jdk.incubator.vector.IntVector::fromArray0Template@31 (line 3239)
                                                                         ; - jdk.incubator.vector.Int256Vector::fromArray0@3 (line 787)
                                                                         ; - jdk.incubator.vector.IntVector::fromArray@24 (line 2717)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum@28 (line 85)
....................................................................................................
  96.41%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 876 
   0.16%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.11%            libjvm.so  HeapRegionClaimer::claim_region 
   0.11%            libjvm.so  HeapRegionManager::par_iterate 
   0.08%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%               kernel  [unknown] 
   0.05%            libjvm.so  G1FromCardCache::clear 
   0.05%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.04%               kernel  [unknown] 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.04%            libjvm.so  HandleMark::initialize 
   0.04%               kernel  [unknown] 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%            libjvm.so  ObjArrayAllocator::initialize 
   2.30%  <...other 532 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.VectorApiBenchmark::vectorized_sum, version 4, compile id 876 
   1.42%               kernel  [unknown] 
   0.27%                       <unknown> 
   0.11%            libjvm.so  HeapRegionClaimer::claim_region 
   0.11%            libjvm.so  HeapRegionManager::par_iterate 
   0.07%            libjvm.so  ObjArrayAllocator::initialize 
   0.06%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%            libjvm.so  G1FromCardCache::clear 
   0.05%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.05%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.04%            libjvm.so  HandleMark::initialize 
   0.04%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   0.03%            libjvm.so  TypeArrayKlass::allocate_common 
   0.03%            libjvm.so  MemAllocator::allocate 
   0.03%            libjvm.so  HeapRegionManager::allocate_free_region 
   1.03%  <...other 197 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.42%       jvmci, level 4
   1.57%            libjvm.so
   1.42%               kernel
   0.27%                     
   0.08%   libpthread-2.31.so
   0.07%         libc-2.31.so
   0.06%           ld-2.31.so
   0.04%               [vdso]
   0.03%          interpreter
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%          c1, level 3
   0.00%           libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:52

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
VectorApiBenchmark.baseline_filter              262144  avgt    5      220.649 ±     1.081  us/op
VectorApiBenchmark.baseline_filter:·asm         262144  avgt               NaN                ---
VectorApiBenchmark.baseline_filter             1048576  avgt    5      895.146 ±     1.633  us/op
VectorApiBenchmark.baseline_filter:·asm        1048576  avgt               NaN                ---
VectorApiBenchmark.baseline_matrix_mul          262144  avgt    5   103079.767 ±  4193.828  us/op
VectorApiBenchmark.baseline_matrix_mul:·asm     262144  avgt               NaN                ---
VectorApiBenchmark.baseline_matrix_mul         1048576  avgt    5   993579.354 ± 32749.267  us/op
VectorApiBenchmark.baseline_matrix_mul:·asm    1048576  avgt               NaN                ---
VectorApiBenchmark.baseline_sum                 262144  avgt    5      133.530 ±     1.148  us/op
VectorApiBenchmark.baseline_sum:·asm            262144  avgt               NaN                ---
VectorApiBenchmark.baseline_sum                1048576  avgt    5      531.987 ±     8.520  us/op
VectorApiBenchmark.baseline_sum:·asm           1048576  avgt               NaN                ---
VectorApiBenchmark.vectorized_filter            262144  avgt    5     4884.237 ±     6.951  us/op
VectorApiBenchmark.vectorized_filter:·asm       262144  avgt               NaN                ---
VectorApiBenchmark.vectorized_filter           1048576  avgt    5    18945.916 ±    52.608  us/op
VectorApiBenchmark.vectorized_filter:·asm      1048576  avgt               NaN                ---
VectorApiBenchmark.vectorized_matrix_mul        262144  avgt    5   927207.002 ±  1325.508  us/op
VectorApiBenchmark.vectorized_matrix_mul:·asm   262144  avgt               NaN                ---
VectorApiBenchmark.vectorized_matrix_mul       1048576  avgt    5  2539084.075 ± 15044.818  us/op
VectorApiBenchmark.vectorized_matrix_mul:·asm  1048576  avgt               NaN                ---
VectorApiBenchmark.vectorized_sum               262144  avgt    5      264.116 ±     0.578  us/op
VectorApiBenchmark.vectorized_sum:·asm          262144  avgt               NaN                ---
VectorApiBenchmark.vectorized_sum              1048576  avgt    5     1066.597 ±     4.971  us/op
VectorApiBenchmark.vectorized_sum:·asm         1048576  avgt               NaN                ---
