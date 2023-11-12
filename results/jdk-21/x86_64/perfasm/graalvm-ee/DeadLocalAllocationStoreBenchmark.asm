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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline
# Parameters: (size = 64)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.902 ns/op
# Warmup Iteration   2: 13.847 ns/op
# Warmup Iteration   3: 13.791 ns/op
# Warmup Iteration   4: 13.743 ns/op
# Warmup Iteration   5: 13.811 ns/op
Iteration   1: 13.770 ns/op
                 gc.alloc.rate:      5540.239 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           22.000 counts
                 gc.time:            38.000 ms

Iteration   2: 13.996 ns/op
                 gc.alloc.rate:      5451.159 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           22.000 counts
                 gc.time:            38.000 ms

Iteration   3: 13.811 ns/op
                 gc.alloc.rate:      5523.789 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            41.000 ms

Iteration   4: 13.839 ns/op
                 gc.alloc.rate:      5512.671 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           22.000 counts
                 gc.time:            39.000 ms

Iteration   5: 13.831 ns/op
                 gc.alloc.rate:      5515.978 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            40.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline":
  13.850 ±(99.9%) 0.331 ns/op [Average]
  (min, avg, max) = (13.770, 13.850, 13.996), stdev = 0.086
  CI (99.9%): [13.519, 14.180] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:asm":
PrintAssembly processed: 242612 total address lines.
Perf output processed (skipped 61.312 seconds):
 Column 1: cycles (50810 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 1005 

                      # {method} {0x00007f05cc47d6b8} &apos;array_baseline&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007f0652d80ea0:   mov    0x8(%rsi),%r10d
                      0x00007f0652d80ea4:   movabs $0x7f05d7000000,%r12
                      0x00007f0652d80eae:   add    %r12,%r10
                      0x00007f0652d80eb1:   xor    %r12,%r12
                      0x00007f0652d80eb4:   cmp    %r10,%rax
                      0x00007f0652d80eb7:   jne    0x00007f0652764080           ;   {runtime_call ic_miss_stub}
                      0x00007f0652d80ebd:   data16 xchg %ax,%ax
                    [Verified Entry Point]
   1.83%              0x00007f0652d80ec0:   mov    %eax,-0x14000(%rsp)
   0.84%              0x00007f0652d80ec7:   sub    $0x18,%rsp
   1.92%              0x00007f0652d80ecb:   nop
   0.12%              0x00007f0652d80ecc:   cmpl   $0x1,0x20(%r15)
   0.76%              0x00007f0652d80ed4:   jne    0x00007f0652d8104d
   1.24%              0x00007f0652d80eda:   mov    %rbp,0x10(%rsp)
   1.03%              0x00007f0652d80edf:   mov    %rsi,%r10
   0.09%              0x00007f0652d80ee2:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@1 (line 152)
   0.43%              0x00007f0652d80ee6:   test   %edx,%edx
                      0x00007f0652d80ee8:   jl     0x00007f0652d8102e
   1.19%              0x00007f0652d80eee:   mov    0x1b8(%r15),%r11
   1.05%              0x00007f0652d80ef5:   mov    %edx,%eax
   0.09%              0x00007f0652d80ef7:   lea    0x17(%rax),%rax
   0.39%              0x00007f0652d80efb:   and    $0xfffffffffffffff8,%rax
   1.18%              0x00007f0652d80eff:   mov    %rax,%rsi
   0.96%              0x00007f0652d80f02:   add    %r11,%rsi
   0.15%              0x00007f0652d80f05:   cmp    0x1c8(%r15),%rsi
          ╭           0x00007f0652d80f0c:   ja     0x00007f0652d81003
   1.16%  │           0x00007f0652d80f12:   mov    %rsi,0x1b8(%r15)
   2.05%  │           0x00007f0652d80f19:   prefetchw 0xc0(%rax,%r11,1)
   5.90%  │           0x00007f0652d80f22:   prefetchw 0x100(%rax,%r11,1)
   0.20%  │           0x00007f0652d80f2b:   prefetchw 0x140(%rax,%r11,1)
   1.76%  │           0x00007f0652d80f34:   prefetchw 0x180(%rax,%r11,1)
   2.73%  │           0x00007f0652d80f3d:   movq   $0x1,(%r11)
   2.86%  │           0x00007f0652d80f44:   movl   $0x22c0,0x8(%r11)            ;   {metadata({type array byte})}
   0.98%  │           0x00007f0652d80f4c:   mov    %edx,0xc(%r11)
   1.24%  │           0x00007f0652d80f50:   lea    -0x10(%rax),%rcx
   0.19%  │           0x00007f0652d80f54:   nopl   0x0(%rax,%rax,1)
   1.07%  │           0x00007f0652d80f5c:   data16 data16 xchg %ax,%ax
   0.40%  │           0x00007f0652d80f60:   cmp    $0x810,%rax
          │           0x00007f0652d80f67:   jae    0x00007f0652d81022
   1.12%  │           0x00007f0652d80f6d:   test   $0xfffffffffffffff8,%rcx
          │╭          0x00007f0652d80f74:   je     0x00007f0652d80fb3
   0.18%  ││          0x00007f0652d80f7a:   lea    0x10(%r11),%rax
   1.12%  ││          0x00007f0652d80f7e:   shr    $0x3,%rcx
   0.45%  ││          0x00007f0652d80f82:   vpxor  %xmm0,%xmm0,%xmm0
   1.05%  ││          0x00007f0652d80f86:   cmp    $0x4,%rcx
          ││╭         0x00007f0652d80f8a:   jb     0x00007f0652d80ff5
   0.18%  │││         0x00007f0652d80f90:   lea    -0x4(%rcx),%rsi
   1.59%  │││         0x00007f0652d80f94:   mov    $0x0,%rdx
   0.40%  │││         0x00007f0652d80f9b:   nopl   0x0(%rax,%rax,1)
   1.17%  │││↗        0x00007f0652d80fa0:   vmovdqu %ymm0,(%rax,%rdx,8)
   7.25%  ││││        0x00007f0652d80fa5:   lea    0x4(%rdx),%rdx
   1.73%  ││││        0x00007f0652d80fa9:   cmp    %rsi,%rdx
          │││╰        0x00007f0652d80fac:   jle    0x00007f0652d80fa0
   0.64%  │││ ╭       0x00007f0652d80fae:   jmp    0x00007f0652d80fd1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 152)
   2.82%  │↘│ │ ↗↗    0x00007f0652d80fb3:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@6 (line 152)
          │ │ │ ││    0x00007f0652d80fb6:   mov    0x10(%rsp),%rbp
   0.14%  │ │ │ ││    0x00007f0652d80fbb:   add    $0x18,%rsp
          │ │ │ ││    0x00007f0652d80fbf:   nop
   2.73%  │ │ │ ││    0x00007f0652d80fc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ │ ││    0x00007f0652d80fc7:   ja     0x00007f0652d8105d
   0.25%  │ │ │ ││    0x00007f0652d80fcd:   vzeroupper 
   2.67%  │ │ │ ││    0x00007f0652d80fd0:   ret    
   0.10%  │ │ ↘ ││↗   0x00007f0652d80fd1:   lea    -0x2(%rcx),%rsi
   1.08%  │ │   │││   0x00007f0652d80fd5:   cmp    %rsi,%rdx
          │ │  ╭│││   0x00007f0652d80fd8:   jg     0x00007f0652d80ffe
          │ │  ││││   0x00007f0652d80fde:   vmovdqu %xmm0,(%rax,%rdx,8)
          │ │  ││││   0x00007f0652d80fe3:   lea    0x2(%rdx),%rsi
   2.74%  │ │  ││││↗  0x00007f0652d80fe7:   dec    %rcx
          │ │  │││││  0x00007f0652d80fea:   cmp    %rcx,%rsi
          │ │  │╰│││  0x00007f0652d80fed:   jg     0x00007f0652d80fb3
          │ │  │ │││  0x00007f0652d80fef:   mov    %r12,(%rax,%rsi,8)
          │ │  │ ╰││  0x00007f0652d80ff3:   jmp    0x00007f0652d80fb3
          │ ↘  │  ││  0x00007f0652d80ff5:   mov    $0x0,%rdx
          │    │  ╰│  0x00007f0652d80ffc:   jmp    0x00007f0652d80fd1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@4 (line 152)
   1.56%  │    ↘   │  0x00007f0652d80ffe:   mov    %rdx,%rsi
          │        ╰  0x00007f0652d81001:   jmp    0x00007f0652d80fe7
   0.00%  ↘           0x00007f0652d81003:   movabs $0x7f05d70022c0,%rsi         ;   {metadata({type array byte})}
   0.00%              0x00007f0652d8100d:   call   0x00007f06528ed880           ; ImmutableOopMap {r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 152)
                                                                                ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
                      0x00007f0652d81012:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@0 (line 152)
                      0x00007f0652d8101a:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f0652d81071
                      0x00007f0652d8101c:   mov    %rax,%r11
                      0x00007f0652d8101f:   nop
                      0x00007f0652d81020:   jmp    0x00007f0652d80fb3
....................................................................................................
  64.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 1052 

              0x00007f0652d89873:   mov    0x10(%rsp),%rdx
              0x00007f0652d89878:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@10 (line 192)
              0x00007f0652d8987c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f0652d89885:   jmp    0x00007f0652d898af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 194)
          │   0x00007f0652d8988a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f0652d89895:   data16 data16 xchg %ax,%ax
          │   0x00007f0652d89899:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
   2.46%  │↗  0x00007f0652d898a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
   0.04%  ││  0x00007f0652d898a7:   test   %eax,(%r11)                  ;   {poll}
   2.95%  ││  0x00007f0652d898aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@13 (line 194)
   0.09%  ↘│  0x00007f0652d898af:   mov    0x8(%rsp),%r10
   0.73%   │  0x00007f0652d898b4:   mov    %r10,%rsi
           │  0x00007f0652d898b7:   call   0x00007f0652764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   0.43%   │  0x00007f0652d898bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f0652d898c4:   mov    0x20(%rsp),%r10
  12.27%   │  0x00007f0652d898c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@26 (line 195)
   2.45%   │  0x00007f0652d898cc:   mov    0x18(%rsp),%rsi
   0.02%   │  0x00007f0652d898d1:   cmpb   $0x0,0x94(%rsi)
  10.37%   ╰  0x00007f0652d898d8:   je     0x00007f0652d898a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
              0x00007f0652d898da:   mov    %r10,0x20(%rsp)
              0x00007f0652d898df:   nop
              0x00007f0652d898e0:   call   0x00007f066a9cbdf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f0652d898e5:   nop
              0x00007f0652d898e6:   mov    0x10(%rsp),%rdx
              0x00007f0652d898eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@40 (line 197)
              0x00007f0652d898ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@46 (line 198)
....................................................................................................
  31.81%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 1005 
  31.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 1052 
   0.16%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.10%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%         libc-2.31.so  __memset_avx2_erms 
   0.05%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.04%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%           ld-2.31.so  __tls_get_addr 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%               kernel  [unknown] 
   2.13%  <...other 521 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 1005 
  31.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 1052 
   1.52%               kernel  [unknown] 
   0.21%                       <unknown> 
   0.10%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%         libc-2.31.so  __memset_avx2_erms 
   0.05%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.05%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%            libjvm.so  ObjArrayAllocator::initialize 
   0.05%            libjvm.so  HeapRegionManager::par_iterate 
   0.04%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%           ld-2.31.so  __tls_get_addr 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%               [vdso]  __vdso_clock_gettime 
   0.02%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  G1FromCardCache::clear 
   1.02%  <...other 223 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.59%       jvmci, level 4
   1.52%               kernel
   1.20%            libjvm.so
   0.25%         libc-2.31.so
   0.21%                     
   0.07%   libpthread-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%           ld-2.31.so
   0.03%       hsdis-amd64.so
   0.03%               [vdso]
   0.02%          interpreter
   0.00%          c1, level 3
   0.00%     perf-2125901.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate":
  5508.767 ±(99.9%) 130.611 MB/sec [Average]
  (min, avg, max) = (5451.159, 5508.767, 5540.239), stdev = 33.919
  CI (99.9%): [5378.156, 5639.378] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.count":
  112.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (22.000, 22.400, 23.000), stdev = 0.548
  CI (99.9%): [112.000, 112.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.time":
  196.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (38.000, 39.200, 41.000), stdev = 1.304
  CI (99.9%): [196.000, 196.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse
# Parameters: (size = 64)

# Run progress: 12.50% complete, ETA 00:13:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.884 ns/op
# Warmup Iteration   2: 13.676 ns/op
# Warmup Iteration   3: 13.885 ns/op
# Warmup Iteration   4: 13.780 ns/op
# Warmup Iteration   5: 13.797 ns/op
Iteration   1: 13.687 ns/op
                 gc.alloc.rate:      5574.109 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            41.000 ms

Iteration   2: 13.749 ns/op
                 gc.alloc.rate:      5548.824 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           22.000 counts
                 gc.time:            41.000 ms

Iteration   3: 13.663 ns/op
                 gc.alloc.rate:      5583.747 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            41.000 ms

Iteration   4: 13.732 ns/op
                 gc.alloc.rate:      5555.869 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            40.000 ms

Iteration   5: 13.768 ns/op
                 gc.alloc.rate:      5541.332 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           22.000 counts
                 gc.time:            40.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse":
  13.720 ±(99.9%) 0.168 ns/op [Average]
  (min, avg, max) = (13.663, 13.720, 13.768), stdev = 0.044
  CI (99.9%): [13.552, 13.888] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:asm":
PrintAssembly processed: 243644 total address lines.
Perf output processed (skipped 61.275 seconds):
 Column 1: cycles (50960 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 993 

                      # {method} {0x00007f448747d7b0} &apos;array_dse&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007f4506d80a20:   mov    0x8(%rsi),%r10d
                      0x00007f4506d80a24:   movabs $0x7f448b000000,%r12
                      0x00007f4506d80a2e:   add    %r12,%r10
                      0x00007f4506d80a31:   xor    %r12,%r12
                      0x00007f4506d80a34:   cmp    %r10,%rax
                      0x00007f4506d80a37:   jne    0x00007f4506764080           ;   {runtime_call ic_miss_stub}
                      0x00007f4506d80a3d:   data16 xchg %ax,%ax
                    [Verified Entry Point]
   1.12%              0x00007f4506d80a40:   mov    %eax,-0x14000(%rsp)
   1.64%              0x00007f4506d80a47:   sub    $0x18,%rsp
   1.07%              0x00007f4506d80a4b:   nop
   0.10%              0x00007f4506d80a4c:   cmpl   $0x1,0x20(%r15)
   1.63%              0x00007f4506d80a54:   jne    0x00007f4506d80bcd
   1.20%              0x00007f4506d80a5a:   mov    %rbp,0x10(%rsp)
   0.54%              0x00007f4506d80a5f:   mov    %rsi,%r10
   0.13%              0x00007f4506d80a62:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@1 (line 160)
   0.86%              0x00007f4506d80a66:   test   %edx,%edx
                      0x00007f4506d80a68:   jl     0x00007f4506d80bae
   1.25%              0x00007f4506d80a6e:   mov    0x1b8(%r15),%r11
   0.62%              0x00007f4506d80a75:   mov    %edx,%eax
   0.13%              0x00007f4506d80a77:   lea    0x17(%rax),%rax
   0.85%              0x00007f4506d80a7b:   and    $0xfffffffffffffff8,%rax
   1.26%              0x00007f4506d80a7f:   mov    %rax,%rsi
   0.55%              0x00007f4506d80a82:   add    %r11,%rsi
   0.13%              0x00007f4506d80a85:   cmp    0x1c8(%r15),%rsi
          ╭           0x00007f4506d80a8c:   ja     0x00007f4506d80b83
   1.85%  │           0x00007f4506d80a92:   mov    %rsi,0x1b8(%r15)
   1.82%  │           0x00007f4506d80a99:   prefetchw 0xc0(%rax,%r11,1)
   5.05%  │           0x00007f4506d80aa2:   prefetchw 0x100(%rax,%r11,1)
   0.27%  │           0x00007f4506d80aab:   prefetchw 0x140(%rax,%r11,1)
   2.70%  │           0x00007f4506d80ab4:   prefetchw 0x180(%rax,%r11,1)
   2.47%  │           0x00007f4506d80abd:   movq   $0x1,(%r11)
   1.21%  │           0x00007f4506d80ac4:   movl   $0x22c0,0x8(%r11)            ;   {metadata({type array byte})}
   1.96%  │           0x00007f4506d80acc:   mov    %edx,0xc(%r11)
   1.35%  │           0x00007f4506d80ad0:   lea    -0x10(%rax),%rcx
   0.17%  │           0x00007f4506d80ad4:   nopl   0x0(%rax,%rax,1)
   0.41%  │           0x00007f4506d80adc:   data16 data16 xchg %ax,%ax
   0.77%  │           0x00007f4506d80ae0:   cmp    $0x810,%rax
          │           0x00007f4506d80ae7:   jae    0x00007f4506d80ba2
   1.41%  │           0x00007f4506d80aed:   test   $0xfffffffffffffff8,%rcx
          │╭          0x00007f4506d80af4:   je     0x00007f4506d80b33
   0.14%  ││          0x00007f4506d80afa:   lea    0x10(%r11),%rax
   0.39%  ││          0x00007f4506d80afe:   shr    $0x3,%rcx
   0.85%  ││          0x00007f4506d80b02:   vpxor  %xmm0,%xmm0,%xmm0
   1.36%  ││          0x00007f4506d80b06:   cmp    $0x4,%rcx
          ││╭         0x00007f4506d80b0a:   jb     0x00007f4506d80b75
   0.15%  │││         0x00007f4506d80b10:   lea    -0x4(%rcx),%rsi
   0.60%  │││         0x00007f4506d80b14:   mov    $0x0,%rdx
   0.76%  │││         0x00007f4506d80b1b:   nopl   0x0(%rax,%rax,1)
   1.49%  │││↗        0x00007f4506d80b20:   vmovdqu %ymm0,(%rax,%rdx,8)
   8.01%  ││││        0x00007f4506d80b25:   lea    0x4(%rdx),%rdx
   1.47%  ││││        0x00007f4506d80b29:   cmp    %rsi,%rdx
          │││╰        0x00007f4506d80b2c:   jle    0x00007f4506d80b20
   0.25%  │││ ╭       0x00007f4506d80b2e:   jmp    0x00007f4506d80b51           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 163)
   2.77%  │↘│ │ ↗↗    0x00007f4506d80b33:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@29 (line 164)
          │ │ │ ││    0x00007f4506d80b36:   mov    0x10(%rsp),%rbp
   0.18%  │ │ │ ││    0x00007f4506d80b3b:   add    $0x18,%rsp
          │ │ │ ││    0x00007f4506d80b3f:   nop
   2.72%  │ │ │ ││    0x00007f4506d80b40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ │ ││    0x00007f4506d80b47:   ja     0x00007f4506d80bdd
   0.35%  │ │ │ ││    0x00007f4506d80b4d:   vzeroupper 
   2.81%  │ │ │ ││    0x00007f4506d80b50:   ret    
   0.14%  │ │ ↘ ││↗   0x00007f4506d80b51:   lea    -0x2(%rcx),%rsi
   1.27%  │ │   │││   0x00007f4506d80b55:   cmp    %rsi,%rdx
          │ │  ╭│││   0x00007f4506d80b58:   jg     0x00007f4506d80b7e
          │ │  ││││   0x00007f4506d80b5e:   vmovdqu %xmm0,(%rax,%rdx,8)
          │ │  ││││   0x00007f4506d80b63:   lea    0x2(%rdx),%rsi
   2.64%  │ │  ││││↗  0x00007f4506d80b67:   dec    %rcx
          │ │  │││││  0x00007f4506d80b6a:   cmp    %rcx,%rsi
          │ │  │╰│││  0x00007f4506d80b6d:   jg     0x00007f4506d80b33
          │ │  │ │││  0x00007f4506d80b6f:   mov    %r12,(%rax,%rsi,8)
          │ │  │ ╰││  0x00007f4506d80b73:   jmp    0x00007f4506d80b33
          │ ↘  │  ││  0x00007f4506d80b75:   mov    $0x0,%rdx
          │    │  ╰│  0x00007f4506d80b7c:   jmp    0x00007f4506d80b51           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@25 (line 163)
   1.54%  │    ↘   │  0x00007f4506d80b7e:   mov    %rdx,%rsi
          │        ╰  0x00007f4506d80b81:   jmp    0x00007f4506d80b67
          ↘           0x00007f4506d80b83:   movabs $0x7f448b0022c0,%rsi         ;   {metadata({type array byte})}
   0.00%              0x00007f4506d80b8d:   call   0x00007f45068ed900           ; ImmutableOopMap {r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 160)
                                                                                ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
                      0x00007f4506d80b92:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@0 (line 160)
                      0x00007f4506d80b9a:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f4506d80bf1
                      0x00007f4506d80b9c:   mov    %rax,%r11
                      0x00007f4506d80b9f:   nop
                      0x00007f4506d80ba0:   jmp    0x00007f4506d80b33
....................................................................................................
  64.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 1041 

              0x00007f4506d87e73:   mov    0x10(%rsp),%rdx
              0x00007f4506d87e78:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@10 (line 192)
              0x00007f4506d87e7c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f4506d87e85:   jmp    0x00007f4506d87eaf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 194)
          │   0x00007f4506d87e8a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f4506d87e95:   data16 data16 xchg %ax,%ax
          │   0x00007f4506d87e99:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
   2.62%  │↗  0x00007f4506d87ea0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
   0.05%  ││  0x00007f4506d87ea7:   test   %eax,(%r11)                  ;   {poll}
   1.66%  ││  0x00007f4506d87eaa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@13 (line 194)
   0.14%  ↘│  0x00007f4506d87eaf:   mov    0x8(%rsp),%r10
   1.61%   │  0x00007f4506d87eb4:   mov    %r10,%rsi
   0.00%   │  0x00007f4506d87eb7:   call   0x00007f4506764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   0.68%   │  0x00007f4506d87ebc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.00%   │  0x00007f4506d87ec4:   mov    0x20(%rsp),%r10
  12.28%   │  0x00007f4506d87ec9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@26 (line 195)
   2.46%   │  0x00007f4506d87ecc:   mov    0x18(%rsp),%rsi
   0.04%   │  0x00007f4506d87ed1:   cmpb   $0x0,0x94(%rsi)
  10.57%   ╰  0x00007f4506d87ed8:   je     0x00007f4506d87ea0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
              0x00007f4506d87eda:   mov    %r10,0x20(%rsp)
              0x00007f4506d87edf:   nop
              0x00007f4506d87ee0:   call   0x00007f451fa59df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f4506d87ee5:   nop
              0x00007f4506d87ee6:   mov    0x10(%rsp),%rdx
              0x00007f4506d87eeb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@40 (line 197)
              0x00007f4506d87eef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@46 (line 198)
....................................................................................................
  32.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 993 
  32.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 1041 
   0.16%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.11%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  FreeListAllocator::reset 
   0.06%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   2.32%  <...other 531 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 993 
  32.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 1041 
   1.59%              kernel  [unknown] 
   0.19%                      <unknown> 
   0.14%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.06%           libjvm.so  FreeListAllocator::reset 
   0.06%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  ObjArrayAllocator::initialize 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  TypeArrayKlass::allocate_common 
   0.04%           libjvm.so  MemAllocator::allocate 
   0.04%           libjvm.so  G1CardSet::clear 
   0.04%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%           libjvm.so  JVMCIRuntime::new_array_common 
   0.03%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.96%  <...other 186 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.51%      jvmci, level 4
   1.59%              kernel
   1.33%           libjvm.so
   0.21%        libc-2.31.so
   0.19%                    
   0.06%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.03%              [vdso]
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate":
  5560.776 ±(99.9%) 68.083 MB/sec [Average]
  (min, avg, max) = (5541.332, 5560.776, 5583.747), stdev = 17.681
  CI (99.9%): [5492.694, 5628.859] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.count":
  113.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (22.000, 22.600, 23.000), stdev = 0.548
  CI (99.9%): [113.000, 113.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.time":
  203.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (40.000, 40.600, 41.000), stdev = 0.548
  CI (99.9%): [203.000, 203.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 25.00% complete, ETA 00:11:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 30.943 ns/op
# Warmup Iteration   2: 30.336 ns/op
# Warmup Iteration   3: 30.349 ns/op
# Warmup Iteration   4: 30.522 ns/op
# Warmup Iteration   5: 30.512 ns/op
Iteration   1: 30.526 ns/op
                 gc.alloc.rate:      2499.255 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           11.000 counts
                 gc.time:            19.000 ms

Iteration   2: 30.528 ns/op
                 gc.alloc.rate:      2499.089 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            18.000 ms

Iteration   3: 30.540 ns/op
                 gc.alloc.rate:      2498.072 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            18.000 ms

Iteration   4: 30.554 ns/op
                 gc.alloc.rate:      2496.957 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            18.000 ms

Iteration   5: 30.417 ns/op
                 gc.alloc.rate:      2508.219 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            18.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural":
  30.513 ±(99.9%) 0.211 ns/op [Average]
  (min, avg, max) = (30.417, 30.513, 30.554), stdev = 0.055
  CI (99.9%): [30.301, 30.724] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:asm":
PrintAssembly processed: 238883 total address lines.
Perf output processed (skipped 61.036 seconds):
 Column 1: cycles (50861 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 985 

                      # {method} {0x00007f0f6c486cd8} &apos;array_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007f0ff2d7dcc0:   mov    0x8(%rsi),%r10d
                      0x00007f0ff2d7dcc4:   movabs $0x7f0f77000000,%r12
                      0x00007f0ff2d7dcce:   add    %r12,%r10
                      0x00007f0ff2d7dcd1:   xor    %r12,%r12
                      0x00007f0ff2d7dcd4:   cmp    %r10,%rax
                      0x00007f0ff2d7dcd7:   jne    0x00007f0ff2764080           ;   {runtime_call ic_miss_stub}
                      0x00007f0ff2d7dcdd:   data16 xchg %ax,%ax
                    [Verified Entry Point]
   0.51%              0x00007f0ff2d7dce0:   mov    %eax,-0x14000(%rsp)
   0.98%              0x00007f0ff2d7dce7:   sub    $0x18,%rsp
   0.45%              0x00007f0ff2d7dceb:   nop
   0.03%              0x00007f0ff2d7dcec:   cmpl   $0x1,0x20(%r15)
   0.63%              0x00007f0ff2d7dcf4:   jne    0x00007f0ff2d7df33
   0.55%              0x00007f0ff2d7dcfa:   mov    %rbp,0x10(%rsp)
   0.30%              0x00007f0ff2d7dcff:   mov    %rsi,(%rsp)
   1.27%              0x00007f0ff2d7dd03:   cmpl   $0x0,0xc(%rsi)
   0.32%              0x00007f0ff2d7dd07:   jl     0x00007f0ff2d7deef           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@4 (line 172)
   0.16%              0x00007f0ff2d7dd0d:   mov    %rsi,%r10
   0.23%              0x00007f0ff2d7dd10:   data16 xchg %ax,%ax
   0.45%              0x00007f0ff2d7dd13:   call   0x00007f0ff2d7d6a0           ; ImmutableOopMap {[0]=Oop }
                                                                                ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@8 (line 173)
                                                                                ;   {optimized virtual_call}
  10.43%              0x00007f0ff2d7dd18:   nopl   0x208(%rax,%rax,1)           ;   {other}
   0.00%              0x00007f0ff2d7dd20:   mov    (%rsp),%rsi
   0.01%              0x00007f0ff2d7dd24:   cmpl   $0x0,0xc(%rsi)
   3.62%              0x00007f0ff2d7dd28:   jl     0x00007f0ff2d7df11           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@15 (line 174)
   0.82%              0x00007f0ff2d7dd2e:   mov    %rsi,%r10
                      0x00007f0ff2d7dd31:   xchg   %ax,%ax
   0.01%              0x00007f0ff2d7dd33:   call   0x00007f0ff2d7d6a0           ; ImmutableOopMap {[0]=Oop }
                                                                                ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@19 (line 175)
                                                                                ;   {optimized virtual_call}
   4.10%              0x00007f0ff2d7dd38:   nopl   0x1000228(%rax,%rax,1)       ;   {other}
   0.06%              0x00007f0ff2d7dd40:   mov    (%rsp),%rsi
   0.00%              0x00007f0ff2d7dd44:   cmpl   $0x0,0xc(%rsi)
   7.23%              0x00007f0ff2d7dd48:   jl     0x00007f0ff2d7deae           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@26 (line 176)
   1.23%              0x00007f0ff2d7dd4e:   mov    %rsi,%r10
                      0x00007f0ff2d7dd51:   xchg   %ax,%ax
                      0x00007f0ff2d7dd53:   call   0x00007f0ff2d7d6a0           ; ImmutableOopMap {[0]=Oop }
                                                                                ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@30 (line 177)
                                                                                ;   {optimized virtual_call}
   5.18%              0x00007f0ff2d7dd58:   nopl   0x2000248(%rax,%rax,1)       ;   {other}
                      0x00007f0ff2d7dd60:   mov    (%rsp),%r10
   0.01%              0x00007f0ff2d7dd64:   mov    0xc(%r10),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@34 (line 178)
   4.69%              0x00007f0ff2d7dd68:   test   %edx,%edx
                      0x00007f0ff2d7dd6a:   jl     0x00007f0ff2d7ded0
   1.20%              0x00007f0ff2d7dd70:   mov    0x1b8(%r15),%r11
                      0x00007f0ff2d7dd77:   mov    %edx,%eax
                      0x00007f0ff2d7dd79:   lea    0x17(%rax),%rax
                      0x00007f0ff2d7dd7d:   and    $0xfffffffffffffff8,%rax
   1.28%              0x00007f0ff2d7dd81:   mov    %rax,%rsi
   0.00%              0x00007f0ff2d7dd84:   add    %r11,%rsi
   1.31%              0x00007f0ff2d7dd87:   cmp    0x1c8(%r15),%rsi
          ╭           0x00007f0ff2d7dd8e:   ja     0x00007f0ff2d7de83
   1.23%  │           0x00007f0ff2d7dd94:   mov    %rsi,0x1b8(%r15)
   1.83%  │           0x00007f0ff2d7dd9b:   prefetchw 0xc0(%rax,%r11,1)
   1.72%  │           0x00007f0ff2d7dda4:   prefetchw 0x100(%rax,%r11,1)
   0.01%  │           0x00007f0ff2d7ddad:   prefetchw 0x140(%rax,%r11,1)
   1.85%  │           0x00007f0ff2d7ddb6:   prefetchw 0x180(%rax,%r11,1)
   1.24%  │           0x00007f0ff2d7ddbf:   movq   $0x1,(%r11)
   0.00%  │           0x00007f0ff2d7ddc6:   movl   $0x22c0,0x8(%r11)            ;   {metadata({type array byte})}
   0.00%  │           0x00007f0ff2d7ddce:   mov    %edx,0xc(%r11)
   0.90%  │           0x00007f0ff2d7ddd2:   lea    -0x10(%rax),%rcx
   0.38%  │           0x00007f0ff2d7ddd6:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │           0x00007f0ff2d7dde0:   cmp    $0x810,%rax
          │           0x00007f0ff2d7dde7:   jae    0x00007f0ff2d7dea2
   0.00%  │           0x00007f0ff2d7dded:   test   $0xfffffffffffffff8,%rcx
          │╭          0x00007f0ff2d7ddf4:   je     0x00007f0ff2d7de33
   0.88%  ││          0x00007f0ff2d7ddfa:   lea    0x10(%r11),%rax
   0.34%  ││          0x00007f0ff2d7ddfe:   shr    $0x3,%rcx
   0.00%  ││          0x00007f0ff2d7de02:   vpxor  %xmm0,%xmm0,%xmm0
   0.00%  ││          0x00007f0ff2d7de06:   cmp    $0x4,%rcx
          ││╭         0x00007f0ff2d7de0a:   jb     0x00007f0ff2d7de75
   0.96%  │││         0x00007f0ff2d7de10:   lea    -0x4(%rcx),%rsi
   0.57%  │││         0x00007f0ff2d7de14:   mov    $0x0,%rdx
   0.00%  │││         0x00007f0ff2d7de1b:   nopl   0x0(%rax,%rax,1)
   0.01%  │││↗        0x00007f0ff2d7de20:   vmovdqu %ymm0,(%rax,%rdx,8)
   4.08%  ││││        0x00007f0ff2d7de25:   lea    0x4(%rdx),%rdx
   1.03%  ││││        0x00007f0ff2d7de29:   cmp    %rsi,%rdx
          │││╰        0x00007f0ff2d7de2c:   jle    0x00007f0ff2d7de20
   0.19%  │││ ╭       0x00007f0ff2d7de2e:   jmp    0x00007f0ff2d7de51           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 178)
   1.17%  │↘│ │ ↗↗    0x00007f0ff2d7de33:   mov    %r11,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@41 (line 179)
          │ │ │ ││    0x00007f0ff2d7de36:   mov    0x10(%rsp),%rbp
   0.06%  │ │ │ ││    0x00007f0ff2d7de3b:   add    $0x18,%rsp
          │ │ │ ││    0x00007f0ff2d7de3f:   nop
   1.23%  │ │ │ ││    0x00007f0ff2d7de40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ │ ││    0x00007f0ff2d7de47:   ja     0x00007f0ff2d7df46
   0.06%  │ │ │ ││    0x00007f0ff2d7de4d:   vzeroupper 
   1.18%  │ │ │ ││    0x00007f0ff2d7de50:   ret    
          │ │ ↘ ││↗   0x00007f0ff2d7de51:   lea    -0x2(%rcx),%rsi
   0.31%  │ │   │││   0x00007f0ff2d7de55:   cmp    %rsi,%rdx
          │ │  ╭│││   0x00007f0ff2d7de58:   jg     0x00007f0ff2d7de7e
          │ │  ││││   0x00007f0ff2d7de5e:   vmovdqu %xmm0,(%rax,%rdx,8)
          │ │  ││││   0x00007f0ff2d7de63:   lea    0x2(%rdx),%rsi
   1.29%  │ │  ││││↗  0x00007f0ff2d7de67:   dec    %rcx
          │ │  │││││  0x00007f0ff2d7de6a:   cmp    %rcx,%rsi
          │ │  │╰│││  0x00007f0ff2d7de6d:   jg     0x00007f0ff2d7de33
          │ │  │ │││  0x00007f0ff2d7de6f:   mov    %r12,(%rax,%rsi,8)
          │ │  │ ╰││  0x00007f0ff2d7de73:   jmp    0x00007f0ff2d7de33
          │ ↘  │  ││  0x00007f0ff2d7de75:   mov    $0x0,%rdx
          │    │  ╰│  0x00007f0ff2d7de7c:   jmp    0x00007f0ff2d7de51           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │    │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@37 (line 178)
   0.96%  │    ↘   │  0x00007f0ff2d7de7e:   mov    %rdx,%rsi
          │        ╰  0x00007f0ff2d7de81:   jmp    0x00007f0ff2d7de67
   0.00%  ↘           0x00007f0ff2d7de83:   movabs $0x7f0f770022c0,%rsi         ;   {metadata({type array byte})}
                      0x00007f0ff2d7de8d:   call   0x00007f0ff28eda80           ; ImmutableOopMap {r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 178)
                                                                                ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
                      0x00007f0ff2d7de92:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r10=Oop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@33 (line 178)
                      0x00007f0ff2d7de9a:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f0ff2d7df5a
                      0x00007f0ff2d7de9c:   mov    %rax,%r11
                      0x00007f0ff2d7de9f:   nop
....................................................................................................
  70.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1027 

              0x00007f0ff2d83cf3:   mov    0x10(%rsp),%rdx
              0x00007f0ff2d83cf8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@10 (line 192)
              0x00007f0ff2d83cfc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f0ff2d83d05:   jmp    0x00007f0ff2d83d2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 194)
          │   0x00007f0ff2d83d0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f0ff2d83d15:   data16 data16 xchg %ax,%ax
          │   0x00007f0ff2d83d19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 196)
   1.23%  │↗  0x00007f0ff2d83d20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 196)
   0.01%  ││  0x00007f0ff2d83d27:   test   %eax,(%r11)                  ;   {poll}
   0.70%  ││  0x00007f0ff2d83d2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@13 (line 194)
   0.03%  ↘│  0x00007f0ff2d83d2f:   mov    0x8(%rsp),%r10
   0.70%   │  0x00007f0ff2d83d34:   mov    %r10,%rsi
           │  0x00007f0ff2d83d37:   call   0x00007f0ff2764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual array_dse_inter_procedural {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   0.06%   │  0x00007f0ff2d83d3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
           │  0x00007f0ff2d83d44:   mov    0x20(%rsp),%r10
   6.35%   │  0x00007f0ff2d83d49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@26 (line 195)
   1.18%   │  0x00007f0ff2d83d4c:   mov    0x18(%rsp),%rsi
   0.02%   │  0x00007f0ff2d83d51:   cmpb   $0x0,0x94(%rsi)
   5.36%   ╰  0x00007f0ff2d83d58:   je     0x00007f0ff2d83d20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@33 (line 196)
              0x00007f0ff2d83d5a:   mov    %r10,0x20(%rsp)
              0x00007f0ff2d83d5f:   nop
              0x00007f0ff2d83d60:   call   0x00007f1008fdddf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f0ff2d83d65:   nop
              0x00007f0ff2d83d66:   mov    0x10(%rsp),%rdx
              0x00007f0ff2d83d6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@40 (line 197)
              0x00007f0ff2d83d6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub@46 (line 198)
....................................................................................................
  15.63%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 983 

                # {method} {0x00007f0f6c486da0} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f0ff2d7d680:   mov    0x8(%rsi),%r10d
                0x00007f0ff2d7d684:   movabs $0x7f0f77000000,%r12
                0x00007f0ff2d7d68e:   add    %r12,%r10
                0x00007f0ff2d7d691:   xor    %r12,%r12
                0x00007f0ff2d7d694:   cmp    %r10,%rax
                0x00007f0ff2d7d697:   jne    0x00007f0ff2764080           ;   {runtime_call ic_miss_stub}
                0x00007f0ff2d7d69d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   3.01%        0x00007f0ff2d7d6a0:   mov    %eax,-0x14000(%rsp)
   1.36%        0x00007f0ff2d7d6a7:   sub    $0x18,%rsp
   0.42%        0x00007f0ff2d7d6ab:   nop
   2.29%        0x00007f0ff2d7d6ac:   cmpl   $0x0,0x20(%r15)
   0.25%  ╭     0x00007f0ff2d7d6b4:   jne    0x00007f0ff2d7d6ce
   0.75%  │ ↗   0x00007f0ff2d7d6ba:   add    $0x18,%rsp
   0.41%  │ │   0x00007f0ff2d7d6be:   xchg   %ax,%ax
   2.28%  │ │↗  0x00007f0ff2d7d6c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f0ff2d7d6c7:   ja     0x00007f0ff2d7d6db
   0.21%  ││││  0x00007f0ff2d7d6cd:   ret    
          ↘│││  0x00007f0ff2d7d6ce:   mov    %rbp,0x10(%rsp)
           │││  0x00007f0ff2d7d6d3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f0ff2d7d6d8:   jmp    0x00007f0ff2d7d6ba
           │ │  0x00007f0ff2d7d6da:   hlt    
           ↘ ╰  0x00007f0ff2d7d6db:   lea    -0x22(%rip),%rcx        # 0x00007f0ff2d7d6c0
                0x00007f0ff2d7d6e2:   mov    %rcx,0x468(%r15)
                0x00007f0ff2d7d6e9:   jmp    0x00007f0ff276b000           ;   {runtime_call SafepointBlob}
                0x00007f0ff2d7d6ee:   hlt    
              [Exception Handler]
                0x00007f0ff2d7d6ef:   call   0x00007f0ff28e9780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  10.98%  <total for region 3>

....[Hottest Regions]...............................................................................
  70.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 985 
  15.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1027 
  10.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 983 
   0.15%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   1.76%  <...other 489 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 985 
  15.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1027 
  10.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 983 
   1.58%              kernel  [unknown] 
   0.16%                      <unknown> 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  oopFactory::new_typeArray 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%  libpthread-2.31.so  __libc_write 
   0.02%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.65%  <...other 171 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.23%      jvmci, level 4
   1.58%              kernel
   0.73%           libjvm.so
   0.18%        libc-2.31.so
   0.16%                    
   0.05%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%              [vdso]
   0.02%         interpreter
   0.01%    perf-2126041.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate":
  2500.319 ±(99.9%) 17.372 MB/sec [Average]
  (min, avg, max) = (2496.957, 2500.319, 2508.219), stdev = 4.511
  CI (99.9%): [2482.947, 2517.690] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.count":
  51.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (10.000, 10.200, 11.000), stdev = 0.447
  CI (99.9%): [51.000, 51.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.time":
  91.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (18.000, 18.200, 19.000), stdev = 0.447
  CI (99.9%): [91.000, 91.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline
# Parameters: (size = 64)

# Run progress: 37.50% complete, ETA 00:09:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.159 ns/op
# Warmup Iteration   2: 8.055 ns/op
# Warmup Iteration   3: 7.889 ns/op
# Warmup Iteration   4: 8.066 ns/op
# Warmup Iteration   5: 8.067 ns/op
Iteration   1: 8.067 ns/op
                 gc.alloc.rate:      1891.492 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            16.000 ms

Iteration   2: 8.074 ns/op
                 gc.alloc.rate:      1889.789 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            13.000 ms

Iteration   3: 8.076 ns/op
                 gc.alloc.rate:      1889.264 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   4: 8.067 ns/op
                 gc.alloc.rate:      1891.347 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   5: 8.067 ns/op
                 gc.alloc.rate:      1891.377 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline":
  8.070 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (8.067, 8.070, 8.076), stdev = 0.004
  CI (99.9%): [8.053, 8.088] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:asm":
PrintAssembly processed: 243697 total address lines.
Perf output processed (skipped 61.282 seconds):
 Column 1: cycles (51011 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 1055 

              0x00007f1be2d89d73:   mov    0x10(%rsp),%rdx
              0x00007f1be2d89d78:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@10 (line 192)
              0x00007f1be2d89d7c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f1be2d89d85:   jmp    0x00007f1be2d89daf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 194)
          │   0x00007f1be2d89d8a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f1be2d89d95:   data16 data16 xchg %ax,%ax
          │   0x00007f1be2d89d99:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
   3.37%  │↗  0x00007f1be2d89da0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
   1.38%  ││  0x00007f1be2d89da7:   test   %eax,(%r11)                  ;   {poll}
   3.04%  ││  0x00007f1be2d89daa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@13 (line 194)
   0.02%  ↘│  0x00007f1be2d89daf:   mov    0x8(%rsp),%r10
   1.38%   │  0x00007f1be2d89db4:   mov    %r10,%rsi
   1.27%   │  0x00007f1be2d89db7:   call   0x00007f1be2764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_alloc_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  20.25%   │  0x00007f1be2d89dbc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.04%   │  0x00007f1be2d89dc4:   mov    0x20(%rsp),%r10
   6.59%   │  0x00007f1be2d89dc9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@26 (line 195)
   4.64%   │  0x00007f1be2d89dcc:   mov    0x18(%rsp),%rsi
   0.14%   │  0x00007f1be2d89dd1:   cmpb   $0x0,0x94(%rsi)
  13.16%   ╰  0x00007f1be2d89dd8:   je     0x00007f1be2d89da0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
              0x00007f1be2d89dda:   mov    %r10,0x20(%rsp)
              0x00007f1be2d89ddf:   nop
              0x00007f1be2d89de0:   call   0x00007f1bfa094df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1be2d89de5:   nop
              0x00007f1be2d89de6:   mov    0x10(%rsp),%rdx
              0x00007f1be2d89deb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@40 (line 197)
              0x00007f1be2d89def:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@46 (line 198)
....................................................................................................
  55.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 1006 

              # {method} {0x00007f1b5c47d090} &apos;obj_alloc_baseline&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f1be2d80c80:   mov    0x8(%rsi),%r10d
              0x00007f1be2d80c84:   movabs $0x7f1b67000000,%r12
              0x00007f1be2d80c8e:   add    %r12,%r10
              0x00007f1be2d80c91:   xor    %r12,%r12
              0x00007f1be2d80c94:   cmp    %r10,%rax
              0x00007f1be2d80c97:   jne    0x00007f1be2764080           ;   {runtime_call ic_miss_stub}
              0x00007f1be2d80c9d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   2.01%      0x00007f1be2d80ca0:   mov    %eax,-0x14000(%rsp)
   7.72%      0x00007f1be2d80ca7:   sub    $0x18,%rsp
   1.95%      0x00007f1be2d80cab:   nop
   0.03%      0x00007f1be2d80cac:   cmpl   $0x1,0x20(%r15)
   0.13%      0x00007f1be2d80cb4:   jne    0x00007f1be2d80d2c
   3.60%      0x00007f1be2d80cba:   mov    %rbp,0x10(%rsp)
   1.05%      0x00007f1be2d80cbf:   mov    0x1b8(%r15),%rax
   0.03%      0x00007f1be2d80cc6:   lea    0x10(%rax),%rsi
   0.06%      0x00007f1be2d80cca:   cmp    0x1c8(%r15),%rsi
          ╭   0x00007f1be2d80cd1:   ja     0x00007f1be2d80d11
   3.50%  │   0x00007f1be2d80cd7:   mov    %rsi,0x1b8(%r15)
   1.13%  │   0x00007f1be2d80cde:   prefetchw 0xd0(%rax)
   1.89%  │   0x00007f1be2d80ce5:   movq   $0x1,(%rax)
   5.75%  │   0x00007f1be2d80cec:   movl   $0xe80,0x8(%rax)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
          │                                                             ;   {metadata(&apos;java/lang/Object&apos;)}
   3.49%  │↗  0x00007f1be2d80cf3:   mov    0x10(%rsp),%rbp
   0.25%  ││  0x00007f1be2d80cf8:   add    $0x18,%rsp
   0.05%  ││  0x00007f1be2d80cfc:   nopl   0x0(%rax)
   1.27%  ││  0x00007f1be2d80d00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f1be2d80d07:   ja     0x00007f1be2d80d39
   3.22%  ││  0x00007f1be2d80d0d:   vzeroupper 
   4.65%  ││  0x00007f1be2d80d10:   ret    
   0.00%  ↘│  0x00007f1be2d80d11:   movabs $0x7f1b67000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
   0.00%   │  0x00007f1be2d80d1b:   call   0x00007f1be28ee000           ; ImmutableOopMap {}
           │                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
           │                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
           │  0x00007f1be2d80d20:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop }
           │                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
           │  0x00007f1be2d80d28:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f1be2d80d4d
           ╰  0x00007f1be2d80d2a:   jmp    0x00007f1be2d80cf3           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
              0x00007f1be2d80d2c:   mov    %rbp,0x10(%rsp)
....................................................................................................
  41.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 1055 
  41.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 1006 
   0.42%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   1.63%  <...other 443 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 1055 
  41.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 1006 
   1.91%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  JVMCIRuntime::new_instance_common 
   0.02%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  SpinPause 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.01%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.01%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%           libjvm.so  HeapRegionManager::allocate_free_region 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.57%  <...other 151 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.09%      jvmci, level 4
   1.91%              kernel
   0.58%           libjvm.so
   0.16%        libc-2.31.so
   0.10%                    
   0.05%  libpthread-2.31.so
   0.05%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.02%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2126109.map
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate":
  1890.654 ±(99.9%) 4.033 MB/sec [Average]
  (min, avg, max) = (1889.264, 1890.654, 1891.492), stdev = 1.047
  CI (99.9%): [1886.621, 1894.687] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.count":
  39.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (7.000, 7.800, 8.000), stdev = 0.447
  CI (99.9%): [39.000, 39.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.time":
  71.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (13.000, 14.200, 16.000), stdev = 1.095
  CI (99.9%): [71.000, 71.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse
# Parameters: (size = 64)

# Run progress: 50.00% complete, ETA 00:07:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.709 ns/op
# Warmup Iteration   2: 8.050 ns/op
# Warmup Iteration   3: 7.907 ns/op
# Warmup Iteration   4: 8.157 ns/op
# Warmup Iteration   5: 8.158 ns/op
Iteration   1: 8.154 ns/op
                 gc.alloc.rate:      1871.362 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   2: 8.161 ns/op
                 gc.alloc.rate:      1869.698 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   3: 8.148 ns/op
                 gc.alloc.rate:      1872.633 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            14.000 ms

Iteration   4: 8.148 ns/op
                 gc.alloc.rate:      1872.590 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

Iteration   5: 8.150 ns/op
                 gc.alloc.rate:      1872.255 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            11.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse":
  8.152 ±(99.9%) 0.021 ns/op [Average]
  (min, avg, max) = (8.148, 8.152, 8.161), stdev = 0.005
  CI (99.9%): [8.131, 8.173] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:asm":
PrintAssembly processed: 240246 total address lines.
Perf output processed (skipped 61.151 seconds):
 Column 1: cycles (51135 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 1037 

              0x00007f1d4ad843f3:   mov    0x10(%rsp),%rdx
              0x00007f1d4ad843f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@10 (line 192)
              0x00007f1d4ad843fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f1d4ad84405:   jmp    0x00007f1d4ad8442f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 194)
          │   0x00007f1d4ad8440a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f1d4ad84415:   data16 data16 xchg %ax,%ax
          │   0x00007f1d4ad84419:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
   2.44%  │↗  0x00007f1d4ad84420:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
   2.25%  ││  0x00007f1d4ad84427:   test   %eax,(%r11)                  ;   {poll}
   0.19%  ││  0x00007f1d4ad8442a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@13 (line 194)
   0.01%  ↘│  0x00007f1d4ad8442f:   mov    0x8(%rsp),%r10
   2.31%   │  0x00007f1d4ad84434:   mov    %r10,%rsi
   2.19%   │  0x00007f1d4ad84437:   call   0x00007f1d4a764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual obj_dse {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
  24.91%   │  0x00007f1d4ad8443c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.02%   │  0x00007f1d4ad84444:   mov    0x20(%rsp),%r10
   4.63%   │  0x00007f1d4ad84449:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@26 (line 195)
   4.62%   │  0x00007f1d4ad8444c:   mov    0x18(%rsp),%rsi
   0.11%   │  0x00007f1d4ad84451:   cmpb   $0x0,0x94(%rsi)
   9.38%   ╰  0x00007f1d4ad84458:   je     0x00007f1d4ad84420           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
              0x00007f1d4ad8445a:   mov    %r10,0x20(%rsp)
              0x00007f1d4ad8445f:   nop
              0x00007f1d4ad84460:   call   0x00007f1d63d31df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f1d4ad84465:   nop
              0x00007f1d4ad84466:   mov    0x10(%rsp),%rdx
              0x00007f1d4ad8446b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@40 (line 197)
              0x00007f1d4ad8446f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@46 (line 198)
....................................................................................................
  53.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 995 

             # {method} {0x00007f1ccb47d1e0} &apos;obj_dse&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f1d4ad7ef00:   mov    0x8(%rsi),%r10d
             0x00007f1d4ad7ef04:   movabs $0x7f1ccf000000,%r12
             0x00007f1d4ad7ef0e:   add    %r12,%r10
             0x00007f1d4ad7ef11:   xor    %r12,%r12
             0x00007f1d4ad7ef14:   cmp    %r10,%rax
             0x00007f1d4ad7ef17:   jne    0x00007f1d4a764080           ;   {runtime_call ic_miss_stub}
             0x00007f1d4ad7ef1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.13%     0x00007f1d4ad7ef20:   mov    %eax,-0x14000(%rsp)
  13.15%     0x00007f1d4ad7ef27:   sub    $0x18,%rsp
   0.13%     0x00007f1d4ad7ef2b:   nop
   0.02%     0x00007f1d4ad7ef2c:   cmpl   $0x1,0x20(%r15)
   0.18%     0x00007f1d4ad7ef34:   jne    0x00007f1d4ad7efac
   4.41%     0x00007f1d4ad7ef3a:   mov    %rbp,0x10(%rsp)
   0.07%     0x00007f1d4ad7ef3f:   mov    0x1b8(%r15),%rax
   0.04%     0x00007f1d4ad7ef46:   lea    0x10(%rax),%rsi
   0.12%     0x00007f1d4ad7ef4a:   cmp    0x1c8(%r15),%rsi
          ╭  0x00007f1d4ad7ef51:   ja     0x00007f1d4ad7ef91
   4.51%  │  0x00007f1d4ad7ef57:   mov    %rsi,0x1b8(%r15)
   0.11%  │  0x00007f1d4ad7ef5e:   prefetchw 0xd0(%rax)
   2.64%  │  0x00007f1d4ad7ef65:   movq   $0x1,(%rax)
   6.43%  │  0x00007f1d4ad7ef6c:   movl   $0xe80,0x8(%rax)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@120 (line 83)
          │                                                            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.34%  │  0x00007f1d4ad7ef73:   mov    0x10(%rsp),%rbp
   0.18%  │  0x00007f1d4ad7ef78:   add    $0x18,%rsp
   0.04%  │  0x00007f1d4ad7ef7c:   nopl   0x0(%rax)
   2.21%  │  0x00007f1d4ad7ef80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f1d4ad7ef87:   ja     0x00007f1d4ad7efb9
   2.50%  │  0x00007f1d4ad7ef8d:   vzeroupper 
   4.56%  │  0x00007f1d4ad7ef90:   ret    
          ↘  0x00007f1d4ad7ef91:   movabs $0x7f1ccf000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007f1d4ad7ef9b:   call   0x00007f1d4a8ee000           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 68)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007f1d4ad7efa0:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 68)
             0x00007f1d4ad7efa8:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f1d4ad7efcd
             0x00007f1d4ad7efaa:   jmp    0x00007f1d4ad7ef73           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  43.78%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 1037 
  43.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 995 
   0.52%               kernel  [unknown] 
   0.18%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   1.70%  <...other 511 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 1037 
  43.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 995 
   2.11%               kernel  [unknown] 
   0.12%                       <unknown> 
   0.05%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%         libc-2.31.so  __vfprintf_internal 
   0.03%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%            libjvm.so  G1CardSet::reset_table_scanner 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%            libjvm.so  G1FromCardCache::clear 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  G1CollectedHeap::attempt_allocation_slow 
   0.01%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.01%         libc-2.31.so  __memset_avx2_erms 
   0.63%  <...other 207 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.83%       jvmci, level 4
   2.11%               kernel
   0.59%            libjvm.so
   0.19%         libc-2.31.so
   0.12%                     
   0.07%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.00%               [vdso]
   0.00%     perf-2126175.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate":
  1871.707 ±(99.9%) 4.752 MB/sec [Average]
  (min, avg, max) = (1869.698, 1871.707, 1872.633), stdev = 1.234
  CI (99.9%): [1866.955, 1876.460] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.count":
  38.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (7.000, 7.600, 8.000), stdev = 0.548
  CI (99.9%): [38.000, 38.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.time":
  68.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (11.000, 13.600, 15.000), stdev = 1.517
  CI (99.9%): [68.000, 68.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 62.50% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 85.335 ns/op
# Warmup Iteration   2: 84.116 ns/op
# Warmup Iteration   3: 83.954 ns/op
# Warmup Iteration   4: 84.101 ns/op
# Warmup Iteration   5: 84.135 ns/op
Iteration   1: 84.175 ns/op
                 gc.alloc.rate:      181.269 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            4.000 ms

Iteration   2: 84.154 ns/op
                 gc.alloc.rate:      181.315 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   3: 84.105 ns/op
                 gc.alloc.rate:      181.422 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           ≈ 0 counts

Iteration   4: 84.157 ns/op
                 gc.alloc.rate:      181.311 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   5: 84.136 ns/op
                 gc.alloc.rate:      181.355 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            4.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural":
  84.145 ±(99.9%) 0.103 ns/op [Average]
  (min, avg, max) = (84.105, 84.145, 84.175), stdev = 0.027
  CI (99.9%): [84.043, 84.248] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:asm":
PrintAssembly processed: 238669 total address lines.
Perf output processed (skipped 61.047 seconds):
 Column 1: cycles (51138 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 994 

             # {method} {0x00007f09574867b8} &apos;obj_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f09d6d82160:   mov    0x8(%rsi),%r10d
             0x00007f09d6d82164:   movabs $0x7f095b000000,%r12
             0x00007f09d6d8216e:   add    %r12,%r10
             0x00007f09d6d82171:   xor    %r12,%r12
             0x00007f09d6d82174:   cmp    %r10,%rax
             0x00007f09d6d82177:   jne    0x00007f09d6764080           ;   {runtime_call ic_miss_stub}
             0x00007f09d6d8217d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.10%     0x00007f09d6d82180:   mov    %eax,-0x14000(%rsp)
   0.81%     0x00007f09d6d82187:   sub    $0x18,%rsp
   0.05%     0x00007f09d6d8218b:   nop
             0x00007f09d6d8218c:   cmpl   $0x1,0x20(%r15)
   0.25%     0x00007f09d6d82194:   jne    0x00007f09d6d8234c
   0.24%     0x00007f09d6d8219a:   mov    %rbp,0x10(%rsp)
   0.04%     0x00007f09d6d8219f:   mov    %rsi,%r10
             0x00007f09d6d821a2:   mov    %r10,(%rsp)
   0.17%     0x00007f09d6d821a6:   nop
   0.22%     0x00007f09d6d821a7:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@9 (line 93)
                                                                       ;   {optimized virtual_call}
   2.51%     0x00007f09d6d821ac:   nopl   0x29c(%rax,%rax,1)           ;   {other}
             0x00007f09d6d821b4:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 95)
             0x00007f09d6d821b8:   data16 xchg %ax,%ax
   0.43%     0x00007f09d6d821bb:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 95)
                                                                       ;   {optimized virtual_call}
   3.43%     0x00007f09d6d821c0:   nopl   0x10002b0(%rax,%rax,1)       ;   {other}
             0x00007f09d6d821c8:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 97)
             0x00007f09d6d821cc:   data16 xchg %ax,%ax
   0.48%     0x00007f09d6d821cf:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 97)
                                                                       ;   {optimized virtual_call}
   7.15%     0x00007f09d6d821d4:   nopl   0x20002c4(%rax,%rax,1)       ;   {other}
             0x00007f09d6d821dc:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 99)
             0x00007f09d6d821e0:   data16 xchg %ax,%ax
   0.44%     0x00007f09d6d821e3:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 99)
                                                                       ;   {optimized virtual_call}
   1.77%     0x00007f09d6d821e8:   nopl   0x30002d8(%rax,%rax,1)       ;   {other}
             0x00007f09d6d821f0:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 101)
             0x00007f09d6d821f4:   data16 xchg %ax,%ax
   0.46%     0x00007f09d6d821f7:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 101)
                                                                       ;   {optimized virtual_call}
   3.56%     0x00007f09d6d821fc:   nopl   0x40002ec(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82204:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 103)
             0x00007f09d6d82208:   data16 xchg %ax,%ax
   0.46%     0x00007f09d6d8220b:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 103)
                                                                       ;   {optimized virtual_call}
   3.65%     0x00007f09d6d82210:   nopl   0x5000300(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82218:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 105)
             0x00007f09d6d8221c:   data16 xchg %ax,%ax
   0.43%     0x00007f09d6d8221f:   nop
             0x00007f09d6d82220:   data16 xchg %ax,%ax
             0x00007f09d6d82223:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 105)
                                                                       ;   {optimized virtual_call}
   3.60%     0x00007f09d6d82228:   nopl   0x6000318(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82230:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 107)
             0x00007f09d6d82234:   data16 xchg %ax,%ax
   0.50%     0x00007f09d6d82237:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 107)
                                                                       ;   {optimized virtual_call}
   3.56%     0x00007f09d6d8223c:   nopl   0x700032c(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82244:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 109)
             0x00007f09d6d82248:   data16 xchg %ax,%ax
   0.44%     0x00007f09d6d8224b:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 109)
                                                                       ;   {optimized virtual_call}
   3.77%     0x00007f09d6d82250:   nopl   0x8000340(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82258:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 111)
             0x00007f09d6d8225c:   data16 xchg %ax,%ax
   0.40%     0x00007f09d6d8225f:   nop
             0x00007f09d6d82260:   data16 xchg %ax,%ax
             0x00007f09d6d82263:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 111)
                                                                       ;   {optimized virtual_call}
   3.57%     0x00007f09d6d82268:   nopl   0x9000358(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82270:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 113)
             0x00007f09d6d82274:   data16 xchg %ax,%ax
   0.45%     0x00007f09d6d82277:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 113)
                                                                       ;   {optimized virtual_call}
   3.63%     0x00007f09d6d8227c:   nopl   0xa00036c(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82284:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 115)
             0x00007f09d6d82288:   data16 xchg %ax,%ax
   0.47%     0x00007f09d6d8228b:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 115)
                                                                       ;   {optimized virtual_call}
   3.68%     0x00007f09d6d82290:   nopl   0xb000380(%rax,%rax,1)       ;   {other}
             0x00007f09d6d82298:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 117)
             0x00007f09d6d8229c:   data16 xchg %ax,%ax
   0.46%     0x00007f09d6d8229f:   nop
             0x00007f09d6d822a0:   data16 xchg %ax,%ax
             0x00007f09d6d822a3:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 117)
                                                                       ;   {optimized virtual_call}
   3.41%     0x00007f09d6d822a8:   nopl   0xc000398(%rax,%rax,1)       ;   {other}
             0x00007f09d6d822b0:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 119)
             0x00007f09d6d822b4:   data16 xchg %ax,%ax
   0.48%     0x00007f09d6d822b7:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {[0]=Oop }
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 119)
                                                                       ;   {optimized virtual_call}
   3.57%     0x00007f09d6d822bc:   nopl   0xd0003ac(%rax,%rax,1)       ;   {other}
             0x00007f09d6d822c4:   mov    (%rsp),%rsi                  ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 121)
   0.00%     0x00007f09d6d822c8:   data16 xchg %ax,%ax
   0.43%     0x00007f09d6d822cb:   call   0x00007f09d6d81aa0           ; ImmutableOopMap {}
                                                                       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 121)
                                                                       ;   {optimized virtual_call}
   3.48%     0x00007f09d6d822d0:   nopl   0xe0003c0(%rax,%rax,1)       ;   {other}
             0x00007f09d6d822d8:   mov    0x1b8(%r15),%rax
             0x00007f09d6d822df:   lea    0x10(%rax),%rsi
             0x00007f09d6d822e3:   cmp    0x1c8(%r15),%rsi
          ╭  0x00007f09d6d822ea:   ja     0x00007f09d6d82331
   0.44%  │  0x00007f09d6d822f0:   mov    %rsi,0x1b8(%r15)
          │  0x00007f09d6d822f7:   prefetchw 0xd0(%rax)
   0.47%  │  0x00007f09d6d822fe:   movq   $0x1,(%rax)
   0.35%  │  0x00007f09d6d82305:   movl   $0xe80,0x8(%rax)             ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
          │                                                            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.46%  │  0x00007f09d6d8230c:   mov    0x10(%rsp),%rbp
   0.10%  │  0x00007f09d6d82311:   add    $0x18,%rsp
          │  0x00007f09d6d82315:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.38%  │  0x00007f09d6d82320:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f09d6d82327:   ja     0x00007f09d6d8235c
   0.01%  │  0x00007f09d6d8232d:   vzeroupper 
   0.40%  │  0x00007f09d6d82330:   ret    
          ↘  0x00007f09d6d82331:   movabs $0x7f095b000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007f09d6d8233b:   call   0x00007f09d68f0100           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
                                                                       ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
             0x00007f09d6d82340:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop }
                                                                       ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
             0x00007f09d6d82348:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007f09d6d82370
             0x00007f09d6d8234a:   jmp    0x00007f09d6d8230c           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  66.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 992 

                # {method} {0x00007f0957486da0} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f09d6d81a80:   mov    0x8(%rsi),%r10d
                0x00007f09d6d81a84:   movabs $0x7f095b000000,%r12
                0x00007f09d6d81a8e:   add    %r12,%r10
                0x00007f09d6d81a91:   xor    %r12,%r12
                0x00007f09d6d81a94:   cmp    %r10,%rax
                0x00007f09d6d81a97:   jne    0x00007f09d6764080           ;   {runtime_call ic_miss_stub}
                0x00007f09d6d81a9d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   1.71%        0x00007f09d6d81aa0:   mov    %eax,-0x14000(%rsp)
  10.12%        0x00007f09d6d81aa7:   sub    $0x18,%rsp
   0.20%        0x00007f09d6d81aab:   nop
                0x00007f09d6d81aac:   cmpl   $0x1,0x20(%r15)
   0.10%  ╭     0x00007f09d6d81ab4:   jne    0x00007f09d6d81ace
   6.48%  │ ↗   0x00007f09d6d81aba:   add    $0x18,%rsp
   0.17%  │ │   0x00007f09d6d81abe:   xchg   %ax,%ax
          │ │↗  0x00007f09d6d81ac0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f09d6d81ac7:   ja     0x00007f09d6d81adb
   5.12%  ││││  0x00007f09d6d81acd:   ret    
          ↘│││  0x00007f09d6d81ace:   mov    %rbp,0x10(%rsp)
           │││  0x00007f09d6d81ad3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f09d6d81ad8:   jmp    0x00007f09d6d81aba
           │ │  0x00007f09d6d81ada:   hlt    
           ↘ ╰  0x00007f09d6d81adb:   lea    -0x22(%rip),%rcx        # 0x00007f09d6d81ac0
                0x00007f09d6d81ae2:   mov    %rcx,0x468(%r15)
                0x00007f09d6d81ae9:   jmp    0x00007f09d676b000           ;   {runtime_call SafepointBlob}
                0x00007f09d6d81aee:   hlt    
              [Exception Handler]
                0x00007f09d6d81aef:   call   0x00007f09d68e9780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  23.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 994 
  23.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 992 
   7.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1043 
   0.89%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.26%  <...other 362 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 994 
  23.90%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 992 
   7.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1043 
   2.22%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  defaultStream::write 
   0.02%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.33%  <...other 117 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.17%      jvmci, level 4
   2.22%              kernel
   0.31%           libjvm.so
   0.16%        libc-2.31.so
   0.04%                    
   0.04%         interpreter
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.01%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate":
  181.334 ±(99.9%) 0.222 MB/sec [Average]
  (min, avg, max) = (181.269, 181.334, 181.422), stdev = 0.058
  CI (99.9%): [181.113, 181.556] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.count":
  4.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (≈ 0, 0.800, 1.000), stdev = 0.447
  CI (99.9%): [4.000, 4.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.time":
  14.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (≈ 0, 2.800, 4.000), stdev = 1.643
  CI (99.9%): [14.000, 14.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline
# Parameters: (size = 64)

# Run progress: 75.00% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.611 ns/op
# Warmup Iteration   2: 16.919 ns/op
# Warmup Iteration   3: 16.950 ns/op
# Warmup Iteration   4: 16.921 ns/op
# Warmup Iteration   5: 16.984 ns/op
Iteration   1: 17.007 ns/op
                 gc.alloc.rate:      9868.745 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           40.000 counts
                 gc.time:            69.000 ms

Iteration   2: 17.171 ns/op
                 gc.alloc.rate:      9774.626 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           40.000 counts
                 gc.time:            73.000 ms

Iteration   3: 17.019 ns/op
                 gc.alloc.rate:      9862.292 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           40.000 counts
                 gc.time:            72.000 ms

Iteration   4: 17.009 ns/op
                 gc.alloc.rate:      9868.035 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           40.000 counts
                 gc.time:            73.000 ms

Iteration   5: 16.922 ns/op
                 gc.alloc.rate:      9918.635 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           41.000 counts
                 gc.time:            73.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline":
  17.026 ±(99.9%) 0.348 ns/op [Average]
  (min, avg, max) = (16.922, 17.026, 17.171), stdev = 0.090
  CI (99.9%): [16.678, 17.373] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:asm":
PrintAssembly processed: 239184 total address lines.
Perf output processed (skipped 61.105 seconds):
 Column 1: cycles (51076 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1003 

               # {method} {0x00007f623b47d4a0} &apos;wrapper_obj_baseline&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f62bad7dfa0:   mov    0x8(%rsi),%r10d
               0x00007f62bad7dfa4:   movabs $0x7f623f000000,%r12
               0x00007f62bad7dfae:   add    %r12,%r10
               0x00007f62bad7dfb1:   xor    %r12,%r12
               0x00007f62bad7dfb4:   cmp    %r10,%rax
               0x00007f62bad7dfb7:   jne    0x00007f62ba764080           ;   {runtime_call ic_miss_stub}
               0x00007f62bad7dfbd:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.92%       0x00007f62bad7dfc0:   mov    %eax,-0x14000(%rsp)
   2.76%       0x00007f62bad7dfc7:   sub    $0x18,%rsp
   0.43%       0x00007f62bad7dfcb:   nop
   0.33%       0x00007f62bad7dfcc:   cmpl   $0x1,0x20(%r15)
   0.85%       0x00007f62bad7dfd4:   jne    0x00007f62bad7e945
   1.16%       0x00007f62bad7dfda:   mov    %rbp,0x10(%rsp)
   0.38%       0x00007f62bad7dfdf:   mov    0x1b8(%r15),%rax
   0.45%       0x00007f62bad7dfe6:   lea    0xb0(%rax),%rsi
   0.52%       0x00007f62bad7dfed:   cmp    0x1c8(%r15),%rsi
          ╭    0x00007f62bad7dff4:   ja     0x00007f62bad7e151
   1.13%  │    0x00007f62bad7dffa:   mov    %rsi,0x1b8(%r15)
   0.46%  │    0x00007f62bad7e001:   prefetchw 0x170(%rax)
   0.91%  │    0x00007f62bad7e008:   prefetchw 0x1b0(%rax)
   5.54%  │    0x00007f62bad7e00f:   prefetchw 0x1f0(%rax)
   5.37%  │    0x00007f62bad7e016:   prefetchw 0x230(%rax)
   4.27%  │ ↗  0x00007f62bad7e01d:   data16 xchg %ax,%ax
   0.32%  │ │  0x00007f62bad7e020:   test   %rax,%rax
          │╭│  0x00007f62bad7e023:   je     0x00007f62bad7e15d
   0.21%  │││  0x00007f62bad7e029:   mov    %rax,%rsi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 130)
   1.22%  │││  0x00007f62bad7e02c:   lea    0x30(%rax),%r10              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 191)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.51%  │││  0x00007f62bad7e030:   lea    0x40(%rax),%r11              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@16 (line 192)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.28%  │││  0x00007f62bad7e034:   lea    0x50(%rax),%r8               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@27 (line 193)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.24%  │││  0x00007f62bad7e038:   lea    0x60(%rax),%r9               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@38 (line 194)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   1.13%  │││  0x00007f62bad7e03c:   lea    0x70(%rax),%rcx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@49 (line 195)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.46%  │││  0x00007f62bad7e040:   lea    0x80(%rax),%rbx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@60 (line 196)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.28%  │││  0x00007f62bad7e047:   lea    0x90(%rax),%rdi              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@71 (line 197)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.21%  │││  0x00007f62bad7e04e:   lea    0xa0(%rax),%rdx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@82 (line 198)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   1.25%  │││  0x00007f62bad7e055:   movq   $0x1,(%rax)
   0.79%  │││  0x00007f62bad7e05c:   movl   $0x102bd88,0x8(%rax)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.43%  │││  0x00007f62bad7e063:   shr    $0x3,%r10
   0.21%  │││  0x00007f62bad7e067:   mov    %r10d,0xc(%rax)
   1.13%  │││  0x00007f62bad7e06b:   shr    $0x3,%r11
   0.49%  │││  0x00007f62bad7e06f:   mov    %r11d,0x10(%rax)
   0.97%  │││  0x00007f62bad7e073:   shr    $0x3,%r8
   0.16%  │││  0x00007f62bad7e077:   mov    %r8d,0x14(%rax)
   1.63%  │││  0x00007f62bad7e07b:   shr    $0x3,%r9
   0.46%  │││  0x00007f62bad7e07f:   mov    %r9d,0x18(%rax)
   1.96%  │││  0x00007f62bad7e083:   shr    $0x3,%rcx
   0.19%  │││  0x00007f62bad7e087:   mov    %ecx,0x1c(%rax)
   1.80%  │││  0x00007f62bad7e08a:   shr    $0x3,%rbx
   0.44%  │││  0x00007f62bad7e08e:   mov    %ebx,0x20(%rax)
   1.10%  │││  0x00007f62bad7e091:   shr    $0x3,%rdi
   0.16%  │││  0x00007f62bad7e095:   mov    %edi,0x24(%rax)
   1.23%  │││  0x00007f62bad7e098:   shr    $0x3,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 130)
   0.37%  │││  0x00007f62bad7e09c:   mov    %edx,0x28(%rax)
   2.59%  │││  0x00007f62bad7e09f:   movq   $0x1,0x30(%rax)
   1.12%  │││  0x00007f62bad7e0a7:   movl   $0xe80,0x38(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.16%  │││  0x00007f62bad7e0ae:   movq   $0x1,0x40(%rax)
   1.66%  │││  0x00007f62bad7e0b6:   movl   $0xe80,0x48(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.02%  │││  0x00007f62bad7e0bd:   movq   $0x1,0x50(%rax)
   2.00%  │││  0x00007f62bad7e0c5:   movl   $0xe80,0x58(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.63%  │││  0x00007f62bad7e0cc:   movq   $0x1,0x60(%rax)
   2.42%  │││  0x00007f62bad7e0d4:   movl   $0xe80,0x68(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.63%  │││  0x00007f62bad7e0db:   movq   $0x1,0x70(%rax)
   2.14%  │││  0x00007f62bad7e0e3:   movl   $0xe80,0x78(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.67%  │││  0x00007f62bad7e0ea:   movq   $0x1,0x80(%rax)
   2.48%  │││  0x00007f62bad7e0f5:   movl   $0xe80,0x88(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.67%  │││  0x00007f62bad7e0ff:   movq   $0x1,0x90(%rax)
   1.94%  │││  0x00007f62bad7e10a:   movl   $0xe80,0x98(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.58%  │││  0x00007f62bad7e114:   movq   $0x1,0xa0(%rax)
   1.95%  │││  0x00007f62bad7e11f:   movl   $0xe80,0xa8(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.57%  │││  0x00007f62bad7e129:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@7 (line 130)
   0.05%  │││  0x00007f62bad7e12c:   mov    0x10(%rsp),%rbp
   0.42%  │││  0x00007f62bad7e131:   add    $0x18,%rsp
   0.43%  │││  0x00007f62bad7e135:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.59%  │││  0x00007f62bad7e140:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f62bad7e147:   ja     0x00007f62bad7e955
   0.70%  │││  0x00007f62bad7e14d:   vzeroupper 
   2.20%  │││  0x00007f62bad7e150:   ret    
          ↘││  0x00007f62bad7e151:   mov    $0x0,%rax
   0.00%   │╰  0x00007f62bad7e158:   jmp    0x00007f62bad7e01d
   0.00%   ↘   0x00007f62bad7e15d:   mov    0x1b8(%r15),%rsi
   0.00%       0x00007f62bad7e164:   lea    0x30(%rsi),%rax
               0x00007f62bad7e168:   cmp    0x1c8(%r15),%rax
               0x00007f62bad7e16f:   ja     0x00007f62bad7e6e6
               0x00007f62bad7e175:   mov    %rax,0x1b8(%r15)
               0x00007f62bad7e17c:   prefetchw 0xf0(%rsi)
               0x00007f62bad7e183:   movq   $0x1,(%rsi)
               0x00007f62bad7e18a:   movl   $0x102bd88,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.01%       0x00007f62bad7e191:   mov    %rsi,%r10
   0.01%       0x00007f62bad7e194:   vpxor  %xmm0,%xmm0,%xmm0
   0.01%       0x00007f62bad7e198:   vmovdqu %ymm0,0xc(%r10)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@0 (line 130)
....................................................................................................
  83.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 1045 

              0x00007f62bad85ef3:   mov    0x10(%rsp),%rdx
              0x00007f62bad85ef8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@10 (line 192)
              0x00007f62bad85efc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f62bad85f05:   jmp    0x00007f62bad85f2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@13 (line 194)
          │   0x00007f62bad85f0a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f62bad85f15:   data16 data16 xchg %ax,%ax
          │   0x00007f62bad85f19:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@33 (line 196)
   0.99%  │↗  0x00007f62bad85f20:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@33 (line 196)
   0.72%  ││  0x00007f62bad85f27:   test   %eax,(%r11)                  ;   {poll}
   1.17%  ││  0x00007f62bad85f2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@13 (line 194)
   0.38%  ↘│  0x00007f62bad85f2f:   mov    0x8(%rsp),%r10
   0.77%   │  0x00007f62bad85f34:   mov    %r10,%rsi
   0.66%   │  0x00007f62bad85f37:   call   0x00007f62ba764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual wrapper_obj_baseline {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   1.85%   │  0x00007f62bad85f3c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.16%   │  0x00007f62bad85f44:   mov    0x20(%rsp),%r10
   1.30%   │  0x00007f62bad85f49:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@26 (line 195)
   0.82%   │  0x00007f62bad85f4c:   mov    0x18(%rsp),%rsi
   0.25%   │  0x00007f62bad85f51:   cmpb   $0x0,0x94(%rsi)
   2.16%   ╰  0x00007f62bad85f58:   je     0x00007f62bad85f20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@33 (line 196)
              0x00007f62bad85f5a:   mov    %r10,0x20(%rsp)
              0x00007f62bad85f5f:   nop
              0x00007f62bad85f60:   call   0x00007f62d34f0df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f62bad85f65:   nop
              0x00007f62bad85f66:   mov    0x10(%rsp),%rdx
              0x00007f62bad85f6b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@40 (line 197)
              0x00007f62bad85f6f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub@46 (line 198)
....................................................................................................
  11.23%  <total for region 2>

....[Hottest Regions]...............................................................................
  83.71%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1003 
  11.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 1045 
   0.18%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.13%          ld-2.31.so  __tls_get_addr 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.11%           libjvm.so  G1CardSet::reset_table_scanner 
   0.10%           libjvm.so  HeapRegionManager::par_iterate 
   0.10%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%        libc-2.31.so  __memset_avx2_erms 
   0.08%           libjvm.so  ObjAllocator::initialize 
   0.07%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.06%              kernel  [unknown] 
   0.06%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.06%           libjvm.so  SpinPause 
   0.05%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.05%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   3.42%  <...other 663 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 1003 
  11.23%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 1045 
   1.85%              kernel  [unknown] 
   0.24%                      <unknown> 
   0.21%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.13%          ld-2.31.so  __tls_get_addr 
   0.11%           libjvm.so  G1CardSet::reset_table_scanner 
   0.10%           libjvm.so  HeapRegionManager::par_iterate 
   0.10%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.09%        libc-2.31.so  __memset_avx2_erms 
   0.08%           libjvm.so  ObjAllocator::initialize 
   0.07%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.07%           libjvm.so  JVMCIRuntime::new_instance_common 
   0.06%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.06%              [vdso]  __vdso_clock_gettime 
   0.06%           libjvm.so  SpinPause 
   0.05%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.05%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.05%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.05%           libjvm.so  G1FromCardCache::clear 
   1.50%  <...other 241 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.06%      jvmci, level 4
   2.24%           libjvm.so
   1.85%              kernel
   0.29%        libc-2.31.so
   0.24%                    
   0.13%          ld-2.31.so
   0.09%  libpthread-2.31.so
   0.06%              [vdso]
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.00%    perf-2126315.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate":
  9858.466 ±(99.9%) 200.653 MB/sec [Average]
  (min, avg, max) = (9774.626, 9858.466, 9918.635), stdev = 52.109
  CI (99.9%): [9657.814, 10059.119] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate.norm":
  176.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (176.000, 176.000, 176.000), stdev = 0.001
  CI (99.9%): [176.000, 176.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.count":
  201.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (40.000, 40.200, 41.000), stdev = 0.447
  CI (99.9%): [201.000, 201.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.time":
  360.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (69.000, 72.000, 73.000), stdev = 1.732
  CI (99.9%): [360.000, 360.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 87.50% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.532 ns/op
# Warmup Iteration   2: 16.787 ns/op
# Warmup Iteration   3: 16.875 ns/op
# Warmup Iteration   4: 16.894 ns/op
# Warmup Iteration   5: 16.895 ns/op
Iteration   1: 16.871 ns/op
                 gc.alloc.rate:      9948.624 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           40.000 counts
                 gc.time:            72.000 ms

Iteration   2: 17.095 ns/op
                 gc.alloc.rate:      9818.252 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           40.000 counts
                 gc.time:            73.000 ms

Iteration   3: 16.926 ns/op
                 gc.alloc.rate:      9915.957 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           41.000 counts
                 gc.time:            75.000 ms

Iteration   4: 16.910 ns/op
                 gc.alloc.rate:      9925.360 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           40.000 counts
                 gc.time:            72.000 ms

Iteration   5: 16.938 ns/op
                 gc.alloc.rate:      9909.064 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           41.000 counts
                 gc.time:            76.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural":
  16.948 ±(99.9%) 0.331 ns/op [Average]
  (min, avg, max) = (16.871, 16.948, 17.095), stdev = 0.086
  CI (99.9%): [16.617, 17.279] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:asm":
PrintAssembly processed: 243333 total address lines.
Perf output processed (skipped 61.095 seconds):
 Column 1: cycles (51381 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 988 

               # {method} {0x00007ffaf3487598} &apos;wrapper_obj_dse_inter_procedural&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007ffb72d7ed20:   mov    0x8(%rsi),%r10d
               0x00007ffb72d7ed24:   movabs $0x7ffaf7000000,%r12
               0x00007ffb72d7ed2e:   add    %r12,%r10
               0x00007ffb72d7ed31:   xor    %r12,%r12
               0x00007ffb72d7ed34:   cmp    %r10,%rax
               0x00007ffb72d7ed37:   jne    0x00007ffb72764080           ;   {runtime_call ic_miss_stub}
               0x00007ffb72d7ed3d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.23%       0x00007ffb72d7ed40:   mov    %eax,-0x14000(%rsp)
   1.54%       0x00007ffb72d7ed47:   sub    $0x18,%rsp
   0.70%       0x00007ffb72d7ed4b:   nop
   0.40%       0x00007ffb72d7ed4c:   cmpl   $0x1,0x20(%r15)
   0.56%       0x00007ffb72d7ed54:   jne    0x00007ffb72d7f6c5
   0.96%       0x00007ffb72d7ed5a:   mov    %rbp,0x10(%rsp)
   0.65%       0x00007ffb72d7ed5f:   mov    0x1b8(%r15),%rax
   0.59%       0x00007ffb72d7ed66:   lea    0xb0(%rax),%rsi
   0.37%       0x00007ffb72d7ed6d:   cmp    0x1c8(%r15),%rsi
          ╭    0x00007ffb72d7ed74:   ja     0x00007ffb72d7eed1
   1.25%  │    0x00007ffb72d7ed7a:   mov    %rsi,0x1b8(%r15)
   0.61%  │    0x00007ffb72d7ed81:   prefetchw 0x170(%rax)
   0.75%  │    0x00007ffb72d7ed88:   prefetchw 0x1b0(%rax)
   5.73%  │    0x00007ffb72d7ed8f:   prefetchw 0x1f0(%rax)
   4.53%  │    0x00007ffb72d7ed96:   prefetchw 0x230(%rax)
   5.42%  │ ↗  0x00007ffb72d7ed9d:   data16 xchg %ax,%ax
   0.41%  │ │  0x00007ffb72d7eda0:   test   %rax,%rax
          │╭│  0x00007ffb72d7eda3:   je     0x00007ffb72d7eedd
   0.24%  │││  0x00007ffb72d7eda9:   mov    %rax,%rsi                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 145)
   1.12%  │││  0x00007ffb72d7edac:   lea    0x30(%rax),%r10              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
   0.64%  │││  0x00007ffb72d7edb0:   lea    0x40(%rax),%r11              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@8 (line 138)
   0.34%  │││  0x00007ffb72d7edb4:   lea    0x50(%rax),%r8               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@16 (line 139)
   0.23%  │││  0x00007ffb72d7edb8:   lea    0x60(%rax),%r9               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@24 (line 140)
   0.94%  │││  0x00007ffb72d7edbc:   lea    0x70(%rax),%rcx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@33 (line 141)
   0.58%  │││  0x00007ffb72d7edc0:   lea    0x80(%rax),%rbx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@42 (line 142)
   0.45%  │││  0x00007ffb72d7edc7:   lea    0x90(%rax),%rdi              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@51 (line 143)
   0.22%  │││  0x00007ffb72d7edce:   lea    0xa0(%rax),%rdx              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@60 (line 144)
   0.96%  │││  0x00007ffb72d7edd5:   movq   $0x1,(%rax)
   1.37%  │││  0x00007ffb72d7eddc:   movl   $0x1086000,0x8(%rax)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.35%  │││  0x00007ffb72d7ede3:   shr    $0x3,%r10
   0.22%  │││  0x00007ffb72d7ede7:   mov    %r10d,0xc(%rax)
   0.83%  │││  0x00007ffb72d7edeb:   shr    $0x3,%r11
   0.84%  │││  0x00007ffb72d7edef:   mov    %r11d,0x10(%rax)
   0.90%  │││  0x00007ffb72d7edf3:   shr    $0x3,%r8
   0.21%  │││  0x00007ffb72d7edf7:   mov    %r8d,0x14(%rax)
   1.27%  │││  0x00007ffb72d7edfb:   shr    $0x3,%r9
   0.73%  │││  0x00007ffb72d7edff:   mov    %r9d,0x18(%rax)
   0.91%  │││  0x00007ffb72d7ee03:   shr    $0x3,%rcx
   0.15%  │││  0x00007ffb72d7ee07:   mov    %ecx,0x1c(%rax)
   1.15%  │││  0x00007ffb72d7ee0a:   shr    $0x3,%rbx
   0.66%  │││  0x00007ffb72d7ee0e:   mov    %ebx,0x20(%rax)
   1.06%  │││  0x00007ffb72d7ee11:   shr    $0x3,%rdi
   0.18%  │││  0x00007ffb72d7ee15:   mov    %edi,0x24(%rax)
   1.33%  │││  0x00007ffb72d7ee18:   shr    $0x3,%rdx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 145)
   0.54%  │││  0x00007ffb72d7ee1c:   mov    %edx,0x28(%rax)
   2.31%  │││  0x00007ffb72d7ee1f:   movq   $0x1,0x30(%rax)
   1.36%  │││  0x00007ffb72d7ee27:   movl   $0xe80,0x38(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.26%  │││  0x00007ffb72d7ee2e:   movq   $0x1,0x40(%rax)
   1.55%  │││  0x00007ffb72d7ee36:   movl   $0xe80,0x48(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.29%  │││  0x00007ffb72d7ee3d:   movq   $0x1,0x50(%rax)
   1.88%  │││  0x00007ffb72d7ee45:   movl   $0xe80,0x58(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.69%  │││  0x00007ffb72d7ee4c:   movq   $0x1,0x60(%rax)
   2.40%  │││  0x00007ffb72d7ee54:   movl   $0xe80,0x68(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.67%  │││  0x00007ffb72d7ee5b:   movq   $0x1,0x70(%rax)
   2.13%  │││  0x00007ffb72d7ee63:   movl   $0xe80,0x78(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.57%  │││  0x00007ffb72d7ee6a:   movq   $0x1,0x80(%rax)
   2.38%  │││  0x00007ffb72d7ee75:   movl   $0xe80,0x88(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   2.78%  │││  0x00007ffb72d7ee7f:   movq   $0x1,0x90(%rax)
   2.05%  │││  0x00007ffb72d7ee8a:   movl   $0xe80,0x98(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.65%  │││  0x00007ffb72d7ee94:   movq   $0x1,0xa0(%rax)
   1.83%  │││  0x00007ffb72d7ee9f:   movl   $0xe80,0xa8(%rax)            ;   {metadata(&apos;java/lang/Object&apos;)}
   1.69%  │││  0x00007ffb72d7eea9:   mov    %rsi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@89 (line 145)
   0.06%  │││  0x00007ffb72d7eeac:   mov    0x10(%rsp),%rbp
   0.36%  │││  0x00007ffb72d7eeb1:   add    $0x18,%rsp
   0.38%  │││  0x00007ffb72d7eeb5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.75%  │││  0x00007ffb72d7eec0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007ffb72d7eec7:   ja     0x00007ffb72d7f6d5
   0.47%  │││  0x00007ffb72d7eecd:   vzeroupper 
   2.18%  │││  0x00007ffb72d7eed0:   ret    
   0.00%  ↘││  0x00007ffb72d7eed1:   mov    $0x0,%rax
           │╰  0x00007ffb72d7eed8:   jmp    0x00007ffb72d7ed9d
   0.00%   ↘   0x00007ffb72d7eedd:   mov    0x1b8(%r15),%rsi
   0.01%       0x00007ffb72d7eee4:   lea    0x30(%rsi),%rax
               0x00007ffb72d7eee8:   cmp    0x1c8(%r15),%rax
               0x00007ffb72d7eeef:   ja     0x00007ffb72d7f466
               0x00007ffb72d7eef5:   mov    %rax,0x1b8(%r15)
   0.00%       0x00007ffb72d7eefc:   prefetchw 0xf0(%rsi)
               0x00007ffb72d7ef03:   movq   $0x1,(%rsi)
               0x00007ffb72d7ef0a:   movl   $0x1086000,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.02%       0x00007ffb72d7ef11:   mov    %rsi,%r10
   0.01%       0x00007ffb72d7ef14:   vpxor  %xmm0,%xmm0,%xmm0
   0.02%       0x00007ffb72d7ef18:   vmovdqu %ymm0,0xc(%r10)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 145)
   0.01%       0x00007ffb72d7ef1e:   mov    0x1b8(%r15),%rsi
               0x00007ffb72d7ef25:   lea    0x10(%rsi),%rax
               0x00007ffb72d7ef29:   cmp    0x1c8(%r15),%rax
               0x00007ffb72d7ef30:   ja     0x00007ffb72d7f4c6
               0x00007ffb72d7ef36:   mov    %rax,0x1b8(%r15)
   0.00%       0x00007ffb72d7ef3d:   prefetchw 0xd0(%rsi)
               0x00007ffb72d7ef44:   movq   $0x1,(%rsi)
   0.00%       0x00007ffb72d7ef4b:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
               0x00007ffb72d7ef52:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
               0x00007ffb72d7ef55:   mov    0x1b8(%r15),%rsi
               0x00007ffb72d7ef5c:   lea    0x10(%rsi),%rax
               0x00007ffb72d7ef60:   cmp    0x1c8(%r15),%rax
               0x00007ffb72d7ef67:   ja     0x00007ffb72d7f3ff
               0x00007ffb72d7ef6d:   mov    %rax,0x1b8(%r15)
               0x00007ffb72d7ef74:   prefetchw 0xd0(%rsi)
               0x00007ffb72d7ef7b:   movq   $0x1,(%rsi)
               0x00007ffb72d7ef82:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
....................................................................................................
  82.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1039 

              0x00007ffb72d868f3:   mov    0x10(%rsp),%rdx
              0x00007ffb72d868f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@10 (line 192)
              0x00007ffb72d868fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007ffb72d86905:   jmp    0x00007ffb72d8692f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@13 (line 194)
          │   0x00007ffb72d8690a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007ffb72d86915:   data16 data16 xchg %ax,%ax
          │   0x00007ffb72d86919:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@33 (line 196)
   1.00%  │↗  0x00007ffb72d86920:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@33 (line 196)
   0.70%  ││  0x00007ffb72d86927:   test   %eax,(%r11)                  ;   {poll}
   1.92%  ││  0x00007ffb72d8692a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@13 (line 194)
   0.52%  ↘│  0x00007ffb72d8692f:   mov    0x8(%rsp),%r10
   0.36%   │  0x00007ffb72d86934:   mov    %r10,%rsi
   0.58%   │  0x00007ffb72d86937:   call   0x00007ffb72764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual wrapper_obj_dse_inter_procedural {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@17 (line 194)
           │                                                            ;   {optimized virtual_call}
   1.80%   │  0x00007ffb72d8693c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@20 (line 194)
           │                                                            ;   {other}
   0.21%   │  0x00007ffb72d86944:   mov    0x20(%rsp),%r10
   1.33%   │  0x00007ffb72d86949:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@26 (line 195)
   0.78%   │  0x00007ffb72d8694c:   mov    0x18(%rsp),%rsi
   0.21%   │  0x00007ffb72d86951:   cmpb   $0x0,0x94(%rsi)
   2.22%   ╰  0x00007ffb72d86958:   je     0x00007ffb72d86920           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@33 (line 196)
              0x00007ffb72d8695a:   mov    %r10,0x20(%rsp)
              0x00007ffb72d8695f:   nop
              0x00007ffb72d86960:   call   0x00007ffb8c9f1df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ffb72d86965:   nop
              0x00007ffb72d86966:   mov    0x10(%rsp),%rdx
              0x00007ffb72d8696b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@40 (line 197)
              0x00007ffb72d8696f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub@46 (line 198)
....................................................................................................
  11.65%  <total for region 2>

....[Hottest Regions]...............................................................................
  82.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 988 
  11.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1039 
   0.46%               kernel  [unknown] 
   0.22%               kernel  [unknown] 
   0.20%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.17%               kernel  [unknown] 
   0.13%            libjvm.so  G1CardSet::reset_table_scanner 
   0.13%           ld-2.31.so  __tls_get_addr 
   0.11%         libc-2.31.so  __memset_avx2_erms 
   0.10%            libjvm.so  HeapRegionManager::par_iterate 
   0.09%                       <unknown> 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%            libjvm.so  HeapRegionClaimer::claim_region 
   0.07%            libjvm.so  ObjAllocator::initialize 
   0.05%            libjvm.so  SpinPause 
   0.04%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.04%               [vdso]  __vdso_clock_gettime 
   0.04%               kernel  [unknown] 
   3.35%  <...other 688 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 988 
  11.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 1039 
   2.28%               kernel  [unknown] 
   0.23%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.20%                       <unknown> 
   0.13%            libjvm.so  G1CardSet::reset_table_scanner 
   0.13%           ld-2.31.so  __tls_get_addr 
   0.11%         libc-2.31.so  __memset_avx2_erms 
   0.10%            libjvm.so  HeapRegionManager::par_iterate 
   0.08%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.07%            libjvm.so  ObjAllocator::initialize 
   0.07%            libjvm.so  HeapRegionClaimer::claim_region 
   0.06%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.06%            libjvm.so  JVMCIRuntime::new_instance_common 
   0.05%            libjvm.so  SpinPause 
   0.05%               [vdso]  __vdso_clock_gettime 
   0.04%            libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.04%            libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.04%            libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%            libjvm.so  G1CardSet::clear 
   1.65%  <...other 236 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.58%       jvmci, level 4
   2.28%               kernel
   2.24%            libjvm.so
   0.35%         libc-2.31.so
   0.20%                     
   0.13%           ld-2.31.so
   0.11%   libpthread-2.31.so
   0.05%               [vdso]
   0.03%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%     perf-2126380.map
   0.00%          c1, level 3
   0.00%            libzip.so
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate":
  9903.451 ±(99.9%) 192.218 MB/sec [Average]
  (min, avg, max) = (9818.252, 9903.451, 9948.624), stdev = 49.918
  CI (99.9%): [9711.233, 10095.670] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate.norm":
  176.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (176.000, 176.000, 176.000), stdev = 0.001
  CI (99.9%): [176.000, 176.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.count":
  202.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (40.000, 40.400, 41.000), stdev = 0.548
  CI (99.9%): [202.000, 202.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.time":
  368.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (72.000, 73.600, 76.000), stdev = 1.817
  CI (99.9%): [368.000, 368.000] (assumes normal distribution)


# Run complete. Total time: 00:15:13

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

Benchmark                                                                              (size)  Mode  Cnt     Score     Error   Units
DeadLocalAllocationStoreBenchmark.array_baseline                                           64  avgt    5    13.850 ±   0.331   ns/op
DeadLocalAllocationStoreBenchmark.array_baseline:asm                                       64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate                             64  avgt    5  5508.767 ± 130.611  MB/sec
DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate.norm                        64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_baseline:gc.count                                  64  avgt    5   112.000            counts
DeadLocalAllocationStoreBenchmark.array_baseline:gc.time                                   64  avgt    5   196.000                ms
DeadLocalAllocationStoreBenchmark.array_dse                                                64  avgt    5    13.720 ±   0.168   ns/op
DeadLocalAllocationStoreBenchmark.array_dse:asm                                            64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate                                  64  avgt    5  5560.776 ±  68.083  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate.norm                             64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse:gc.count                                       64  avgt    5   113.000            counts
DeadLocalAllocationStoreBenchmark.array_dse:gc.time                                        64  avgt    5   203.000                ms
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural                               64  avgt    5    30.513 ±   0.211   ns/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:asm                           64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate                 64  avgt    5  2500.319 ±  17.372  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate.norm            64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.count                      64  avgt    5    51.000            counts
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.time                       64  avgt    5    91.000                ms
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline                                       64  avgt    5     8.070 ±   0.017   ns/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:asm                                   64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate                         64  avgt    5  1890.654 ±   4.033  MB/sec
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate.norm                    64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.count                              64  avgt    5    39.000            counts
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.time                               64  avgt    5    71.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse                                                  64  avgt    5     8.152 ±   0.021   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse:asm                                              64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate                                    64  avgt    5  1871.707 ±   4.752  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate.norm                               64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse:gc.count                                         64  avgt    5    38.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse:gc.time                                          64  avgt    5    68.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural                                 64  avgt    5    84.145 ±   0.103   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:asm                             64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate                   64  avgt    5   181.334 ±   0.222  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate.norm              64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.count                        64  avgt    5     4.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.time                         64  avgt    5    14.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline                                     64  avgt    5    17.026 ±   0.348   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:asm                                 64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate                       64  avgt    5  9858.466 ± 200.653  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate.norm                  64  avgt    5   176.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.count                            64  avgt    5   201.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.time                             64  avgt    5   360.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural                         64  avgt    5    16.948 ±   0.331   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:asm                     64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate           64  avgt    5  9903.451 ± 192.218  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate.norm      64  avgt    5   176.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.count                64  avgt    5   202.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.time                 64  avgt    5   368.000                ms
