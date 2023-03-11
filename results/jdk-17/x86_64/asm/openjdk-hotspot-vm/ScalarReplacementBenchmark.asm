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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.865 ns/op
# Warmup Iteration   2: 13.278 ns/op
# Warmup Iteration   3: 14.822 ns/op
# Warmup Iteration   4: 14.068 ns/op
# Warmup Iteration   5: 14.068 ns/op
Iteration   1: 13.937 ns/op
Iteration   2: 13.911 ns/op
Iteration   3: 14.016 ns/op
Iteration   4: 14.031 ns/op
Iteration   5: 13.959 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  13.971 ±(99.9%) 0.198 ns/op [Average]
  (min, avg, max) = (13.911, 13.971, 14.031), stdev = 0.051
  CI (99.9%): [13.773, 14.169] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.arg_escape_obj:·asm":
PrintAssembly processed: 116048 total address lines.
Perf output processed (skipped 55.675 seconds):
 Column 1: cycles (50990 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 472 

                           # {method} {0x00007f4dc3c75298} &apos;arg_escape_obj&apos; &apos;()Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark&apos;
                           #           [sp+0x40]  (sp of caller)
                           0x00007f4dfcf648a0:   mov    0x8(%rsi),%r10d
                           0x00007f4dfcf648a4:   movabs $0x800000000,%r11
                           0x00007f4dfcf648ae:   add    %r11,%r10
                           0x00007f4dfcf648b1:   cmp    %r10,%rax
                           0x00007f4dfcf648b4:   jne    0x00007f4dfc9fbd80           ;   {runtime_call ic_miss_stub}
                           0x00007f4dfcf648ba:   xchg   %ax,%ax
                           0x00007f4dfcf648bc:   nopl   0x0(%rax)
                         [Verified Entry Point]
   2.65%                   0x00007f4dfcf648c0:   mov    %eax,-0x14000(%rsp)
   5.53%                   0x00007f4dfcf648c7:   push   %rbp
   0.10%                   0x00007f4dfcf648c8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@-1 (line 120)
   0.68%                   0x00007f4dfcf648cc:   mov    %rsi,%rdi
   1.89%                   0x00007f4dfcf648cf:   mov    0x10(%rsi),%r10d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@9 (line 120)
   0.21%                   0x00007f4dfcf648d3:   nopw   0x0(%rax,%rax,1)
   0.62%                   0x00007f4dfcf648dc:   data16 data16 xchg %ax,%ax
   0.00%                   0x00007f4dfcf648e0:   cmp    $0x100000,%r10d
          ╭                0x00007f4dfcf648e7:   ja     0x00007f4dfcf64a33
   1.95%  │                0x00007f4dfcf648ed:   movslq %r10d,%rcx                   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
   0.13%  │             ↗  0x00007f4dfcf648f0:   mov    0xc(%rsi),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@5 (line 120)
   0.66%  │             │  0x00007f4dfcf648f4:   mov    %r8d,%ebp
   0.01%  │             │  0x00007f4dfcf648f7:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 140)
          │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
   1.83%  │             │  0x00007f4dfcf648f9:   nopl   0x0(%rax)
   0.09%  │             │  0x00007f4dfcf64900:   cmp    $0x100000,%r10d
          │╭            │  0x00007f4dfcf64907:   ja     0x00007f4dfcf64a01
   0.62%  ││            │  0x00007f4dfcf6490d:   add    $0x17,%rcx
   0.01%  ││            │  0x00007f4dfcf64911:   mov    %rcx,%r9
   1.87%  ││            │  0x00007f4dfcf64914:   and    $0xfffffffffffffff8,%r9
   0.10%  ││            │  0x00007f4dfcf64918:   mov    0x108(%r15),%r11
   0.65%  ││            │  0x00007f4dfcf6491f:   mov    %r11,%rbx
   0.01%  ││            │  0x00007f4dfcf64922:   add    %r9,%rbx
   1.99%  ││            │  0x00007f4dfcf64925:   cmp    0x118(%r15),%rbx
          ││╭           │  0x00007f4dfcf6492c:   jae    0x00007f4dfcf64a01
   0.23%  │││           │  0x00007f4dfcf64932:   mov    %rbx,0x108(%r15)
   0.83%  │││           │  0x00007f4dfcf64939:   mov    %r11,%rdi
   0.00%  │││           │  0x00007f4dfcf6493c:   add    $0x10,%rdi
   1.73%  │││           │  0x00007f4dfcf64940:   movq   $0x1,(%r11)
   2.19%  │││           │  0x00007f4dfcf64947:   prefetchw 0xc0(%rbx)
   1.02%  │││           │  0x00007f4dfcf6494e:   movl   $0x6848,0x8(%r11)            ;   {metadata({type array byte})}
   0.21%  │││           │  0x00007f4dfcf64956:   mov    %r10d,0xc(%r11)
   1.31%  │││           │  0x00007f4dfcf6495a:   prefetchw 0x100(%rbx)
   2.12%  │││           │  0x00007f4dfcf64961:   prefetchw 0x140(%rbx)
   4.71%  │││           │  0x00007f4dfcf64968:   prefetchw 0x180(%rbx)
   6.21%  │││           │  0x00007f4dfcf6496f:   shr    $0x3,%rcx
   1.19%  │││           │  0x00007f4dfcf64973:   add    $0xfffffffffffffffe,%rcx
   0.48%  │││           │  0x00007f4dfcf64977:   xor    %rax,%rax
   0.58%  │││           │  0x00007f4dfcf6497a:   cmp    $0x8,%rcx
          │││╭          │  0x00007f4dfcf6497e:   jg     0x00007f4dfcf64990
          ││││          │  0x00007f4dfcf64980:   dec    %rcx
          ││││╭         │  0x00007f4dfcf64983:   js     0x00007f4dfcf649d4
          │││││↗        │  0x00007f4dfcf64985:   mov    %rax,(%rdi,%rcx,8)
          ││││││        │  0x00007f4dfcf64989:   dec    %rcx
          │││││╰        │  0x00007f4dfcf6498c:   jge    0x00007f4dfcf64985
          │││││ ╭       │  0x00007f4dfcf6498e:   jmp    0x00007f4dfcf649d4
   0.33%  │││↘│ │       │  0x00007f4dfcf64990:   vpxor  %ymm0,%ymm0,%ymm0
   1.59%  │││ │ │╭      │  0x00007f4dfcf64994:   jmp    0x00007f4dfcf649a6
   4.44%  │││ │ ││↗     │  0x00007f4dfcf64999:   vmovdqu %ymm0,(%rdi)
   2.94%  │││ │ │││     │  0x00007f4dfcf6499d:   vmovdqu %ymm0,0x20(%rdi)
   6.84%  │││ │ │││     │  0x00007f4dfcf649a2:   add    $0x40,%rdi
   1.72%  │││ │ │↘│     │  0x00007f4dfcf649a6:   sub    $0x8,%rcx
          │││ │ │ ╰     │  0x00007f4dfcf649aa:   jge    0x00007f4dfcf64999
   1.01%  │││ │ │       │  0x00007f4dfcf649ac:   add    $0x4,%rcx
          │││ │ │  ╭    │  0x00007f4dfcf649b0:   jl     0x00007f4dfcf649be
          │││ │ │  │    │  0x00007f4dfcf649b2:   vmovdqu %ymm0,(%rdi)
          │││ │ │  │    │  0x00007f4dfcf649b6:   add    $0x20,%rdi
          │││ │ │  │    │  0x00007f4dfcf649ba:   sub    $0x4,%rcx
   0.52%  │││ │ │  ↘    │  0x00007f4dfcf649be:   add    $0x4,%rcx
          │││ │ │   ╭   │  0x00007f4dfcf649c2:   jle    0x00007f4dfcf649d4
          │││ │ │   │   │  0x00007f4dfcf649c4:   dec    %rcx
          │││ │ │   │↗  │  0x00007f4dfcf649c7:   vmovq  %xmm0,(%rdi)
          │││ │ │   ││  │  0x00007f4dfcf649cb:   add    $0x8,%rdi
          │││ │ │   ││  │  0x00007f4dfcf649cf:   dec    %rcx
          │││ │ │   │╰  │  0x00007f4dfcf649d2:   jge    0x00007f4dfcf649c7           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │││ │ │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
   2.71%  │││ ↘ ↘   ↘  ↗│  0x00007f4dfcf649d4:   nopl   0x0(%rax,%rax,1)
          │││          ││  0x00007f4dfcf649dc:   data16 data16 xchg %ax,%ax
          │││          ││  0x00007f4dfcf649e0:   cmp    $0x100000,%r10d
          │││         ╭││  0x00007f4dfcf649e7:   ja     0x00007f4dfcf64a3b
          │││         │││  0x00007f4dfcf649e9:   mov    $0x1,%eax
   2.58%  │││         │││  0x00007f4dfcf649ee:   add    $0x30,%rsp
          │││         │││  0x00007f4dfcf649f2:   pop    %rbp
   0.12%  │││         │││  0x00007f4dfcf649f3:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │││         │││  0x00007f4dfcf649fa:   ja     0x00007f4dfcf64a6c
   2.96%  │││         │││  0x00007f4dfcf64a00:   ret    
   0.01%  │↘↘         │││  0x00007f4dfcf64a01:   mov    %r8d,0xc(%rsp)
   0.00%  │           │││  0x00007f4dfcf64a06:   mov    %r10d,0x8(%rsp)
   0.00%  │           │││  0x00007f4dfcf64a0b:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
          │           │││  0x00007f4dfcf64a15:   mov    %rdi,(%rsp)
          │           │││  0x00007f4dfcf64a19:   mov    %r10d,%edx
          │           │││  0x00007f4dfcf64a1c:   data16 xchg %ax,%ax
   0.00%  │           │││  0x00007f4dfcf64a1f:   call   0x00007f4dfcaa3c00           ; ImmutableOopMap {[0]=Oop }
          │           │││                                                            ;*newarray {reexecute=0 rethrow=0 return_oop=1}
          │           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
          │           │││                                                            ;   {runtime_call _new_array_Java}
          │           │││  0x00007f4dfcf64a24:   mov    0x8(%rsp),%r10d
          │           │││  0x00007f4dfcf64a29:   mov    0xc(%rsp),%r8d
          │           │││  0x00007f4dfcf64a2e:   mov    %rax,%r11
   0.00%  │           │╰│  0x00007f4dfcf64a31:   jmp    0x00007f4dfcf649d4
          ↘           │ │  0x00007f4dfcf64a33:   movslq %r10d,%rcx                   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@12 (line 120)
                      │ ╰  0x00007f4dfcf64a36:   jmp    0x00007f4dfcf648f0           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
                      │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@1 (line 138)
                      │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj@28 (line 121)
                      ↘    0x00007f4dfcf64a3b:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
                           0x00007f4dfcf64a45:   mov    %r8d,0x4(%rsp)
                           0x00007f4dfcf64a4a:   mov    %r10d,%edx
                           0x00007f4dfcf64a4d:   mov    %r11,0x10(%rsp)
....................................................................................................
  72.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 507 

              0x00007f4dfcf68726:   mov    0x38(%rsp),%r10
              0x00007f4dfcf6872b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f4dfcf687dc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@30 (line 192)
              0x00007f4dfcf68733:   mov    $0x1,%ebp
              0x00007f4dfcf68738:   test   %r11d,%r11d
          ╭   0x00007f4dfcf6873b:   jne    0x00007f4dfcf6876c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
          │   0x00007f4dfcf6873d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@36 (line 193)
   2.50%  │↗  0x00007f4dfcf68740:   mov    0x40(%rsp),%rsi
   0.03%  ││  0x00007f4dfcf68745:   xchg   %ax,%ax
          ││  0x00007f4dfcf68747:   call   0x00007f4dfc9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual arg_escape_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   1.15%  ││  0x00007f4dfcf6874c:   mov    0x38(%rsp),%r10
   9.91%  ││  0x00007f4dfcf68751:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
   8.81%  ││  0x00007f4dfcf68759:   mov    0x348(%r15),%r11
   0.10%  ││  0x00007f4dfcf68760:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@33 (line 192)
          ││  0x00007f4dfcf68764:   test   %eax,(%r11)                  ;   {poll}
   0.75%  ││  0x00007f4dfcf68767:   test   %r10d,%r10d
          │╰  0x00007f4dfcf6876a:   je     0x00007f4dfcf68740           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@36 (line 193)
          ↘   0x00007f4dfcf6876c:   movabs $0x7f4e11722d10,%r10
              0x00007f4dfcf68776:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@37 (line 193)
              0x00007f4dfcf68779:   mov    0x30(%rsp),%r10
              0x00007f4dfcf6877e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@40 (line 193)
              0x00007f4dfcf68782:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub@46 (line 194)
....................................................................................................
  23.25%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 472 
  23.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 507 
   0.29%              kernel  [unknown] 
   0.17%           libjvm.so  HeapRegionClaimer::claim_region 
   0.14%           libjvm.so  HeapRegionManager::par_iterate 
   0.13%        libc-2.31.so  [unknown] 
   0.11%           libjvm.so  TypeArrayKlass::allocate_common 
   0.09%              kernel  [unknown] 
   0.08%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%              [vdso]  __vdso_clock_gettime 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%        libc-2.31.so  [unknown] 
   0.06%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.06%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.05%           libjvm.so  OptoRuntime::new_array_C 
   0.05%           libjvm.so  G1FromCardCache::clear 
   0.05%           libjvm.so  ObjArrayAllocator::initialize 
   0.05%           libjvm.so  SpinPause 
   0.04%              kernel  [unknown] 
   2.94%  <...other 549 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj, version 2, compile id 472 
  23.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub, version 6, compile id 507 
   1.41%              kernel  [unknown] 
   0.26%        libc-2.31.so  [unknown] 
   0.17%           libjvm.so  HeapRegionClaimer::claim_region 
   0.15%           libjvm.so  TypeArrayKlass::allocate_common 
   0.14%           libjvm.so  HeapRegionManager::par_iterate 
   0.10%                      <unknown> 
   0.10%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.10%           libjvm.so  OptoRuntime::new_array_C 
   0.09%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.08%           libjvm.so  ObjArrayAllocator::initialize 
   0.08%              [vdso]  __vdso_clock_gettime 
   0.07%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.06%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.06%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.05%           libjvm.so  G1Policy::preventive_collection_required 
   0.05%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.05%           libjvm.so  G1FromCardCache::clear 
   1.48%  <...other 193 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.44%         c2, level 4
   2.43%           libjvm.so
   1.41%              kernel
   0.31%        libc-2.31.so
   0.14%  libpthread-2.31.so
   0.10%                    
   0.08%              [vdso]
   0.06%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:05:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.534 ns/op
# Warmup Iteration   2: 14.248 ns/op
# Warmup Iteration   3: 15.116 ns/op
# Warmup Iteration   4: 14.048 ns/op
# Warmup Iteration   5: 14.078 ns/op
Iteration   1: 13.942 ns/op
Iteration   2: 14.083 ns/op
Iteration   3: 14.052 ns/op
Iteration   4: 14.014 ns/op
Iteration   5: 14.034 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  14.025 ±(99.9%) 0.204 ns/op [Average]
  (min, avg, max) = (13.942, 14.025, 14.083), stdev = 0.053
  CI (99.9%): [13.821, 14.229] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.branch_escape_obj:·asm":
PrintAssembly processed: 116758 total address lines.
Perf output processed (skipped 55.679 seconds):
 Column 1: cycles (51782 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 484 

                           # {method} {0x00007ffb44c751d0} &apos;branch_escape_obj&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark$HeavyWrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark&apos;
                           #           [sp+0x40]  (sp of caller)
                           0x00007ffb58f63020:   mov    0x8(%rsi),%r10d
                           0x00007ffb58f63024:   movabs $0x800000000,%r11
                           0x00007ffb58f6302e:   add    %r11,%r10
                           0x00007ffb58f63031:   cmp    %r10,%rax
                           0x00007ffb58f63034:   jne    0x00007ffb589fbd80           ;   {runtime_call ic_miss_stub}
                           0x00007ffb58f6303a:   xchg   %ax,%ax
                           0x00007ffb58f6303c:   nopl   0x0(%rax)
                         [Verified Entry Point]
   1.94%                   0x00007ffb58f63040:   mov    %eax,-0x14000(%rsp)
   5.87%                   0x00007ffb58f63047:   push   %rbp
   0.15%                   0x00007ffb58f63048:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@-1 (line 104)
   0.16%                   0x00007ffb58f6304c:   mov    %rsi,0x10(%rsp)
   2.45%                   0x00007ffb58f63051:   mov    0x10(%rsi),%edx              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@9 (line 104)
   0.28%                   0x00007ffb58f63054:   nopl   0x0(%rax,%rax,1)
   0.12%                   0x00007ffb58f6305c:   data16 data16 xchg %ax,%ax
   0.02%                   0x00007ffb58f63060:   cmp    $0x100000,%edx
          ╭                0x00007ffb58f63066:   ja     0x00007ffb58f631a2
   2.38%  │                0x00007ffb58f6306c:   movslq %edx,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
   0.13%  │             ↗  0x00007ffb58f6306f:   mov    0xc(%rsi),%r10d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@5 (line 104)
   0.12%  │             │  0x00007ffb58f63073:   mov    %r10d,0x8(%rsp)
   0.46%  │             │  0x00007ffb58f63078:   mov    %r10d,%r11d
   2.19%  │             │  0x00007ffb58f6307b:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
          │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 140)
          │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
   0.17%  │             │  0x00007ffb58f6307e:   mov    %r11d,0xc(%rsp)
   0.42%  │             │  0x00007ffb58f63083:   cmp    $0x100000,%edx
          │╭            │  0x00007ffb58f63089:   ja     0x00007ffb58f63186
   0.07%  ││            │  0x00007ffb58f6308f:   add    $0x17,%rcx
   2.14%  ││            │  0x00007ffb58f63093:   mov    %rcx,%r10
   0.16%  ││            │  0x00007ffb58f63096:   and    $0xfffffffffffffff8,%r10
   0.34%  ││            │  0x00007ffb58f6309a:   mov    0x108(%r15),%r8
   0.11%  ││            │  0x00007ffb58f630a1:   mov    %r8,%r11
   2.10%  ││            │  0x00007ffb58f630a4:   add    %r10,%r11
   0.15%  ││            │  0x00007ffb58f630a7:   cmp    0x118(%r15),%r11
          ││╭           │  0x00007ffb58f630ae:   jae    0x00007ffb58f63186
   0.40%  │││           │  0x00007ffb58f630b4:   mov    %r11,0x108(%r15)
   0.13%  │││           │  0x00007ffb58f630bb:   mov    %r8,%rdi
   2.14%  │││           │  0x00007ffb58f630be:   add    $0x10,%rdi
   0.16%  │││           │  0x00007ffb58f630c2:   movq   $0x1,(%r8)
   1.37%  │││           │  0x00007ffb58f630c9:   prefetchw 0xc0(%r11)
   0.64%  │││           │  0x00007ffb58f630d1:   movl   $0x6848,0x8(%r8)             ;   {metadata({type array byte})}
   3.55%  │││           │  0x00007ffb58f630d9:   mov    %edx,0xc(%r8)
   1.46%  │││           │  0x00007ffb58f630dd:   prefetchw 0x100(%r11)
   1.74%  │││           │  0x00007ffb58f630e5:   prefetchw 0x140(%r11)
   4.91%  │││           │  0x00007ffb58f630ed:   prefetchw 0x180(%r11)
   5.98%  │││           │  0x00007ffb58f630f5:   shr    $0x3,%rcx
   0.82%  │││           │  0x00007ffb58f630f9:   add    $0xfffffffffffffffe,%rcx
   0.13%  │││           │  0x00007ffb58f630fd:   xor    %rax,%rax
   0.22%  │││           │  0x00007ffb58f63100:   cmp    $0x8,%rcx
          │││╭          │  0x00007ffb58f63104:   jg     0x00007ffb58f63116
          ││││          │  0x00007ffb58f63106:   dec    %rcx
          ││││╭         │  0x00007ffb58f63109:   js     0x00007ffb58f6315a
          │││││↗        │  0x00007ffb58f6310b:   mov    %rax,(%rdi,%rcx,8)
          ││││││        │  0x00007ffb58f6310f:   dec    %rcx
          │││││╰        │  0x00007ffb58f63112:   jge    0x00007ffb58f6310b
          │││││ ╭       │  0x00007ffb58f63114:   jmp    0x00007ffb58f6315a
   1.53%  │││↘│ │       │  0x00007ffb58f63116:   vpxor  %ymm0,%ymm0,%ymm0
   1.37%  │││ │ │╭      │  0x00007ffb58f6311a:   jmp    0x00007ffb58f6312c
   4.25%  │││ │ ││↗     │  0x00007ffb58f6311f:   vmovdqu %ymm0,(%rdi)
   3.47%  │││ │ │││     │  0x00007ffb58f63123:   vmovdqu %ymm0,0x20(%rdi)
   4.16%  │││ │ │││     │  0x00007ffb58f63128:   add    $0x40,%rdi
   2.57%  │││ │ │↘│     │  0x00007ffb58f6312c:   sub    $0x8,%rcx
          │││ │ │ ╰     │  0x00007ffb58f63130:   jge    0x00007ffb58f6311f
   1.25%  │││ │ │       │  0x00007ffb58f63132:   add    $0x4,%rcx
          │││ │ │  ╭    │  0x00007ffb58f63136:   jl     0x00007ffb58f63144
          │││ │ │  │    │  0x00007ffb58f63138:   vmovdqu %ymm0,(%rdi)
          │││ │ │  │    │  0x00007ffb58f6313c:   add    $0x20,%rdi
          │││ │ │  │    │  0x00007ffb58f63140:   sub    $0x4,%rcx
   0.62%  │││ │ │  ↘    │  0x00007ffb58f63144:   add    $0x4,%rcx
          │││ │ │   ╭   │  0x00007ffb58f63148:   jle    0x00007ffb58f6315a
          │││ │ │   │   │  0x00007ffb58f6314a:   dec    %rcx
          │││ │ │   │↗  │  0x00007ffb58f6314d:   vmovq  %xmm0,(%rdi)
          │││ │ │   ││  │  0x00007ffb58f63151:   add    $0x8,%rdi
          │││ │ │   ││  │  0x00007ffb58f63155:   dec    %rcx
          │││ │ │   │╰  │  0x00007ffb58f63158:   jge    0x00007ffb58f6314d           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │││ │ │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
   2.53%  │││ ↘ ↘   ↘  ↗│  0x00007ffb58f6315a:   mov    0x10(%rsp),%r10
   0.05%  │││          ││  0x00007ffb58f6315f:   movzbl 0x14(%r10),%ebp              ;*getfield objectEscapes {reexecute=0 rethrow=0 return_oop=0}
          │││          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@17 (line 108)
   1.96%  │││          ││  0x00007ffb58f63164:   test   %ebp,%ebp
          │││         ╭││  0x00007ffb58f63166:   jne    0x00007ffb58f631aa           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@20 (line 108)
   0.91%  │││         │││  0x00007ffb58f63168:   mov    0x18(%r10),%r10d
   1.69%  │││         │││  0x00007ffb58f6316c:   mov    %r10,%rax
          │││         │││  0x00007ffb58f6316f:   shl    $0x3,%rax                    ;*getfield CACHED_WRAPPER {reexecute=0 rethrow=0 return_oop=0}
          │││         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@29 (line 111)
   0.03%  │││         │││  0x00007ffb58f63173:   add    $0x30,%rsp
   1.00%  │││         │││  0x00007ffb58f63177:   pop    %rbp
   1.82%  │││         │││  0x00007ffb58f63178:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │││         │││  0x00007ffb58f6317f:   ja     0x00007ffb58f631cd
   0.33%  │││         │││  0x00007ffb58f63185:   ret    
   0.00%  │↘↘         │││  0x00007ffb58f63186:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
          │           │││  0x00007ffb58f63190:   mov    0x10(%rsp),%rbp
   0.00%  │           │││  0x00007ffb58f63195:   xchg   %ax,%ax
          │           │││  0x00007ffb58f63197:   call   0x00007ffb58aa1e00           ; ImmutableOopMap {rbp=Oop [16]=Oop }
          │           │││                                                            ;*newarray {reexecute=0 rethrow=0 return_oop=1}
          │           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
          │           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
          │           │││                                                            ;   {runtime_call _new_array_Java}
          │           │││  0x00007ffb58f6319c:   mov    %rax,%r8
   0.00%  │           │││  0x00007ffb58f6319f:   nop
          │           │╰│  0x00007ffb58f631a0:   jmp    0x00007ffb58f6315a
          ↘           │ │  0x00007ffb58f631a2:   movslq %edx,%rcx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                      │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
                      │ ╰  0x00007ffb58f631a5:   jmp    0x00007ffb58f6306f           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
                      │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj@12 (line 104)
                      ↘    0x00007ffb58f631aa:   mov    $0xffffff45,%esi
                           0x00007ffb58f631af:   mov    %r10,(%rsp)
                           0x00007ffb58f631b3:   mov    %r8,0x10(%rsp)
                           0x00007ffb58f631b8:   data16 xchg %ax,%ax
....................................................................................................
  75.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 518 

              0x00007ffb58f660a6:   mov    0x38(%rsp),%r10
              0x00007ffb58f660ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007ffb58f66160
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@30 (line 192)
              0x00007ffb58f660b3:   mov    $0x1,%ebp
              0x00007ffb58f660b8:   test   %r11d,%r11d
          ╭   0x00007ffb58f660bb:   jne    0x00007ffb58f660ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
          │   0x00007ffb58f660bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 193)
   1.71%  │↗  0x00007ffb58f660c0:   mov    0x40(%rsp),%rsi
   0.14%  ││  0x00007ffb58f660c5:   xchg   %ax,%ax
   0.76%  ││  0x00007ffb58f660c7:   call   0x00007ffb589fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual branch_escape_obj {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   1.71%  ││  0x00007ffb58f660cc:   mov    0x38(%rsp),%r10
   6.10%  ││  0x00007ffb58f660d1:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
   6.70%  ││  0x00007ffb58f660d9:   mov    0x348(%r15),%r10
   0.17%  ││  0x00007ffb58f660e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@33 (line 192)
   0.78%  ││  0x00007ffb58f660e4:   test   %eax,(%r10)                  ;   {poll}
   0.89%  ││  0x00007ffb58f660e7:   test   %r11d,%r11d
          │╰  0x00007ffb58f660ea:   je     0x00007ffb58f660c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@36 (line 193)
          ↘   0x00007ffb58f660ec:   movabs $0x7ffb6e439d10,%r10
              0x00007ffb58f660f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@37 (line 193)
              0x00007ffb58f660f9:   mov    0x30(%rsp),%r10
              0x00007ffb58f660fe:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@40 (line 193)
              0x00007ffb58f66102:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub@46 (line 194)
....................................................................................................
  18.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 484 
  18.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 518 
   1.73%              kernel  [unknown] 
   0.14%           libjvm.so  HeapRegionClaimer::claim_region 
   0.12%           libjvm.so  HeapRegionManager::par_iterate 
   0.10%           libjvm.so  TypeArrayKlass::allocate_common 
   0.09%        libc-2.31.so  [unknown] 
   0.08%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  G1FromCardCache::clear 
   0.06%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%           libjvm.so  ObjArrayAllocator::initialize 
   0.06%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  SpinPause 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   2.96%  <...other 555 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj, version 2, compile id 484 
  18.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub, version 6, compile id 518 
   3.06%              kernel  [unknown] 
   0.16%        libc-2.31.so  [unknown] 
   0.14%           libjvm.so  HeapRegionClaimer::claim_region 
   0.13%                      <unknown> 
   0.12%           libjvm.so  HeapRegionManager::par_iterate 
   0.10%           libjvm.so  TypeArrayKlass::allocate_common 
   0.09%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%           libjvm.so  ObjArrayAllocator::initialize 
   0.08%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%           libjvm.so  OptoRuntime::new_array_C 
   0.07%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.07%              [vdso]  __vdso_clock_gettime 
   0.06%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.06%           libjvm.so  G1FromCardCache::clear 
   0.06%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.06%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.05%           libjvm.so  SpinPause 
   0.05%           libjvm.so  ThreadLocalAllocBuffer::fill 
   1.39%  <...other 195 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.09%         c2, level 4
   3.06%              kernel
   2.15%           libjvm.so
   0.27%        libc-2.31.so
   0.16%  libpthread-2.31.so
   0.13%                    
   0.07%              [vdso]
   0.06%          ld-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:03:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.430 ns/op
# Warmup Iteration   2: 6.191 ns/op
# Warmup Iteration   3: 7.367 ns/op
# Warmup Iteration   4: 7.350 ns/op
# Warmup Iteration   5: 6.190 ns/op
Iteration   1: 6.191 ns/op
Iteration   2: 6.189 ns/op
Iteration   3: 6.190 ns/op
Iteration   4: 6.190 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape":
  6.190 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (6.189, 6.190, 6.191), stdev = 0.001
  CI (99.9%): [6.186, 6.194] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape:·asm":
PrintAssembly processed: 114844 total address lines.
Perf output processed (skipped 55.504 seconds):
 Column 1: cycles (50894 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 504 

              0x00007f0d5cf67b26:   mov    0x38(%rsp),%r10
              0x00007f0d5cf67b2b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f0d5cf67bdc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@30 (line 192)
              0x00007f0d5cf67b33:   mov    $0x1,%ebp
              0x00007f0d5cf67b38:   test   %r11d,%r11d
          ╭   0x00007f0d5cf67b3b:   jne    0x00007f0d5cf67b6c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
          │   0x00007f0d5cf67b3d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 193)
   6.17%  │↗  0x00007f0d5cf67b40:   mov    0x40(%rsp),%rsi
          ││  0x00007f0d5cf67b45:   xchg   %ax,%ax
          ││  0x00007f0d5cf67b47:   call   0x00007f0d5c9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual no_escape {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007f0d5cf67b4c:   mov    0x38(%rsp),%r10
  30.22%  ││  0x00007f0d5cf67b51:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
  24.56%  ││  0x00007f0d5cf67b59:   mov    0x348(%r15),%r11
          ││  0x00007f0d5cf67b60:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@33 (line 192)
          ││  0x00007f0d5cf67b64:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f0d5cf67b67:   test   %r10d,%r10d
          │╰  0x00007f0d5cf67b6a:   je     0x00007f0d5cf67b40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub@36 (line 193)
          ↘   0x00007f0d5cf67b6c:   movabs $0x7f0d74011d10,%r10
              0x00007f0d5cf67b76:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  60.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 461 

             # {method} {0x00007f0d4c874e10} &apos;no_escape&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f0d5cf63300:   mov    0x8(%rsi),%r10d
             0x00007f0d5cf63304:   movabs $0x800000000,%r11
             0x00007f0d5cf6330e:   add    %r11,%r10
             0x00007f0d5cf63311:   cmp    %r10,%rax
             0x00007f0d5cf63314:   jne    0x00007f0d5c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f0d5cf6331a:   xchg   %ax,%ax
             0x00007f0d5cf6331c:   nopl   0x0(%rax)
           [Verified Entry Point]
   6.17%     0x00007f0d5cf63320:   sub    $0x18,%rsp
             0x00007f0d5cf63327:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape@-1 (line 78)
             0x00007f0d5cf6332c:   mov    0xc(%rsi),%r11d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape@5 (line 78)
   6.06%     0x00007f0d5cf63330:   mov    %r11d,%eax
             0x00007f0d5cf63333:   shl    %eax
             0x00007f0d5cf63335:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape@20 (line 79)
             0x00007f0d5cf63338:   add    $0x10,%rsp
   6.26%     0x00007f0d5cf6333c:   pop    %rbp
  18.26%     0x00007f0d5cf6333d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f0d5cf63344:   ja     0x00007f0d5cf6334b
          │  0x00007f0d5cf6334a:   ret    
          ↘  0x00007f0d5cf6334b:   movabs $0x7f0d5cf6333d,%r10         ;   {internal_word}
             0x00007f0d5cf63355:   mov    %r10,0x358(%r15)
             0x00007f0d5cf6335c:   jmp    0x00007f0d5ca02700           ;   {runtime_call SafepointBlob}
             0x00007f0d5cf63361:   hlt    
             0x00007f0d5cf63362:   hlt    
             0x00007f0d5cf63363:   hlt    
             0x00007f0d5cf63364:   hlt    
             0x00007f0d5cf63365:   hlt    
....................................................................................................
  36.76%  <total for region 2>

....[Hottest Regions]...............................................................................
  60.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 504 
  36.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 461 
   1.04%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  60.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub, version 6, compile id 504 
  36.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape, version 2, compile id 461 
   2.00%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.71%         c2, level 4
   2.00%              kernel
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:01:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.803 ns/op
# Warmup Iteration   2: 6.766 ns/op
# Warmup Iteration   3: 7.711 ns/op
# Warmup Iteration   4: 6.584 ns/op
# Warmup Iteration   5: 6.587 ns/op
Iteration   1: 6.583 ns/op
Iteration   2: 6.584 ns/op
Iteration   3: 6.584 ns/op
Iteration   4: 6.584 ns/op
Iteration   5: 6.583 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  6.584 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (6.583, 6.584, 6.584), stdev = 0.001
  CI (99.9%): [6.582, 6.585] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape_array_obj:·asm":
PrintAssembly processed: 114341 total address lines.
Perf output processed (skipped 55.598 seconds):
 Column 1: cycles (50599 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 504 

              0x00007ff05cf68226:   mov    0x38(%rsp),%r10
              0x00007ff05cf6822b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007ff05cf682dc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@30 (line 192)
              0x00007ff05cf68233:   mov    $0x1,%ebp
              0x00007ff05cf68238:   test   %r11d,%r11d
          ╭   0x00007ff05cf6823b:   jne    0x00007ff05cf6826c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
          │   0x00007ff05cf6823d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 193)
   1.96%  │↗  0x00007ff05cf68240:   mov    0x40(%rsp),%rsi
   3.89%  ││  0x00007ff05cf68245:   xchg   %ax,%ax
          ││  0x00007ff05cf68247:   call   0x00007ff05c9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual no_escape_array_obj {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
  50.08%  ││  0x00007ff05cf6824c:   mov    0x38(%rsp),%r10
   0.00%  ││  0x00007ff05cf68251:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
   5.82%  ││  0x00007ff05cf68259:   mov    0x348(%r15),%r11
   3.88%  ││  0x00007ff05cf68260:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@33 (line 192)
          ││  0x00007ff05cf68264:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007ff05cf68267:   test   %r10d,%r10d
          │╰  0x00007ff05cf6826a:   je     0x00007ff05cf68240           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@36 (line 193)
          ↘   0x00007ff05cf6826c:   movabs $0x7ff0720ffd10,%r10
              0x00007ff05cf68276:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub@37 (line 193)
              0x00007ff05cf68279:   mov    0x30(%rsp),%r10
....................................................................................................
  65.63%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 471 

             # {method} {0x00007ff048874fa0} &apos;no_escape_array_obj&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007ff05cf651a0:   mov    0x8(%rsi),%r10d
             0x00007ff05cf651a4:   movabs $0x800000000,%r11
             0x00007ff05cf651ae:   add    %r11,%r10
             0x00007ff05cf651b1:   cmp    %r10,%rax
             0x00007ff05cf651b4:   jne    0x00007ff05c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007ff05cf651ba:   xchg   %ax,%ax
             0x00007ff05cf651bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.96%     0x00007ff05cf651c0:   mov    %eax,-0x14000(%rsp)
   9.83%     0x00007ff05cf651c7:   push   %rbp
             0x00007ff05cf651c8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj@-1 (line 91)
   3.70%     0x00007ff05cf651cc:   mov    0xc(%rsi),%ebp               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj@5 (line 91)
   1.99%     0x00007ff05cf651cf:   mov    0x10(%rsi),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj@9 (line 91)
             0x00007ff05cf651d3:   mov    %ebp,%eax
             0x00007ff05cf651d5:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@12 (line 140)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
   3.87%     0x00007ff05cf651d7:   nopw   0x0(%rax,%rax,1)
   1.85%     0x00007ff05cf651e0:   cmp    $0x100000,%r11d
          ╭  0x00007ff05cf651e7:   ja     0x00007ff05cf65201           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj@-1 (line 91)
          │  0x00007ff05cf651e9:   add    %ebp,%eax
   0.00%  │  0x00007ff05cf651eb:   add    %r11d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj@30 (line 92)
   3.80%  │  0x00007ff05cf651ee:   add    $0x20,%rsp
   1.94%  │  0x00007ff05cf651f2:   pop    %rbp
          │  0x00007ff05cf651f3:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │  0x00007ff05cf651fa:   ja     0x00007ff05cf65233
   3.75%  │  0x00007ff05cf65200:   ret    
          ↘  0x00007ff05cf65201:   mov    %eax,0x4(%rsp)
             0x00007ff05cf65205:   mov    %r11d,(%rsp)
             0x00007ff05cf65209:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
             0x00007ff05cf65213:   mov    %r11d,%edx
             0x00007ff05cf65216:   nop
             0x00007ff05cf65217:   call   0x00007ff05caa1800           ; ImmutableOopMap {}
                                                                       ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark$HeavyWrapper::&lt;init&gt;@18 (line 141)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj@12 (line 91)
                                                                       ;   {runtime_call _new_array_Java}
....................................................................................................
  32.71%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 504 
  32.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 471 
   0.58%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.67%  <...other 217 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub, version 6, compile id 504 
  32.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj, version 2, compile id 471 
   1.42%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  outputStream::print 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  outputStream::update_position 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%      hsdis-amd64.so  print_insn 
   0.09%  <...other 44 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.34%         c2, level 4
   1.42%              kernel
   0.10%           libjvm.so
   0.06%                    
   0.04%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%        runtime stub
   0.00%      perf-25063.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:10

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

Benchmark                                            (objectEscapes)  (size)  (value)  Mode  Cnt   Score   Error  Units
ScalarReplacementBenchmark.arg_escape_obj                      false     128        3  avgt    5  13.971 ± 0.198  ns/op
ScalarReplacementBenchmark.arg_escape_obj:·asm                 false     128        3  avgt          NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                   false     128        3  avgt    5  14.025 ± 0.204  ns/op
ScalarReplacementBenchmark.branch_escape_obj:·asm              false     128        3  avgt          NaN            ---
ScalarReplacementBenchmark.no_escape                           false     128        3  avgt    5   6.190 ± 0.004  ns/op
ScalarReplacementBenchmark.no_escape:·asm                      false     128        3  avgt          NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                 false     128        3  avgt    5   6.584 ± 0.002  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:·asm            false     128        3  avgt          NaN            ---
