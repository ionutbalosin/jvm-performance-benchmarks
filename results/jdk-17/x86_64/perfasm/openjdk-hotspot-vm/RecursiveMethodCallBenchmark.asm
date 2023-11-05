# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1502.171 ns/op
# Warmup Iteration   2: 1495.165 ns/op
# Warmup Iteration   3: 1493.867 ns/op
# Warmup Iteration   4: 1493.341 ns/op
# Warmup Iteration   5: 1493.744 ns/op
Iteration   1: 1493.283 ns/op
Iteration   2: 1493.268 ns/op
Iteration   3: 1493.295 ns/op
Iteration   4: 1493.284 ns/op
Iteration   5: 1493.251 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  1493.276 ±(99.9%) 0.067 ns/op [Average]
  (min, avg, max) = (1493.251, 1493.276, 1493.295), stdev = 0.017
  CI (99.9%): [1493.209, 1493.343] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method:·asm":
PrintAssembly processed: 118143 total address lines.
Perf output processed (skipped 55.632 seconds):
 Column 1: cycles (50827 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 472 

                # parm0:    rdx       = int
                #           [sp+0x20]  (sp of caller)
                0x00007fb510f636a0:   mov    0x8(%rsi),%r10d
                0x00007fb510f636a4:   movabs $0x800000000,%r11
                0x00007fb510f636ae:   add    %r11,%r10
                0x00007fb510f636b1:   cmp    %r10,%rax
                0x00007fb510f636b4:   jne    0x00007fb5109fbd80           ;   {runtime_call ic_miss_stub}
                0x00007fb510f636ba:   xchg   %ax,%ax
                0x00007fb510f636bc:   nopl   0x0(%rax)
              [Verified Entry Point]
   0.74%    ↗   0x00007fb510f636c0:   mov    %eax,-0x14000(%rsp)
   3.28%    │   0x00007fb510f636c7:   push   %rbp
   1.66%    │   0x00007fb510f636c8:   sub    $0x10,%rsp                   ;*synchronization entry
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@-1 (line 108)
   0.64%    │   0x00007fb510f636cc:   movabs $0x7fee24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fee24e40})}
   0.99%    │   0x00007fb510f636d6:   test   %edx,%edx
          ╭ │   0x00007fb510f636d8:   je     0x00007fb510f636f0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 108)
   1.70%  │ │   0x00007fb510f636da:   nopw   0x0(%rax,%rax,1)
   0.18%  │ │   0x00007fb510f636e0:   cmp    $0x1,%edx
          │╭│   0x00007fb510f636e3:   je     0x00007fb510f636f0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 108)
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
   0.50%  │││   0x00007fb510f636e5:   add    $0xfffffffe,%edx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 111)
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
   1.05%  │││   0x00007fb510f636e8:   data16 xchg %ax,%ax
   1.52%  ││╰   0x00007fb510f636eb:   call   0x00007fb510f636c0           ; ImmutableOopMap {}
          ││                                                              ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││                                                              ;   {optimized virtual_call}
  42.67%  ↘↘    0x00007fb510f636f0:   add    $0x10,%rsp
  21.83%        0x00007fb510f636f4:   pop    %rbp
  16.32%        0x00007fb510f636f5:   cmp    0x340(%r15),%rsp             ;   {poll_return}
             ╭  0x00007fb510f636fc:   ja     0x00007fb510f63710
   3.21%     │  0x00007fb510f63702:   ret                                 ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
             │  0x00007fb510f63703:   mov    %rax,%rsi
             │  0x00007fb510f63706:   add    $0x10,%rsp
             │  0x00007fb510f6370a:   pop    %rbp
             │  0x00007fb510f6370b:   jmp    0x00007fb510aaf400           ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
             │                                                            ;   {runtime_call _rethrow_Java}
             ↘  0x00007fb510f63710:   movabs $0x7fb510f636f5,%r10         ;   {internal_word}
                0x00007fb510f6371a:   mov    %r10,0x358(%r15)
....................................................................................................
  96.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 472 
   0.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 476 
   0.87%              kernel  [unknown] 
   0.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 501 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.71%  <...other 255 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 472 
   1.79%              kernel  [unknown] 
   0.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 476 
   0.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 501 
   0.07%                      <unknown> 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  os::PlatformMonitor::wait 
   0.01%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%        libc-2.31.so  _int_malloc 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%         c2, level 4
   1.79%              kernel
   0.13%           libjvm.so
   0.07%                    
   0.05%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:09:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1499.502 ns/op
# Warmup Iteration   2: 1489.972 ns/op
# Warmup Iteration   3: 1489.852 ns/op
# Warmup Iteration   4: 1489.801 ns/op
# Warmup Iteration   5: 1489.747 ns/op
Iteration   1: 1489.853 ns/op
Iteration   2: 1490.231 ns/op
Iteration   3: 1489.786 ns/op
Iteration   4: 1489.781 ns/op
Iteration   5: 1489.856 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method":
  1489.901 ±(99.9%) 0.722 ns/op [Average]
  (min, avg, max) = (1489.781, 1489.901, 1490.231), stdev = 0.187
  CI (99.9%): [1489.179, 1490.623] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method:·asm":
PrintAssembly processed: 113905 total address lines.
Perf output processed (skipped 55.489 seconds):
 Column 1: cycles (50861 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 461 

              scopes pcs     [0x00007f939cf63910,0x00007f939cf639a0] = 144
              dependencies   [0x00007f939cf639a0,0x00007f939cf639a8] = 8
              handler table  [0x00007f939cf639a8,0x00007f939cf639c0] = 24
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Verified Entry Point]
               # {method} {0x00007f9363c75ba8} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
               # parm0:    rsi       = int
               #           [sp+0x20]  (sp of caller)
   0.68%       0x00007f939cf63820:   mov    %eax,-0x14000(%rsp)
   3.00%       0x00007f939cf63827:   push   %rbp
   1.48%       0x00007f939cf63828:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@-1 (line 115)
   0.71%       0x00007f939cf6382c:   movabs $0x7fee24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fee24e40})}
   0.97%       0x00007f939cf63836:   test   %esi,%esi
          ╭    0x00007f939cf63838:   je     0x00007f939cf63850           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 115)
   1.39%  │    0x00007f939cf6383a:   nopw   0x0(%rax,%rax,1)
   0.21%  │    0x00007f939cf63840:   cmp    $0x1,%esi
          │╭   0x00007f939cf63843:   je     0x00007f939cf63850           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 115)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
   0.57%  ││   0x00007f939cf63845:   add    $0xfffffffe,%esi             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 118)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
   1.01%  ││   0x00007f939cf63848:   data16 xchg %ax,%ax
   1.39%  ││   0x00007f939cf6384b:   call   0x00007f939cf63820           ; ImmutableOopMap {}
          ││                                                             ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││                                                             ;   {static_call}
  42.62%  ↘↘   0x00007f939cf63850:   add    $0x10,%rsp
  22.10%       0x00007f939cf63854:   pop    %rbp
  16.34%       0x00007f939cf63855:   cmp    0x340(%r15),%rsp             ;   {poll_return}
            ╭  0x00007f939cf6385c:   ja     0x00007f939cf63870
   3.30%    │  0x00007f939cf63862:   ret                                 ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
            │  0x00007f939cf63863:   mov    %rax,%rsi
            │  0x00007f939cf63866:   add    $0x10,%rsp
            │  0x00007f939cf6386a:   pop    %rbp
            │  0x00007f939cf6386b:   jmp    0x00007f939caa9400           ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
            │                                                            ;   {runtime_call _rethrow_Java}
            ↘  0x00007f939cf63870:   movabs $0x7f939cf63855,%r10         ;   {internal_word}
               0x00007f939cf6387a:   mov    %r10,0x358(%r15)
....................................................................................................
  95.76%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 461 
   1.21%              kernel  [unknown] 
   0.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 464 
   0.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 5, compile id 488 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.78%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 461 
   2.29%              kernel  [unknown] 
   0.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 464 
   0.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 5, compile id 488 
   0.02%        libc-2.31.so  [unknown] 
   0.02%                      <unknown> 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  _int_memalign 
   0.11%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.48%         c2, level 4
   2.29%              kernel
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:07:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1481.693 ns/op
# Warmup Iteration   2: 1474.052 ns/op
# Warmup Iteration   3: 1469.116 ns/op
# Warmup Iteration   4: 1469.134 ns/op
# Warmup Iteration   5: 1469.116 ns/op
Iteration   1: 1469.147 ns/op
Iteration   2: 1469.102 ns/op
Iteration   3: 1469.081 ns/op
Iteration   4: 1469.154 ns/op
Iteration   5: 1469.186 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  1469.134 ±(99.9%) 0.161 ns/op [Average]
  (min, avg, max) = (1469.081, 1469.134, 1469.186), stdev = 0.042
  CI (99.9%): [1468.973, 1469.296] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:·asm":
PrintAssembly processed: 116553 total address lines.
Perf output processed (skipped 55.605 seconds):
 Column 1: cycles (50851 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 473 

                # parm0:    rdx       = int
                #           [sp+0x30]  (sp of caller)
                0x00007fb164f62720:   mov    0x8(%rsi),%r10d
                0x00007fb164f62724:   movabs $0x800000000,%r11
                0x00007fb164f6272e:   add    %r11,%r10
                0x00007fb164f62731:   cmp    %r10,%rax
                0x00007fb164f62734:   jne    0x00007fb1649fbd80           ;   {runtime_call ic_miss_stub}
                0x00007fb164f6273a:   xchg   %ax,%ax
                0x00007fb164f6273c:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.36%     ↗  0x00007fb164f62740:   mov    %eax,-0x14000(%rsp)
   0.75%     │  0x00007fb164f62747:   push   %rbp
   2.35%     │  0x00007fb164f62748:   sub    $0x20,%rsp                   ;*synchronization entry
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@-1 (line 124)
   0.52%     │  0x00007fb164f6274c:   movabs $0x7fee24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fee24e40})}
   0.29%     │  0x00007fb164f62756:   test   %edx,%edx
          ╭  │  0x00007fb164f62758:   je     0x00007fb164f62778           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 124)
   2.18%  │  │  0x00007fb164f6275a:   mov    0x8(%rsi),%r11d
   0.29%  │  │  0x00007fb164f6275e:   xchg   %ax,%ax
   0.26%  │  │  0x00007fb164f62760:   cmp    $0xc27270,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$1&apos;)}
          │╭ │  0x00007fb164f62767:   jne    0x00007fb164f6278b
   0.30%  ││ │  0x00007fb164f62769:   cmp    $0x1,%edx
          ││╭│  0x00007fb164f6276c:   je     0x00007fb164f62778           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   2.17%  ││││  0x00007fb164f6276e:   add    $0xfffffffe,%edx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 127)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   0.23%  ││││  0x00007fb164f62771:   xchg   %ax,%ax
   0.24%  │││╰  0x00007fb164f62773:   call   0x00007fb164f62740           ; ImmutableOopMap {}
          │││                                                             ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          │││                                                             ;   {optimized virtual_call}
  44.35%  ↘│↘   0x00007fb164f62778:   add    $0x20,%rsp
  23.21%   │    0x00007fb164f6277c:   pop    %rbp
  16.81%   │    0x00007fb164f6277d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
           │    0x00007fb164f62784:   ja     0x00007fb164f627ad
   0.02%   │    0x00007fb164f6278a:   ret    
           ↘    0x00007fb164f6278b:   mov    %edx,%ebp
                0x00007fb164f6278d:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 127)
                0x00007fb164f6278f:   mov    %rsi,(%rsp)
                0x00007fb164f62793:   mov    $0xffffffde,%esi
                0x00007fb164f62798:   data16 xchg %ax,%ax
                0x00007fb164f6279b:   call   0x00007fb164a01600           ; ImmutableOopMap {[0]=Oop }
                                                                          ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  96.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 473 
   1.10%              kernel  [unknown] 
   0.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 476 
   0.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 501 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.56%  <...other 207 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 473 
   1.85%              kernel  [unknown] 
   0.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 476 
   0.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 501 
   0.05%                      <unknown> 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%        libc-2.31.so  ptmalloc_init.part.0 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.11%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%         c2, level 4
   1.85%              kernel
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:05:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1497.736 ns/op
# Warmup Iteration   2: 1489.929 ns/op
# Warmup Iteration   3: 1489.807 ns/op
# Warmup Iteration   4: 1489.831 ns/op
# Warmup Iteration   5: 1489.729 ns/op
Iteration   1: 1489.942 ns/op
Iteration   2: 1490.018 ns/op
Iteration   3: 1489.863 ns/op
Iteration   4: 1489.890 ns/op
Iteration   5: 1489.856 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  1489.914 ±(99.9%) 0.260 ns/op [Average]
  (min, avg, max) = (1489.856, 1489.914, 1490.018), stdev = 0.067
  CI (99.9%): [1489.654, 1490.174] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method:·asm":
PrintAssembly processed: 116769 total address lines.
Perf output processed (skipped 55.716 seconds):
 Column 1: cycles (50598 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 471 

              scopes pcs     [0x00007f08d8f66190,0x00007f08d8f66220] = 144
              dependencies   [0x00007f08d8f66220,0x00007f08d8f66228] = 8
              handler table  [0x00007f08d8f66228,0x00007f08d8f66240] = 24
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Verified Entry Point]
               # {method} {0x00007f08b9cd5958} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
               # parm0:    rsi       = int
               #           [sp+0x20]  (sp of caller)
   0.74%       0x00007f08d8f660a0:   mov    %eax,-0x14000(%rsp)
   2.95%       0x00007f08d8f660a7:   push   %rbp
   1.55%       0x00007f08d8f660a8:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@-1 (line 131)
   0.67%       0x00007f08d8f660ac:   movabs $0x7fee24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fee24e40})}
   0.99%       0x00007f08d8f660b6:   test   %esi,%esi
          ╭    0x00007f08d8f660b8:   je     0x00007f08d8f660d0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 131)
   1.44%  │    0x00007f08d8f660ba:   nopw   0x0(%rax,%rax,1)
   0.19%  │    0x00007f08d8f660c0:   cmp    $0x1,%esi
          │╭   0x00007f08d8f660c3:   je     0x00007f08d8f660d0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 131)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
   0.55%  ││   0x00007f08d8f660c5:   add    $0xfffffffe,%esi             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 134)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
   1.05%  ││   0x00007f08d8f660c8:   data16 xchg %ax,%ax
   1.46%  ││   0x00007f08d8f660cb:   call   0x00007f08d8f660a0           ; ImmutableOopMap {}
          ││                                                             ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││                                                             ;   {static_call}
  43.07%  ↘↘   0x00007f08d8f660d0:   add    $0x10,%rsp
  22.21%       0x00007f08d8f660d4:   pop    %rbp
  16.46%       0x00007f08d8f660d5:   cmp    0x340(%r15),%rsp             ;   {poll_return}
            ╭  0x00007f08d8f660dc:   ja     0x00007f08d8f660f0
   3.33%    │  0x00007f08d8f660e2:   ret                                 ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
            │  0x00007f08d8f660e3:   mov    %rax,%rsi
            │  0x00007f08d8f660e6:   add    $0x10,%rsp
            │  0x00007f08d8f660ea:   pop    %rbp
            │  0x00007f08d8f660eb:   jmp    0x00007f08d8aafc00           ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
            │                                                            ;   {runtime_call _rethrow_Java}
            ↘  0x00007f08d8f660f0:   movabs $0x7f08d8f660d5,%r10         ;   {internal_word}
               0x00007f08d8f660fa:   mov    %r10,0x358(%r15)
....................................................................................................
  96.65%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 471 
   0.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 475 
   0.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 5, compile id 498 
   0.45%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.75%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 471 
   1.35%              kernel  [unknown] 
   0.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 475 
   0.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 5, compile id 498 
   0.06%                      <unknown> 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  os::elapsed_counter 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%           libjvm.so  LIR_OpVisitState::visit 
   0.00%        libc-2.31.so  _nl_parse_alt_digit 
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.36%         c2, level 4
   1.35%              kernel
   0.11%           libjvm.so
   0.07%        libc-2.31.so
   0.06%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%      perf-24409.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:03:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.650 ns/op
# Warmup Iteration   2: 8.514 ns/op
# Warmup Iteration   3: 7.532 ns/op
# Warmup Iteration   4: 7.524 ns/op
# Warmup Iteration   5: 7.506 ns/op
Iteration   1: 7.525 ns/op
Iteration   2: 7.538 ns/op
Iteration   3: 7.525 ns/op
Iteration   4: 7.519 ns/op
Iteration   5: 7.525 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  7.526 ±(99.9%) 0.026 ns/op [Average]
  (min, avg, max) = (7.519, 7.526, 7.538), stdev = 0.007
  CI (99.9%): [7.500, 7.553] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static:·asm":
PrintAssembly processed: 116210 total address lines.
Perf output processed (skipped 55.746 seconds):
 Column 1: cycles (50598 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 502 

              0x00007f4af8f66426:   mov    0x38(%rsp),%r10
              0x00007f4af8f6642b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f4af8f664e0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@30 (line 234)
              0x00007f4af8f66433:   mov    $0x1,%ebp
              0x00007f4af8f66438:   test   %r11d,%r11d
          ╭   0x00007f4af8f6643b:   jne    0x00007f4af8f6646c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
          │   0x00007f4af8f6643d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@36 (line 235)
   3.27%  │↗  0x00007f4af8f66440:   mov    0x40(%rsp),%rsi
   2.33%  ││  0x00007f4af8f66445:   xchg   %ax,%ax
          ││  0x00007f4af8f66447:   call   0x00007f4af89fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
  32.60%  ││  0x00007f4af8f6644c:   mov    0x38(%rsp),%r10
   5.05%  ││  0x00007f4af8f66451:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
  13.44%  ││  0x00007f4af8f66459:   mov    0x348(%r15),%r10
   2.38%  ││  0x00007f4af8f66460:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
          ││  0x00007f4af8f66464:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007f4af8f66467:   test   %r11d,%r11d
          │╰  0x00007f4af8f6646a:   je     0x00007f4af8f66440           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@36 (line 235)
          ↘   0x00007f4af8f6646c:   movabs $0x7f4b1051cd10,%r10
              0x00007f4af8f66476:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@37 (line 235)
              0x00007f4af8f66479:   mov    0x30(%rsp),%r10
....................................................................................................
  59.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 478 

              # {method} {0x00007f4ae8c75948} &apos;lambda_non_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007f4af8f64320:   mov    0x8(%rsi),%r10d
              0x00007f4af8f64324:   movabs $0x800000000,%r11
              0x00007f4af8f6432e:   add    %r11,%r10
              0x00007f4af8f64331:   cmp    %r10,%rax
              0x00007f4af8f64334:   jne    0x00007f4af89fbd80           ;   {runtime_call ic_miss_stub}
              0x00007f4af8f6433a:   xchg   %ax,%ax
              0x00007f4af8f6433c:   nopl   0x0(%rax)
            [Verified Entry Point]
   2.83%      0x00007f4af8f64340:   mov    %eax,-0x14000(%rsp)
  11.35%      0x00007f4af8f64347:   push   %rbp
              0x00007f4af8f64348:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@-1 (line 98)
   0.52%      0x00007f4af8f6434c:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 98)
   4.48%      0x00007f4af8f64350:   mov    0x18(%rsi),%r8d              ;*getfield LAMBDA_NON_STATIC {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@1 (line 98)
              0x00007f4af8f64354:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f4af8f643dc
   0.52%      0x00007f4af8f64359:   nopl   0x0(%rax)
              0x00007f4af8f64360:   cmp    $0xc27028,%r11d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$$Lambda$43+0x0000000800c27028&apos;)}
          ╭   0x00007f4af8f64367:   jne    0x00007f4af8f643b4
   4.59%  │   0x00007f4af8f64369:   lea    (%r12,%r8,8),%r11            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
          │   0x00007f4af8f6436d:   mov    0xc(%r11),%r11d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$43/0x0000000800c27028::apply@1
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
   0.56%  │   0x00007f4af8f64371:   test   %r11d,%r11d
          │╭  0x00007f4af8f64374:   je     0x00007f4af8f643a6           ;*invokevirtual lambda$new$0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$43/0x0000000800c27028::apply@8
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
   4.49%  ││  0x00007f4af8f64376:   data16 nopw 0x0(%rax,%rax,1)
          ││  0x00007f4af8f64380:   mov    0xc(%r12,%r10,8),%ebp        ; implicit exception: dispatches to 0x00007f4af8f643ec
          ││                                                            ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@1 (line 140)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$43/0x0000000800c27028::apply@8
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
          ││  0x00007f4af8f64385:   test   %ebp,%ebp
          ││  0x00007f4af8f64387:   jne    0x00007f4af8f643c8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 140)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$43/0x0000000800c27028::apply@8
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
   5.00%  ││  0x00007f4af8f64389:   movabs $0x7fee24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fee24e40})}
          ││  0x00007f4af8f64393:   add    $0x20,%rsp
          ││  0x00007f4af8f64397:   pop    %rbp
          ││  0x00007f4af8f64398:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  0x00007f4af8f6439f:   ja     0x00007f4af8f643f8
   4.91%  ││  0x00007f4af8f643a5:   ret    
          │↘  0x00007f4af8f643a6:   mov    $0xfffffff6,%esi
          │   0x00007f4af8f643ab:   mov    %r10d,%ebp
          │   0x00007f4af8f643ae:   nop
          │   0x00007f4af8f643af:   call   0x00007f4af8a01600           ; ImmutableOopMap {rbp=NarrowOop }
          │                                                             ;*invokevirtual lambda$new$0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$43/0x0000000800c27028::apply@8
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
          │                                                             ;   {runtime_call UncommonTrapBlob}
          ↘   0x00007f4af8f643b4:   mov    $0xffffffde,%esi
              0x00007f4af8f643b9:   mov    %r8d,%ebp
....................................................................................................
  39.26%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 502 
  39.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 478 
   0.44%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 502 
  39.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 478 
   1.33%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  WatcherThread::run 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.34%         c2, level 4
   1.33%              kernel
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.405 ns/op
# Warmup Iteration   2: 6.199 ns/op
# Warmup Iteration   3: 7.219 ns/op
# Warmup Iteration   4: 6.191 ns/op
# Warmup Iteration   5: 6.221 ns/op
Iteration   1: 6.251 ns/op
Iteration   2: 6.230 ns/op
Iteration   3: 6.247 ns/op
Iteration   4: 6.305 ns/op
Iteration   5: 6.224 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static":
  6.251 ±(99.9%) 0.123 ns/op [Average]
  (min, avg, max) = (6.224, 6.251, 6.305), stdev = 0.032
  CI (99.9%): [6.128, 6.374] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static:·asm":
PrintAssembly processed: 115141 total address lines.
Perf output processed (skipped 55.603 seconds):
 Column 1: cycles (51086 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 509 

              0x00007f044cf6762b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f044cf676e0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@30 (line 234)
              0x00007f044cf67633:   mov    $0x1,%ebp
              0x00007f044cf67638:   test   %r11d,%r11d
          ╭   0x00007f044cf6763b:   jne    0x00007f044cf6766c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
          │   0x00007f044cf6763d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@36 (line 235)
          │↗  0x00007f044cf67640:   mov    0x40(%rsp),%rsi
   5.83%  ││  0x00007f044cf67645:   xchg   %ax,%ax
          ││  0x00007f044cf67647:   call   0x00007f044c9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
  60.20%  ││  0x00007f044cf6764c:   mov    0x38(%rsp),%r10
          ││  0x00007f044cf67651:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
          ││  0x00007f044cf67659:   mov    0x348(%r15),%r10
   6.18%  ││  0x00007f044cf67660:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
          ││  0x00007f044cf67664:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007f044cf67667:   test   %r11d,%r11d
          │╰  0x00007f044cf6766a:   je     0x00007f044cf67640           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@36 (line 235)
          ↘   0x00007f044cf6766c:   movabs $0x7f0464cf5d10,%r10
              0x00007f044cf67676:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@37 (line 235)
              0x00007f044cf67679:   mov    0x30(%rsp),%r10
....................................................................................................
  72.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 475 

             #           [sp+0x30]  (sp of caller)
             0x00007f044cf63ba0:   mov    0x8(%rsi),%r10d
             0x00007f044cf63ba4:   movabs $0x800000000,%r11
             0x00007f044cf63bae:   add    %r11,%r10
             0x00007f044cf63bb1:   cmp    %r10,%rax
             0x00007f044cf63bb4:   jne    0x00007f044c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f044cf63bba:   xchg   %ax,%ax
             0x00007f044cf63bbc:   nopl   0x0(%rax)
           [Verified Entry Point]
             0x00007f044cf63bc0:   mov    %eax,-0x14000(%rsp)
   6.00%     0x00007f044cf63bc7:   push   %rbp
             0x00007f044cf63bc8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@-1 (line 104)
   6.09%     0x00007f044cf63bcc:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@4 (line 104)
             0x00007f044cf63bd0:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f044cf63c08
                                                                       ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 148)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$42/0x0000000800c26de8::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 104)
   1.03%     0x00007f044cf63bd5:   test   %r8d,%r8d
          ╭  0x00007f044cf63bd8:   jne    0x00007f044cf63bf7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@4 (line 148)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$42/0x0000000800c26de8::apply@4
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 104)
   0.95%  │  0x00007f044cf63bda:   movabs $0x7fee24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fee24e40})}
   5.06%  │  0x00007f044cf63be4:   add    $0x20,%rsp
          │  0x00007f044cf63be8:   pop    %rbp
          │  0x00007f044cf63be9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │  0x00007f044cf63bf0:   ja     0x00007f044cf63c14
   6.10%  │  0x00007f044cf63bf6:   ret    
          ↘  0x00007f044cf63bf7:   mov    $0xffffff45,%esi
             0x00007f044cf63bfc:   mov    %r10d,%ebp
             0x00007f044cf63bff:   mov    %r8d,(%rsp)
             0x00007f044cf63c03:   call   0x00007f044ca01600           ; ImmutableOopMap {rbp=NarrowOop }
                                                                       ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@4 (line 148)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda$42/0x0000000800c26de8::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 104)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f044cf63c08:   mov    $0xffffff5e,%esi
....................................................................................................
  25.22%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 509 
  25.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 475 
   1.46%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%                      <unknown> 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.64%  <...other 246 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 509 
  25.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 475 
   2.28%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%  libpthread-2.31.so  __pthread_mutex_lock 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  _int_malloc 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.43%         c2, level 4
   2.28%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 1
   0.00%      perf-24520.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:47

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

Benchmark                                                      (depth)  Mode  Cnt     Score   Error  Units
RecursiveMethodCallBenchmark.class_non_static_method               256  avgt    5  1493.276 ± 0.067  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:·asm          256  avgt            NaN            ---
RecursiveMethodCallBenchmark.class_static_method                   256  avgt    5  1489.901 ± 0.722  ns/op
RecursiveMethodCallBenchmark.class_static_method:·asm              256  avgt            NaN            ---
RecursiveMethodCallBenchmark.interface_non_static_method           256  avgt    5  1469.134 ± 0.161  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:·asm      256  avgt            NaN            ---
RecursiveMethodCallBenchmark.interface_static_method               256  avgt    5  1489.914 ± 0.260  ns/op
RecursiveMethodCallBenchmark.interface_static_method:·asm          256  avgt            NaN            ---
RecursiveMethodCallBenchmark.lambda_non_static                     256  avgt    5     7.526 ± 0.026  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:·asm                256  avgt            NaN            ---
RecursiveMethodCallBenchmark.lambda_static                         256  avgt    5     6.251 ± 0.123  ns/op
RecursiveMethodCallBenchmark.lambda_static:·asm                    256  avgt            NaN            ---
