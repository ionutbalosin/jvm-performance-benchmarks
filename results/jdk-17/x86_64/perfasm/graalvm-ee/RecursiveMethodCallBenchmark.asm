# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 329.603 ns/op
# Warmup Iteration   2: 326.542 ns/op
# Warmup Iteration   3: 327.682 ns/op
# Warmup Iteration   4: 326.242 ns/op
# Warmup Iteration   5: 325.981 ns/op
Iteration   1: 325.735 ns/op
Iteration   2: 325.972 ns/op
Iteration   3: 325.497 ns/op
Iteration   4: 326.541 ns/op
Iteration   5: 326.001 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  325.949 ±(99.9%) 1.496 ns/op [Average]
  (min, avg, max) = (325.497, 325.949, 326.541), stdev = 0.388
  CI (99.9%): [324.453, 327.445] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method:·asm":
PrintAssembly processed: 193109 total address lines.
Perf output processed (skipped 58.578 seconds):
 Column 1: cycles (51035 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 729 

                   0x00007f3afeb197f8:   jmp    0x00007f3afeb19837
                   0x00007f3afeb197fd:   cmp    $0x2,%edx
          ╭        0x00007f3afeb19800:   je     0x00007f3afeb19854
          │╭       0x00007f3afeb19806:   jmp    0x00007f3afeb19854
          ││       0x00007f3afeb1980b:   cmp    $0x6,%edx
          ││╭      0x00007f3afeb1980e:   jge    0x00007f3afeb19825
          │││      0x00007f3afeb19814:   cmp    $0x4,%edx
          │││╭     0x00007f3afeb19817:   je     0x00007f3afeb19854
          ││││     0x00007f3afeb1981d:   data16 xchg %ax,%ax
          ││││╭    0x00007f3afeb19820:   jmp    0x00007f3afeb19854
   3.63%  ││↘││    0x00007f3afeb19825:   cmp    $0x6,%edx
          ││ ││╭   0x00007f3afeb19828:   je     0x00007f3afeb19854
          ││ │││   0x00007f3afeb1982e:   cmp    $0x7,%edx
          ││ │││╭  0x00007f3afeb19831:   je     0x00007f3afeb19854           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 108)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││  0x00007f3afeb19837:   lea    -0x8(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││  0x00007f3afeb1983a:   nop
   3.55%  ││ ││││  0x00007f3afeb1983b:   call   0x00007f3afeb197c0           ; ImmutableOopMap {}
          ││ ││││                                                            ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
          ││ ││││                                                            ;   {optimized virtual_call}
  19.66%  ││ ││││  0x00007f3afeb19840:   nop
   1.75%  ││ ││││  0x00007f3afeb19841:   mov    0x10(%rsp),%rbp
  28.03%  ││ ││││  0x00007f3afeb19846:   add    $0x18,%rsp
   0.14%  ││ ││││  0x00007f3afeb1984a:   mov    0x348(%r15),%rcx
   0.06%  ││ ││││  0x00007f3afeb19851:   test   %eax,(%rcx)                  ;   {poll_return}
  18.84%  ││ ││││  0x00007f3afeb19853:   ret    
          ↘↘ ↘↘↘↘  0x00007f3afeb19854:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
                   0x00007f3afeb1985e:   mov    0x10(%rsp),%rbp
                   0x00007f3afeb19863:   add    $0x18,%rsp
                   0x00007f3afeb19867:   mov    0x348(%r15),%rcx
                   0x00007f3afeb1986e:   test   %eax,(%rcx)                  ;   {poll_return}
                   0x00007f3afeb19870:   ret    
                   0x00007f3afeb19871:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
                   0x00007f3afeb1987b:   mov    0x10(%rsp),%rbp
   0.57%           0x00007f3afeb19880:   add    $0x18,%rsp
                   0x00007f3afeb19884:   mov    0x348(%r15),%rcx
....................................................................................................
  75.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 729 

              #           [sp+0x20]  (sp of caller)
              0x00007f3afeb197a0:   mov    0x8(%rsi),%r10d
              0x00007f3afeb197a4:   movabs $0x800000000,%r12
              0x00007f3afeb197ae:   add    %r12,%r10
              0x00007f3afeb197b1:   xor    %r12,%r12
              0x00007f3afeb197b4:   cmp    %r10,%rax
              0x00007f3afeb197b7:   jne    0x00007f3af701e780           ;   {runtime_call ic_miss_stub}
              0x00007f3afeb197bd:   nop
              0x00007f3afeb197be:   xchg   %ax,%ax
            [Verified Entry Point]
   0.02%      0x00007f3afeb197c0:   mov    %eax,-0x14000(%rsp)
  11.32%      0x00007f3afeb197c7:   sub    $0x18,%rsp
              0x00007f3afeb197cb:   mov    %rbp,0x10(%rsp)
   3.74%      0x00007f3afeb197d0:   cmp    $0x4,%edx
          ╭   0x00007f3afeb197d3:   jge    0x00007f3afeb1980b
          │   0x00007f3afeb197d9:   cmp    $0x2,%edx
          │   0x00007f3afeb197dc:   nopl   0x0(%rax)
          │╭  0x00007f3afeb197e0:   jge    0x00007f3afeb197fd
   0.15%  ││  0x00007f3afeb197e6:   cmp    $0x0,%edx
          ││  0x00007f3afeb197e9:   je     0x00007f3afeb19871
          ││  0x00007f3afeb197ef:   cmp    $0x1,%edx
          ││  0x00007f3afeb197f2:   je     0x00007f3afeb19854
          ││  0x00007f3afeb197f8:   jmp    0x00007f3afeb19837
          │↘  0x00007f3afeb197fd:   cmp    $0x2,%edx
          │   0x00007f3afeb19800:   je     0x00007f3afeb19854
          │   0x00007f3afeb19806:   jmp    0x00007f3afeb19854
          ↘   0x00007f3afeb1980b:   cmp    $0x6,%edx
              0x00007f3afeb1980e:   jge    0x00007f3afeb19825
              0x00007f3afeb19814:   cmp    $0x4,%edx
....................................................................................................
  15.23%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 729 
  15.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 729 
   2.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 731 
   2.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 6, compile id 757 
   0.99%               kernel  [unknown] 
   0.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 729 
   0.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 731 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.86%  <...other 284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 729 
   3.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 731 
   2.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 6, compile id 757 
   2.16%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%   libpthread-2.31.so  __pthread_mutex_lock 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  os::elapsed_counter 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.50%       jvmci, level 4
   2.16%               kernel
   0.13%            libjvm.so
   0.08%         libc-2.31.so
   0.05%                     
   0.03%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:09:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 329.093 ns/op
# Warmup Iteration   2: 326.472 ns/op
# Warmup Iteration   3: 327.520 ns/op
# Warmup Iteration   4: 326.292 ns/op
# Warmup Iteration   5: 326.529 ns/op
Iteration   1: 326.502 ns/op
Iteration   2: 326.384 ns/op
Iteration   3: 326.397 ns/op
Iteration   4: 326.389 ns/op
Iteration   5: 326.374 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method":
  326.409 ±(99.9%) 0.202 ns/op [Average]
  (min, avg, max) = (326.374, 326.409, 326.502), stdev = 0.052
  CI (99.9%): [326.207, 326.611] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method:·asm":
PrintAssembly processed: 193723 total address lines.
Perf output processed (skipped 58.581 seconds):
 Column 1: cycles (51455 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 732 

                   0x00007f5ba2b1c758:   jmp    0x00007f5ba2b1c797
                   0x00007f5ba2b1c75d:   cmp    $0x2,%esi
          ╭        0x00007f5ba2b1c760:   je     0x00007f5ba2b1c7b4
          │╭       0x00007f5ba2b1c766:   jmp    0x00007f5ba2b1c7b4
          ││       0x00007f5ba2b1c76b:   cmp    $0x6,%esi
          ││╭      0x00007f5ba2b1c76e:   jge    0x00007f5ba2b1c785
          │││      0x00007f5ba2b1c774:   cmp    $0x4,%esi
          │││╭     0x00007f5ba2b1c777:   je     0x00007f5ba2b1c7b4
          ││││     0x00007f5ba2b1c77d:   data16 xchg %ax,%ax
          ││││╭    0x00007f5ba2b1c780:   jmp    0x00007f5ba2b1c7b4
   3.61%  ││↘││    0x00007f5ba2b1c785:   cmp    $0x6,%esi
          ││ ││╭   0x00007f5ba2b1c788:   je     0x00007f5ba2b1c7b4
          ││ │││   0x00007f5ba2b1c78e:   cmp    $0x7,%esi
          ││ │││╭  0x00007f5ba2b1c791:   je     0x00007f5ba2b1c7b4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 115)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││  0x00007f5ba2b1c797:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││  0x00007f5ba2b1c79a:   nop
   3.68%  ││ ││││  0x00007f5ba2b1c79b:   call   0x00007f5ba2b1c720           ; ImmutableOopMap {}
          ││ ││││                                                            ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
          ││ ││││                                                            ;   {static_call}
  18.76%  ││ ││││  0x00007f5ba2b1c7a0:   nop
   1.69%  ││ ││││  0x00007f5ba2b1c7a1:   mov    0x10(%rsp),%rbp
  28.20%  ││ ││││  0x00007f5ba2b1c7a6:   add    $0x18,%rsp
   0.16%  ││ ││││  0x00007f5ba2b1c7aa:   mov    0x348(%r15),%rcx
   0.00%  ││ ││││  0x00007f5ba2b1c7b1:   test   %eax,(%rcx)                  ;   {poll_return}
  19.49%  ││ ││││  0x00007f5ba2b1c7b3:   ret    
          ↘↘ ↘↘↘↘  0x00007f5ba2b1c7b4:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
                   0x00007f5ba2b1c7be:   mov    0x10(%rsp),%rbp
                   0x00007f5ba2b1c7c3:   add    $0x18,%rsp
                   0x00007f5ba2b1c7c7:   mov    0x348(%r15),%rcx
                   0x00007f5ba2b1c7ce:   test   %eax,(%rcx)                  ;   {poll_return}
                   0x00007f5ba2b1c7d0:   ret    
                   0x00007f5ba2b1c7d1:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
                   0x00007f5ba2b1c7db:   mov    0x10(%rsp),%rbp
   0.65%           0x00007f5ba2b1c7e0:   add    $0x18,%rsp
                   0x00007f5ba2b1c7e4:   mov    0x348(%r15),%rcx
....................................................................................................
  75.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 732 

             dependencies   [0x00007f5ba2b1c8e0,0x00007f5ba2b1c8e8] = 8
             JVMCI data     [0x00007f5ba2b1c8e8,0x00007f5ba2b1c8f8] = 16
            [Disassembly]
            --------------------------------------------------------------------------------
            [Constant Pool (empty)]
            --------------------------------------------------------------------------------
            [Verified Entry Point]
              # {method} {0x00007f5b90875ba8} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark&apos;
              # parm0:    rsi       = int
              #           [sp+0x20]  (sp of caller)
   0.03%      0x00007f5ba2b1c720:   mov    %eax,-0x14000(%rsp)
  11.16%      0x00007f5ba2b1c727:   sub    $0x18,%rsp
              0x00007f5ba2b1c72b:   mov    %rbp,0x10(%rsp)
   3.68%      0x00007f5ba2b1c730:   cmp    $0x4,%esi
          ╭   0x00007f5ba2b1c733:   jge    0x00007f5ba2b1c76b
          │   0x00007f5ba2b1c739:   cmp    $0x2,%esi
          │   0x00007f5ba2b1c73c:   nopl   0x0(%rax)
          │╭  0x00007f5ba2b1c740:   jge    0x00007f5ba2b1c75d
   0.14%  ││  0x00007f5ba2b1c746:   cmp    $0x0,%esi
          ││  0x00007f5ba2b1c749:   je     0x00007f5ba2b1c7d1
          ││  0x00007f5ba2b1c74f:   cmp    $0x1,%esi
          ││  0x00007f5ba2b1c752:   je     0x00007f5ba2b1c7b4
          ││  0x00007f5ba2b1c758:   jmp    0x00007f5ba2b1c797
          │↘  0x00007f5ba2b1c75d:   cmp    $0x2,%esi
          │   0x00007f5ba2b1c760:   je     0x00007f5ba2b1c7b4
          │   0x00007f5ba2b1c766:   jmp    0x00007f5ba2b1c7b4
          ↘   0x00007f5ba2b1c76b:   cmp    $0x6,%esi
              0x00007f5ba2b1c76e:   jge    0x00007f5ba2b1c785
              0x00007f5ba2b1c774:   cmp    $0x4,%esi
....................................................................................................
  15.00%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 732 
  15.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 732 
   2.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 733 
   2.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 759 
   2.01%               kernel  [unknown] 
   0.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 732 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 733 
   0.12%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.74%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 732 
   2.97%               kernel  [unknown] 
   2.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 733 
   2.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 759 
   0.04%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.11%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.70%       jvmci, level 4
   2.97%               kernel
   0.12%         libc-2.31.so
   0.11%            libjvm.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       perf-44226.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 282.970 ns/op
# Warmup Iteration   2: 281.282 ns/op
# Warmup Iteration   3: 280.784 ns/op
# Warmup Iteration   4: 280.804 ns/op
# Warmup Iteration   5: 280.780 ns/op
Iteration   1: 280.828 ns/op
Iteration   2: 280.800 ns/op
Iteration   3: 280.815 ns/op
Iteration   4: 280.843 ns/op
Iteration   5: 280.790 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  280.815 ±(99.9%) 0.082 ns/op [Average]
  (min, avg, max) = (280.790, 280.815, 280.843), stdev = 0.021
  CI (99.9%): [280.733, 280.897] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:·asm":
PrintAssembly processed: 192659 total address lines.
Perf output processed (skipped 58.629 seconds):
 Column 1: cycles (51265 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 728 

                       0x00007f6602b1a5f6:   cmp    $0x3,%edx
          ╭            0x00007f6602b1a5f9:   jge    0x00007f6602b1a616
          │            0x00007f6602b1a5ff:   cmp    $0x1,%edx
          │╭           0x00007f6602b1a602:   je     0x00007f6602b1a66c
          ││           0x00007f6602b1a608:   cmp    $0x2,%edx
          ││╭          0x00007f6602b1a60b:   je     0x00007f6602b1a66c
          │││╭         0x00007f6602b1a611:   jmp    0x00007f6602b1a64f
          ↘│││         0x00007f6602b1a616:   cmp    $0x3,%edx
           │││╭        0x00007f6602b1a619:   je     0x00007f6602b1a66c
           ││││        0x00007f6602b1a61f:   nop
   0.14%   ││││╭       0x00007f6602b1a620:   jmp    0x00007f6602b1a66c
   0.02%   │││││       0x00007f6602b1a625:   cmp    $0x7,%edx
           │││││╭      0x00007f6602b1a628:   jge    0x00007f6602b1a63c
           ││││││      0x00007f6602b1a62e:   cmp    $0x5,%edx
           ││││││╭     0x00007f6602b1a631:   je     0x00007f6602b1a66c
           │││││││╭    0x00007f6602b1a637:   jmp    0x00007f6602b1a66c
   3.26%   │││││↘││    0x00007f6602b1a63c:   cmp    $0x7,%edx
           │││││ ││    0x00007f6602b1a63f:   nop
           │││││ ││╭   0x00007f6602b1a640:   je     0x00007f6602b1a66c
           │││││ │││   0x00007f6602b1a646:   cmp    $0x8,%edx
           │││││ │││╭  0x00007f6602b1a649:   je     0x00007f6602b1a66c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 124)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   3.14%   ││↘││ ││││  0x00007f6602b1a64f:   lea    -0x9(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││  0x00007f6602b1a652:   nop
           ││ ││ ││││  0x00007f6602b1a653:   call   0x00007f6602b1a5c0           ; ImmutableOopMap {}
           ││ ││ ││││                                                            ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
           ││ ││ ││││                                                            ;   {optimized virtual_call}
  21.41%   ││ ││ ││││  0x00007f6602b1a658:   nop
   1.62%   ││ ││ ││││  0x00007f6602b1a659:   mov    0x10(%rsp),%rbp
  33.05%   ││ ││ ││││  0x00007f6602b1a65e:   add    $0x18,%rsp
   0.00%   ││ ││ ││││  0x00007f6602b1a662:   mov    0x348(%r15),%rcx
           ││ ││ ││││  0x00007f6602b1a669:   test   %eax,(%rcx)                  ;   {poll_return}
  15.32%   ││ ││ ││││  0x00007f6602b1a66b:   ret    
           ↘↘ ↘↘ ↘↘↘↘  0x00007f6602b1a66c:   movabs $0x7fec24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec24e40})}
                       0x00007f6602b1a676:   mov    0x10(%rsp),%rbp
                       0x00007f6602b1a67b:   add    $0x18,%rsp
   0.14%               0x00007f6602b1a67f:   mov    0x348(%r15),%rcx
   0.11%               0x00007f6602b1a686:   test   %eax,(%rcx)                  ;   {poll_return}
   0.72%               0x00007f6602b1a688:   ret    
                       0x00007f6602b1a689:   movabs $0x7fec24e40,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec24e40})}
                       0x00007f6602b1a693:   mov    0x10(%rsp),%rbp
                       0x00007f6602b1a698:   add    $0x18,%rsp
                       0x00007f6602b1a69c:   mov    0x348(%r15),%rcx
                       0x00007f6602b1a6a3:   test   %eax,(%rcx)                  ;   {poll_return}
                       0x00007f6602b1a6a5:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@17 (line 127)
                       0x00007f6602b1a6a6:   movl   $0xffffffc4,0x370(%r15)      ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
                       0x00007f6602b1a6b1:   mov    %r12,0x378(%r15)
....................................................................................................
  78.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 728 

            #           [sp+0x20]  (sp of caller)
            0x00007f6602b1a5a0:   mov    0x8(%rsi),%r10d
            0x00007f6602b1a5a4:   movabs $0x800000000,%r12
            0x00007f6602b1a5ae:   add    %r12,%r10
            0x00007f6602b1a5b1:   xor    %r12,%r12
            0x00007f6602b1a5b4:   cmp    %r10,%rax
            0x00007f6602b1a5b7:   jne    0x00007f65fb01e780           ;   {runtime_call ic_miss_stub}
            0x00007f6602b1a5bd:   nop
            0x00007f6602b1a5be:   xchg   %ax,%ax
          [Verified Entry Point]
   3.15%    0x00007f6602b1a5c0:   mov    %eax,-0x14000(%rsp)
   2.18%    0x00007f6602b1a5c7:   sub    $0x18,%rsp
   0.03%    0x00007f6602b1a5cb:   mov    %rbp,0x10(%rsp)
   3.28%    0x00007f6602b1a5d0:   test   %edx,%edx
            0x00007f6602b1a5d2:   je     0x00007f6602b1a689           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 124)
            0x00007f6602b1a5d8:   nopl   0x0(%rax,%rax,1)
            0x00007f6602b1a5e0:   cmpl   $0xc26e78,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$1&apos;)}
   0.02%    0x00007f6602b1a5e7:   jne    0x00007f6602b1a6a6           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   3.20%    0x00007f6602b1a5ed:   cmp    $0x5,%edx
            0x00007f6602b1a5f0:   jge    0x00007f6602b1a625
            0x00007f6602b1a5f6:   cmp    $0x3,%edx
            0x00007f6602b1a5f9:   jge    0x00007f6602b1a616
            0x00007f6602b1a5ff:   cmp    $0x1,%edx
            0x00007f6602b1a602:   je     0x00007f6602b1a66c
            0x00007f6602b1a608:   cmp    $0x2,%edx
            0x00007f6602b1a60b:   je     0x00007f6602b1a66c
            0x00007f6602b1a611:   jmp    0x00007f6602b1a64f
            0x00007f6602b1a616:   cmp    $0x3,%edx
....................................................................................................
  11.86%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 728 
  11.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 728 
   2.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 730 
   2.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 747 
   1.67%               kernel  [unknown] 
   0.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 730 
   0.13%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  [unknown] 
   0.01%               kernel  [unknown] 
   0.79%  <...other 289 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 728 
   3.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 730 
   2.67%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 747 
   2.61%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::flush 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  _int_realloc 
   0.15%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.05%       jvmci, level 4
   2.61%               kernel
   0.15%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%           ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:05:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 329.142 ns/op
# Warmup Iteration   2: 326.425 ns/op
# Warmup Iteration   3: 327.499 ns/op
# Warmup Iteration   4: 326.507 ns/op
# Warmup Iteration   5: 326.400 ns/op
Iteration   1: 326.447 ns/op
Iteration   2: 326.501 ns/op
Iteration   3: 326.408 ns/op
Iteration   4: 326.476 ns/op
Iteration   5: 326.391 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  326.445 ±(99.9%) 0.176 ns/op [Average]
  (min, avg, max) = (326.391, 326.445, 326.501), stdev = 0.046
  CI (99.9%): [326.268, 326.621] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method:·asm":
PrintAssembly processed: 191053 total address lines.
Perf output processed (skipped 58.638 seconds):
 Column 1: cycles (50833 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 730 

                   0x00007fbbceb1b458:   jmp    0x00007fbbceb1b497
                   0x00007fbbceb1b45d:   cmp    $0x2,%esi
          ╭        0x00007fbbceb1b460:   je     0x00007fbbceb1b4b4
          │╭       0x00007fbbceb1b466:   jmp    0x00007fbbceb1b4b4
          ││       0x00007fbbceb1b46b:   cmp    $0x6,%esi
          ││╭      0x00007fbbceb1b46e:   jge    0x00007fbbceb1b485
          │││      0x00007fbbceb1b474:   cmp    $0x4,%esi
          │││╭     0x00007fbbceb1b477:   je     0x00007fbbceb1b4b4
          ││││     0x00007fbbceb1b47d:   data16 xchg %ax,%ax
          ││││╭    0x00007fbbceb1b480:   jmp    0x00007fbbceb1b4b4
   3.75%  ││↘││    0x00007fbbceb1b485:   cmp    $0x6,%esi
          ││ ││╭   0x00007fbbceb1b488:   je     0x00007fbbceb1b4b4
          ││ │││   0x00007fbbceb1b48e:   cmp    $0x7,%esi
          ││ │││╭  0x00007fbbceb1b491:   je     0x00007fbbceb1b4b4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 131)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││  0x00007fbbceb1b497:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││  0x00007fbbceb1b49a:   nop
   3.68%  ││ ││││  0x00007fbbceb1b49b:   call   0x00007fbbceb1b420           ; ImmutableOopMap {}
          ││ ││││                                                            ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
          ││ ││││                                                            ;   {static_call}
  19.50%  ││ ││││  0x00007fbbceb1b4a0:   nop
   1.62%  ││ ││││  0x00007fbbceb1b4a1:   mov    0x10(%rsp),%rbp
  28.25%  ││ ││││  0x00007fbbceb1b4a6:   add    $0x18,%rsp
   0.16%  ││ ││││  0x00007fbbceb1b4aa:   mov    0x348(%r15),%rcx
   0.01%  ││ ││││  0x00007fbbceb1b4b1:   test   %eax,(%rcx)                  ;   {poll_return}
  19.04%  ││ ││││  0x00007fbbceb1b4b3:   ret    
          ↘↘ ↘↘↘↘  0x00007fbbceb1b4b4:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
                   0x00007fbbceb1b4be:   mov    0x10(%rsp),%rbp
                   0x00007fbbceb1b4c3:   add    $0x18,%rsp
                   0x00007fbbceb1b4c7:   mov    0x348(%r15),%rcx
                   0x00007fbbceb1b4ce:   test   %eax,(%rcx)                  ;   {poll_return}
                   0x00007fbbceb1b4d0:   ret    
                   0x00007fbbceb1b4d1:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
                   0x00007fbbceb1b4db:   mov    0x10(%rsp),%rbp
   0.56%           0x00007fbbceb1b4e0:   add    $0x18,%rsp
                   0x00007fbbceb1b4e4:   mov    0x348(%r15),%rcx
....................................................................................................
  76.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 730 

             dependencies   [0x00007fbbceb1b5e0,0x00007fbbceb1b5e8] = 8
             JVMCI data     [0x00007fbbceb1b5e8,0x00007fbbceb1b5f8] = 16
            [Disassembly]
            --------------------------------------------------------------------------------
            [Constant Pool (empty)]
            --------------------------------------------------------------------------------
            [Verified Entry Point]
              # {method} {0x00007fbbadcd6238} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
              # parm0:    rsi       = int
              #           [sp+0x20]  (sp of caller)
   0.03%      0x00007fbbceb1b420:   mov    %eax,-0x14000(%rsp)
  11.20%      0x00007fbbceb1b427:   sub    $0x18,%rsp
              0x00007fbbceb1b42b:   mov    %rbp,0x10(%rsp)
   3.74%      0x00007fbbceb1b430:   cmp    $0x4,%esi
          ╭   0x00007fbbceb1b433:   jge    0x00007fbbceb1b46b
          │   0x00007fbbceb1b439:   cmp    $0x2,%esi
          │   0x00007fbbceb1b43c:   nopl   0x0(%rax)
          │╭  0x00007fbbceb1b440:   jge    0x00007fbbceb1b45d
   0.17%  ││  0x00007fbbceb1b446:   cmp    $0x0,%esi
          ││  0x00007fbbceb1b449:   je     0x00007fbbceb1b4d1
          ││  0x00007fbbceb1b44f:   cmp    $0x1,%esi
          ││  0x00007fbbceb1b452:   je     0x00007fbbceb1b4b4
          ││  0x00007fbbceb1b458:   jmp    0x00007fbbceb1b497
          │↘  0x00007fbbceb1b45d:   cmp    $0x2,%esi
          │   0x00007fbbceb1b460:   je     0x00007fbbceb1b4b4
          │   0x00007fbbceb1b466:   jmp    0x00007fbbceb1b4b4
          ↘   0x00007fbbceb1b46b:   cmp    $0x6,%esi
              0x00007fbbceb1b46e:   jge    0x00007fbbceb1b485
              0x00007fbbceb1b474:   cmp    $0x4,%esi
....................................................................................................
  15.15%  <total for region 2>

....[Hottest Regions]...............................................................................
  76.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 730 
  15.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 730 
   3.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 731 
   2.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 753 
   0.87%               kernel  [unknown] 
   0.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 730 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 731 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.77%  <...other 271 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 730 
   3.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 731 
   2.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 753 
   1.81%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  hsdis_read_memory_func 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  decode_env::print_hook_comments 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%            libjvm.so  ThreadCritical::ThreadCritical 
   0.00%            libjvm.so  PerfLongVariant::sample 
   0.00%         libc-2.31.so  tcache_init.part.0 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.89%       jvmci, level 4
   1.81%               kernel
   0.13%            libjvm.so
   0.06%                     
   0.05%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:03:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.627 ns/op
# Warmup Iteration   2: 8.025 ns/op
# Warmup Iteration   3: 8.113 ns/op
# Warmup Iteration   4: 7.964 ns/op
# Warmup Iteration   5: 7.955 ns/op
Iteration   1: 7.969 ns/op
Iteration   2: 7.978 ns/op
Iteration   3: 8.027 ns/op
Iteration   4: 7.976 ns/op
Iteration   5: 7.957 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  7.981 ±(99.9%) 0.103 ns/op [Average]
  (min, avg, max) = (7.957, 7.981, 8.027), stdev = 0.027
  CI (99.9%): [7.879, 8.084] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static:·asm":
PrintAssembly processed: 190959 total address lines.
Perf output processed (skipped 58.586 seconds):
 Column 1: cycles (50933 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 743 

             #           [sp+0x20]  (sp of caller)
             0x00007fe016b1a2a0:   mov    0x8(%rsi),%r10d
             0x00007fe016b1a2a4:   movabs $0x800000000,%r12
             0x00007fe016b1a2ae:   add    %r12,%r10
             0x00007fe016b1a2b1:   xor    %r12,%r12
             0x00007fe016b1a2b4:   cmp    %r10,%rax
             0x00007fe016b1a2b7:   jne    0x00007fe00f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fe016b1a2bd:   nop
             0x00007fe016b1a2be:   xchg   %ax,%ax
           [Verified Entry Point]
   1.81%     0x00007fe016b1a2c0:   mov    %eax,-0x14000(%rsp)
   2.99%     0x00007fe016b1a2c7:   sub    $0x18,%rsp
   1.74%     0x00007fe016b1a2cb:   mov    %rbp,0x10(%rsp)
   0.62%     0x00007fe016b1a2d0:   mov    0x18(%rsi),%eax              ;*getfield LAMBDA_NON_STATIC {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@1 (line 98)
   0.89%     0x00007fe016b1a2d3:   nopw   0x0(%rax,%rax,1)
   1.41%     0x00007fe016b1a2dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
   1.74%     0x00007fe016b1a2e0:   cmpl   $0xc26c30,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fe016b1a367
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$$Lambda$52+0x0000000800c26c30&apos;)}
  15.68%  ╭  0x00007fe016b1a2eb:   jne    0x00007fe016b1a337           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
   4.69%  │  0x00007fe016b1a2f1:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 98)
          │  0x00007fe016b1a2f5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
          │  0x00007fe016b1a300:   cmpl   $0x0,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007fe016b1a386
   6.43%  │  0x00007fe016b1a309:   jne    0x00007fe016b1a358           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 140)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$$Lambda$52/0x0000000800c26c30::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
   2.52%  │  0x00007fe016b1a30f:   mov    0xc(,%rax,8),%eax            ; ImmutableOopMap {rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
          │  0x00007fe016b1a316:   test   %eax,(%r12,%rax,8)           ; implicit exception: dispatches to 0x00007fe016b1a3a6
  11.02%  │  0x00007fe016b1a31a:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
          │  0x00007fe016b1a324:   mov    0x10(%rsp),%rbp
          │  0x00007fe016b1a329:   add    $0x18,%rsp
          │  0x00007fe016b1a32d:   mov    0x348(%r15),%rcx
   4.76%  │  0x00007fe016b1a334:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  │  0x00007fe016b1a336:   ret    
          ↘  0x00007fe016b1a337:   mov    $0x214,%r11
             0x00007fe016b1a33e:   mov    $0xffffffcd,%r10d
             0x00007fe016b1a344:   mov    %r10d,0x370(%r15)            ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda$new$0@1 (line 140)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$$Lambda$52/0x0000000800c26c30::apply@8
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
             0x00007fe016b1a34b:   mov    %r11,0x378(%r15)
             0x00007fe016b1a352:   call   0x00007fe00f02427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
....................................................................................................
  56.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 765 

              0x00007fe016b1ced8:   call   0x00007fe02ef614f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe016b1cedd:   nop
              0x00007fe016b1cede:   mov    0x10(%rsp),%rdx
              0x00007fe016b1cee3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@10 (line 230)
              0x00007fe016b1cee7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fe016b1cef0:   jmp    0x00007fe016b1cf0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 232)
          │   0x00007fe016b1cef5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
   3.37%  │↗  0x00007fe016b1cf00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
   1.45%  ││  0x00007fe016b1cf07:   test   %eax,(%r11)                  ;   {poll}
   1.71%  ││  0x00007fe016b1cf0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fe016b1cf0f:   mov    0x8(%rsp),%r10
   1.55%   │  0x00007fe016b1cf14:   mov    %r10,%rsi
   1.26%   │  0x00007fe016b1cf17:   call   0x00007fe00f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
  13.12%   │  0x00007fe016b1cf1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@20 (line 232)
           │  0x00007fe016b1cf1d:   mov    0x20(%rsp),%r10
   3.42%   │  0x00007fe016b1cf22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@26 (line 233)
   3.10%   │  0x00007fe016b1cf25:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007fe016b1cf2a:   cmpb   $0x0,0x94(%rsi)
  12.13%   ╰  0x00007fe016b1cf31:   je     0x00007fe016b1cf00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
              0x00007fe016b1cf33:   mov    %r10,0x20(%rsp)
              0x00007fe016b1cf38:   call   0x00007fe02ef614f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe016b1cf3d:   nop
              0x00007fe016b1cf3e:   mov    0x10(%rsp),%rdx
              0x00007fe016b1cf43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@40 (line 235)
              0x00007fe016b1cf47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@46 (line 236)
              0x00007fe016b1cf4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  41.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 743 
  41.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 765 
   1.28%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.84%  <...other 316 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 743 
  41.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 765 
   2.28%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  outputStream::print 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  _nl_cleanup_time 
   0.00%         libc-2.31.so  _int_malloc 
   0.00%       hsdis-amd64.so  print_insn 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.42%       jvmci, level 4
   2.28%               kernel
   0.14%            libjvm.so
   0.06%         libc-2.31.so
   0.05%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%          interpreter
   0.00%          c1, level 1
   0.00%           libjava.so
   0.00%       perf-44400.map
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:01:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.080 ns/op
# Warmup Iteration   2: 6.961 ns/op
# Warmup Iteration   3: 7.011 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.962 ns/op
Iteration   1: 6.959 ns/op
Iteration   2: 6.961 ns/op
Iteration   3: 6.961 ns/op
Iteration   4: 6.960 ns/op
Iteration   5: 6.962 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static":
  6.961 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (6.959, 6.961, 6.962), stdev = 0.001
  CI (99.9%): [6.956, 6.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static:·asm":
PrintAssembly processed: 193061 total address lines.
Perf output processed (skipped 58.774 seconds):
 Column 1: cycles (50532 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 735 

             #           [sp+0x20]  (sp of caller)
             0x00007fd096b1b480:   mov    0x8(%rsi),%r10d
             0x00007fd096b1b484:   movabs $0x800000000,%r12
             0x00007fd096b1b48e:   add    %r12,%r10
             0x00007fd096b1b491:   xor    %r12,%r12
             0x00007fd096b1b494:   cmp    %r10,%rax
             0x00007fd096b1b497:   jne    0x00007fd08f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fd096b1b49d:   nop
             0x00007fd096b1b49e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.05%     0x00007fd096b1b4a0:   mov    %eax,-0x14000(%rsp)
   6.32%     0x00007fd096b1b4a7:   sub    $0x18,%rsp
   0.05%     0x00007fd096b1b4ab:   mov    %rbp,0x10(%rsp)
   2.34%     0x00007fd096b1b4b0:   mov    0x14(%rsi),%eax              ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@4 (line 104)
   1.89%     0x00007fd096b1b4b3:   nopw   0x0(%rax,%rax,1)
   1.10%     0x00007fd096b1b4bc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 104)
   0.05%     0x00007fd096b1b4c0:   cmpl   $0x0,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007fd096b1b507
  26.63%  ╭  0x00007fd096b1b4c8:   jne    0x00007fd096b1b4eb
   5.41%  │  0x00007fd096b1b4ce:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
          │  0x00007fd096b1b4d8:   mov    0x10(%rsp),%rbp
          │  0x00007fd096b1b4dd:   add    $0x18,%rsp
          │  0x00007fd096b1b4e1:   mov    0x348(%r15),%rcx
   5.45%  │  0x00007fd096b1b4e8:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007fd096b1b4ea:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@12 (line 104)
          ↘  0x00007fd096b1b4eb:   movl   $0xffffffed,0x370(%r15)      ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 148)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$$Lambda$51/0x0000000800c269f0::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 104)
             0x00007fd096b1b4f6:   movq   $0x10,0x378(%r15)
             0x00007fd096b1b501:   call   0x00007fd08f02427a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 104)
....................................................................................................
  49.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 757 

              0x00007fd096b1dc58:   call   0x00007fd0afc664f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd096b1dc5d:   nop
              0x00007fd096b1dc5e:   mov    0x10(%rsp),%rdx
              0x00007fd096b1dc63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@10 (line 230)
              0x00007fd096b1dc67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fd096b1dc70:   jmp    0x00007fd096b1dc8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 232)
          │   0x00007fd096b1dc75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
   5.51%  │↗  0x00007fd096b1dc80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
          ││  0x00007fd096b1dc87:   test   %eax,(%r11)                  ;   {poll}
   0.06%  ││  0x00007fd096b1dc8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 232)
          ↘│  0x00007fd096b1dc8f:   mov    0x8(%rsp),%r10
   5.31%   │  0x00007fd096b1dc94:   mov    %r10,%rsi
           │  0x00007fd096b1dc97:   call   0x00007fd08f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   9.97%   │  0x00007fd096b1dc9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@20 (line 232)
           │  0x00007fd096b1dc9d:   mov    0x20(%rsp),%r10
   4.51%   │  0x00007fd096b1dca2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@26 (line 233)
   5.38%   │  0x00007fd096b1dca5:   mov    0x18(%rsp),%rsi
   0.00%   │  0x00007fd096b1dcaa:   cmpb   $0x0,0x94(%rsi)
  17.88%   ╰  0x00007fd096b1dcb1:   je     0x00007fd096b1dc80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
              0x00007fd096b1dcb3:   mov    %r10,0x20(%rsp)
              0x00007fd096b1dcb8:   call   0x00007fd0afc664f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd096b1dcbd:   nop
              0x00007fd096b1dcbe:   mov    0x10(%rsp),%rdx
              0x00007fd096b1dcc3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@40 (line 235)
              0x00007fd096b1dcc7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@46 (line 236)
              0x00007fd096b1dccb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  48.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 735 
  48.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 757 
   0.41%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
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
   0.01%               kernel  [unknown] 
   1.04%  <...other 336 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 735 
  48.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 757 
   1.86%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.01%                       <unknown> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  gethostbyaddr 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%         libc-2.31.so  memalign_check 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  PerfLongVariant::sample 
   0.00%          interpreter  invokevirtual  182 invokevirtual  
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%            libjvm.so  ciKlass::java_mirror 
   0.09%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.92%       jvmci, level 4
   1.86%               kernel
   0.09%            libjvm.so
   0.06%         libc-2.31.so
   0.01%                     
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:06

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

Benchmark                                                      (depth)  Mode  Cnt    Score   Error  Units
RecursiveMethodCallBenchmark.class_non_static_method               256  avgt    5  325.949 ± 1.496  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:·asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.class_static_method                   256  avgt    5  326.409 ± 0.202  ns/op
RecursiveMethodCallBenchmark.class_static_method:·asm              256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_non_static_method           256  avgt    5  280.815 ± 0.082  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:·asm      256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_static_method               256  avgt    5  326.445 ± 0.176  ns/op
RecursiveMethodCallBenchmark.interface_static_method:·asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_non_static                     256  avgt    5    7.981 ± 0.103  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:·asm                256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_static                         256  avgt    5    6.961 ± 0.005  ns/op
RecursiveMethodCallBenchmark.lambda_static:·asm                    256  avgt           NaN            ---
