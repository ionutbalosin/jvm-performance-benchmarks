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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 348.712 ns/op
# Warmup Iteration   2: 347.548 ns/op
# Warmup Iteration   3: 346.517 ns/op
# Warmup Iteration   4: 346.530 ns/op
# Warmup Iteration   5: 346.541 ns/op
Iteration   1: 346.529 ns/op
Iteration   2: 346.513 ns/op
Iteration   3: 346.495 ns/op
Iteration   4: 346.516 ns/op
Iteration   5: 346.428 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  346.496 ±(99.9%) 0.154 ns/op [Average]
  (min, avg, max) = (346.428, 346.496, 346.529), stdev = 0.040
  CI (99.9%): [346.342, 346.650] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method:asm":
PrintAssembly processed: 228134 total address lines.
Perf output processed (skipped 60.769 seconds):
 Column 1: cycles (51081 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 971 

                      0x00007f3fb2d811f1:   cmp    $0x0,%edx
          ╭           0x00007f3fb2d811f4:   je     0x00007f3fb2d81290
          │           0x00007f3fb2d811fa:   cmp    $0x1,%edx
          │           0x00007f3fb2d811fd:   data16 xchg %ax,%ax
          │╭          0x00007f3fb2d81200:   je     0x00007f3fb2d8126f
          ││╭         0x00007f3fb2d81206:   jmp    0x00007f3fb2d81246
          │││         0x00007f3fb2d8120b:   cmp    $0x2,%edx
          │││╭        0x00007f3fb2d8120e:   je     0x00007f3fb2d8126f
          ││││╭       0x00007f3fb2d81214:   jmp    0x00007f3fb2d8126f
          │││││       0x00007f3fb2d81219:   cmp    $0x6,%edx
   0.09%  │││││       0x00007f3fb2d8121c:   nopl   0x0(%rax)
   0.01%  │││││╭      0x00007f3fb2d81220:   jge    0x00007f3fb2d81234
          ││││││      0x00007f3fb2d81226:   cmp    $0x4,%edx
          ││││││╭     0x00007f3fb2d81229:   je     0x00007f3fb2d8126f
          │││││││╭    0x00007f3fb2d8122f:   jmp    0x00007f3fb2d8126f
   3.86%  │││││↘││    0x00007f3fb2d81234:   cmp    $0x6,%edx
          │││││ ││╭   0x00007f3fb2d81237:   je     0x00007f3fb2d8126f
          │││││ │││   0x00007f3fb2d8123d:   cmp    $0x7,%edx
   0.10%  │││││ │││╭  0x00007f3fb2d81240:   je     0x00007f3fb2d8126f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   0.01%  ││↘││ ││││  0x00007f3fb2d81246:   lea    -0x8(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   3.76%  ││ ││ ││││  0x00007f3fb2d81249:   xchg   %ax,%ax
          ││ ││ ││││  0x00007f3fb2d8124b:   call   0x00007f3fb2d811c0           ; ImmutableOopMap {}
          ││ ││ ││││                                                            ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          ││ ││ ││││                                                            ;   {optimized virtual_call}
  24.78%  ││ ││ ││││  0x00007f3fb2d81250:   nopl   0x240(%rax,%rax,1)           ;   {other}
   1.34%  ││ ││ ││││  0x00007f3fb2d81258:   mov    0x10(%rsp),%rbp
  33.39%  ││ ││ ││││  0x00007f3fb2d8125d:   add    $0x18,%rsp
   0.18%  ││ ││ ││││  0x00007f3fb2d81261:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││ ││││  0x00007f3fb2d81268:   ja     0x00007f3fb2d812c1
   3.36%  ││ ││ ││││  0x00007f3fb2d8126e:   ret    
          │↘ ↘↘ ↘↘↘↘  0x00007f3fb2d8126f:   movabs $0x7fed34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34c48})}
          │           0x00007f3fb2d81279:   mov    0x10(%rsp),%rbp
          │           0x00007f3fb2d8127e:   add    $0x18,%rsp
          │           0x00007f3fb2d81282:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │           0x00007f3fb2d81289:   ja     0x00007f3fb2d812d5
          │           0x00007f3fb2d8128f:   ret    
          ↘           0x00007f3fb2d81290:   movabs $0x7fed34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34c48})}
   0.16%              0x00007f3fb2d8129a:   mov    0x10(%rsp),%rbp
   0.61%              0x00007f3fb2d8129f:   add    $0x18,%rsp
                      0x00007f3fb2d812a3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  70.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 971 

             # parm0:    rdx       = int
             #           [sp+0x20]  (sp of caller)
             0x00007f3fb2d811a0:   mov    0x8(%rsi),%r10d
             0x00007f3fb2d811a4:   movabs $0x7f3f37000000,%r12
             0x00007f3fb2d811ae:   add    %r12,%r10
             0x00007f3fb2d811b1:   xor    %r12,%r12
             0x00007f3fb2d811b4:   cmp    %r10,%rax
             0x00007f3fb2d811b7:   jne    0x00007f3fb2764080           ;   {runtime_call ic_miss_stub}
             0x00007f3fb2d811bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.20%     0x00007f3fb2d811c0:   mov    %eax,-0x14000(%rsp)
  11.42%     0x00007f3fb2d811c7:   sub    $0x18,%rsp
             0x00007f3fb2d811cb:   nop
   0.03%     0x00007f3fb2d811cc:   cmpl   $0x1,0x20(%r15)
   0.07%     0x00007f3fb2d811d4:   jne    0x00007f3fb2d812b1
   3.64%     0x00007f3fb2d811da:   mov    %rbp,0x10(%rsp)
   3.75%     0x00007f3fb2d811df:   cmp    $0x4,%edx
             0x00007f3fb2d811e2:   jge    0x00007f3fb2d81219
   0.00%     0x00007f3fb2d811e8:   cmp    $0x2,%edx
          ╭  0x00007f3fb2d811eb:   jge    0x00007f3fb2d8120b
          │  0x00007f3fb2d811f1:   cmp    $0x0,%edx
          │  0x00007f3fb2d811f4:   je     0x00007f3fb2d81290
          │  0x00007f3fb2d811fa:   cmp    $0x1,%edx
          │  0x00007f3fb2d811fd:   data16 xchg %ax,%ax
          │  0x00007f3fb2d81200:   je     0x00007f3fb2d8126f
          │  0x00007f3fb2d81206:   jmp    0x00007f3fb2d81246
          ↘  0x00007f3fb2d8120b:   cmp    $0x2,%edx
             0x00007f3fb2d8120e:   je     0x00007f3fb2d8126f
             0x00007f3fb2d81214:   jmp    0x00007f3fb2d8126f
....................................................................................................
  19.12%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 971 
  19.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 971 
   3.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 999 
   2.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 972 
   0.86%              kernel  [unknown] 
   0.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 971 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 972 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.41%  <...other 425 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 971 
   3.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 972 
   3.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 999 
   2.41%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.03%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  fileStream::write 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.21%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.07%      jvmci, level 4
   2.41%              kernel
   0.22%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.02%              [vdso]
   0.00%    perf-2148445.map
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:09:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 384.205 ns/op
# Warmup Iteration   2: 381.716 ns/op
# Warmup Iteration   3: 382.930 ns/op
# Warmup Iteration   4: 381.718 ns/op
# Warmup Iteration   5: 381.720 ns/op
Iteration   1: 381.716 ns/op
Iteration   2: 381.718 ns/op
Iteration   3: 381.711 ns/op
Iteration   4: 381.706 ns/op
Iteration   5: 381.715 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method":
  381.713 ±(99.9%) 0.018 ns/op [Average]
  (min, avg, max) = (381.706, 381.713, 381.718), stdev = 0.005
  CI (99.9%): [381.695, 381.731] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method:asm":
PrintAssembly processed: 225067 total address lines.
Perf output processed (skipped 60.687 seconds):
 Column 1: cycles (50803 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 977 

                      0x00007f3ae2d7d9cb:   jge    0x00007f3ae2d7d9eb
                      0x00007f3ae2d7d9d1:   cmp    $0x0,%esi
          ╭           0x00007f3ae2d7d9d4:   je     0x00007f3ae2d7da70
          │           0x00007f3ae2d7d9da:   cmp    $0x1,%esi
          │           0x00007f3ae2d7d9dd:   data16 xchg %ax,%ax
          │╭          0x00007f3ae2d7d9e0:   je     0x00007f3ae2d7da4f
          ││╭         0x00007f3ae2d7d9e6:   jmp    0x00007f3ae2d7da26
          │││         0x00007f3ae2d7d9eb:   cmp    $0x2,%esi
          │││╭        0x00007f3ae2d7d9ee:   je     0x00007f3ae2d7da4f
          ││││╭       0x00007f3ae2d7d9f4:   jmp    0x00007f3ae2d7da4f
   0.00%  │││││       0x00007f3ae2d7d9f9:   cmp    $0x6,%esi
   0.28%  │││││       0x00007f3ae2d7d9fc:   nopl   0x0(%rax)
   1.54%  │││││╭      0x00007f3ae2d7da00:   jge    0x00007f3ae2d7da14
          ││││││      0x00007f3ae2d7da06:   cmp    $0x4,%esi
          ││││││╭     0x00007f3ae2d7da09:   je     0x00007f3ae2d7da4f
          │││││││╭    0x00007f3ae2d7da0f:   jmp    0x00007f3ae2d7da4f
   3.04%  │││││↘││    0x00007f3ae2d7da14:   cmp    $0x6,%esi
          │││││ ││╭   0x00007f3ae2d7da17:   je     0x00007f3ae2d7da4f
          │││││ │││   0x00007f3ae2d7da1d:   cmp    $0x7,%esi
          │││││ │││╭  0x00007f3ae2d7da20:   je     0x00007f3ae2d7da4f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   0.52%  ││↘││ ││││  0x00007f3ae2d7da26:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   1.59%  ││ ││ ││││  0x00007f3ae2d7da29:   xchg   %ax,%ax
   2.81%  ││ ││ ││││  0x00007f3ae2d7da2b:   call   0x00007f3ae2d7d9a0           ; ImmutableOopMap {}
          ││ ││ ││││                                                            ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          ││ ││ ││││                                                            ;   {static_call}
  15.87%  ││ ││ ││││  0x00007f3ae2d7da30:   nopl   0x220(%rax,%rax,1)           ;   {other}
   0.88%  ││ ││ ││││  0x00007f3ae2d7da38:   mov    0x10(%rsp),%rbp
  16.24%  ││ ││ ││││  0x00007f3ae2d7da3d:   add    $0x18,%rsp
   0.06%  ││ ││ ││││  0x00007f3ae2d7da41:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││ ││││  0x00007f3ae2d7da48:   ja     0x00007f3ae2d7daa1
   1.60%  ││ ││ ││││  0x00007f3ae2d7da4e:   ret    
          │↘ ↘↘ ↘↘↘↘  0x00007f3ae2d7da4f:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
          │           0x00007f3ae2d7da59:   mov    0x10(%rsp),%rbp
          │           0x00007f3ae2d7da5e:   add    $0x18,%rsp
          │           0x00007f3ae2d7da62:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │           0x00007f3ae2d7da69:   ja     0x00007f3ae2d7dab5
          │           0x00007f3ae2d7da6f:   ret    
          ↘           0x00007f3ae2d7da70:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
   0.09%              0x00007f3ae2d7da7a:   mov    0x10(%rsp),%rbp
   0.25%              0x00007f3ae2d7da7f:   add    $0x18,%rsp
                      0x00007f3ae2d7da83:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  44.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 977 

           dependencies   [0x00007f3ae2d7dbd0,0x00007f3ae2d7dbd8] = 8
           JVMCI data     [0x00007f3ae2d7dbd8,0x00007f3ae2d7dbf0] = 24
          [Disassembly]
          --------------------------------------------------------------------------------
          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Verified Entry Point]
            # {method} {0x00007f3a5c47e000} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
            # parm0:    rsi       = int
            #           [sp+0x20]  (sp of caller)
  10.96%    0x00007f3ae2d7d9a0:   mov    %eax,-0x14000(%rsp)
  18.75%    0x00007f3ae2d7d9a7:   sub    $0x18,%rsp
            0x00007f3ae2d7d9ab:   nop
   0.08%    0x00007f3ae2d7d9ac:   cmpl   $0x1,0x20(%r15)
   0.30%    0x00007f3ae2d7d9b4:   jne    0x00007f3ae2d7da91
   4.58%    0x00007f3ae2d7d9ba:   mov    %rbp,0x10(%rsp)
   2.88%    0x00007f3ae2d7d9bf:   cmp    $0x4,%esi
            0x00007f3ae2d7d9c2:   jge    0x00007f3ae2d7d9f9
            0x00007f3ae2d7d9c8:   cmp    $0x2,%esi
            0x00007f3ae2d7d9cb:   jge    0x00007f3ae2d7d9eb
            0x00007f3ae2d7d9d1:   cmp    $0x0,%esi
            0x00007f3ae2d7d9d4:   je     0x00007f3ae2d7da70
            0x00007f3ae2d7d9da:   cmp    $0x1,%esi
            0x00007f3ae2d7d9dd:   data16 xchg %ax,%ax
            0x00007f3ae2d7d9e0:   je     0x00007f3ae2d7da4f
            0x00007f3ae2d7d9e6:   jmp    0x00007f3ae2d7da26
            0x00007f3ae2d7d9eb:   cmp    $0x2,%esi
....................................................................................................
  37.55%  <total for region 2>

....[Hottest Regions]...............................................................................
  44.45%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 977 
  37.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 977 
   8.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 1010 
   6.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 978 
   0.76%              kernel  [unknown] 
   0.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 978 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 977 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.83%  <...other 276 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 977 
   8.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 1010 
   6.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 978 
   1.83%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_old_init 
   0.00%        libc-2.31.so  __strncmp_avx2 
   0.00%           libjvm.so  fileStream::write 
   0.12%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.85%      jvmci, level 4
   1.83%              kernel
   0.10%        libc-2.31.so
   0.10%           libjvm.so
   0.07%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%    perf-2148516.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:07:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 303.123 ns/op
# Warmup Iteration   2: 300.902 ns/op
# Warmup Iteration   3: 301.807 ns/op
# Warmup Iteration   4: 300.873 ns/op
# Warmup Iteration   5: 300.873 ns/op
Iteration   1: 300.869 ns/op
Iteration   2: 300.876 ns/op
Iteration   3: 300.886 ns/op
Iteration   4: 300.889 ns/op
Iteration   5: 300.879 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  300.880 ±(99.9%) 0.030 ns/op [Average]
  (min, avg, max) = (300.869, 300.880, 300.889), stdev = 0.008
  CI (99.9%): [300.849, 300.910] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:asm":
PrintAssembly processed: 227373 total address lines.
Perf output processed (skipped 60.726 seconds):
 Column 1: cycles (50705 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 982 

                       0x00007ff6fad793fe:   cmp    $0x3,%edx
          ╭            0x00007ff6fad79401:   jge    0x00007ff6fad7941e
          │            0x00007ff6fad79407:   cmp    $0x1,%edx
          │╭           0x00007ff6fad7940a:   je     0x00007ff6fad7947f
          ││           0x00007ff6fad79410:   cmp    $0x2,%edx
          ││╭          0x00007ff6fad79413:   je     0x00007ff6fad7947f
          │││╭         0x00007ff6fad79419:   jmp    0x00007ff6fad79457
          ↘│││         0x00007ff6fad7941e:   cmp    $0x3,%edx
           │││╭        0x00007ff6fad79421:   je     0x00007ff6fad7947f
           ││││╭       0x00007ff6fad79427:   jmp    0x00007ff6fad7947f
   0.12%   │││││       0x00007ff6fad7942c:   cmp    $0x7,%edx
           │││││╭      0x00007ff6fad7942f:   jge    0x00007ff6fad79445
           ││││││      0x00007ff6fad79435:   cmp    $0x5,%edx
           ││││││╭     0x00007ff6fad79438:   je     0x00007ff6fad7947f
           │││││││     0x00007ff6fad7943e:   xchg   %ax,%ax
           │││││││╭    0x00007ff6fad79440:   jmp    0x00007ff6fad7947f
   3.09%   │││││↘││    0x00007ff6fad79445:   cmp    $0x7,%edx
           │││││ ││╭   0x00007ff6fad79448:   je     0x00007ff6fad7947f
           │││││ │││   0x00007ff6fad7944e:   cmp    $0x8,%edx
           │││││ │││╭  0x00007ff6fad79451:   je     0x00007ff6fad7947f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 122)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.10%   ││↘││ ││││  0x00007ff6fad79457:   lea    -0x9(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││  0x00007ff6fad7945a:   nop
   3.15%   ││ ││ ││││  0x00007ff6fad7945b:   call   0x00007ff6fad793c0           ; ImmutableOopMap {}
           ││ ││ ││││                                                            ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           ││ ││ ││││                                                            ;   {optimized virtual_call}
  21.14%   ││ ││ ││││  0x00007ff6fad79460:   nopl   0x250(%rax,%rax,1)           ;   {other}
   1.18%   ││ ││ ││││  0x00007ff6fad79468:   mov    0x10(%rsp),%rbp
  34.16%   ││ ││ ││││  0x00007ff6fad7946d:   add    $0x18,%rsp
   0.26%   ││ ││ ││││  0x00007ff6fad79471:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ││ ││ ││││  0x00007ff6fad79478:   ja     0x00007ff6fad794f0
   3.81%   ││ ││ ││││  0x00007ff6fad7947e:   ret    
   0.17%   ↘↘ ↘↘ ↘↘↘↘  0x00007ff6fad7947f:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
                       0x00007ff6fad79489:   mov    0x10(%rsp),%rbp
   0.22%               0x00007ff6fad7948e:   add    $0x18,%rsp
                       0x00007ff6fad79492:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                       0x00007ff6fad79499:   ja     0x00007ff6fad79506
   0.43%               0x00007ff6fad7949f:   ret    
                       0x00007ff6fad794a0:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
                       0x00007ff6fad794aa:   mov    0x10(%rsp),%rbp
                       0x00007ff6fad794af:   add    $0x18,%rsp
                       0x00007ff6fad794b3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                       0x00007ff6fad794ba:   ja     0x00007ff6fad7951a
                       0x00007ff6fad794c0:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@17 (line 125)
                       0x00007ff6fad794c1:   movl   $0xffffffc4,0x484(%r15)      ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                       0x00007ff6fad794cc:   mov    %r12,0x490(%r15)
....................................................................................................
  67.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 982 

            # parm0:    rdx       = int
            #           [sp+0x20]  (sp of caller)
            0x00007ff6fad793a0:   mov    0x8(%rsi),%r10d
            0x00007ff6fad793a4:   movabs $0x7ff67f000000,%r12
            0x00007ff6fad793ae:   add    %r12,%r10
            0x00007ff6fad793b1:   xor    %r12,%r12
            0x00007ff6fad793b4:   cmp    %r10,%rax
            0x00007ff6fad793b7:   jne    0x00007ff6fa764080           ;   {runtime_call ic_miss_stub}
            0x00007ff6fad793bd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   3.13%    0x00007ff6fad793c0:   mov    %eax,-0x14000(%rsp)
  12.59%    0x00007ff6fad793c7:   sub    $0x18,%rsp
            0x00007ff6fad793cb:   nop
   0.10%    0x00007ff6fad793cc:   cmpl   $0x1,0x20(%r15)
            0x00007ff6fad793d4:   jne    0x00007ff6fad794e0
   3.29%    0x00007ff6fad793da:   mov    %rbp,0x10(%rsp)
   0.21%    0x00007ff6fad793df:   nop
   0.10%    0x00007ff6fad793e0:   test   %edx,%edx
            0x00007ff6fad793e2:   je     0x00007ff6fad794a0
            0x00007ff6fad793e8:   cmpl   $0x1084000,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$1&apos;)}
   3.22%    0x00007ff6fad793ef:   jne    0x00007ff6fad794c1           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.20%    0x00007ff6fad793f5:   cmp    $0x5,%edx
            0x00007ff6fad793f8:   jge    0x00007ff6fad7942c
            0x00007ff6fad793fe:   cmp    $0x3,%edx
            0x00007ff6fad79401:   jge    0x00007ff6fad7941e
            0x00007ff6fad79407:   cmp    $0x1,%edx
            0x00007ff6fad7940a:   je     0x00007ff6fad7947f
            0x00007ff6fad79410:   cmp    $0x2,%edx
            0x00007ff6fad79413:   je     0x00007ff6fad7947f
            0x00007ff6fad79419:   jmp    0x00007ff6fad79457
            0x00007ff6fad7941e:   cmp    $0x3,%edx
....................................................................................................
  22.84%  <total for region 2>

....[Hottest Regions]...............................................................................
  67.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 982 
  22.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 982 
   3.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 6, compile id 1013 
   2.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 983 
   0.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 983 
   0.57%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.34%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 982 
   3.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 983 
   3.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 6, compile id 1013 
   2.25%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.02%         libc-2.31.so  _IO_default_xsputn 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.20%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.37%       jvmci, level 4
   2.25%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 384.267 ns/op
# Warmup Iteration   2: 381.719 ns/op
# Warmup Iteration   3: 382.545 ns/op
# Warmup Iteration   4: 381.719 ns/op
# Warmup Iteration   5: 381.724 ns/op
Iteration   1: 381.710 ns/op
Iteration   2: 381.737 ns/op
Iteration   3: 381.826 ns/op
Iteration   4: 381.710 ns/op
Iteration   5: 381.712 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  381.739 ±(99.9%) 0.193 ns/op [Average]
  (min, avg, max) = (381.710, 381.739, 381.826), stdev = 0.050
  CI (99.9%): [381.546, 381.932] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method:asm":
PrintAssembly processed: 229428 total address lines.
Perf output processed (skipped 60.878 seconds):
 Column 1: cycles (50572 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 977 

                      0x00007f2362d807d1:   cmp    $0x0,%esi
          ╭           0x00007f2362d807d4:   je     0x00007f2362d80870
          │           0x00007f2362d807da:   cmp    $0x1,%esi
          │           0x00007f2362d807dd:   data16 xchg %ax,%ax
          │╭          0x00007f2362d807e0:   je     0x00007f2362d8084f
          ││╭         0x00007f2362d807e6:   jmp    0x00007f2362d80826
          │││         0x00007f2362d807eb:   cmp    $0x2,%esi
          │││╭        0x00007f2362d807ee:   je     0x00007f2362d8084f
          ││││╭       0x00007f2362d807f4:   jmp    0x00007f2362d8084f
          │││││       0x00007f2362d807f9:   cmp    $0x6,%esi
   0.26%  │││││       0x00007f2362d807fc:   nopl   0x0(%rax)
   1.49%  │││││╭      0x00007f2362d80800:   jge    0x00007f2362d80814
          ││││││      0x00007f2362d80806:   cmp    $0x4,%esi
          ││││││╭     0x00007f2362d80809:   je     0x00007f2362d8084f
          │││││││╭    0x00007f2362d8080f:   jmp    0x00007f2362d8084f
   2.75%  │││││↘││    0x00007f2362d80814:   cmp    $0x6,%esi
          │││││ ││╭   0x00007f2362d80817:   je     0x00007f2362d8084f
          │││││ │││   0x00007f2362d8081d:   cmp    $0x7,%esi
          │││││ │││╭  0x00007f2362d80820:   je     0x00007f2362d8084f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   0.42%  ││↘││ ││││  0x00007f2362d80826:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   1.61%  ││ ││ ││││  0x00007f2362d80829:   xchg   %ax,%ax
   2.70%  ││ ││ ││││  0x00007f2362d8082b:   call   0x00007f2362d807a0           ; ImmutableOopMap {}
          ││ ││ ││││                                                            ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          ││ ││ ││││                                                            ;   {static_call}
  18.18%  ││ ││ ││││  0x00007f2362d80830:   nopl   0x220(%rax,%rax,1)           ;   {other}
   1.05%  ││ ││ ││││  0x00007f2362d80838:   mov    0x10(%rsp),%rbp
  19.54%  ││ ││ ││││  0x00007f2362d8083d:   add    $0x18,%rsp
   0.09%  ││ ││ ││││  0x00007f2362d80841:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ ││ ││││  0x00007f2362d80848:   ja     0x00007f2362d808a1
   1.99%  ││ ││ ││││  0x00007f2362d8084e:   ret    
          │↘ ↘↘ ↘↘↘↘  0x00007f2362d8084f:   movabs $0x7fed34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34c48})}
          │           0x00007f2362d80859:   mov    0x10(%rsp),%rbp
          │           0x00007f2362d8085e:   add    $0x18,%rsp
          │           0x00007f2362d80862:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │           0x00007f2362d80869:   ja     0x00007f2362d808b5
          │           0x00007f2362d8086f:   ret    
   0.00%  ↘           0x00007f2362d80870:   movabs $0x7fed34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34c48})}
   0.07%              0x00007f2362d8087a:   mov    0x10(%rsp),%rbp
   0.29%              0x00007f2362d8087f:   add    $0x18,%rsp
                      0x00007f2362d80883:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  50.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 977 

           dependencies   [0x00007f2362d809d0,0x00007f2362d809d8] = 8
           JVMCI data     [0x00007f2362d809d8,0x00007f2362d809f0] = 24
          [Disassembly]
          --------------------------------------------------------------------------------
          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Verified Entry Point]
            # {method} {0x00007f22e34e4070} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
            # parm0:    rsi       = int
            #           [sp+0x20]  (sp of caller)
  10.83%    0x00007f2362d807a0:   mov    %eax,-0x14000(%rsp)
  18.48%    0x00007f2362d807a7:   sub    $0x18,%rsp
            0x00007f2362d807ab:   nop
            0x00007f2362d807ac:   cmpl   $0x1,0x20(%r15)
   0.22%    0x00007f2362d807b4:   jne    0x00007f2362d80891
   4.56%    0x00007f2362d807ba:   mov    %rbp,0x10(%rsp)
   2.89%    0x00007f2362d807bf:   cmp    $0x4,%esi
            0x00007f2362d807c2:   jge    0x00007f2362d807f9
            0x00007f2362d807c8:   cmp    $0x2,%esi
            0x00007f2362d807cb:   jge    0x00007f2362d807eb
            0x00007f2362d807d1:   cmp    $0x0,%esi
            0x00007f2362d807d4:   je     0x00007f2362d80870
            0x00007f2362d807da:   cmp    $0x1,%esi
            0x00007f2362d807dd:   data16 xchg %ax,%ax
            0x00007f2362d807e0:   je     0x00007f2362d8084f
            0x00007f2362d807e6:   jmp    0x00007f2362d80826
            0x00007f2362d807eb:   cmp    $0x2,%esi
....................................................................................................
  36.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 977 
  36.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 977 
   5.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 1007 
   4.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 978 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 978 
   0.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 977 
   0.19%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.09%  <...other 362 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  87.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 977 
   5.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 1007 
   5.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 978 
   1.59%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  os::write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.06%      jvmci, level 4
   1.59%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.281 ns/op
# Warmup Iteration   2: 7.941 ns/op
# Warmup Iteration   3: 8.024 ns/op
# Warmup Iteration   4: 7.833 ns/op
# Warmup Iteration   5: 7.847 ns/op
Iteration   1: 7.826 ns/op
Iteration   2: 7.826 ns/op
Iteration   3: 7.831 ns/op
Iteration   4: 7.834 ns/op
Iteration   5: 7.821 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  7.828 ±(99.9%) 0.019 ns/op [Average]
  (min, avg, max) = (7.821, 7.828, 7.834), stdev = 0.005
  CI (99.9%): [7.809, 7.846] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static:asm":
PrintAssembly processed: 230029 total address lines.
Perf output processed (skipped 60.848 seconds):
 Column 1: cycles (50774 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 977 

             # {method} {0x00007f0dec47dda8} &apos;lambda_non_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f0e72d803a0:   mov    0x8(%rsi),%r10d
             0x00007f0e72d803a4:   movabs $0x7f0df7000000,%r12
             0x00007f0e72d803ae:   add    %r12,%r10
             0x00007f0e72d803b1:   xor    %r12,%r12
             0x00007f0e72d803b4:   cmp    %r10,%rax
             0x00007f0e72d803b7:   jne    0x00007f0e72764080           ;   {runtime_call ic_miss_stub}
             0x00007f0e72d803bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   4.01%     0x00007f0e72d803c0:   mov    %eax,-0x14000(%rsp)
   0.91%     0x00007f0e72d803c7:   sub    $0x18,%rsp
   3.78%     0x00007f0e72d803cb:   nop
             0x00007f0e72d803cc:   cmpl   $0x1,0x20(%r15)
   0.90%     0x00007f0e72d803d4:   jne    0x00007f0e72d80472
   0.83%     0x00007f0e72d803da:   mov    %rbp,0x10(%rsp)
   3.80%     0x00007f0e72d803df:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
             0x00007f0e72d803e2:   cmpl   $0x102b960,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f0e72d8049a
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$$Lambda+0x00007f0df802b960&apos;)}
  15.52%  ╭  0x00007f0e72d803ed:   jne    0x00007f0e72d8043b           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   4.84%  │  0x00007f0e72d803f3:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 96)
          │  0x00007f0e72d803f7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
          │  0x00007f0e72d80400:   cmpl   $0x0,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007f0e72d804bd
   4.86%  │  0x00007f0e72d80409:   jne    0x00007f0e72d80463           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f0df802b960::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   0.01%  │  0x00007f0e72d8040f:   mov    0xc(,%rax,8),%eax            ; ImmutableOopMap {rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
          │  0x00007f0e72d80416:   test   %eax,(%r12,%rax,8)           ; implicit exception: dispatches to 0x00007f0e72d804e0
  14.48%  │  0x00007f0e72d8041a:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
          │  0x00007f0e72d80424:   mov    0x10(%rsp),%rbp
          │  0x00007f0e72d80429:   add    $0x18,%rsp
          │  0x00007f0e72d8042d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f0e72d80434:   ja     0x00007f0e72d80486
   4.79%  │  0x00007f0e72d8043a:   ret    
          ↘  0x00007f0e72d8043b:   mov    $0x294,%r11
             0x00007f0e72d80442:   mov    $0xffffffcd,%r10d
             0x00007f0e72d80448:   mov    %r10d,0x484(%r15)            ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@1 (line 138)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f0df802b960::apply@8
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
             0x00007f0e72d8044f:   mov    %r11,0x490(%r15)
             0x00007f0e72d80456:   call   0x00007f0e7276a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
....................................................................................................
  58.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 1004 

              0x00007f0e72d83873:   mov    0x10(%rsp),%rdx
              0x00007f0e72d83878:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@10 (line 234)
              0x00007f0e72d8387c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f0e72d83885:   jmp    0x00007f0e72d838af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
          │   0x00007f0e72d8388a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f0e72d83895:   data16 data16 xchg %ax,%ax
          │   0x00007f0e72d83899:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   4.74%  │↗  0x00007f0e72d838a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   0.05%  ││  0x00007f0e72d838a7:   test   %eax,(%r11)                  ;   {poll}
   7.68%  ││  0x00007f0e72d838aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f0e72d838af:   mov    0x8(%rsp),%r10
   0.85%   │  0x00007f0e72d838b4:   mov    %r10,%rsi
   0.05%   │  0x00007f0e72d838b7:   call   0x00007f0e72764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.27%   │  0x00007f0e72d838bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007f0e72d838c4:   mov    0x20(%rsp),%r10
   4.87%   │  0x00007f0e72d838c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@26 (line 237)
   0.92%   │  0x00007f0e72d838cc:   mov    0x18(%rsp),%rsi
           │  0x00007f0e72d838d1:   cmpb   $0x0,0x94(%rsi)
  19.43%   ╰  0x00007f0e72d838d8:   je     0x00007f0e72d838a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
              0x00007f0e72d838da:   mov    %r10,0x20(%rsp)
              0x00007f0e72d838df:   nop
              0x00007f0e72d838e0:   call   0x00007f0e8a3b3df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f0e72d838e5:   nop
              0x00007f0e72d838e6:   mov    0x10(%rsp),%rdx
              0x00007f0e72d838eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@40 (line 239)
              0x00007f0e72d838ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@46 (line 240)
....................................................................................................
  38.85%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 977 
  38.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 1004 
   0.55%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.12%  <...other 375 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 977 
  38.85%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 1004 
   2.04%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.59%      jvmci, level 4
   2.04%              kernel
   0.12%           libjvm.so
   0.10%        libc-2.31.so
   0.08%                    
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.00%         c1, level 1
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.430 ns/op
# Warmup Iteration   2: 7.449 ns/op
# Warmup Iteration   3: 7.045 ns/op
# Warmup Iteration   4: 7.479 ns/op
# Warmup Iteration   5: 7.443 ns/op
Iteration   1: 7.247 ns/op
Iteration   2: 7.385 ns/op
Iteration   3: 7.390 ns/op
Iteration   4: 7.337 ns/op
Iteration   5: 7.364 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static":
  7.345 ±(99.9%) 0.226 ns/op [Average]
  (min, avg, max) = (7.247, 7.345, 7.390), stdev = 0.059
  CI (99.9%): [7.119, 7.570] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static:asm":
PrintAssembly processed: 229341 total address lines.
Perf output processed (skipped 60.820 seconds):
 Column 1: cycles (50657 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1015 

              0x00007f814ad84c73:   mov    0x10(%rsp),%rdx
              0x00007f814ad84c78:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@10 (line 234)
              0x00007f814ad84c7c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f814ad84c85:   jmp    0x00007f814ad84caf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
          │   0x00007f814ad84c8a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f814ad84c95:   data16 data16 xchg %ax,%ax
          │   0x00007f814ad84c99:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
   5.20%  │↗  0x00007f814ad84ca0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
          ││  0x00007f814ad84ca7:   test   %eax,(%r11)                  ;   {poll}
   1.62%  ││  0x00007f814ad84caa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
          ↘│  0x00007f814ad84caf:   mov    0x8(%rsp),%r10
   3.61%   │  0x00007f814ad84cb4:   mov    %r10,%rsi
           │  0x00007f814ad84cb7:   call   0x00007f814a764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   6.61%   │  0x00007f814ad84cbc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   0.57%   │  0x00007f814ad84cc4:   mov    0x20(%rsp),%r10
   7.12%   │  0x00007f814ad84cc9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@26 (line 237)
   5.16%   │  0x00007f814ad84ccc:   mov    0x18(%rsp),%rsi
           │  0x00007f814ad84cd1:   cmpb   $0x0,0x94(%rsi)
  27.01%   ╰  0x00007f814ad84cd8:   je     0x00007f814ad84ca0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
              0x00007f814ad84cda:   mov    %r10,0x20(%rsp)
              0x00007f814ad84cdf:   nop
              0x00007f814ad84ce0:   call   0x00007f8162cc4df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f814ad84ce5:   nop
              0x00007f814ad84ce6:   mov    0x10(%rsp),%rdx
              0x00007f814ad84ceb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@40 (line 239)
              0x00007f814ad84cef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@46 (line 240)
....................................................................................................
  56.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 984 

             # {method} {0x00007f80c447de58} &apos;lambda_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f814ad81300:   mov    0x8(%rsi),%r10d
             0x00007f814ad81304:   movabs $0x7f80cf000000,%r12
             0x00007f814ad8130e:   add    %r12,%r10
             0x00007f814ad81311:   xor    %r12,%r12
             0x00007f814ad81314:   cmp    %r10,%rax
             0x00007f814ad81317:   jne    0x00007f814a764080           ;   {runtime_call ic_miss_stub}
             0x00007f814ad8131d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   1.42%     0x00007f814ad81320:   mov    %eax,-0x14000(%rsp)
   3.67%     0x00007f814ad81327:   sub    $0x18,%rsp
   1.56%     0x00007f814ad8132b:   nop
             0x00007f814ad8132c:   cmpl   $0x1,0x20(%r15)
   3.81%     0x00007f814ad81334:   jne    0x00007f814ad81394
   2.03%     0x00007f814ad8133a:   mov    %rbp,0x10(%rsp)
   0.22%     0x00007f814ad8133f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
             0x00007f814ad81342:   cmpl   $0x0,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f814ad813b5
  19.21%  ╭  0x00007f814ad8134a:   jne    0x00007f814ad81371
   4.10%  │  0x00007f814ad81350:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
          │  0x00007f814ad8135a:   mov    0x10(%rsp),%rbp
   1.05%  │  0x00007f814ad8135f:   add    $0x18,%rsp
   0.00%  │  0x00007f814ad81363:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f814ad8136a:   ja     0x00007f814ad813a1
   4.17%  │  0x00007f814ad81370:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@12 (line 102)
          ↘  0x00007f814ad81371:   movl   $0xffffffed,0x484(%r15)      ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 146)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f80d002b728::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 102)
             0x00007f814ad8137c:   movq   $0x14,0x490(%r15)
             0x00007f814ad81387:   call   0x00007f814a76a17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  41.23%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1015 
  41.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 984 
   0.45%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.81%  <...other 264 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1015 
  41.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 984 
   1.57%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.10%  <...other 47 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.13%      jvmci, level 4
   1.57%              kernel
   0.10%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:24

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

Benchmark                                                     (depth)  Mode  Cnt    Score   Error  Units
RecursiveMethodCallBenchmark.class_non_static_method              256  avgt    5  346.496 ± 0.154  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.class_static_method                  256  avgt    5  381.713 ± 0.018  ns/op
RecursiveMethodCallBenchmark.class_static_method:asm              256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_non_static_method          256  avgt    5  300.880 ± 0.030  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:asm      256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_static_method              256  avgt    5  381.739 ± 0.193  ns/op
RecursiveMethodCallBenchmark.interface_static_method:asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_non_static                    256  avgt    5    7.828 ± 0.019  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:asm                256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_static                        256  avgt    5    7.345 ± 0.226  ns/op
RecursiveMethodCallBenchmark.lambda_static:asm                    256  avgt           NaN            ---
