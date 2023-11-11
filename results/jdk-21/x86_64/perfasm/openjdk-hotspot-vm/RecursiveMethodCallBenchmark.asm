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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1560.902 ns/op
# Warmup Iteration   2: 1559.279 ns/op
# Warmup Iteration   3: 1558.385 ns/op
# Warmup Iteration   4: 1558.393 ns/op
# Warmup Iteration   5: 1558.270 ns/op
Iteration   1: 1558.313 ns/op
Iteration   2: 1558.259 ns/op
Iteration   3: 1558.277 ns/op
Iteration   4: 1558.369 ns/op
Iteration   5: 1558.383 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  1558.320 ±(99.9%) 0.211 ns/op [Average]
  (min, avg, max) = (1558.259, 1558.320, 1558.383), stdev = 0.055
  CI (99.9%): [1558.109, 1558.531] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method:asm":
PrintAssembly processed: 129463 total address lines.
Perf output processed (skipped 56.313 seconds):
 Column 1: cycles (51244 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 558 

                 # parm0:    rdx       = int
                 #           [sp+0x20]  (sp of caller)
                 0x00007effc8639420:   mov    0x8(%rsi),%r10d
                 0x00007effc8639424:   movabs $0x7eff4f000000,%r11
                 0x00007effc863942e:   add    %r11,%r10
                 0x00007effc8639431:   cmp    %r10,%rax
                 0x00007effc8639434:   jne    0x00007effc80c4080           ;   {runtime_call ic_miss_stub}
                 0x00007effc863943a:   xchg   %ax,%ax
                 0x00007effc863943c:   nopl   0x0(%rax)
               [Verified Entry Point]
   1.11%    ↗    0x00007effc8639440:   mov    %eax,-0x14000(%rsp)
   2.58%    │    0x00007effc8639447:   push   %rbp
   1.86%    │    0x00007effc8639448:   sub    $0x10,%rsp
   0.62%    │    0x00007effc863944c:   cmpl   $0x1,0x20(%r15)
   0.76%    │    0x00007effc8639454:   jne    0x00007effc86394b6           ;*synchronization entry
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@-1 (line 106)
   1.86%    │    0x00007effc863945a:   movabs $0x7ff034e38,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007ff034e38})}
   0.32%    │    0x00007effc8639464:   test   %edx,%edx
          ╭ │    0x00007effc8639466:   je     0x00007effc8639480           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
   0.36%  │ │    0x00007effc8639468:   cmp    $0x1,%edx
          │╭│    0x00007effc863946b:   je     0x00007effc8639480           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   0.46%  │││    0x00007effc863946d:   add    $0xfffffffe,%edx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 109)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   1.76%  │││    0x00007effc8639470:   data16 xchg %ax,%ax
   0.22%  ││╰    0x00007effc8639473:   call   0x00007effc8639440           ; ImmutableOopMap {}
          ││                                                               ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││                                                               ;   {optimized virtual_call}
  38.13%  ││     0x00007effc8639478:   nopl   0x1e8(%rax,%rax,1)           ;   {other}
   2.48%  ↘↘     0x00007effc8639480:   add    $0x10,%rsp
  24.43%         0x00007effc8639484:   pop    %rbp
  15.45%      ↗  0x00007effc8639485:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             ╭│  0x00007effc863948c:   ja     0x00007effc86394a0
   3.04%     ││  0x00007effc8639492:   ret                                 ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
             ││  0x00007effc8639493:   mov    %rax,%rsi
             ││  0x00007effc8639496:   add    $0x10,%rsp
             ││  0x00007effc863949a:   pop    %rbp
             ││  0x00007effc863949b:   jmp    0x00007effc819d500           ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
             ││                                                            ;   {runtime_call _rethrow_Java}
             ↘╰  0x00007effc86394a0:   movabs $0x7effc8639485,%r10         ;   {internal_word}
                 0x00007effc86394aa:   mov    %r10,0x468(%r15)
....................................................................................................
  95.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 558 
   1.71%              kernel  [unknown] 
   0.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 561 
   0.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 593 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.66%  <...other 226 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 558 
   2.70%              kernel  [unknown] 
   0.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 561 
   0.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 593 
   0.05%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  metadata_Relocation::copy_into 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.00%         c2, level 4
   2.70%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:09:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1562.071 ns/op
# Warmup Iteration   2: 1560.812 ns/op
# Warmup Iteration   3: 1557.124 ns/op
# Warmup Iteration   4: 1557.230 ns/op
# Warmup Iteration   5: 1557.056 ns/op
Iteration   1: 1557.107 ns/op
Iteration   2: 1557.123 ns/op
Iteration   3: 1557.129 ns/op
Iteration   4: 1557.127 ns/op
Iteration   5: 1557.220 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method":
  1557.141 ±(99.9%) 0.172 ns/op [Average]
  (min, avg, max) = (1557.107, 1557.141, 1557.220), stdev = 0.045
  CI (99.9%): [1556.969, 1557.314] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method:asm":
PrintAssembly processed: 130687 total address lines.
Perf output processed (skipped 56.260 seconds):
 Column 1: cycles (50422 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 555 

               dependencies   [0x00007f632c639da0,0x00007f632c639da8] = 8
               handler table  [0x00007f632c639da8,0x00007f632c639dc0] = 24
              [Disassembly]
              --------------------------------------------------------------------------------
              [Constant Pool (empty)]
              --------------------------------------------------------------------------------
              [Verified Entry Point]
                # {method} {0x00007f62a847b800} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
                # parm0:    rsi       = int
                #           [sp+0x20]  (sp of caller)
   1.22%        0x00007f632c639c20:   mov    %eax,-0x14000(%rsp)
   2.74%        0x00007f632c639c27:   push   %rbp
   1.67%        0x00007f632c639c28:   sub    $0x10,%rsp
   0.74%        0x00007f632c639c2c:   cmpl   $0x1,0x20(%r15)
   0.66%        0x00007f632c639c34:   jne    0x00007f632c639c96           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@-1 (line 113)
   1.75%        0x00007f632c639c3a:   movabs $0x7ff034e38,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007ff034e38})}
   0.27%        0x00007f632c639c44:   test   %esi,%esi
          ╭     0x00007f632c639c46:   je     0x00007f632c639c60           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
   0.52%  │     0x00007f632c639c48:   cmp    $0x1,%esi
          │╭    0x00007f632c639c4b:   je     0x00007f632c639c60           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   0.46%  ││    0x00007f632c639c4d:   add    $0xfffffffe,%esi             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   1.69%  ││    0x00007f632c639c50:   data16 xchg %ax,%ax
   0.28%  ││    0x00007f632c639c53:   call   0x00007f632c639c20           ; ImmutableOopMap {}
          ││                                                              ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││                                                              ;   {static_call}
  39.23%  ││    0x00007f632c639c58:   nopl   0x1c8(%rax,%rax,1)           ;   {other}
   2.41%  ↘↘    0x00007f632c639c60:   add    $0x10,%rsp
  24.66%        0x00007f632c639c64:   pop    %rbp
  15.58%     ↗  0x00007f632c639c65:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ╭│  0x00007f632c639c6c:   ja     0x00007f632c639c80
   3.18%    ││  0x00007f632c639c72:   ret                                 ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
            ││  0x00007f632c639c73:   mov    %rax,%rsi
            ││  0x00007f632c639c76:   add    $0x10,%rsp
            ││  0x00007f632c639c7a:   pop    %rbp
            ││  0x00007f632c639c7b:   jmp    0x00007f632c19d580           ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
            ││                                                            ;   {runtime_call _rethrow_Java}
            ↘╰  0x00007f632c639c80:   movabs $0x7f632c639c65,%r10         ;   {internal_word}
                0x00007f632c639c8a:   mov    %r10,0x468(%r15)
....................................................................................................
  97.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 555 
   0.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 557 
   0.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 5, compile id 583 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 555 
   1.08%              kernel  [unknown] 
   0.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 557 
   0.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 5, compile id 583 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.12%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.61%         c2, level 4
   1.08%              kernel
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:07:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1650.489 ns/op
# Warmup Iteration   2: 1647.092 ns/op
# Warmup Iteration   3: 1642.586 ns/op
# Warmup Iteration   4: 1642.363 ns/op
# Warmup Iteration   5: 1642.575 ns/op
Iteration   1: 1642.640 ns/op
Iteration   2: 1642.571 ns/op
Iteration   3: 1642.543 ns/op
Iteration   4: 1642.560 ns/op
Iteration   5: 1642.640 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  1642.591 ±(99.9%) 0.177 ns/op [Average]
  (min, avg, max) = (1642.543, 1642.591, 1642.640), stdev = 0.046
  CI (99.9%): [1642.413, 1642.768] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:asm":
PrintAssembly processed: 127764 total address lines.
Perf output processed (skipped 56.176 seconds):
 Column 1: cycles (51209 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 561 

                # parm0:    rdx       = int
                #           [sp+0x30]  (sp of caller)
                0x00007f59c8639920:   mov    0x8(%rsi),%r10d
                0x00007f59c8639924:   movabs $0x7f5947000000,%r11
                0x00007f59c863992e:   add    %r11,%r10
                0x00007f59c8639931:   cmp    %r10,%rax
                0x00007f59c8639934:   jne    0x00007f59c80c4080           ;   {runtime_call ic_miss_stub}
                0x00007f59c863993a:   xchg   %ax,%ax
                0x00007f59c863993c:   nopl   0x0(%rax)
              [Verified Entry Point]
   5.79%     ↗  0x00007f59c8639940:   mov    %eax,-0x14000(%rsp)
   0.02%     │  0x00007f59c8639947:   push   %rbp
   8.77%     │  0x00007f59c8639948:   sub    $0x20,%rsp
             │  0x00007f59c863994c:   cmpl   $0x1,0x20(%r15)
             │  0x00007f59c8639954:   jne    0x00007f59c86399df           ;*synchronization entry
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@-1 (line 122)
   2.85%     │  0x00007f59c863995a:   movabs $0x7ff034e38,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007ff034e38})}
             │  0x00007f59c8639964:   test   %edx,%edx
          ╭  │  0x00007f59c8639966:   je     0x00007f59c863998c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 122)
          │  │  0x00007f59c8639968:   mov    0x8(%rsi),%r11d
   0.18%  │  │  0x00007f59c863996c:   cmp    $0x102b180,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$1&apos;)}
          │╭ │  0x00007f59c8639973:   jne    0x00007f59c863999f
   2.93%  ││ │  0x00007f59c8639975:   cmp    $0x1,%edx
          ││╭│  0x00007f59c8639978:   je     0x00007f59c863998c           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││││  0x00007f59c863997a:   add    $0xfffffffe,%edx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││││  0x00007f59c863997d:   xchg   %ax,%ax
          │││╰  0x00007f59c863997f:   call   0x00007f59c8639940           ; ImmutableOopMap {}
          │││                                                             ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││                                                             ;   {optimized virtual_call}
  34.22%  │││   0x00007f59c8639984:   nopl   0x1f4(%rax,%rax,1)           ;*synchronization entry
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@-1 (line 122)
          │││                                                             ;   {other}
   6.63%  ↘│↘   0x00007f59c863998c:   add    $0x20,%rsp
  19.87%   │    0x00007f59c8639990:   pop    %rbp
  14.64%   │    0x00007f59c8639991:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    0x00007f59c8639998:   ja     0x00007f59c86399c9
           │    0x00007f59c863999e:   ret    
           ↘    0x00007f59c863999f:   mov    %edx,%ebp
                0x00007f59c86399a1:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
                0x00007f59c86399a3:   mov    %rsi,(%rsp)
                0x00007f59c86399a7:   mov    $0xffffffde,%esi
                0x00007f59c86399ac:   data16 xchg %ax,%ax
                0x00007f59c86399af:   call   0x00007f59c80c9f00           ; ImmutableOopMap {[0]=Oop }
                                                                          ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  95.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 561 
   1.04%              kernel  [unknown] 
   0.68%              kernel  [unknown] 
   0.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 564 
   0.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 590 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.70%  <...other 247 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 561 
   2.55%              kernel  [unknown] 
   0.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 564 
   0.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 590 
   0.07%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  stringStream::write 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.07%         c2, level 4
   2.55%              kernel
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1561.508 ns/op
# Warmup Iteration   2: 1559.166 ns/op
# Warmup Iteration   3: 1558.882 ns/op
# Warmup Iteration   4: 1558.912 ns/op
# Warmup Iteration   5: 1558.823 ns/op
Iteration   1: 1559.066 ns/op
Iteration   2: 1558.878 ns/op
Iteration   3: 1558.872 ns/op
Iteration   4: 1558.867 ns/op
Iteration   5: 1558.847 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  1558.906 ±(99.9%) 0.346 ns/op [Average]
  (min, avg, max) = (1558.847, 1558.906, 1559.066), stdev = 0.090
  CI (99.9%): [1558.559, 1559.252] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method:asm":
PrintAssembly processed: 127715 total address lines.
Perf output processed (skipped 56.213 seconds):
 Column 1: cycles (50776 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 554 

               dependencies   [0x00007f5578639220,0x00007f5578639228] = 8
               handler table  [0x00007f5578639228,0x00007f5578639240] = 24
              [Disassembly]
              --------------------------------------------------------------------------------
              [Constant Pool (empty)]
              --------------------------------------------------------------------------------
              [Verified Entry Point]
                # {method} {0x00007f54f74df368} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
                # parm0:    rsi       = int
                #           [sp+0x20]  (sp of caller)
   1.32%        0x00007f55786390a0:   mov    %eax,-0x14000(%rsp)
   3.48%        0x00007f55786390a7:   push   %rbp
   2.31%        0x00007f55786390a8:   sub    $0x10,%rsp
   0.91%        0x00007f55786390ac:   cmpl   $0x1,0x20(%r15)
   0.88%        0x00007f55786390b4:   jne    0x00007f5578639116           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@-1 (line 129)
   2.23%        0x00007f55786390ba:   movabs $0x7ff134e38,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007ff134e38})}
   0.33%        0x00007f55786390c4:   test   %esi,%esi
          ╭     0x00007f55786390c6:   je     0x00007f55786390e0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
   0.57%  │     0x00007f55786390c8:   cmp    $0x1,%esi
          │╭    0x00007f55786390cb:   je     0x00007f55786390e0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   0.65%  ││    0x00007f55786390cd:   add    $0xfffffffe,%esi             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 132)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   2.27%  ││    0x00007f55786390d0:   data16 xchg %ax,%ax
   0.32%  ││    0x00007f55786390d3:   call   0x00007f55786390a0           ; ImmutableOopMap {}
          ││                                                              ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││                                                              ;   {static_call}
  37.63%  ││    0x00007f55786390d8:   nopl   0x1c8(%rax,%rax,1)           ;   {other}
   2.31%  ↘↘    0x00007f55786390e0:   add    $0x10,%rsp
  22.95%        0x00007f55786390e4:   pop    %rbp
  14.65%     ↗  0x00007f55786390e5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            ╭│  0x00007f55786390ec:   ja     0x00007f5578639100
   2.93%    ││  0x00007f55786390f2:   ret                                 ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
            ││  0x00007f55786390f3:   mov    %rax,%rsi
            ││  0x00007f55786390f6:   add    $0x10,%rsp
            ││  0x00007f55786390fa:   pop    %rbp
            ││  0x00007f55786390fb:   jmp    0x00007f557819d900           ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
            ││                                                            ;   {runtime_call _rethrow_Java}
            ↘╰  0x00007f5578639100:   movabs $0x7f55786390e5,%r10         ;   {internal_word}
                0x00007f557863910a:   mov    %r10,0x468(%r15)
....................................................................................................
  95.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 554 
   1.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 557 
   0.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 5, compile id 585 
   0.78%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.74%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 554 
   1.78%              kernel  [unknown] 
   1.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 557 
   0.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 5, compile id 585 
   0.05%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  syscall 
   0.12%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.90%         c2, level 4
   1.78%              kernel
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.844 ns/op
# Warmup Iteration   2: 8.486 ns/op
# Warmup Iteration   3: 8.749 ns/op
# Warmup Iteration   4: 8.476 ns/op
# Warmup Iteration   5: 8.471 ns/op
Iteration   1: 8.473 ns/op
Iteration   2: 8.468 ns/op
Iteration   3: 8.482 ns/op
Iteration   4: 8.473 ns/op
Iteration   5: 8.488 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  8.477 ±(99.9%) 0.031 ns/op [Average]
  (min, avg, max) = (8.468, 8.477, 8.488), stdev = 0.008
  CI (99.9%): [8.446, 8.508] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static:asm":
PrintAssembly processed: 127121 total address lines.
Perf output processed (skipped 56.157 seconds):
 Column 1: cycles (50832 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 558 

             # {method} {0x00007f4d9847b588} &apos;lambda_non_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f4e1c638120:   mov    0x8(%rsi),%r10d
             0x00007f4e1c638124:   movabs $0x7f4da3000000,%r11
             0x00007f4e1c63812e:   add    %r11,%r10
             0x00007f4e1c638131:   cmp    %r10,%rax
             0x00007f4e1c638134:   jne    0x00007f4e1c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f4e1c63813a:   xchg   %ax,%ax
             0x00007f4e1c63813c:   nopl   0x0(%rax)
           [Verified Entry Point]
   4.36%     0x00007f4e1c638140:   mov    %eax,-0x14000(%rsp)
  14.23%     0x00007f4e1c638147:   push   %rbp
   1.73%     0x00007f4e1c638148:   sub    $0x20,%rsp
   0.00%     0x00007f4e1c63814c:   cmpl   $0x1,0x20(%r15)
   2.95%     0x00007f4e1c638154:   jne    0x00007f4e1c63823a           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@-1 (line 96)
   1.73%     0x00007f4e1c63815a:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 96)
             0x00007f4e1c63815e:   mov    0x18(%rsi),%r8d              ;*getfield LAMBDA_NON_STATIC {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@1 (line 96)
             0x00007f4e1c638162:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f4e1c6381f8
  10.68%     0x00007f4e1c638167:   cmp    $0x102af40,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$$Lambda+0x00007f4da402af40&apos;)}
             0x00007f4e1c63816e:   jne    0x00007f4e1c6381c0
   4.64%     0x00007f4e1c638174:   lea    (%r12,%r8,8),%r11            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
             0x00007f4e1c638178:   mov    0xc(%r11),%r11d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f4da402af40::apply@1
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
             0x00007f4e1c63817c:   nopl   0x0(%rax)
             0x00007f4e1c638180:   test   %r11d,%r11d
          ╭  0x00007f4e1c638183:   je     0x00007f4e1c6381ab           ;*invokevirtual lambda$new$0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f4da402af40::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   4.40%  │  0x00007f4e1c638185:   mov    0xc(%r12,%r10,8),%ebp        ; implicit exception: dispatches to 0x00007f4e1c638210
          │                                                            ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@1 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f4da402af40::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
          │  0x00007f4e1c63818a:   test   %ebp,%ebp
          │  0x00007f4e1c63818c:   jne    0x00007f4e1c6381dc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f4da402af40::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   4.10%  │  0x00007f4e1c63818e:   movabs $0x7ff034e38,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007ff034e38})}
          │  0x00007f4e1c638198:   add    $0x20,%rsp
   0.33%  │  0x00007f4e1c63819c:   pop    %rbp
          │  0x00007f4e1c63819d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f4e1c6381a4:   ja     0x00007f4e1c638224
   4.12%  │  0x00007f4e1c6381aa:   ret    
          ↘  0x00007f4e1c6381ab:   mov    $0xfffffff6,%esi
             0x00007f4e1c6381b0:   mov    %r10d,%ebp
             0x00007f4e1c6381b3:   call   0x00007f4e1c0c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                       ;*invokevirtual lambda$new$0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f4da402af40::apply@8
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007f4e1c6381b8:   nopl   0x228(%rax,%rax,1)           ;*invokevirtual lambda$new$0 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f4da402af40::apply@8
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
....................................................................................................
  53.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 595 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@30 (line 238)
              0x00007f4e1c63b248:   mov    $0x1,%ebp
              0x00007f4e1c63b24d:   test   %r11d,%r11d
          ╭   0x00007f4e1c63b250:   jne    0x00007f4e1c63b285           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@36 (line 239)
          │↗  0x00007f4e1c63b252:   mov    0x40(%rsp),%rsi
          ││  0x00007f4e1c63b257:   call   0x00007f4e1c0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {optimized virtual_call}
  13.87%  ││  0x00007f4e1c63b25c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {other}
          ││  0x00007f4e1c63b264:   mov    0x38(%rsp),%r10
   8.37%  ││  0x00007f4e1c63b269:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@30 (line 238)
  17.75%  ││  0x00007f4e1c63b271:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
          ││  0x00007f4e1c63b275:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
          ││  0x00007f4e1c63b27c:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007f4e1c63b27f:   nop
   4.52%  ││  0x00007f4e1c63b280:   test   %r11d,%r11d
          │╰  0x00007f4e1c63b283:   je     0x00007f4e1c63b252           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@36 (line 239)
          ↘   0x00007f4e1c63b285:   movabs $0x7f4e34a23b90,%r10
              0x00007f4e1c63b28f:   call   *%r10
              0x00007f4e1c63b292:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007f4e1c63b29a:   mov    0x30(%rsp),%r10
              0x00007f4e1c63b29f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@40 (line 239)
....................................................................................................
  44.50%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 558 
  44.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 595 
   0.91%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.71%  <...other 264 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 558 
  44.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 595 
   1.89%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  printf_to_env 
   0.01%        libc-2.31.so  _itoa_word 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.79%         c2, level 4
   1.89%              kernel
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%    perf-1954815.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.797 ns/op
# Warmup Iteration   2: 6.964 ns/op
# Warmup Iteration   3: 7.759 ns/op
# Warmup Iteration   4: 7.292 ns/op
# Warmup Iteration   5: 7.235 ns/op
Iteration   1: 7.269 ns/op
Iteration   2: 7.264 ns/op
Iteration   3: 7.275 ns/op
Iteration   4: 7.289 ns/op
Iteration   5: 7.250 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static":
  7.269 ±(99.9%) 0.055 ns/op [Average]
  (min, avg, max) = (7.250, 7.269, 7.289), stdev = 0.014
  CI (99.9%): [7.214, 7.325] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static:asm":
PrintAssembly processed: 128187 total address lines.
Perf output processed (skipped 56.155 seconds):
 Column 1: cycles (50529 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 614 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@30 (line 238)
              0x00007fc5c463d1c8:   mov    $0x1,%ebp
              0x00007fc5c463d1cd:   test   %r11d,%r11d
          ╭   0x00007fc5c463d1d0:   jne    0x00007fc5c463d205           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@36 (line 239)
          │↗  0x00007fc5c463d1d2:   mov    0x40(%rsp),%rsi
          ││  0x00007fc5c463d1d7:   call   0x00007fc5c40c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {optimized virtual_call}
  44.50%  ││  0x00007fc5c463d1dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 236)
          ││                                                            ;   {other}
          ││  0x00007fc5c463d1e4:   mov    0x38(%rsp),%r10
          ││  0x00007fc5c463d1e9:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@30 (line 238)
  10.60%  ││  0x00007fc5c463d1f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
          ││  0x00007fc5c463d1f5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
          ││  0x00007fc5c463d1fc:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007fc5c463d1ff:   nop
   5.21%  ││  0x00007fc5c463d200:   test   %r11d,%r11d
          │╰  0x00007fc5c463d203:   je     0x00007fc5c463d1d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@36 (line 239)
          ↘   0x00007fc5c463d205:   movabs $0x7fc5dc4fbb90,%r10
              0x00007fc5c463d20f:   call   *%r10
              0x00007fc5c463d212:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@37 (line 239)
                                                                        ;   {other}
              0x00007fc5c463d21a:   mov    0x30(%rsp),%r10
              0x00007fc5c463d21f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@40 (line 239)
....................................................................................................
  60.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 577 

             # {method} {0x00007fc54047b658} &apos;lambda_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007fc5c463a120:   mov    0x8(%rsi),%r10d
             0x00007fc5c463a124:   movabs $0x7fc54b000000,%r11
             0x00007fc5c463a12e:   add    %r11,%r10
             0x00007fc5c463a131:   cmp    %r10,%rax
             0x00007fc5c463a134:   jne    0x00007fc5c40c4080           ;   {runtime_call ic_miss_stub}
             0x00007fc5c463a13a:   xchg   %ax,%ax
             0x00007fc5c463a13c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.22%     0x00007fc5c463a140:   mov    %eax,-0x14000(%rsp)
   9.87%     0x00007fc5c463a147:   push   %rbp
             0x00007fc5c463a148:   sub    $0x20,%rsp
   3.01%     0x00007fc5c463a14c:   cmpl   $0x1,0x20(%r15)
   2.36%     0x00007fc5c463a154:   jne    0x00007fc5c463a1ca           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@-1 (line 102)
             0x00007fc5c463a15a:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@4 (line 102)
   3.08%     0x00007fc5c463a15e:   xchg   %ax,%ax
             0x00007fc5c463a160:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fc5c463a1a0
                                                                       ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 146)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007fc54c02ad08::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 102)
   4.19%     0x00007fc5c463a165:   test   %r8d,%r8d
          ╭  0x00007fc5c463a168:   jne    0x00007fc5c463a187           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@4 (line 146)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007fc54c02ad08::apply@4
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 102)
   5.12%  │  0x00007fc5c463a16a:   movabs $0x7ff034e38,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007ff034e38})}
          │  0x00007fc5c463a174:   add    $0x20,%rsp
          │  0x00007fc5c463a178:   pop    %rbp
          │  0x00007fc5c463a179:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fc5c463a180:   ja     0x00007fc5c463a1b4
   5.22%  │  0x00007fc5c463a186:   ret    
          ↘  0x00007fc5c463a187:   mov    $0xffffff45,%esi
             0x00007fc5c463a18c:   mov    %r10d,%ebp
             0x00007fc5c463a18f:   mov    %r8d,(%rsp)
             0x00007fc5c463a193:   call   0x00007fc5c40c9f00           ; ImmutableOopMap {rbp=NarrowOop }
                                                                       ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@4 (line 146)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007fc54c02ad08::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 102)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007fc5c463a198:   nopl   0x208(%rax,%rax,1)           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  38.07%  <total for region 2>

....[Hottest Regions]...............................................................................
  60.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 614 
  38.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 577 
   0.28%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  syscall 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.70%  <...other 252 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 614 
  38.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 577 
   1.25%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  LIR_OpVisitState::visit 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.38%         c2, level 4
   1.25%              kernel
   0.14%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-1954875.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:53

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

Benchmark                                                     (depth)  Mode  Cnt     Score   Error  Units
RecursiveMethodCallBenchmark.class_non_static_method              256  avgt    5  1558.320 ± 0.211  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:asm          256  avgt            NaN            ---
RecursiveMethodCallBenchmark.class_static_method                  256  avgt    5  1557.141 ± 0.172  ns/op
RecursiveMethodCallBenchmark.class_static_method:asm              256  avgt            NaN            ---
RecursiveMethodCallBenchmark.interface_non_static_method          256  avgt    5  1642.591 ± 0.177  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:asm      256  avgt            NaN            ---
RecursiveMethodCallBenchmark.interface_static_method              256  avgt    5  1558.906 ± 0.346  ns/op
RecursiveMethodCallBenchmark.interface_static_method:asm          256  avgt            NaN            ---
RecursiveMethodCallBenchmark.lambda_non_static                    256  avgt    5     8.477 ± 0.031  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:asm                256  avgt            NaN            ---
RecursiveMethodCallBenchmark.lambda_static                        256  avgt    5     7.269 ± 0.055  ns/op
RecursiveMethodCallBenchmark.lambda_static:asm                    256  avgt            NaN            ---
