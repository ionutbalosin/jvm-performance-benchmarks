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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline
# Parameters: (size = 64)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.062 ns/op
# Warmup Iteration   2: 13.124 ns/op
# Warmup Iteration   3: 12.823 ns/op
# Warmup Iteration   4: 12.953 ns/op
# Warmup Iteration   5: 13.150 ns/op
Iteration   1: 12.887 ns/op
Iteration   2: 12.878 ns/op
Iteration   3: 12.994 ns/op
Iteration   4: 13.026 ns/op
Iteration   5: 13.135 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline":
  12.984 ±(99.9%) 0.409 ns/op [Average]
  (min, avg, max) = (12.878, 12.984, 13.135), stdev = 0.106
  CI (99.9%): [12.575, 13.393] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·asm":
PrintAssembly processed: 189471 total address lines.
Perf output processed (skipped 58.599 seconds):
 Column 1: cycles (50615 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 728 

                      #           [sp+0x20]  (sp of caller)
                      0x00007f00feb191a0:   mov    0x8(%rsi),%r10d
                      0x00007f00feb191a4:   movabs $0x800000000,%r12
                      0x00007f00feb191ae:   add    %r12,%r10
                      0x00007f00feb191b1:   xor    %r12,%r12
                      0x00007f00feb191b4:   cmp    %r10,%rax
                      0x00007f00feb191b7:   jne    0x00007f00f701e780           ;   {runtime_call ic_miss_stub}
                      0x00007f00feb191bd:   nop
                      0x00007f00feb191be:   xchg   %ax,%ax
                    [Verified Entry Point]
   0.94%              0x00007f00feb191c0:   mov    %eax,-0x14000(%rsp)
   2.50%              0x00007f00feb191c7:   sub    $0x18,%rsp
   0.78%              0x00007f00feb191cb:   mov    %rbp,0x10(%rsp)
   4.14%              0x00007f00feb191d0:   mov    %rsi,%r10
   1.05%              0x00007f00feb191d3:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@1 (line 154)
   0.19%              0x00007f00feb191d7:   test   %edx,%edx
                      0x00007f00feb191d9:   jl     0x00007f00feb19322
   0.57%              0x00007f00feb191df:   mov    0x108(%r15),%r11
   1.09%              0x00007f00feb191e6:   mov    %edx,%eax
   1.10%              0x00007f00feb191e8:   lea    0x17(%rax),%rax
   0.13%              0x00007f00feb191ec:   and    $0xfffffffffffffff8,%rax
   0.58%              0x00007f00feb191f0:   mov    %rax,%rsi
   1.07%              0x00007f00feb191f3:   add    %r11,%rsi
   1.84%              0x00007f00feb191f6:   data16 nopw 0x0(%rax,%rax,1)
   0.10%              0x00007f00feb19200:   cmp    0x118(%r15),%rsi
          ╭           0x00007f00feb19207:   ja     0x00007f00feb192fe
   0.40%  │           0x00007f00feb1920d:   mov    %rsi,0x108(%r15)
   1.59%  │           0x00007f00feb19214:   prefetchw 0xc0(%rax,%r11,1)
   3.34%  │           0x00007f00feb1921d:   prefetchw 0x100(%rax,%r11,1)
   0.40%  │           0x00007f00feb19226:   prefetchw 0x140(%rax,%r11,1)
   3.33%  │           0x00007f00feb1922f:   prefetchw 0x180(%rax,%r11,1)
   2.87%  │           0x00007f00feb19238:   movq   $0x1,(%r11)
   0.14%  │           0x00007f00feb1923f:   movl   $0x6848,0x8(%r11)            ;   {metadata({type array byte})}
   0.23%  │           0x00007f00feb19247:   mov    %edx,0xc(%r11)
   2.36%  │           0x00007f00feb1924b:   lea    -0x10(%rax),%rcx
   0.26%  │           0x00007f00feb1924f:   cmp    $0x810,%rax
          │           0x00007f00feb19256:   jae    0x00007f00feb19315
   0.12%  │           0x00007f00feb1925c:   nopl   0x0(%rax)
   0.23%  │           0x00007f00feb19260:   test   $0xfffffffffffffff8,%rcx
          │╭          0x00007f00feb19267:   je     0x00007f00feb192b3
   2.22%  ││          0x00007f00feb1926d:   lea    0x10(%r11),%rax
   0.25%  ││          0x00007f00feb19271:   shr    $0x3,%rcx
   0.14%  ││          0x00007f00feb19275:   vpxor  %xmm0,%xmm0,%xmm0
   0.21%  ││          0x00007f00feb19279:   nopl   0x0(%rax)
   2.34%  ││          0x00007f00feb19280:   cmp    $0x4,%rcx
          ││╭         0x00007f00feb19284:   jb     0x00007f00feb192f0
   0.24%  │││         0x00007f00feb1928a:   lea    -0x4(%rcx),%rsi
   0.16%  │││         0x00007f00feb1928e:   mov    $0x0,%rdx
   0.16%  │││         0x00007f00feb19295:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.44%  │││↗        0x00007f00feb192a0:   vmovdqu %ymm0,(%rax,%rdx,8)
   9.27%  ││││        0x00007f00feb192a5:   lea    0x4(%rdx),%rdx
   0.99%  ││││        0x00007f00feb192a9:   cmp    %rsi,%rdx
          │││╰        0x00007f00feb192ac:   jle    0x00007f00feb192a0
   0.08%  │││ ╭       0x00007f00feb192ae:   jmp    0x00007f00feb192cc           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 154)
   2.84%  │↘│ │ ↗↗    0x00007f00feb192b3:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@6 (line 154)
          │ │ │ ││    0x00007f00feb192b6:   mov    0x10(%rsp),%rbp
   0.29%  │ │ │ ││    0x00007f00feb192bb:   add    $0x18,%rsp
          │ │ │ ││    0x00007f00feb192bf:   mov    0x348(%r15),%rcx
   2.89%  │ │ │ ││    0x00007f00feb192c6:   test   %eax,(%rcx)                  ;   {poll_return}
   4.08%  │ │ │ ││    0x00007f00feb192c8:   vzeroupper 
   2.90%  │ │ │ ││    0x00007f00feb192cb:   ret    
   0.11%  │ │ ↘ ││↗   0x00007f00feb192cc:   lea    -0x2(%rcx),%rsi
   1.82%  │ │   │││   0x00007f00feb192d0:   cmp    %rsi,%rdx
          │ │  ╭│││   0x00007f00feb192d3:   jg     0x00007f00feb192f9
          │ │  ││││   0x00007f00feb192d9:   vmovdqu %xmm0,(%rax,%rdx,8)
          │ │  ││││   0x00007f00feb192de:   lea    0x2(%rdx),%rsi
   3.06%  │ │  ││││↗  0x00007f00feb192e2:   dec    %rcx
          │ │  │││││  0x00007f00feb192e5:   cmp    %rcx,%rsi
          │ │  │╰│││  0x00007f00feb192e8:   jg     0x00007f00feb192b3
          │ │  │ │││  0x00007f00feb192ea:   mov    %r12,(%rax,%rsi,8)
          │ │  │ ╰││  0x00007f00feb192ee:   jmp    0x00007f00feb192b3
          │ ↘  │  ││  0x00007f00feb192f0:   mov    $0x0,%rdx
          │    │  ╰│  0x00007f00feb192f7:   jmp    0x00007f00feb192cc           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 154)
   1.11%  │    ↘   │  0x00007f00feb192f9:   mov    %rdx,%rsi
          │        ╰  0x00007f00feb192fc:   jmp    0x00007f00feb192e2
   0.00%  ↘           0x00007f00feb192fe:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
                      0x00007f00feb19308:   call   0x00007f00f7177300           ; ImmutableOopMap {r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 154)
                                                                                ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
                      0x00007f00feb1930d:   nop                                 ; ImmutableOopMap {rax=Oop r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 154)
                      0x00007f00feb1930e:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f00feb1933a
                      0x00007f00feb19310:   mov    %rax,%r11
                      0x00007f00feb19313:   jmp    0x00007f00feb192b3
....................................................................................................
  68.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 5, compile id 744 

              0x00007f00feb1b6d8:   call   0x00007f011502a4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f00feb1b6dd:   nop
              0x00007f00feb1b6de:   mov    0x10(%rsp),%rdx
              0x00007f00feb1b6e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@10 (line 188)
              0x00007f00feb1b6e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f00feb1b6f0:   jmp    0x00007f00feb1b70f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f00feb1b6f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
   2.67%  │↗  0x00007f00feb1b700:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
   0.08%  ││  0x00007f00feb1b707:   test   %eax,(%r11)                  ;   {poll}
   1.03%  ││  0x00007f00feb1b70a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 190)
   0.14%  ↘│  0x00007f00feb1b70f:   mov    0x8(%rsp),%r10
   1.94%   │  0x00007f00feb1b714:   mov    %r10,%rsi
   0.00%   │  0x00007f00feb1b717:   call   0x00007f00f701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.30%   │  0x00007f00feb1b71c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@20 (line 190)
           │  0x00007f00feb1b71d:   mov    0x20(%rsp),%r10
   9.15%   │  0x00007f00feb1b722:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@26 (line 191)
   2.38%   │  0x00007f00feb1b725:   mov    0x18(%rsp),%rsi
   0.07%   │  0x00007f00feb1b72a:   cmpb   $0x0,0x94(%rsi)
  10.30%   ╰  0x00007f00feb1b731:   je     0x00007f00feb1b700           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 192)
              0x00007f00feb1b733:   mov    %r10,0x20(%rsp)
              0x00007f00feb1b738:   call   0x00007f011502a4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f00feb1b73d:   nop
              0x00007f00feb1b73e:   mov    0x10(%rsp),%rdx
              0x00007f00feb1b743:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@40 (line 193)
              0x00007f00feb1b747:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@46 (line 194)
              0x00007f00feb1b74b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  28.06%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 728 
  28.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 5, compile id 744 
   0.11%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%         libc-2.31.so  [unknown] 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%               kernel  [unknown] 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%            libjvm.so  OtherRegionsTable::is_empty 
   0.03%         libc-2.31.so  [unknown] 
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  ObjArrayAllocator::initialize 
   0.03%               kernel  [unknown] 
   2.05%  <...other 492 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 728 
  28.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 5, compile id 744 
   1.12%               kernel  [unknown] 
   0.14%                       <unknown> 
   0.12%         libc-2.31.so  [unknown] 
   0.08%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%            libjvm.so  ObjArrayAllocator::initialize 
   0.06%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.05%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  MemAllocator::allocate 
   0.03%            libjvm.so  OtherRegionsTable::is_empty 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   0.03%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.96%  <...other 168 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.00%       jvmci, level 4
   1.36%            libjvm.so
   1.12%               kernel
   0.18%         libc-2.31.so
   0.14%                     
   0.08%   libpthread-2.31.so
   0.05%           ld-2.31.so
   0.04%               [vdso]
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%  libjvmcicompiler.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse
# Parameters: (size = 64)

# Run progress: 12.50% complete, ETA 00:13:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.342 ns/op
# Warmup Iteration   2: 13.220 ns/op
# Warmup Iteration   3: 13.204 ns/op
# Warmup Iteration   4: 12.918 ns/op
# Warmup Iteration   5: 13.023 ns/op
Iteration   1: 13.112 ns/op
Iteration   2: 13.227 ns/op
Iteration   3: 13.058 ns/op
Iteration   4: 13.033 ns/op
Iteration   5: 13.029 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse":
  13.092 ±(99.9%) 0.317 ns/op [Average]
  (min, avg, max) = (13.029, 13.092, 13.227), stdev = 0.082
  CI (99.9%): [12.775, 13.409] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·asm":
PrintAssembly processed: 188954 total address lines.
Perf output processed (skipped 58.607 seconds):
 Column 1: cycles (50663 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 724 

                          #           [sp+0x20]  (sp of caller)
                          0x00007fe756b19b20:   mov    0x8(%rsi),%r10d
                          0x00007fe756b19b24:   movabs $0x800000000,%r12
                          0x00007fe756b19b2e:   add    %r12,%r10
                          0x00007fe756b19b31:   xor    %r12,%r12
                          0x00007fe756b19b34:   cmp    %r10,%rax
                          0x00007fe756b19b37:   jne    0x00007fe74f01e780           ;   {runtime_call ic_miss_stub}
                          0x00007fe756b19b3d:   nop
                          0x00007fe756b19b3e:   xchg   %ax,%ax
                        [Verified Entry Point]
   1.06%                  0x00007fe756b19b40:   mov    %eax,-0x14000(%rsp)
   2.85%                  0x00007fe756b19b47:   sub    $0x18,%rsp
   0.86%                  0x00007fe756b19b4b:   mov    %rbp,0x10(%rsp)
   3.53%                  0x00007fe756b19b50:   mov    %rsi,%r10
   0.99%                  0x00007fe756b19b53:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@1 (line 162)
   0.24%                  0x00007fe756b19b57:   test   %edx,%edx
          ╭               0x00007fe756b19b59:   jl     0x00007fe756b19ca2
   0.64%  │               0x00007fe756b19b5f:   mov    0x108(%r15),%r11
   1.04%  │               0x00007fe756b19b66:   mov    %edx,%eax
   1.03%  │               0x00007fe756b19b68:   lea    0x17(%rax),%rax
   0.20%  │               0x00007fe756b19b6c:   and    $0xfffffffffffffff8,%rax
   0.66%  │               0x00007fe756b19b70:   mov    %rax,%rsi
   0.95%  │               0x00007fe756b19b73:   add    %r11,%rsi
   1.74%  │               0x00007fe756b19b76:   data16 nopw 0x0(%rax,%rax,1)
   0.18%  │               0x00007fe756b19b80:   cmp    0x118(%r15),%rsi
          │╭              0x00007fe756b19b87:   ja     0x00007fe756b19c7e
   0.43%  ││              0x00007fe756b19b8d:   mov    %rsi,0x108(%r15)
   1.38%  ││              0x00007fe756b19b94:   prefetchw 0xc0(%rax,%r11,1)
   3.28%  ││              0x00007fe756b19b9d:   prefetchw 0x100(%rax,%r11,1)
   0.49%  ││              0x00007fe756b19ba6:   prefetchw 0x140(%rax,%r11,1)
   3.20%  ││              0x00007fe756b19baf:   prefetchw 0x180(%rax,%r11,1)
   2.76%  ││              0x00007fe756b19bb8:   movq   $0x1,(%r11)
   0.14%  ││              0x00007fe756b19bbf:   movl   $0x6848,0x8(%r11)            ;   {metadata({type array byte})}
   0.33%  ││              0x00007fe756b19bc7:   mov    %edx,0xc(%r11)
   2.26%  ││              0x00007fe756b19bcb:   lea    -0x10(%rax),%rcx
   0.28%  ││              0x00007fe756b19bcf:   cmp    $0x810,%rax
          ││╭             0x00007fe756b19bd6:   jae    0x00007fe756b19c95
   0.15%  │││             0x00007fe756b19bdc:   nopl   0x0(%rax)
   0.34%  │││             0x00007fe756b19be0:   test   $0xfffffffffffffff8,%rcx
          │││╭            0x00007fe756b19be7:   je     0x00007fe756b19c33
   2.02%  ││││            0x00007fe756b19bed:   lea    0x10(%r11),%rax
   0.29%  ││││            0x00007fe756b19bf1:   shr    $0x3,%rcx
   0.12%  ││││            0x00007fe756b19bf5:   vpxor  %xmm0,%xmm0,%xmm0
   0.33%  ││││            0x00007fe756b19bf9:   nopl   0x0(%rax)
   2.19%  ││││            0x00007fe756b19c00:   cmp    $0x4,%rcx
          ││││╭           0x00007fe756b19c04:   jb     0x00007fe756b19c70
   0.27%  │││││           0x00007fe756b19c0a:   lea    -0x4(%rcx),%rsi
   0.14%  │││││           0x00007fe756b19c0e:   mov    $0x0,%rdx
   0.32%  │││││           0x00007fe756b19c15:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.25%  │││││↗          0x00007fe756b19c20:   vmovdqu %ymm0,(%rax,%rdx,8)
   8.93%  ││││││          0x00007fe756b19c25:   lea    0x4(%rdx),%rdx
   0.92%  ││││││          0x00007fe756b19c29:   cmp    %rsi,%rdx
          │││││╰          0x00007fe756b19c2c:   jle    0x00007fe756b19c20
   0.09%  │││││ ╭         0x00007fe756b19c2e:   jmp    0x00007fe756b19c4c           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 165)
   2.93%  │││↘│ │ ↗↗  ↗↗  0x00007fe756b19c33:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@29 (line 166)
          │││ │ │ ││  ││  0x00007fe756b19c36:   mov    0x10(%rsp),%rbp
   0.27%  │││ │ │ ││  ││  0x00007fe756b19c3b:   add    $0x18,%rsp
          │││ │ │ ││  ││  0x00007fe756b19c3f:   mov    0x348(%r15),%rcx
   2.97%  │││ │ │ ││  ││  0x00007fe756b19c46:   test   %eax,(%rcx)                  ;   {poll_return}
   4.30%  │││ │ │ ││  ││  0x00007fe756b19c48:   vzeroupper 
   2.81%  │││ │ │ ││  ││  0x00007fe756b19c4b:   ret    
   0.14%  │││ │ ↘ ││↗ ││  0x00007fe756b19c4c:   lea    -0x2(%rcx),%rsi
   1.84%  │││ │   │││ ││  0x00007fe756b19c50:   cmp    %rsi,%rdx
          │││ │  ╭│││ ││  0x00007fe756b19c53:   jg     0x00007fe756b19c79
          │││ │  ││││ ││  0x00007fe756b19c59:   vmovdqu %xmm0,(%rax,%rdx,8)
          │││ │  ││││ ││  0x00007fe756b19c5e:   lea    0x2(%rdx),%rsi
   2.77%  │││ │  ││││↗││  0x00007fe756b19c62:   dec    %rcx
          │││ │  │││││││  0x00007fe756b19c65:   cmp    %rcx,%rsi
          │││ │  │╰│││││  0x00007fe756b19c68:   jg     0x00007fe756b19c33
          │││ │  │ │││││  0x00007fe756b19c6a:   mov    %r12,(%rax,%rsi,8)
          │││ │  │ ╰││││  0x00007fe756b19c6e:   jmp    0x00007fe756b19c33
          │││ ↘  │  ││││  0x00007fe756b19c70:   mov    $0x0,%rdx
          │││    │  ╰│││  0x00007fe756b19c77:   jmp    0x00007fe756b19c4c           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││    │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 165)
   1.14%  │││    ↘   │││  0x00007fe756b19c79:   mov    %rdx,%rsi
          │││        ╰││  0x00007fe756b19c7c:   jmp    0x00007fe756b19c62
   0.01%  │↘│         ││  0x00007fe756b19c7e:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
   0.00%  │ │         ││  0x00007fe756b19c88:   call   0x00007fe74f177380           ; ImmutableOopMap {r10=Oop }
          │ │         ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │         ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 162)
          │ │         ││                                                            ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
          │ │         ││  0x00007fe756b19c8d:   nop                                 ; ImmutableOopMap {rax=Oop r10=Oop }
          │ │         ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │         ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 162)
   0.00%  │ │         ││  0x00007fe756b19c8e:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fe756b19cba
   0.00%  │ │         ││  0x00007fe756b19c90:   mov    %rax,%r11
          │ │         ╰│  0x00007fe756b19c93:   jmp    0x00007fe756b19c33
          │ ↘          │  0x00007fe756b19c95:   lea    0x10(%r11),%rdi
          │            │  0x00007fe756b19c99:   xor    %rax,%rax
          │            │  0x00007fe756b19c9c:   rep rex.W stos %al,%es:(%rdi)
          │            │  0x00007fe756b19c9f:   nop
          │            ╰  0x00007fe756b19ca0:   jmp    0x00007fe756b19c33
          ↘               0x00007fe756b19ca2:   movl   $0xffffff8f,0x370(%r15)      ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 165)
                          0x00007fe756b19cad:   mov    %r12,0x378(%r15)
                          0x00007fe756b19cb4:   call   0x00007fe74f02427a           ; ImmutableOopMap {r10=Oop }
....................................................................................................
  68.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 745 

              0x00007fe756b1c6d8:   call   0x00007fe76d3984f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe756b1c6dd:   nop
              0x00007fe756b1c6de:   mov    0x10(%rsp),%rdx
              0x00007fe756b1c6e3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@10 (line 188)
              0x00007fe756b1c6e7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fe756b1c6f0:   jmp    0x00007fe756b1c70f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 190)
          │   0x00007fe756b1c6f5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
   2.79%  │↗  0x00007fe756b1c700:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
   0.06%  ││  0x00007fe756b1c707:   test   %eax,(%r11)                  ;   {poll}
   1.06%  ││  0x00007fe756b1c70a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 190)
   0.16%  ↘│  0x00007fe756b1c70f:   mov    0x8(%rsp),%r10
   1.86%   │  0x00007fe756b1c714:   mov    %r10,%rsi
   0.01%   │  0x00007fe756b1c717:   call   0x00007fe74f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.28%   │  0x00007fe756b1c71c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@20 (line 190)
           │  0x00007fe756b1c71d:   mov    0x20(%rsp),%r10
   9.77%   │  0x00007fe756b1c722:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@26 (line 191)
   2.43%   │  0x00007fe756b1c725:   mov    0x18(%rsp),%rsi
   0.07%   │  0x00007fe756b1c72a:   cmpb   $0x0,0x94(%rsi)
  10.52%   ╰  0x00007fe756b1c731:   je     0x00007fe756b1c700           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 192)
              0x00007fe756b1c733:   mov    %r10,0x20(%rsp)
              0x00007fe756b1c738:   call   0x00007fe76d3984f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fe756b1c73d:   nop
              0x00007fe756b1c73e:   mov    0x10(%rsp),%rdx
              0x00007fe756b1c743:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@40 (line 193)
              0x00007fe756b1c747:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@46 (line 194)
              0x00007fe756b1c74b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  28.99%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 724 
  28.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 745 
   0.20%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%                       <unknown> 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  ObjArrayAllocator::initialize 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%            libjvm.so  G1RemSet::prepare_region_for_scan 
   0.03%            libjvm.so  TypeArrayKlass::allocate_common 
   0.03%            libjvm.so  TypeArrayKlass::allocate_common 
   0.03%                       <unknown> 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   1.96%  <...other 476 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 724 
  28.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 745 
   1.09%               kernel  [unknown] 
   0.30%                       <unknown> 
   0.06%            libjvm.so  HeapRegionManager::par_iterate 
   0.06%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%            libjvm.so  TypeArrayKlass::allocate_common 
   0.05%            libjvm.so  ObjArrayAllocator::initialize 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%            libjvm.so  G1Policy::preventive_collection_required 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.03%            libjvm.so  G1FromCardCache::clear 
   0.03%            libjvm.so  G1RemSet::prepare_region_for_scan 
   0.03%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.90%  <...other 181 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.05%       jvmci, level 4
   1.30%            libjvm.so
   1.09%               kernel
   0.30%                     
   0.07%   libpthread-2.31.so
   0.06%         libc-2.31.so
   0.04%           ld-2.31.so
   0.04%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 25.00% complete, ETA 00:11:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 26.578 ns/op
# Warmup Iteration   2: 25.921 ns/op
# Warmup Iteration   3: 26.142 ns/op
# Warmup Iteration   4: 26.007 ns/op
# Warmup Iteration   5: 25.999 ns/op
Iteration   1: 25.863 ns/op
Iteration   2: 25.976 ns/op
Iteration   3: 25.985 ns/op
Iteration   4: 26.030 ns/op
Iteration   5: 26.209 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural":
  26.013 ±(99.9%) 0.485 ns/op [Average]
  (min, avg, max) = (25.863, 26.013, 26.209), stdev = 0.126
  CI (99.9%): [25.528, 26.498] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm":
PrintAssembly processed: 195181 total address lines.
Perf output processed (skipped 58.753 seconds):
 Column 1: cycles (50799 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 731 

                      #           [sp+0x20]  (sp of caller)
                      0x00007fbd1eb1c5c0:   mov    0x8(%rsi),%r10d
                      0x00007fbd1eb1c5c4:   movabs $0x800000000,%r12
                      0x00007fbd1eb1c5ce:   add    %r12,%r10
                      0x00007fbd1eb1c5d1:   xor    %r12,%r12
                      0x00007fbd1eb1c5d4:   cmp    %r10,%rax
                      0x00007fbd1eb1c5d7:   jne    0x00007fbd1701e780           ;   {runtime_call ic_miss_stub}
                      0x00007fbd1eb1c5dd:   nop
                      0x00007fbd1eb1c5de:   xchg   %ax,%ax
                    [Verified Entry Point]
   0.18%              0x00007fbd1eb1c5e0:   mov    %eax,-0x14000(%rsp)
   3.00%              0x00007fbd1eb1c5e7:   sub    $0x18,%rsp
   0.13%              0x00007fbd1eb1c5eb:   mov    %rbp,0x10(%rsp)
   2.76%              0x00007fbd1eb1c5f0:   mov    %rsi,(%rsp)
   0.05%              0x00007fbd1eb1c5f4:   cmpl   $0x0,0xc(%rsi)
   0.45%              0x00007fbd1eb1c5f8:   jl     0x00007fbd1eb1c7b5           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@4 (line 174)
   0.09%              0x00007fbd1eb1c5fe:   mov    %rsi,%r10
   0.93%              0x00007fbd1eb1c601:   xchg   %ax,%ax
   0.04%              0x00007fbd1eb1c603:   call   0x00007fbd1eb1bfa0           ; ImmutableOopMap {[0]=Oop }
                                                                                ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@8 (line 175)
                                                                                ;   {optimized virtual_call}
   1.22%              0x00007fbd1eb1c608:   nop
   0.16%              0x00007fbd1eb1c609:   mov    (%rsp),%rsi
   0.04%              0x00007fbd1eb1c60d:   cmpl   $0x0,0xc(%rsi)
   7.39%              0x00007fbd1eb1c611:   jl     0x00007fbd1eb1c7d0           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@15 (line 176)
   1.35%              0x00007fbd1eb1c617:   mov    %rsi,%r10
   0.02%              0x00007fbd1eb1c61a:   nop
   0.01%              0x00007fbd1eb1c61b:   call   0x00007fbd1eb1bfa0           ; ImmutableOopMap {[0]=Oop }
                                                                                ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@19 (line 177)
                                                                                ;   {optimized virtual_call}
   1.48%              0x00007fbd1eb1c620:   nop
   0.02%              0x00007fbd1eb1c621:   mov    (%rsp),%rsi
   2.10%              0x00007fbd1eb1c625:   cmpl   $0x0,0xc(%rsi)
   7.21%              0x00007fbd1eb1c629:   jl     0x00007fbd1eb1c782           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@26 (line 178)
   1.46%              0x00007fbd1eb1c62f:   mov    %rsi,%r10
   0.01%              0x00007fbd1eb1c632:   nop
   0.01%              0x00007fbd1eb1c633:   call   0x00007fbd1eb1bfa0           ; ImmutableOopMap {[0]=Oop }
                                                                                ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@30 (line 179)
                                                                                ;   {optimized virtual_call}
   0.76%              0x00007fbd1eb1c638:   nop
   0.02%              0x00007fbd1eb1c639:   mov    (%rsp),%r10
   3.06%              0x00007fbd1eb1c63d:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@34 (line 180)
   6.84%              0x00007fbd1eb1c641:   test   %edx,%edx
                      0x00007fbd1eb1c643:   jl     0x00007fbd1eb1c79d
   1.53%              0x00007fbd1eb1c649:   mov    0x108(%r15),%r11
   0.01%              0x00007fbd1eb1c650:   mov    %edx,%eax
                      0x00007fbd1eb1c652:   lea    0x17(%rax),%rax
                      0x00007fbd1eb1c656:   and    $0xfffffffffffffff8,%rax
   1.49%              0x00007fbd1eb1c65a:   mov    %rax,%rsi
   0.01%              0x00007fbd1eb1c65d:   add    %r11,%rsi
   1.44%              0x00007fbd1eb1c660:   cmp    0x118(%r15),%rsi
          ╭           0x00007fbd1eb1c667:   ja     0x00007fbd1eb1c75e
   1.38%  │           0x00007fbd1eb1c66d:   mov    %rsi,0x108(%r15)
   1.55%  │           0x00007fbd1eb1c674:   prefetchw 0xc0(%rax,%r11,1)
   2.75%  │           0x00007fbd1eb1c67d:   prefetchw 0x100(%rax,%r11,1)
   0.02%  │           0x00007fbd1eb1c686:   prefetchw 0x140(%rax,%r11,1)
   1.58%  │           0x00007fbd1eb1c68f:   prefetchw 0x180(%rax,%r11,1)
   0.76%  │           0x00007fbd1eb1c698:   movq   $0x1,(%r11)
   0.01%  │           0x00007fbd1eb1c69f:   movl   $0x6848,0x8(%r11)            ;   {metadata({type array byte})}
   0.01%  │           0x00007fbd1eb1c6a7:   mov    %edx,0xc(%r11)
   1.74%  │           0x00007fbd1eb1c6ab:   lea    -0x10(%rax),%rcx
   0.03%  │           0x00007fbd1eb1c6af:   cmp    $0x810,%rax
          │           0x00007fbd1eb1c6b6:   jae    0x00007fbd1eb1c775
   0.00%  │           0x00007fbd1eb1c6bc:   nopl   0x0(%rax)
   0.00%  │           0x00007fbd1eb1c6c0:   test   $0xfffffffffffffff8,%rcx
          │╭          0x00007fbd1eb1c6c7:   je     0x00007fbd1eb1c713
   1.40%  ││          0x00007fbd1eb1c6cd:   lea    0x10(%r11),%rax
   0.03%  ││          0x00007fbd1eb1c6d1:   shr    $0x3,%rcx
   0.01%  ││          0x00007fbd1eb1c6d5:   vpxor  %xmm0,%xmm0,%xmm0
   0.00%  ││          0x00007fbd1eb1c6d9:   nopl   0x0(%rax)
   1.42%  ││          0x00007fbd1eb1c6e0:   cmp    $0x4,%rcx
          ││╭         0x00007fbd1eb1c6e4:   jb     0x00007fbd1eb1c750
   0.03%  │││         0x00007fbd1eb1c6ea:   lea    -0x4(%rcx),%rsi
   0.01%  │││         0x00007fbd1eb1c6ee:   mov    $0x0,%rdx
   0.00%  │││         0x00007fbd1eb1c6f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.39%  │││↗        0x00007fbd1eb1c700:   vmovdqu %ymm0,(%rax,%rdx,8)
   4.24%  ││││        0x00007fbd1eb1c705:   lea    0x4(%rdx),%rdx
   0.37%  ││││        0x00007fbd1eb1c709:   cmp    %rsi,%rdx
          │││╰        0x00007fbd1eb1c70c:   jle    0x00007fbd1eb1c700
   0.01%  │││ ╭       0x00007fbd1eb1c70e:   jmp    0x00007fbd1eb1c72c           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 180)
   1.47%  │↘│ │ ↗↗    0x00007fbd1eb1c713:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@41 (line 181)
          │ │ │ ││    0x00007fbd1eb1c716:   mov    0x10(%rsp),%rbp
   0.20%  │ │ │ ││    0x00007fbd1eb1c71b:   add    $0x18,%rsp
          │ │ │ ││    0x00007fbd1eb1c71f:   mov    0x348(%r15),%rcx
   1.45%  │ │ │ ││    0x00007fbd1eb1c726:   test   %eax,(%rcx)                  ;   {poll_return}
   2.75%  │ │ │ ││    0x00007fbd1eb1c728:   vzeroupper 
   1.49%  │ │ │ ││    0x00007fbd1eb1c72b:   ret    
   0.01%  │ │ ↘ ││↗   0x00007fbd1eb1c72c:   lea    -0x2(%rcx),%rsi
   1.04%  │ │   │││   0x00007fbd1eb1c730:   cmp    %rsi,%rdx
          │ │  ╭│││   0x00007fbd1eb1c733:   jg     0x00007fbd1eb1c759
          │ │  ││││   0x00007fbd1eb1c739:   vmovdqu %xmm0,(%rax,%rdx,8)
          │ │  ││││   0x00007fbd1eb1c73e:   lea    0x2(%rdx),%rsi
   1.41%  │ │  ││││↗  0x00007fbd1eb1c742:   dec    %rcx
          │ │  │││││  0x00007fbd1eb1c745:   cmp    %rcx,%rsi
          │ │  │╰│││  0x00007fbd1eb1c748:   jg     0x00007fbd1eb1c713
          │ │  │ │││  0x00007fbd1eb1c74a:   mov    %r12,(%rax,%rsi,8)
          │ │  │ ╰││  0x00007fbd1eb1c74e:   jmp    0x00007fbd1eb1c713
          │ ↘  │  ││  0x00007fbd1eb1c750:   mov    $0x0,%rdx
          │    │  ╰│  0x00007fbd1eb1c757:   jmp    0x00007fbd1eb1c72c           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 180)
   0.40%  │    ↘   │  0x00007fbd1eb1c759:   mov    %rdx,%rsi
          │        ╰  0x00007fbd1eb1c75c:   jmp    0x00007fbd1eb1c742
   0.00%  ↘           0x00007fbd1eb1c75e:   movabs $0x800006848,%rsi            ;   {metadata({type array byte})}
                      0x00007fbd1eb1c768:   call   0x00007fbd17177300           ; ImmutableOopMap {r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 180)
                                                                                ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
                      0x00007fbd1eb1c76d:   nop                                 ; ImmutableOopMap {rax=Oop r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 180)
                      0x00007fbd1eb1c76e:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fbd1eb1c7eb
                      0x00007fbd1eb1c770:   mov    %rax,%r11
                      0x00007fbd1eb1c773:   jmp    0x00007fbd1eb1c713
....................................................................................................
  74.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 755 

              0x00007fbd1eb1ff58:   call   0x00007fbd35ab04f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbd1eb1ff5d:   nop
              0x00007fbd1eb1ff5e:   mov    0x10(%rsp),%rdx
              0x00007fbd1eb1ff63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@10 (line 188)
              0x00007fbd1eb1ff67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fbd1eb1ff70:   jmp    0x00007fbd1eb1ff8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 190)
          │   0x00007fbd1eb1ff75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   1.48%  │↗  0x00007fbd1eb1ff80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   0.02%  ││  0x00007fbd1eb1ff87:   test   %eax,(%r11)                  ;   {poll}
   0.26%  ││  0x00007fbd1eb1ff8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 190)
   0.02%  ↘│  0x00007fbd1eb1ff8f:   mov    0x8(%rsp),%r10
   1.16%   │  0x00007fbd1eb1ff94:   mov    %r10,%rsi
   0.00%   │  0x00007fbd1eb1ff97:   call   0x00007fbd1701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse_inter_procedural {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   0.08%   │  0x00007fbd1eb1ff9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@20 (line 190)
           │  0x00007fbd1eb1ff9d:   mov    0x20(%rsp),%r10
   4.95%   │  0x00007fbd1eb1ffa2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@26 (line 191)
   1.40%   │  0x00007fbd1eb1ffa5:   mov    0x18(%rsp),%rsi
   0.02%   │  0x00007fbd1eb1ffaa:   cmpb   $0x0,0x94(%rsi)
   5.75%   ╰  0x00007fbd1eb1ffb1:   je     0x00007fbd1eb1ff80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 192)
              0x00007fbd1eb1ffb3:   mov    %r10,0x20(%rsp)
              0x00007fbd1eb1ffb8:   call   0x00007fbd35ab04f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbd1eb1ffbd:   nop
              0x00007fbd1eb1ffbe:   mov    0x10(%rsp),%rdx
              0x00007fbd1eb1ffc3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@40 (line 193)
              0x00007fbd1eb1ffc7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@46 (line 194)
              0x00007fbd1eb1ffcb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  15.14%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 731 
  15.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 755 
   7.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 729 
   0.55%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  TypeArrayKlass::allocate_common 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%            libjvm.so  TypeArrayKlass::allocate_common 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.61%  <...other 449 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 731 
  15.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 755 
   7.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 729 
   1.66%               kernel  [unknown] 
   0.22%                       <unknown> 
   0.05%            libjvm.so  TypeArrayKlass::allocate_common 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  MemAllocator::allocate 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  G1RebuildFreeListTask::work 
   0.56%  <...other 152 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.21%       jvmci, level 4
   1.66%               kernel
   0.71%            libjvm.so
   0.22%                     
   0.07%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.02%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%       perf-49958.map
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline
# Parameters: (size = 64)

# Run progress: 37.50% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.067 ns/op
# Warmup Iteration   2: 7.556 ns/op
# Warmup Iteration   3: 7.540 ns/op
# Warmup Iteration   4: 7.428 ns/op
# Warmup Iteration   5: 7.375 ns/op
Iteration   1: 7.423 ns/op
Iteration   2: 7.430 ns/op
Iteration   3: 7.370 ns/op
Iteration   4: 7.364 ns/op
Iteration   5: 7.415 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline":
  7.400 ±(99.9%) 0.119 ns/op [Average]
  (min, avg, max) = (7.364, 7.400, 7.430), stdev = 0.031
  CI (99.9%): [7.282, 7.519] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm":
PrintAssembly processed: 189824 total address lines.
Perf output processed (skipped 58.654 seconds):
 Column 1: cycles (50948 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 754 

              0x00007f8206b1ced8:   call   0x00007f8220b0f4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f8206b1cedd:   nop
              0x00007f8206b1cede:   mov    0x10(%rsp),%rdx
              0x00007f8206b1cee3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@10 (line 188)
              0x00007f8206b1cee7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f8206b1cef0:   jmp    0x00007f8206b1cf0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f8206b1cef5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
   3.57%  │↗  0x00007f8206b1cf00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
   1.42%  ││  0x00007f8206b1cf07:   test   %eax,(%r11)                  ;   {poll}
   1.50%  ││  0x00007f8206b1cf0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 190)
   0.03%  ↘│  0x00007f8206b1cf0f:   mov    0x8(%rsp),%r10
   2.88%   │  0x00007f8206b1cf14:   mov    %r10,%rsi
   1.43%   │  0x00007f8206b1cf17:   call   0x00007f81ff01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_alloc_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  22.29%   │  0x00007f8206b1cf1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@20 (line 190)
   0.07%   │  0x00007f8206b1cf1d:   mov    0x20(%rsp),%r10
   0.75%   │  0x00007f8206b1cf22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@26 (line 191)
   5.03%   │  0x00007f8206b1cf25:   mov    0x18(%rsp),%rsi
   0.14%   │  0x00007f8206b1cf2a:   cmpb   $0x0,0x94(%rsi)
  15.26%   ╰  0x00007f8206b1cf31:   je     0x00007f8206b1cf00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 192)
              0x00007f8206b1cf33:   mov    %r10,0x20(%rsp)
              0x00007f8206b1cf38:   call   0x00007f8220b0f4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f8206b1cf3d:   nop
              0x00007f8206b1cf3e:   mov    0x10(%rsp),%rdx
              0x00007f8206b1cf43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@40 (line 193)
              0x00007f8206b1cf47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@46 (line 194)
              0x00007f8206b1cf4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  54.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 730 

               #           [sp+0x20]  (sp of caller)
               0x00007f8206b19fa0:   mov    0x8(%rsi),%r10d
               0x00007f8206b19fa4:   movabs $0x800000000,%r12
               0x00007f8206b19fae:   add    %r12,%r10
               0x00007f8206b19fb1:   xor    %r12,%r12
               0x00007f8206b19fb4:   cmp    %r10,%rax
               0x00007f8206b19fb7:   jne    0x00007f81ff01e780           ;   {runtime_call ic_miss_stub}
               0x00007f8206b19fbd:   nop
               0x00007f8206b19fbe:   xchg   %ax,%ax
             [Verified Entry Point]
   0.96%       0x00007f8206b19fc0:   mov    %eax,-0x14000(%rsp)
   4.88%       0x00007f8206b19fc7:   sub    $0x18,%rsp
   0.60%       0x00007f8206b19fcb:   mov    %rbp,0x10(%rsp)
   3.12%       0x00007f8206b19fd0:   mov    0x108(%r15),%rax
   0.71%       0x00007f8206b19fd7:   lea    0x10(%rax),%rsi
   2.15%       0x00007f8206b19fdb:   nopl   0x0(%rax,%rax,1)
   0.52%       0x00007f8206b19fe0:   cmp    0x118(%r15),%rsi
          ╭    0x00007f8206b19fe7:   ja     0x00007f8206b1a01f
   1.83%  │    0x00007f8206b19fed:   mov    %rsi,0x108(%r15)
   0.77%  │    0x00007f8206b19ff4:   prefetchw 0xd0(%rax)
   2.73%  │    0x00007f8206b19ffb:   movq   $0x1,(%rax)
   2.42%  │    0x00007f8206b1a002:   movl   $0xd68,0x8(%rax)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
          │                                                              ;   {metadata(&apos;java/lang/Object&apos;)}
   8.25%  │ ↗  0x00007f8206b1a009:   mov    0x10(%rsp),%rbp
   0.83%  │ │  0x00007f8206b1a00e:   add    $0x18,%rsp
   0.09%  │ │  0x00007f8206b1a012:   mov    0x348(%r15),%rcx
   1.16%  │ │  0x00007f8206b1a019:   test   %eax,(%rcx)                  ;   {poll_return}
   6.74%  │ │  0x00007f8206b1a01b:   vzeroupper 
   5.04%  │ │  0x00007f8206b1a01e:   ret    
          ↘ │  0x00007f8206b1a01f:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
            │  0x00007f8206b1a029:   call   0x00007f81ff177980           ; ImmutableOopMap {}
            │                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
            │                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
            │  0x00007f8206b1a02e:   nop                                 ; ImmutableOopMap {rax=Oop }
            │                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
           ╭│  0x00007f8206b1a02f:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f8206b1a033
   0.00%   │╰  0x00007f8206b1a031:   jmp    0x00007f8206b1a009           ;*new {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
           ↘   0x00007f8206b1a033:   movl   $0xffffff8f,0x370(%r15)
               0x00007f8206b1a03e:   movq   $0x0,0x378(%r15)
               0x00007f8206b1a049:   call   0x00007f81ff02427a           ; ImmutableOopMap {rax=Oop }
                                                                         ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 62)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007f8206b1a04e:   nop
             [Exception Handler]
               0x00007f8206b1a04f:   call   0x00007f81ff169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  42.80%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 754 
  42.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 730 
   0.96%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.30%  <...other 414 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 754 
  42.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 730 
   1.84%               kernel  [unknown] 
   0.10%                       <unknown> 
   0.06%         libc-2.31.so  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  G1Policy::preventive_collection_required 
   0.01%            libjvm.so  InstanceKlass::check_valid_for_instantiation 
   0.01%            libjvm.so  SpinPause 
   0.01%            libjvm.so  MemAllocator::allocate 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.55%  <...other 163 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.18%       jvmci, level 4
   1.84%               kernel
   0.62%            libjvm.so
   0.13%         libc-2.31.so
   0.10%                     
   0.04%           ld-2.31.so
   0.04%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%       perf-50019.map
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse
# Parameters: (size = 64)

# Run progress: 50.00% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.070 ns/op
# Warmup Iteration   2: 7.510 ns/op
# Warmup Iteration   3: 7.355 ns/op
# Warmup Iteration   4: 7.342 ns/op
# Warmup Iteration   5: 7.312 ns/op
Iteration   1: 7.366 ns/op
Iteration   2: 7.353 ns/op
Iteration   3: 7.344 ns/op
Iteration   4: 7.381 ns/op
Iteration   5: 7.348 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse":
  7.358 ±(99.9%) 0.058 ns/op [Average]
  (min, avg, max) = (7.344, 7.358, 7.381), stdev = 0.015
  CI (99.9%): [7.300, 7.417] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·asm":
PrintAssembly processed: 190142 total address lines.
Perf output processed (skipped 58.664 seconds):
 Column 1: cycles (50826 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 744 

              0x00007f1536b1ddd8:   call   0x00007f154e89f4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1536b1dddd:   nop
              0x00007f1536b1ddde:   mov    0x10(%rsp),%rdx
              0x00007f1536b1dde3:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@10 (line 188)
              0x00007f1536b1dde7:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f1536b1ddf0:   jmp    0x00007f1536b1de0f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 190)
          │   0x00007f1536b1ddf5:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
   4.10%  │↗  0x00007f1536b1de00:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
   0.96%  ││  0x00007f1536b1de07:   test   %eax,(%r11)                  ;   {poll}
   1.18%  ││  0x00007f1536b1de0a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 190)
   0.01%  ↘│  0x00007f1536b1de0f:   mov    0x8(%rsp),%r10
   3.44%   │  0x00007f1536b1de14:   mov    %r10,%rsi
   0.95%   │  0x00007f1536b1de17:   call   0x00007f152f01ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  20.59%   │  0x00007f1536b1de1c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@20 (line 190)
   0.07%   │  0x00007f1536b1de1d:   mov    0x20(%rsp),%r10
   0.64%   │  0x00007f1536b1de22:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@26 (line 191)
   5.01%   │  0x00007f1536b1de25:   mov    0x18(%rsp),%rsi
   0.16%   │  0x00007f1536b1de2a:   cmpb   $0x0,0x94(%rsi)
  17.49%   ╰  0x00007f1536b1de31:   je     0x00007f1536b1de00           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 192)
              0x00007f1536b1de33:   mov    %r10,0x20(%rsp)
              0x00007f1536b1de38:   call   0x00007f154e89f4f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1536b1de3d:   nop
              0x00007f1536b1de3e:   mov    0x10(%rsp),%rdx
              0x00007f1536b1de43:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@40 (line 193)
              0x00007f1536b1de47:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@46 (line 194)
              0x00007f1536b1de4b:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  54.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 724 

             #           [sp+0x20]  (sp of caller)
             0x00007f1536b1b920:   mov    0x8(%rsi),%r10d
             0x00007f1536b1b924:   movabs $0x800000000,%r12
             0x00007f1536b1b92e:   add    %r12,%r10
             0x00007f1536b1b931:   xor    %r12,%r12
             0x00007f1536b1b934:   cmp    %r10,%rax
             0x00007f1536b1b937:   jne    0x00007f152f01e780           ;   {runtime_call ic_miss_stub}
             0x00007f1536b1b93d:   nop
             0x00007f1536b1b93e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.92%     0x00007f1536b1b940:   mov    %eax,-0x14000(%rsp)
   5.21%     0x00007f1536b1b947:   sub    $0x18,%rsp
   0.51%     0x00007f1536b1b94b:   mov    %rbp,0x10(%rsp)
   2.05%     0x00007f1536b1b950:   mov    0x108(%r15),%rax
   1.70%     0x00007f1536b1b957:   lea    0x10(%rax),%rsi
   1.88%     0x00007f1536b1b95b:   nopl   0x0(%rax,%rax,1)
   0.48%     0x00007f1536b1b960:   cmp    0x118(%r15),%rsi
          ╭  0x00007f1536b1b967:   ja     0x00007f1536b1b99f
   1.18%  │  0x00007f1536b1b96d:   mov    %rsi,0x108(%r15)
   1.66%  │  0x00007f1536b1b974:   prefetchw 0xd0(%rax)
   2.50%  │  0x00007f1536b1b97b:   movq   $0x1,(%rax)
   2.41%  │  0x00007f1536b1b982:   movl   $0xd68,0x8(%rax)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@120 (line 85)
          │                                                            ;   {metadata(&apos;java/lang/Object&apos;)}
   6.00%  │  0x00007f1536b1b989:   mov    0x10(%rsp),%rbp
   2.21%  │  0x00007f1536b1b98e:   add    $0x18,%rsp
   0.12%  │  0x00007f1536b1b992:   mov    0x348(%r15),%rcx
   1.29%  │  0x00007f1536b1b999:   test   %eax,(%rcx)                  ;   {poll_return}
   7.13%  │  0x00007f1536b1b99b:   vzeroupper 
   5.09%  │  0x00007f1536b1b99e:   ret    
   0.00%  ↘  0x00007f1536b1b99f:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007f1536b1b9a9:   call   0x00007f152f177980           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 70)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007f1536b1b9ae:   nop                                 ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 70)
             0x00007f1536b1b9af:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f1536b1b9b3
             0x00007f1536b1b9b1:   jmp    0x00007f1536b1b989           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@120 (line 85)
....................................................................................................
  42.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 744 
  42.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 724 
   0.71%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   1.68%  <...other 483 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 744 
  42.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 724 
   2.11%               kernel  [unknown] 
   0.10%                       <unknown> 
   0.09%         libc-2.31.so  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  ThreadLocalAllocBuffer::fill 
   0.01%            libjvm.so  G1CollectedHeap::attempt_allocation_slow 
   0.47%  <...other 142 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.97%       jvmci, level 4
   2.11%               kernel
   0.50%            libjvm.so
   0.18%         libc-2.31.so
   0.10%                     
   0.06%   libpthread-2.31.so
   0.04%           ld-2.31.so
   0.03%       hsdis-amd64.so
   0.02%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 62.50% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 73.027 ns/op
# Warmup Iteration   2: 72.029 ns/op
# Warmup Iteration   3: 71.715 ns/op
# Warmup Iteration   4: 71.749 ns/op
# Warmup Iteration   5: 71.715 ns/op
Iteration   1: 71.725 ns/op
Iteration   2: 71.660 ns/op
Iteration   3: 71.709 ns/op
Iteration   4: 71.712 ns/op
Iteration   5: 71.716 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural":
  71.704 ±(99.9%) 0.098 ns/op [Average]
  (min, avg, max) = (71.660, 71.704, 71.725), stdev = 0.025
  CI (99.9%): [71.606, 71.802] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm":
PrintAssembly processed: 193005 total address lines.
Perf output processed (skipped 58.636 seconds):
 Column 1: cycles (50926 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 730 

            #           [sp+0x10]  (sp of caller)
            0x00007fc536b1dc80:   mov    0x8(%rsi),%r10d
            0x00007fc536b1dc84:   movabs $0x800000000,%r12
            0x00007fc536b1dc8e:   add    %r12,%r10
            0x00007fc536b1dc91:   xor    %r12,%r12
            0x00007fc536b1dc94:   cmp    %r10,%rax
            0x00007fc536b1dc97:   jne    0x00007fc52f01e780           ;   {runtime_call ic_miss_stub}
            0x00007fc536b1dc9d:   nop
            0x00007fc536b1dc9e:   xchg   %ax,%ax
          [Verified Entry Point]
  15.18%    0x00007fc536b1dca0:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007fc536b1dca5:   mov    0x348(%r15),%rcx
   4.15%    0x00007fc536b1dcac:   test   %eax,(%rcx)                  ;   {poll_return}
  37.14%    0x00007fc536b1dcae:   ret    
          [Exception Handler]
            0x00007fc536b1dcaf:   call   0x00007fc52f169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fc536b1dcb4:   nop
          [Deopt Handler Code]
            0x00007fc536b1dcb5:   call   0x00007fc52f024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fc536b1dcba:   nop
          [Stub Code]
            0x00007fc536b1dcbb:   hlt    
            0x00007fc536b1dcbc:   hlt    
            0x00007fc536b1dcbd:   hlt    
....................................................................................................
  56.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 732 

             #           [sp+0x20]  (sp of caller)
             0x00007fc536b1e040:   mov    0x8(%rsi),%r10d
             0x00007fc536b1e044:   movabs $0x800000000,%r12
             0x00007fc536b1e04e:   add    %r12,%r10
             0x00007fc536b1e051:   xor    %r12,%r12
             0x00007fc536b1e054:   cmp    %r10,%rax
             0x00007fc536b1e057:   jne    0x00007fc52f01e780           ;   {runtime_call ic_miss_stub}
             0x00007fc536b1e05d:   nop
             0x00007fc536b1e05e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.24%     0x00007fc536b1e060:   mov    %eax,-0x14000(%rsp)
   0.76%     0x00007fc536b1e067:   sub    $0x18,%rsp
   0.32%     0x00007fc536b1e06b:   mov    %rbp,0x10(%rsp)
   0.60%     0x00007fc536b1e070:   mov    %rsi,%r10
   0.13%     0x00007fc536b1e073:   mov    %r10,(%rsp)
   0.95%     0x00007fc536b1e077:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@9 (line 95)
                                                                       ;   {optimized virtual_call}
   0.15%     0x00007fc536b1e07c:   nop
   0.00%     0x00007fc536b1e07d:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 97)
   0.06%     0x00007fc536b1e081:   xchg   %ax,%ax
   0.25%     0x00007fc536b1e083:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 97)
                                                                       ;   {optimized virtual_call}
   0.33%     0x00007fc536b1e088:   nop
             0x00007fc536b1e089:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 99)
   0.88%     0x00007fc536b1e08d:   xchg   %ax,%ax
             0x00007fc536b1e08f:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 99)
                                                                       ;   {optimized virtual_call}
   0.24%     0x00007fc536b1e094:   nop
             0x00007fc536b1e095:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 101)
   1.51%     0x00007fc536b1e099:   xchg   %ax,%ax
             0x00007fc536b1e09b:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 101)
                                                                       ;   {optimized virtual_call}
   0.28%     0x00007fc536b1e0a0:   nop
             0x00007fc536b1e0a1:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 103)
   1.58%     0x00007fc536b1e0a5:   xchg   %ax,%ax
             0x00007fc536b1e0a7:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 103)
                                                                       ;   {optimized virtual_call}
   0.25%     0x00007fc536b1e0ac:   nop
             0x00007fc536b1e0ad:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 105)
   2.15%     0x00007fc536b1e0b1:   xchg   %ax,%ax
             0x00007fc536b1e0b3:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 105)
                                                                       ;   {optimized virtual_call}
   0.28%     0x00007fc536b1e0b8:   nop
             0x00007fc536b1e0b9:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 107)
   1.10%     0x00007fc536b1e0bd:   xchg   %ax,%ax
             0x00007fc536b1e0bf:   nop
             0x00007fc536b1e0c0:   data16 xchg %ax,%ax
             0x00007fc536b1e0c3:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 107)
                                                                       ;   {optimized virtual_call}
   0.29%     0x00007fc536b1e0c8:   nop
             0x00007fc536b1e0c9:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 109)
   1.34%     0x00007fc536b1e0cd:   xchg   %ax,%ax
             0x00007fc536b1e0cf:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 109)
                                                                       ;   {optimized virtual_call}
   0.22%     0x00007fc536b1e0d4:   nop
             0x00007fc536b1e0d5:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 111)
   1.54%     0x00007fc536b1e0d9:   xchg   %ax,%ax
             0x00007fc536b1e0db:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 111)
                                                                       ;   {optimized virtual_call}
   0.27%     0x00007fc536b1e0e0:   nop
             0x00007fc536b1e0e1:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 113)
   1.54%     0x00007fc536b1e0e5:   xchg   %ax,%ax
             0x00007fc536b1e0e7:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 113)
                                                                       ;   {optimized virtual_call}
   0.28%     0x00007fc536b1e0ec:   nop
             0x00007fc536b1e0ed:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 115)
   2.08%     0x00007fc536b1e0f1:   xchg   %ax,%ax
             0x00007fc536b1e0f3:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 115)
                                                                       ;   {optimized virtual_call}
   0.29%     0x00007fc536b1e0f8:   nop
             0x00007fc536b1e0f9:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 117)
   1.17%     0x00007fc536b1e0fd:   xchg   %ax,%ax
             0x00007fc536b1e0ff:   nop
             0x00007fc536b1e100:   data16 xchg %ax,%ax
             0x00007fc536b1e103:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 117)
                                                                       ;   {optimized virtual_call}
   0.25%     0x00007fc536b1e108:   nop
             0x00007fc536b1e109:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 119)
   1.46%     0x00007fc536b1e10d:   xchg   %ax,%ax
             0x00007fc536b1e10f:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 119)
                                                                       ;   {optimized virtual_call}
   0.26%     0x00007fc536b1e114:   nop
             0x00007fc536b1e115:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 121)
   1.58%     0x00007fc536b1e119:   xchg   %ax,%ax
             0x00007fc536b1e11b:   call   0x00007fc536b1dca0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 121)
                                                                       ;   {optimized virtual_call}
   0.26%     0x00007fc536b1e120:   nop
             0x00007fc536b1e121:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 123)
   1.57%     0x00007fc536b1e125:   xchg   %ax,%ax
             0x00007fc536b1e127:   call   0x00007fc536b1dca0           ; ImmutableOopMap {}
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 123)
                                                                       ;   {optimized virtual_call}
   0.27%     0x00007fc536b1e12c:   nop
             0x00007fc536b1e12d:   mov    0x108(%r15),%rax
   1.50%     0x00007fc536b1e134:   lea    0x10(%rax),%rsi
   0.54%     0x00007fc536b1e138:   nopl   0x0(%rax,%rax,1)
             0x00007fc536b1e140:   cmp    0x118(%r15),%rsi
          ╭  0x00007fc536b1e147:   ja     0x00007fc536b1e17f
   0.58%  │  0x00007fc536b1e14d:   mov    %rsi,0x108(%r15)
   0.56%  │  0x00007fc536b1e154:   prefetchw 0xd0(%rax)
   1.70%  │  0x00007fc536b1e15b:   movq   $0x1,(%rax)
   0.75%  │  0x00007fc536b1e162:   movl   $0xd68,0x8(%rax)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
          │                                                            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.63%  │  0x00007fc536b1e169:   mov    0x10(%rsp),%rbp
   0.02%  │  0x00007fc536b1e16e:   add    $0x18,%rsp
          │  0x00007fc536b1e172:   mov    0x348(%r15),%rcx
   0.02%  │  0x00007fc536b1e179:   test   %eax,(%rcx)                  ;   {poll_return}
   0.58%  │  0x00007fc536b1e17b:   vzeroupper 
   0.48%  │  0x00007fc536b1e17e:   ret    
   0.00%  ↘  0x00007fc536b1e17f:   movabs $0x800000d68,%rsi            ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007fc536b1e189:   call   0x00007fc52f177980           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007fc536b1e18e:   nop                                 ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
             0x00007fc536b1e18f:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fc536b1e193
             0x00007fc536b1e191:   jmp    0x00007fc536b1e169           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 124)
....................................................................................................
  35.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 730 
  35.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 732 
   6.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 5, compile id 748 
   0.91%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.97%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 730 
  35.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 732 
   6.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 5, compile id 748 
   1.79%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  OtherRegionsTable::occupied 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.29%  <...other 111 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.65%       jvmci, level 4
   1.79%               kernel
   0.28%            libjvm.so
   0.13%         libc-2.31.so
   0.05%                     
   0.04%   libpthread-2.31.so
   0.03%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%       perf-50134.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline
# Parameters: (size = 64)

# Run progress: 75.00% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.108 ns/op
# Warmup Iteration   2: 16.631 ns/op
# Warmup Iteration   3: 16.669 ns/op
# Warmup Iteration   4: 16.629 ns/op
# Warmup Iteration   5: 16.647 ns/op
Iteration   1: 16.549 ns/op
Iteration   2: 16.595 ns/op
Iteration   3: 16.597 ns/op
Iteration   4: 16.594 ns/op
Iteration   5: 16.645 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline":
  16.596 ±(99.9%) 0.130 ns/op [Average]
  (min, avg, max) = (16.549, 16.596, 16.645), stdev = 0.034
  CI (99.9%): [16.466, 16.726] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm":
PrintAssembly processed: 191300 total address lines.
Perf output processed (skipped 58.603 seconds):
 Column 1: cycles (50991 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 723 

               #           [sp+0x20]  (sp of caller)
               0x00007f08d6b186a0:   mov    0x8(%rsi),%r10d
               0x00007f08d6b186a4:   movabs $0x800000000,%r12
               0x00007f08d6b186ae:   add    %r12,%r10
               0x00007f08d6b186b1:   xor    %r12,%r12
               0x00007f08d6b186b4:   cmp    %r10,%rax
               0x00007f08d6b186b7:   jne    0x00007f08cf01e780           ;   {runtime_call ic_miss_stub}
               0x00007f08d6b186bd:   nop
               0x00007f08d6b186be:   xchg   %ax,%ax
             [Verified Entry Point]
   1.00%       0x00007f08d6b186c0:   mov    %eax,-0x14000(%rsp)
   1.26%       0x00007f08d6b186c7:   sub    $0x18,%rsp
   0.25%       0x00007f08d6b186cb:   mov    %rbp,0x10(%rsp)
   1.20%       0x00007f08d6b186d0:   mov    0x108(%r15),%rax
   0.68%       0x00007f08d6b186d7:   lea    0xb0(%rax),%rsi
   0.64%       0x00007f08d6b186de:   xchg   %ax,%ax
   0.23%       0x00007f08d6b186e0:   cmp    0x118(%r15),%rsi
          ╭    0x00007f08d6b186e7:   ja     0x00007f08d6b18832
   1.27%  │    0x00007f08d6b186ed:   mov    %rsi,0x108(%r15)
   0.51%  │    0x00007f08d6b186f4:   prefetchw 0x170(%rax)
   0.81%  │    0x00007f08d6b186fb:   prefetchw 0x1b0(%rax)
   5.13%  │    0x00007f08d6b18702:   prefetchw 0x1f0(%rax)
   6.00%  │    0x00007f08d6b18709:   prefetchw 0x230(%rax)
   5.04%  │ ↗  0x00007f08d6b18710:   test   %rax,%rax
          │╭│  0x00007f08d6b18713:   je     0x00007f08d6b1883e
   0.50%  │││  0x00007f08d6b18719:   mov    %rax,%rsi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 132)
   0.25%  │││  0x00007f08d6b1871c:   lea    0x30(%rax),%r10              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 193)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.93%  │││  0x00007f08d6b18720:   lea    0x40(%rax),%rbp              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@16 (line 194)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.62%  │││  0x00007f08d6b18724:   lea    0x50(%rax),%r11              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@27 (line 195)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.52%  │││  0x00007f08d6b18728:   lea    0x60(%rax),%r8               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@38 (line 196)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.20%  │││  0x00007f08d6b1872c:   lea    0x70(%rax),%r9               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@49 (line 197)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.89%  │││  0x00007f08d6b18730:   lea    0x80(%rax),%rcx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@60 (line 198)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.63%  │││  0x00007f08d6b18737:   lea    0x90(%rax),%rbx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@71 (line 199)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.49%  │││  0x00007f08d6b1873e:   lea    0xa0(%rax),%rdi              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@82 (line 200)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 132)
   0.20%  │││  0x00007f08d6b18745:   movq   $0x1,(%rax)
   1.18%  │││  0x00007f08d6b1874c:   movl   $0xc265e0,0x8(%rax)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.72%  │││  0x00007f08d6b18753:   shr    $0x3,%r10
   0.55%  │││  0x00007f08d6b18757:   mov    %r10d,0xc(%rax)
   0.43%  │││  0x00007f08d6b1875b:   shr    $0x3,%rbp
   0.87%  │││  0x00007f08d6b1875f:   mov    %ebp,0x10(%rax)
   1.37%  │││  0x00007f08d6b18762:   shr    $0x3,%r11
   0.39%  │││  0x00007f08d6b18766:   mov    %r11d,0x14(%rax)
   1.21%  │││  0x00007f08d6b1876a:   shr    $0x3,%r8
   0.58%  │││  0x00007f08d6b1876e:   mov    %r8d,0x18(%rax)
   1.13%  │││  0x00007f08d6b18772:   shr    $0x3,%r9
   0.25%  │││  0x00007f08d6b18776:   mov    %r9d,0x1c(%rax)
   1.01%  │││  0x00007f08d6b1877a:   shr    $0x3,%rcx
   0.43%  │││  0x00007f08d6b1877e:   mov    %ecx,0x20(%rax)
   1.30%  │││  0x00007f08d6b18781:   shr    $0x3,%rbx
   0.21%  │││  0x00007f08d6b18785:   mov    %ebx,0x24(%rax)
   1.34%  │││  0x00007f08d6b18788:   shr    $0x3,%rdi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 132)
   0.36%  │││  0x00007f08d6b1878c:   mov    %edi,0x28(%rax)
   2.47%  │││  0x00007f08d6b1878f:   movq   $0x1,0x30(%rax)
   1.25%  │││  0x00007f08d6b18797:   movl   $0xd68,0x38(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.08%  │││  0x00007f08d6b1879e:   movq   $0x1,0x40(%rax)
   2.30%  │││  0x00007f08d6b187a6:   movl   $0xd68,0x48(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.36%  │││  0x00007f08d6b187ad:   movq   $0x1,0x50(%rax)
   1.62%  │││  0x00007f08d6b187b5:   movl   $0xd68,0x58(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.28%  │││  0x00007f08d6b187bc:   movq   $0x1,0x60(%rax)
   2.66%  │││  0x00007f08d6b187c4:   movl   $0xd68,0x68(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.39%  │││  0x00007f08d6b187cb:   movq   $0x1,0x70(%rax)
   1.85%  │││  0x00007f08d6b187d3:   movl   $0xd68,0x78(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.31%  │││  0x00007f08d6b187da:   movq   $0x1,0x80(%rax)
   2.69%  │││  0x00007f08d6b187e5:   movl   $0xd68,0x88(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.51%  │││  0x00007f08d6b187ef:   movq   $0x1,0x90(%rax)
   1.84%  │││  0x00007f08d6b187fa:   movl   $0xd68,0x98(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.63%  │││  0x00007f08d6b18804:   movq   $0x1,0xa0(%rax)
   1.89%  │││  0x00007f08d6b1880f:   movl   $0xd68,0xa8(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.84%  │││  0x00007f08d6b18819:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@7 (line 132)
   0.06%  │││  0x00007f08d6b1881c:   mov    0x10(%rsp),%rbp
   0.31%  │││  0x00007f08d6b18821:   add    $0x18,%rsp
   0.28%  │││  0x00007f08d6b18825:   mov    0x348(%r15),%rcx
   2.26%  │││  0x00007f08d6b1882c:   test   %eax,(%rcx)                  ;   {poll_return}
   1.34%  │││  0x00007f08d6b1882e:   vzeroupper 
   2.30%  │││  0x00007f08d6b18831:   ret    
          ↘││  0x00007f08d6b18832:   mov    $0x0,%rax
   0.01%   │╰  0x00007f08d6b18839:   jmp    0x00007f08d6b18710
   0.00%   ↘   0x00007f08d6b1883e:   mov    0x108(%r15),%rsi
               0x00007f08d6b18845:   lea    0x30(%rsi),%rax
               0x00007f08d6b18849:   cmp    0x118(%r15),%rax
               0x00007f08d6b18850:   ja     0x00007f08d6b18db0
   0.00%       0x00007f08d6b18856:   mov    %rax,0x108(%r15)
               0x00007f08d6b1885d:   prefetchw 0xf0(%rsi)
   0.00%       0x00007f08d6b18864:   movq   $0x1,(%rsi)
               0x00007f08d6b1886b:   movl   $0xc265e0,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.02%       0x00007f08d6b18872:   mov    %rsi,%r11
   0.01%       0x00007f08d6b18875:   vpxor  %xmm0,%xmm0,%xmm0
               0x00007f08d6b18879:   vmovdqu %ymm0,0xc(%r11)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 132)
   0.05%       0x00007f08d6b1887f:   mov    0x108(%r15),%rsi
               0x00007f08d6b18886:   lea    0x10(%rsi),%rax
               0x00007f08d6b1888a:   cmp    0x118(%r15),%rax
               0x00007f08d6b18891:   ja     0x00007f08d6b18dfc
               0x00007f08d6b18897:   mov    %rax,0x108(%r15)
               0x00007f08d6b1889e:   prefetchw 0xd0(%rsi)
               0x00007f08d6b188a5:   movq   $0x1,(%rsi)
               0x00007f08d6b188ac:   movl   $0xd68,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
               0x00007f08d6b188b3:   mov    %rsi,%r10                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 193)
....................................................................................................
  85.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  85.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 723 
   9.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 749 
   0.21%            libjvm.so  HeapRegionClaimer::claim_region 
   0.16%            libjvm.so  HeapRegionManager::par_iterate 
   0.16%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.12%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.11%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.11%                       <unknown> 
   0.09%            libjvm.so  ObjAllocator::initialize 
   0.08%            libjvm.so  G1FromCardCache::clear 
   0.07%               kernel  [unknown] 
   0.06%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%                       <unknown> 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%            libjvm.so  SpinPause 
   0.05%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.05%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   3.22%  <...other 590 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 723 
   9.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 749 
   1.40%               kernel  [unknown] 
   0.50%                       <unknown> 
   0.21%            libjvm.so  HeapRegionClaimer::claim_region 
   0.16%            libjvm.so  HeapRegionManager::par_iterate 
   0.12%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.11%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.11%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.09%            libjvm.so  ObjAllocator::initialize 
   0.09%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.08%            libjvm.so  G1FromCardCache::clear 
   0.07%               [vdso]  __vdso_clock_gettime 
   0.06%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.06%            libjvm.so  G1RebuildFreeListTask::work 
   0.06%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.05%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.05%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.05%            libjvm.so  SpinPause 
   0.05%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   1.50%  <...other 211 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.20%       jvmci, level 4
   2.48%            libjvm.so
   1.40%               kernel
   0.50%                     
   0.11%           ld-2.31.so
   0.10%         libc-2.31.so
   0.09%   libpthread-2.31.so
   0.07%               [vdso]
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.00%       libz.so.1.2.11
   0.00%       perf-50204.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 87.50% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.322 ns/op
# Warmup Iteration   2: 16.599 ns/op
# Warmup Iteration   3: 16.803 ns/op
# Warmup Iteration   4: 16.708 ns/op
# Warmup Iteration   5: 16.704 ns/op
Iteration   1: 16.714 ns/op
Iteration   2: 16.705 ns/op
Iteration   3: 16.539 ns/op
Iteration   4: 16.601 ns/op
Iteration   5: 16.730 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural":
  16.658 ±(99.9%) 0.322 ns/op [Average]
  (min, avg, max) = (16.539, 16.658, 16.730), stdev = 0.084
  CI (99.9%): [16.336, 16.980] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm":
PrintAssembly processed: 194469 total address lines.
Perf output processed (skipped 58.676 seconds):
 Column 1: cycles (50603 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 730 

               #           [sp+0x20]  (sp of caller)
               0x00007fadceb1c3a0:   mov    0x8(%rsi),%r10d
               0x00007fadceb1c3a4:   movabs $0x800000000,%r12
               0x00007fadceb1c3ae:   add    %r12,%r10
               0x00007fadceb1c3b1:   xor    %r12,%r12
               0x00007fadceb1c3b4:   cmp    %r10,%rax
               0x00007fadceb1c3b7:   jne    0x00007fadc701e780           ;   {runtime_call ic_miss_stub}
               0x00007fadceb1c3bd:   nop
               0x00007fadceb1c3be:   xchg   %ax,%ax
             [Verified Entry Point]
   0.93%       0x00007fadceb1c3c0:   mov    %eax,-0x14000(%rsp)
   1.44%       0x00007fadceb1c3c7:   sub    $0x18,%rsp
   0.23%       0x00007fadceb1c3cb:   mov    %rbp,0x10(%rsp)
   1.08%       0x00007fadceb1c3d0:   mov    0x108(%r15),%rax
   0.68%       0x00007fadceb1c3d7:   lea    0xb0(%rax),%rsi
   0.69%       0x00007fadceb1c3de:   xchg   %ax,%ax
   0.21%       0x00007fadceb1c3e0:   cmp    0x118(%r15),%rsi
          ╭    0x00007fadceb1c3e7:   ja     0x00007fadceb1c532
   1.05%  │    0x00007fadceb1c3ed:   mov    %rsi,0x108(%r15)
   0.59%  │    0x00007fadceb1c3f4:   prefetchw 0x170(%rax)
   0.95%  │    0x00007fadceb1c3fb:   prefetchw 0x1b0(%rax)
   5.20%  │    0x00007fadceb1c402:   prefetchw 0x1f0(%rax)
   6.16%  │    0x00007fadceb1c409:   prefetchw 0x230(%rax)
   5.22%  │ ↗  0x00007fadceb1c410:   test   %rax,%rax
          │╭│  0x00007fadceb1c413:   je     0x00007fadceb1c53e
   0.58%  │││  0x00007fadceb1c419:   mov    %rax,%rsi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 147)
   0.22%  │││  0x00007fadceb1c41c:   lea    0x30(%rax),%r10              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 139)
   0.84%  │││  0x00007fadceb1c420:   lea    0x40(%rax),%rbp              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@8 (line 140)
   0.71%  │││  0x00007fadceb1c424:   lea    0x50(%rax),%r11              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@16 (line 141)
   0.53%  │││  0x00007fadceb1c428:   lea    0x60(%rax),%r8               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@24 (line 142)
   0.22%  │││  0x00007fadceb1c42c:   lea    0x70(%rax),%r9               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@33 (line 143)
   0.85%  │││  0x00007fadceb1c430:   lea    0x80(%rax),%rcx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@42 (line 144)
   0.69%  │││  0x00007fadceb1c437:   lea    0x90(%rax),%rbx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@51 (line 145)
   0.57%  │││  0x00007fadceb1c43e:   lea    0xa0(%rax),%rdi              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@60 (line 146)
   0.22%  │││  0x00007fadceb1c445:   movq   $0x1,(%rax)
   1.25%  │││  0x00007fadceb1c44c:   movl   $0xc265e0,0x8(%rax)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.82%  │││  0x00007fadceb1c453:   shr    $0x3,%r10
   0.42%  │││  0x00007fadceb1c457:   mov    %r10d,0xc(%rax)
   0.43%  │││  0x00007fadceb1c45b:   shr    $0x3,%rbp
   0.94%  │││  0x00007fadceb1c45f:   mov    %ebp,0x10(%rax)
   1.56%  │││  0x00007fadceb1c462:   shr    $0x3,%r11
   0.39%  │││  0x00007fadceb1c466:   mov    %r11d,0x14(%rax)
   1.30%  │││  0x00007fadceb1c46a:   shr    $0x3,%r8
   0.57%  │││  0x00007fadceb1c46e:   mov    %r8d,0x18(%rax)
   1.24%  │││  0x00007fadceb1c472:   shr    $0x3,%r9
   0.22%  │││  0x00007fadceb1c476:   mov    %r9d,0x1c(%rax)
   0.99%  │││  0x00007fadceb1c47a:   shr    $0x3,%rcx
   0.47%  │││  0x00007fadceb1c47e:   mov    %ecx,0x20(%rax)
   1.38%  │││  0x00007fadceb1c481:   shr    $0x3,%rbx
   0.16%  │││  0x00007fadceb1c485:   mov    %ebx,0x24(%rax)
   1.38%  │││  0x00007fadceb1c488:   shr    $0x3,%rdi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 147)
   0.35%  │││  0x00007fadceb1c48c:   mov    %edi,0x28(%rax)
   2.27%  │││  0x00007fadceb1c48f:   movq   $0x1,0x30(%rax)
   1.17%  │││  0x00007fadceb1c497:   movl   $0xd68,0x38(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.17%  │││  0x00007fadceb1c49e:   movq   $0x1,0x40(%rax)
   2.19%  │││  0x00007fadceb1c4a6:   movl   $0xd68,0x48(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.28%  │││  0x00007fadceb1c4ad:   movq   $0x1,0x50(%rax)
   1.46%  │││  0x00007fadceb1c4b5:   movl   $0xd68,0x58(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.12%  │││  0x00007fadceb1c4bc:   movq   $0x1,0x60(%rax)
   2.67%  │││  0x00007fadceb1c4c4:   movl   $0xd68,0x68(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.49%  │││  0x00007fadceb1c4cb:   movq   $0x1,0x70(%rax)
   1.85%  │││  0x00007fadceb1c4d3:   movl   $0xd68,0x78(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.12%  │││  0x00007fadceb1c4da:   movq   $0x1,0x80(%rax)
   2.74%  │││  0x00007fadceb1c4e5:   movl   $0xd68,0x88(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.41%  │││  0x00007fadceb1c4ef:   movq   $0x1,0x90(%rax)
   1.76%  │││  0x00007fadceb1c4fa:   movl   $0xd68,0x98(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.73%  │││  0x00007fadceb1c504:   movq   $0x1,0xa0(%rax)
   1.89%  │││  0x00007fadceb1c50f:   movl   $0xd68,0xa8(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.90%  │││  0x00007fadceb1c519:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@89 (line 147)
   0.04%  │││  0x00007fadceb1c51c:   mov    0x10(%rsp),%rbp
   0.31%  │││  0x00007fadceb1c521:   add    $0x18,%rsp
   0.29%  │││  0x00007fadceb1c525:   mov    0x348(%r15),%rcx
   2.28%  │││  0x00007fadceb1c52c:   test   %eax,(%rcx)                  ;   {poll_return}
   1.36%  │││  0x00007fadceb1c52e:   vzeroupper 
   2.34%  │││  0x00007fadceb1c531:   ret    
   0.00%  ↘││  0x00007fadceb1c532:   mov    $0x0,%rax
   0.01%   │╰  0x00007fadceb1c539:   jmp    0x00007fadceb1c410
   0.00%   ↘   0x00007fadceb1c53e:   mov    0x108(%r15),%rsi
   0.00%       0x00007fadceb1c545:   lea    0x30(%rsi),%rax
               0x00007fadceb1c549:   cmp    0x118(%r15),%rax
               0x00007fadceb1c550:   ja     0x00007fadceb1cab0
               0x00007fadceb1c556:   mov    %rax,0x108(%r15)
               0x00007fadceb1c55d:   prefetchw 0xf0(%rsi)
               0x00007fadceb1c564:   movq   $0x1,(%rsi)
               0x00007fadceb1c56b:   movl   $0xc265e0,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.02%       0x00007fadceb1c572:   mov    %rsi,%r11
   0.01%       0x00007fadceb1c575:   vpxor  %xmm0,%xmm0,%xmm0
               0x00007fadceb1c579:   vmovdqu %ymm0,0xc(%r11)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 147)
....................................................................................................
  85.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 752 

              0x00007fadceb20d58:   call   0x00007fade4fa24f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fadceb20d5d:   nop
              0x00007fadceb20d5e:   mov    0x10(%rsp),%rdx
              0x00007fadceb20d63:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@10 (line 188)
              0x00007fadceb20d67:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fadceb20d70:   jmp    0x00007fadceb20d8f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@13 (line 190)
          │   0x00007fadceb20d75:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   0.75%  │↗  0x00007fadceb20d80:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@33 (line 192)
   0.75%  ││  0x00007fadceb20d87:   test   %eax,(%r11)                  ;   {poll}
   0.65%  ││  0x00007fadceb20d8a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@13 (line 190)
   0.77%  ↘│  0x00007fadceb20d8f:   mov    0x8(%rsp),%r10
   0.64%   │  0x00007fadceb20d94:   mov    %r10,%rsi
   0.76%   │  0x00007fadceb20d97:   call   0x00007fadc701ea80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual wrapper_obj_dse_inter_procedural {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   1.92%   │  0x00007fadceb20d9c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@20 (line 190)
   0.11%   │  0x00007fadceb20d9d:   mov    0x20(%rsp),%r10
   1.47%   │  0x00007fadceb20da2:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@26 (line 191)
   0.92%   │  0x00007fadceb20da5:   mov    0x18(%rsp),%rsi
   0.12%   │  0x00007fadceb20daa:   cmpb   $0x0,0x94(%rsi)
   1.37%   ╰  0x00007fadceb20db1:   je     0x00007fadceb20d80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@33 (line 192)
              0x00007fadceb20db3:   mov    %r10,0x20(%rsp)
              0x00007fadceb20db8:   call   0x00007fade4fa24f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fadceb20dbd:   nop
              0x00007fadceb20dbe:   mov    0x10(%rsp),%rdx
              0x00007fadceb20dc3:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@40 (line 193)
              0x00007fadceb20dc7:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@46 (line 194)
              0x00007fadceb20dcb:   vxorpd %xmm0,%xmm0,%xmm0
....................................................................................................
  10.23%  <total for region 2>

....[Hottest Regions]...............................................................................
  85.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 730 
  10.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 752 
   0.14%               kernel  [unknown] 
   0.13%            libjvm.so  HeapRegionClaimer::claim_region 
   0.13%            libjvm.so  HeapRegionManager::par_iterate 
   0.10%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%               kernel  [unknown] 
   0.07%            libjvm.so  G1FromCardCache::clear 
   0.07%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.06%            libjvm.so  ObjAllocator::initialize 
   0.06%         libc-2.31.so  [unknown] 
   0.06%         libc-2.31.so  [unknown] 
   0.06%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%            libjvm.so  SpinPause 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 730 
   0.04%            libjvm.so  InstanceKlass::check_valid_for_instantiation 
   2.79%  <...other 549 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 730 
  10.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 752 
   1.11%               kernel  [unknown] 
   0.18%                       <unknown> 
   0.16%         libc-2.31.so  [unknown] 
   0.13%            libjvm.so  HeapRegionClaimer::claim_region 
   0.13%            libjvm.so  HeapRegionManager::par_iterate 
   0.10%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.10%            libjvm.so  ObjAllocator::initialize 
   0.09%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.09%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.07%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%            libjvm.so  G1FromCardCache::clear 
   0.07%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.06%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.05%               [vdso]  __vdso_clock_gettime 
   0.05%            libjvm.so  SpinPause 
   0.05%            libjvm.so  G1Policy::preventive_collection_required 
   0.05%            libjvm.so  MemAllocator::allocate_inside_tlab_slow 
   0.05%            libjvm.so  HeapRegionManager::allocate_free_region 
   1.47%  <...other 201 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.91%       jvmci, level 4
   2.24%            libjvm.so
   1.11%               kernel
   0.24%         libc-2.31.so
   0.18%                     
   0.13%   libpthread-2.31.so
   0.10%           ld-2.31.so
   0.05%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:50

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

Benchmark                                                                (size)  Mode  Cnt   Score   Error  Units
DeadLocalAllocationStoreBenchmark.array_baseline                             64  avgt    5  12.984 ± 0.409  ns/op
DeadLocalAllocationStoreBenchmark.array_baseline:·asm                        64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.array_dse                                  64  avgt    5  13.092 ± 0.317  ns/op
DeadLocalAllocationStoreBenchmark.array_dse:·asm                             64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural                 64  avgt    5  26.013 ± 0.485  ns/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm            64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline                         64  avgt    5   7.400 ± 0.119  ns/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm                    64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_dse                                    64  avgt    5   7.358 ± 0.058  ns/op
DeadLocalAllocationStoreBenchmark.obj_dse:·asm                               64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural                   64  avgt    5  71.704 ± 0.098  ns/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm              64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline                       64  avgt    5  16.596 ± 0.130  ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm                  64  avgt          NaN            ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural           64  avgt    5  16.658 ± 0.322  ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm      64  avgt          NaN            ---
