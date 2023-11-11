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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline
# Parameters: (size = 64)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.631 ns/op
# Warmup Iteration   2: 12.757 ns/op
# Warmup Iteration   3: 13.640 ns/op
# Warmup Iteration   4: 12.724 ns/op
# Warmup Iteration   5: 12.741 ns/op
Iteration   1: 12.744 ns/op
                 gc.alloc.rate:      5986.555 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            43.000 ms

Iteration   2: 12.800 ns/op
                 gc.alloc.rate:      5960.467 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           24.000 counts
                 gc.time:            44.000 ms

Iteration   3: 12.728 ns/op
                 gc.alloc.rate:      5994.043 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           24.000 counts
                 gc.time:            43.000 ms

Iteration   4: 12.751 ns/op
                 gc.alloc.rate:      5983.125 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            44.000 ms

Iteration   5: 12.739 ns/op
                 gc.alloc.rate:      5989.037 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           24.000 counts
                 gc.time:            42.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline":
  12.752 ±(99.9%) 0.107 ns/op [Average]
  (min, avg, max) = (12.728, 12.752, 12.800), stdev = 0.028
  CI (99.9%): [12.645, 12.859] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:asm":
PrintAssembly processed: 138693 total address lines.
Perf output processed (skipped 56.750 seconds):
 Column 1: cycles (50871 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 604 

                # {method} {0x00007f1e8447ae98} &apos;array_baseline&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f1f08639ca0:   mov    0x8(%rsi),%r10d
                0x00007f1f08639ca4:   movabs $0x7f1e8f000000,%r11
                0x00007f1f08639cae:   add    %r11,%r10
                0x00007f1f08639cb1:   cmp    %r10,%rax
                0x00007f1f08639cb4:   jne    0x00007f1f080c4080           ;   {runtime_call ic_miss_stub}
                0x00007f1f08639cba:   xchg   %ax,%ax
                0x00007f1f08639cbc:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.66%        0x00007f1f08639cc0:   mov    %eax,-0x14000(%rsp)
   7.47%        0x00007f1f08639cc7:   push   %rbp
   0.82%        0x00007f1f08639cc8:   sub    $0x10,%rsp
   0.41%        0x00007f1f08639ccc:   cmpl   $0x0,0x20(%r15)
   1.75%        0x00007f1f08639cd4:   jne    0x00007f1f08639e30           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@-1 (line 152)
   1.01%        0x00007f1f08639cda:   mov    0xc(%rsi),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline@1 (line 152)
   0.49%        0x00007f1f08639cdd:   data16 xchg %ax,%ax
                0x00007f1f08639ce0:   cmp    $0x100000,%edx
                0x00007f1f08639ce6:   ja     0x00007f1f08639e05
   1.56%        0x00007f1f08639cec:   movslq %edx,%rcx
   0.85%        0x00007f1f08639cef:   cmp    $0x100000,%edx
                0x00007f1f08639cf5:   ja     0x00007f1f08639de9
   0.42%        0x00007f1f08639cfb:   add    $0x17,%rcx
   0.06%        0x00007f1f08639cff:   mov    %rcx,%r10
   1.54%        0x00007f1f08639d02:   and    $0xfffffffffffffff8,%r10
   1.57%        0x00007f1f08639d06:   mov    0x1b8(%r15),%r8
   0.38%        0x00007f1f08639d0d:   mov    %r8,%r11
                0x00007f1f08639d10:   add    %r10,%r11
   1.65%        0x00007f1f08639d13:   nopw   0x0(%rax,%rax,1)
   0.94%        0x00007f1f08639d1c:   data16 data16 xchg %ax,%ax
   0.35%        0x00007f1f08639d20:   cmp    0x1c8(%r15),%r11
                0x00007f1f08639d27:   jae    0x00007f1f08639de9
   0.10%        0x00007f1f08639d2d:   mov    %r11,0x1b8(%r15)
   2.43%        0x00007f1f08639d34:   mov    %r8,%rdi
   0.13%        0x00007f1f08639d37:   add    $0x10,%rdi
   0.29%        0x00007f1f08639d3b:   movq   $0x1,(%r8)
   1.65%        0x00007f1f08639d42:   prefetchw 0xc0(%r11)
   4.15%        0x00007f1f08639d4a:   movl   $0x22c0,0x8(%r8)             ;   {metadata({type array byte})}
   3.42%        0x00007f1f08639d52:   mov    %edx,0xc(%r8)
   1.23%        0x00007f1f08639d56:   prefetchw 0x100(%r11)
   0.48%        0x00007f1f08639d5e:   prefetchw 0x140(%r11)
   0.75%        0x00007f1f08639d66:   prefetchw 0x180(%r11)
   4.07%        0x00007f1f08639d6e:   shr    $0x3,%rcx
   0.70%        0x00007f1f08639d72:   add    $0xfffffffffffffffe,%rcx
   0.32%        0x00007f1f08639d76:   xor    %rax,%rax
   0.20%        0x00007f1f08639d79:   cmp    $0x8,%rcx
          ╭     0x00007f1f08639d7d:   jg     0x00007f1f08639d8f
   1.69%  │     0x00007f1f08639d7f:   dec    %rcx
   0.67%  │     0x00007f1f08639d82:   js     0x00007f1f08639dd3
  15.93%  │↗    0x00007f1f08639d84:   mov    %rax,(%rdi,%rcx,8)
   5.49%  ││    0x00007f1f08639d88:   dec    %rcx
          │╰    0x00007f1f08639d8b:   jge    0x00007f1f08639d84
          │     0x00007f1f08639d8d:   jmp    0x00007f1f08639dd3
          ↘     0x00007f1f08639d8f:   vpxor  %ymm0,%ymm0,%ymm0
            ╭   0x00007f1f08639d93:   jmp    0x00007f1f08639da5
            │↗  0x00007f1f08639d98:   vmovdqu %ymm0,(%rdi)
            ││  0x00007f1f08639d9c:   vmovdqu %ymm0,0x20(%rdi)
            ││  0x00007f1f08639da1:   add    $0x40,%rdi
            ↘│  0x00007f1f08639da5:   sub    $0x8,%rcx
             ╰  0x00007f1f08639da9:   jge    0x00007f1f08639d98
                0x00007f1f08639dab:   add    $0x4,%rcx
....................................................................................................
  67.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 662 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@20 (line 194)
              0x00007f1f0863f2b5:   mov    0x38(%rsp),%r10
              0x00007f1f0863f2ba:   nopw   0x0(%rax,%rax,1)
              0x00007f1f0863f2c0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f1f0863f398
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@30 (line 196)
              0x00007f1f0863f2c8:   mov    $0x1,%ebp
              0x00007f1f0863f2cd:   test   %r11d,%r11d
          ╭   0x00007f1f0863f2d0:   jne    0x00007f1f0863f305           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@36 (line 197)
   0.01%  │↗  0x00007f1f0863f2d2:   mov    0x40(%rsp),%rsi
   0.21%  ││  0x00007f1f0863f2d7:   call   0x00007f1f080c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual array_baseline {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
   1.37%  ││  0x00007f1f0863f2dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual array_baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   0.02%  ││  0x00007f1f0863f2e4:   mov    0x38(%rsp),%r10
   7.68%  ││  0x00007f1f0863f2e9:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@30 (line 196)
  10.30%  ││  0x00007f1f0863f2f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
   0.01%  ││  0x00007f1f0863f2f5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@33 (line 196)
   0.19%  ││  0x00007f1f0863f2fc:   test   %eax,(%r10)                  ;   {poll}
   0.58%  ││  0x00007f1f0863f2ff:   nop
   2.55%  ││  0x00007f1f0863f300:   test   %r11d,%r11d
          │╰  0x00007f1f0863f303:   je     0x00007f1f0863f2d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@36 (line 197)
          ↘   0x00007f1f0863f305:   movabs $0x7f1f1ea1eb90,%r10
              0x00007f1f0863f30f:   call   *%r10
              0x00007f1f0863f312:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f1f0863f31a:   mov    0x30(%rsp),%r10
              0x00007f1f0863f31f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub@40 (line 197)
....................................................................................................
  22.93%  <total for region 2>

....[Hottest Regions]...............................................................................
  67.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 604 
  22.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 662 
   5.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 604 
   0.13%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.13%        libc-2.31.so  __memset_avx2_erms 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  G1CardSet::clear 
   0.03%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   2.62%  <...other 576 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  73.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_baseline, version 2, compile id 604 
  22.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_baseline_jmhTest::array_baseline_avgt_jmhStub, version 6, compile id 662 
   1.72%              kernel  [unknown] 
   0.19%                      <unknown> 
   0.14%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.13%        libc-2.31.so  __memset_avx2_erms 
   0.08%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%           libjvm.so  OptoRuntime::new_array_C 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.04%           libjvm.so  TypeArrayKlass::allocate_common 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  G1CardSet::clear 
   0.04%              [vdso]  __vdso_clock_gettime 
   0.04%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%           libjvm.so  G1MonotonicArena::num_segments 
   0.03%        libc-2.31.so  __vfprintf_internal 
   1.06%  <...other 202 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.18%         c2, level 4
   1.72%              kernel
   1.46%           libjvm.so
   0.31%        libc-2.31.so
   0.19%                    
   0.04%  libpthread-2.31.so
   0.04%              [vdso]
   0.02%         interpreter
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-1932460.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate":
  5982.645 ±(99.9%) 50.137 MB/sec [Average]
  (min, avg, max) = (5960.467, 5982.645, 5994.043), stdev = 13.021
  CI (99.9%): [5932.508, 6032.783] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.count":
  122.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (24.000, 24.400, 25.000), stdev = 0.548
  CI (99.9%): [122.000, 122.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:gc.time":
  216.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (42.000, 43.200, 44.000), stdev = 0.837
  CI (99.9%): [216.000, 216.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse
# Parameters: (size = 64)

# Run progress: 12.50% complete, ETA 00:12:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.612 ns/op
# Warmup Iteration   2: 13.994 ns/op
# Warmup Iteration   3: 14.499 ns/op
# Warmup Iteration   4: 14.527 ns/op
# Warmup Iteration   5: 13.811 ns/op
Iteration   1: 13.934 ns/op
                 gc.alloc.rate:      5475.175 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            40.000 ms

Iteration   2: 13.764 ns/op
                 gc.alloc.rate:      5543.032 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           22.000 counts
                 gc.time:            41.000 ms

Iteration   3: 13.931 ns/op
                 gc.alloc.rate:      5473.953 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            38.000 ms

Iteration   4: 13.844 ns/op
                 gc.alloc.rate:      5510.940 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           22.000 counts
                 gc.time:            38.000 ms

Iteration   5: 13.815 ns/op
                 gc.alloc.rate:      5522.419 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           23.000 counts
                 gc.time:            43.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse":
  13.857 ±(99.9%) 0.286 ns/op [Average]
  (min, avg, max) = (13.764, 13.857, 13.934), stdev = 0.074
  CI (99.9%): [13.571, 14.144] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:asm":
PrintAssembly processed: 135221 total address lines.
Perf output processed (skipped 56.394 seconds):
 Column 1: cycles (50918 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 598 

                # {method} {0x00007f96c747af90} &apos;array_dse&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x30]  (sp of caller)
                0x00007f974c63b720:   mov    0x8(%rsi),%r10d
                0x00007f974c63b724:   movabs $0x7f96cb000000,%r11
                0x00007f974c63b72e:   add    %r11,%r10
                0x00007f974c63b731:   cmp    %r10,%rax
                0x00007f974c63b734:   jne    0x00007f974c0c4080           ;   {runtime_call ic_miss_stub}
                0x00007f974c63b73a:   xchg   %ax,%ax
                0x00007f974c63b73c:   nopl   0x0(%rax)
              [Verified Entry Point]
   2.52%        0x00007f974c63b740:   mov    %eax,-0x14000(%rsp)
   8.57%        0x00007f974c63b747:   push   %rbp
   0.24%        0x00007f974c63b748:   sub    $0x20,%rsp
   0.18%        0x00007f974c63b74c:   cmpl   $0x1,0x20(%r15)
   2.41%        0x00007f974c63b754:   jne    0x00007f974c63b947           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@-1 (line 160)
   0.59%        0x00007f974c63b75a:   mov    %rsi,(%rsp)
   0.15%        0x00007f974c63b75e:   mov    0xc(%rsi),%ebp               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@1 (line 160)
   0.07%        0x00007f974c63b761:   cmp    $0x100000,%ebp
                0x00007f974c63b767:   ja     0x00007f974c63b8ad           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@4 (line 160)
   2.02%        0x00007f974c63b76d:   cmp    $0x100000,%ebp
                0x00007f974c63b773:   ja     0x00007f974c63b8cd           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@11 (line 161)
   0.59%        0x00007f974c63b779:   nopl   0x0(%rax)
   0.20%        0x00007f974c63b780:   cmp    $0x100000,%ebp
                0x00007f974c63b786:   ja     0x00007f974c63b8ed           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse@18 (line 162)
   0.09%        0x00007f974c63b78c:   cmp    $0x100000,%ebp
                0x00007f974c63b792:   ja     0x00007f974c63b90d
   2.15%        0x00007f974c63b798:   movslq %ebp,%rcx
   0.48%        0x00007f974c63b79b:   nopl   0x0(%rax,%rax,1)
   0.13%        0x00007f974c63b7a0:   cmp    $0x100000,%ebp
                0x00007f974c63b7a6:   ja     0x00007f974c63b88d
   0.01%        0x00007f974c63b7ac:   add    $0x17,%rcx
   2.07%        0x00007f974c63b7b0:   mov    %rcx,%r10
   0.46%        0x00007f974c63b7b3:   and    $0xfffffffffffffff8,%r10
   0.16%        0x00007f974c63b7b7:   mov    0x1b8(%r15),%r8
   0.04%        0x00007f974c63b7be:   mov    %r8,%r11
   2.00%        0x00007f974c63b7c1:   add    %r10,%r11
   0.56%        0x00007f974c63b7c4:   cmp    0x1c8(%r15),%r11
                0x00007f974c63b7cb:   jae    0x00007f974c63b88d
   0.28%        0x00007f974c63b7d1:   mov    %r11,0x1b8(%r15)
   0.50%        0x00007f974c63b7d8:   prefetchw 0xc0(%r11)
   3.42%        0x00007f974c63b7e0:   movq   $0x1,(%r8)
   0.27%        0x00007f974c63b7e7:   prefetchw 0x100(%r11)
   0.21%        0x00007f974c63b7ef:   movl   $0x22c0,0x8(%r8)             ;   {metadata({type array byte})}
   7.72%        0x00007f974c63b7f7:   mov    %ebp,0xc(%r8)
   1.31%        0x00007f974c63b7fb:   prefetchw 0x140(%r11)
   0.51%        0x00007f974c63b803:   mov    %r8,%rdi
   0.05%        0x00007f974c63b806:   add    $0x10,%rdi
   1.86%        0x00007f974c63b80a:   prefetchw 0x180(%r11)
   2.45%        0x00007f974c63b812:   shr    $0x3,%rcx
   0.07%        0x00007f974c63b816:   add    $0xfffffffffffffffe,%rcx
   0.05%        0x00007f974c63b81a:   xor    %rax,%rax
   2.04%        0x00007f974c63b81d:   cmp    $0x8,%rcx
          ╭     0x00007f974c63b821:   jg     0x00007f974c63b833
   0.62%  │     0x00007f974c63b823:   dec    %rcx
   0.06%  │     0x00007f974c63b826:   js     0x00007f974c63b877
  14.54%  │↗    0x00007f974c63b828:   mov    %rax,(%rdi,%rcx,8)
   8.29%  ││    0x00007f974c63b82c:   dec    %rcx
          │╰    0x00007f974c63b82f:   jge    0x00007f974c63b828
   0.01%  │     0x00007f974c63b831:   jmp    0x00007f974c63b877
          ↘     0x00007f974c63b833:   vpxor  %ymm0,%ymm0,%ymm0
            ╭   0x00007f974c63b837:   jmp    0x00007f974c63b849
            │↗  0x00007f974c63b83c:   vmovdqu %ymm0,(%rdi)
            ││  0x00007f974c63b840:   vmovdqu %ymm0,0x20(%rdi)
            ││  0x00007f974c63b845:   add    $0x40,%rdi
            ↘│  0x00007f974c63b849:   sub    $0x8,%rcx
             ╰  0x00007f974c63b84d:   jge    0x00007f974c63b83c
                0x00007f974c63b84f:   add    $0x4,%rcx
                0x00007f974c63b853:   jl     0x00007f974c63b861
                0x00007f974c63b855:   vmovdqu %ymm0,(%rdi)
....................................................................................................
  69.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 658 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@20 (line 194)
              0x00007f974c6401b5:   mov    0x38(%rsp),%r10
              0x00007f974c6401ba:   nopw   0x0(%rax,%rax,1)
              0x00007f974c6401c0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f974c640298
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@30 (line 196)
              0x00007f974c6401c8:   mov    $0x1,%ebp
              0x00007f974c6401cd:   test   %r11d,%r11d
          ╭   0x00007f974c6401d0:   jne    0x00007f974c640205           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@36 (line 197)
   0.02%  │↗  0x00007f974c6401d2:   mov    0x40(%rsp),%rsi
   0.15%  ││  0x00007f974c6401d7:   call   0x00007f974c0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual array_dse {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
   1.60%  ││  0x00007f974c6401dc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual array_dse {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   0.01%  ││  0x00007f974c6401e4:   mov    0x38(%rsp),%r10
   5.80%  ││  0x00007f974c6401e9:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@30 (line 196)
  10.34%  ││  0x00007f974c6401f1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
   0.01%  ││  0x00007f974c6401f5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@33 (line 196)
   0.18%  ││  0x00007f974c6401fc:   test   %eax,(%r10)                  ;   {poll}
   0.57%  ││  0x00007f974c6401ff:   nop
   2.43%  ││  0x00007f974c640200:   test   %r11d,%r11d
          │╰  0x00007f974c640203:   je     0x00007f974c6401d2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@36 (line 197)
          ↘   0x00007f974c640205:   movabs $0x7f9760faeb90,%r10
              0x00007f974c64020f:   call   *%r10
              0x00007f974c640212:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f974c64021a:   mov    0x30(%rsp),%r10
              0x00007f974c64021f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub@40 (line 197)
....................................................................................................
  21.12%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 598 
  21.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 658 
   5.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 598 
   0.13%              kernel  [unknown] 
   0.12%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%              kernel  [unknown] 
   0.08%        libc-2.31.so  __memset_avx2_erms 
   0.07%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::clear 
   0.04%                      <unknown> 
   2.32%  <...other 529 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse, version 2, compile id 598 
  21.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub, version 6, compile id 658 
   1.37%              kernel  [unknown] 
   0.17%                      <unknown> 
   0.16%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.08%        libc-2.31.so  __memset_avx2_erms 
   0.07%           libjvm.so  G1CardSet::reset_table_scanner 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%           libjvm.so  G1CardSet::clear 
   0.04%           libjvm.so  TypeArrayKlass::allocate_common 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.04%           libjvm.so  ObjArrayAllocator::initialize 
   0.04%           libjvm.so  OptoRuntime::new_array_C 
   0.03%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.03%           libjvm.so  G1FromCardCache::clear 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  HeapRegionManager::allocate_free_region 
   1.01%  <...other 198 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.59%         c2, level 4
   1.38%           libjvm.so
   1.37%              kernel
   0.31%        libc-2.31.so
   0.17%                    
   0.05%  libpthread-2.31.so
   0.04%          ld-2.31.so
   0.03%              [vdso]
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-1932529.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate":
  5505.104 ±(99.9%) 116.135 MB/sec [Average]
  (min, avg, max) = (5473.953, 5505.104, 5543.032), stdev = 30.160
  CI (99.9%): [5388.969, 5621.239] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.count":
  113.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (22.000, 22.600, 23.000), stdev = 0.548
  CI (99.9%): [113.000, 113.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse:gc.time":
  200.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (38.000, 40.000, 43.000), stdev = 2.121
  CI (99.9%): [200.000, 200.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 25.00% complete, ETA 00:10:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 30.532 ns/op
# Warmup Iteration   2: 29.023 ns/op
# Warmup Iteration   3: 30.010 ns/op
# Warmup Iteration   4: 29.042 ns/op
# Warmup Iteration   5: 28.917 ns/op
Iteration   1: 29.106 ns/op
                 gc.alloc.rate:      2621.181 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           11.000 counts
                 gc.time:            20.000 ms

Iteration   2: 28.974 ns/op
                 gc.alloc.rate:      2633.147 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           11.000 counts
                 gc.time:            20.000 ms

Iteration   3: 28.967 ns/op
                 gc.alloc.rate:      2633.747 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           10.000 counts
                 gc.time:            19.000 ms

Iteration   4: 29.070 ns/op
                 gc.alloc.rate:      2623.053 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           11.000 counts
                 gc.time:            19.000 ms

Iteration   5: 28.997 ns/op
                 gc.alloc.rate:      2631.002 MB/sec
                 gc.alloc.rate.norm: 80.000 B/op
                 gc.count:           11.000 counts
                 gc.time:            20.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural":
  29.023 ±(99.9%) 0.238 ns/op [Average]
  (min, avg, max) = (28.967, 29.023, 29.106), stdev = 0.062
  CI (99.9%): [28.785, 29.261] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:asm":
PrintAssembly processed: 143605 total address lines.
Perf output processed (skipped 56.874 seconds):
 Column 1: cycles (51011 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 608 

                # {method} {0x00007f184b4844b8} &apos;array_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f18d0639d40:   mov    0x8(%rsi),%r10d
                0x00007f18d0639d44:   movabs $0x7f184f000000,%r11
                0x00007f18d0639d4e:   add    %r11,%r10
                0x00007f18d0639d51:   cmp    %r10,%rax
                0x00007f18d0639d54:   jne    0x00007f18d00c4080           ;   {runtime_call ic_miss_stub}
                0x00007f18d0639d5a:   xchg   %ax,%ax
                0x00007f18d0639d5c:   nopl   0x0(%rax)
              [Verified Entry Point]
   1.31%        0x00007f18d0639d60:   mov    %eax,-0x14000(%rsp)
   4.09%        0x00007f18d0639d67:   push   %rbp
   0.08%        0x00007f18d0639d68:   sub    $0x10,%rsp
   0.20%        0x00007f18d0639d6c:   cmpl   $0x1,0x20(%r15)
   0.98%        0x00007f18d0639d74:   jne    0x00007f18d0639fb1           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@-1 (line 172)
   0.10%        0x00007f18d0639d7a:   mov    %rsi,%rbp
   0.23%        0x00007f18d0639d7d:   mov    0xc(%rsi),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@1 (line 172)
   0.04%        0x00007f18d0639d80:   cmp    $0x100000,%edx
                0x00007f18d0639d86:   ja     0x00007f18d0639f05           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@4 (line 172)
   0.90%        0x00007f18d0639d8c:   mov    %rbp,%rsi
   0.10%        0x00007f18d0639d8f:   call   0x00007f18d0639a20           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@8 (line 173)
                                                                          ;   {optimized virtual_call}
   0.02%        0x00007f18d0639d94:   nopl   0x204(%rax,%rax,1)           ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@8 (line 173)
                                                                          ;   {other}
   1.07%        0x00007f18d0639d9c:   mov    0xc(%rbp),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@12 (line 174)
   5.80%        0x00007f18d0639d9f:   nop
   0.00%        0x00007f18d0639da0:   cmp    $0x100000,%edx
                0x00007f18d0639da6:   ja     0x00007f18d0639f25           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@15 (line 174)
   1.27%        0x00007f18d0639dac:   mov    %rbp,%rsi
   0.02%        0x00007f18d0639daf:   call   0x00007f18d0639a20           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@19 (line 175)
                                                                          ;   {optimized virtual_call}
   0.63%        0x00007f18d0639db4:   nopl   0x1000224(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@19 (line 175)
                                                                          ;   {other}
   0.05%        0x00007f18d0639dbc:   mov    0xc(%rbp),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@23 (line 176)
   5.08%        0x00007f18d0639dbf:   nop
                0x00007f18d0639dc0:   cmp    $0x100000,%edx
                0x00007f18d0639dc6:   ja     0x00007f18d0639f45           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@26 (line 176)
   1.29%        0x00007f18d0639dcc:   mov    %rbp,%rsi
                0x00007f18d0639dcf:   call   0x00007f18d0639a20           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@30 (line 177)
                                                                          ;   {optimized virtual_call}
   2.49%        0x00007f18d0639dd4:   nopl   0x2000244(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@30 (line 177)
                                                                          ;   {other}
   0.01%        0x00007f18d0639ddc:   mov    0xc(%rbp),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural@34 (line 178)
   5.32%        0x00007f18d0639ddf:   nop
   0.00%        0x00007f18d0639de0:   cmp    $0x100000,%edx
                0x00007f18d0639de6:   ja     0x00007f18d0639f65
   1.27%        0x00007f18d0639dec:   movslq %edx,%rcx
                0x00007f18d0639def:   cmp    $0x100000,%edx
                0x00007f18d0639df5:   ja     0x00007f18d0639ee9
   2.48%        0x00007f18d0639dfb:   add    $0x17,%rcx
   0.01%        0x00007f18d0639dff:   mov    %rcx,%r10
                0x00007f18d0639e02:   and    $0xfffffffffffffff8,%r10
                0x00007f18d0639e06:   mov    0x1b8(%r15),%r8
   1.35%        0x00007f18d0639e0d:   mov    %r8,%r11
   0.00%        0x00007f18d0639e10:   add    %r10,%r11
                0x00007f18d0639e13:   nopw   0x0(%rax,%rax,1)
                0x00007f18d0639e1c:   data16 data16 xchg %ax,%ax
   1.37%        0x00007f18d0639e20:   cmp    0x1c8(%r15),%r11
                0x00007f18d0639e27:   jae    0x00007f18d0639ee9
   0.01%        0x00007f18d0639e2d:   mov    %r11,0x1b8(%r15)
   1.35%        0x00007f18d0639e34:   mov    %r8,%rdi
                0x00007f18d0639e37:   add    $0x10,%rdi
                0x00007f18d0639e3b:   movq   $0x1,(%r8)
   3.91%        0x00007f18d0639e42:   prefetchw 0xc0(%r11)
   0.04%        0x00007f18d0639e4a:   movl   $0x22c0,0x8(%r8)             ;   {metadata({type array byte})}
   1.25%        0x00007f18d0639e52:   mov    %edx,0xc(%r8)
   4.12%        0x00007f18d0639e56:   prefetchw 0x100(%r11)
   0.01%        0x00007f18d0639e5e:   prefetchw 0x140(%r11)
   0.14%        0x00007f18d0639e66:   prefetchw 0x180(%r11)
   0.52%        0x00007f18d0639e6e:   shr    $0x3,%rcx
   1.20%        0x00007f18d0639e72:   add    $0xfffffffffffffffe,%rcx
   0.01%        0x00007f18d0639e76:   xor    %rax,%rax
   0.00%        0x00007f18d0639e79:   cmp    $0x8,%rcx
          ╭     0x00007f18d0639e7d:   jg     0x00007f18d0639e8f
   0.02%  │     0x00007f18d0639e7f:   dec    %rcx
   1.28%  │     0x00007f18d0639e82:   js     0x00007f18d0639ed3
   4.50%  │↗    0x00007f18d0639e84:   mov    %rax,(%rdi,%rcx,8)
   7.83%  ││    0x00007f18d0639e88:   dec    %rcx
          │╰    0x00007f18d0639e8b:   jge    0x00007f18d0639e84
          │     0x00007f18d0639e8d:   jmp    0x00007f18d0639ed3
          ↘     0x00007f18d0639e8f:   vpxor  %ymm0,%ymm0,%ymm0
            ╭   0x00007f18d0639e93:   jmp    0x00007f18d0639ea5
            │↗  0x00007f18d0639e98:   vmovdqu %ymm0,(%rdi)
            ││  0x00007f18d0639e9c:   vmovdqu %ymm0,0x20(%rdi)
            ││  0x00007f18d0639ea1:   add    $0x40,%rdi
            ↘│  0x00007f18d0639ea5:   sub    $0x8,%rcx
             ╰  0x00007f18d0639ea9:   jge    0x00007f18d0639e98
                0x00007f18d0639eab:   add    $0x4,%rcx
....................................................................................................
  63.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 607 

                # {method} {0x00007f184b484580} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f18d0639a00:   mov    0x8(%rsi),%r10d
                0x00007f18d0639a04:   movabs $0x7f184f000000,%r11
                0x00007f18d0639a0e:   add    %r11,%r10
                0x00007f18d0639a11:   cmp    %r10,%rax
                0x00007f18d0639a14:   jne    0x00007f18d00c4080           ;   {runtime_call ic_miss_stub}
                0x00007f18d0639a1a:   xchg   %ax,%ax
                0x00007f18d0639a1c:   nopl   0x0(%rax)
              [Verified Entry Point]
   1.51%        0x00007f18d0639a20:   sub    $0x18,%rsp
   2.35%        0x00007f18d0639a27:   mov    %rbp,0x10(%rsp)
   7.77%        0x00007f18d0639a2c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007f18d0639a34:   jne    0x00007f18d0639a63           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink@-1 (line 185)
   1.93%  │  ↗  0x00007f18d0639a3a:   add    $0x10,%rsp
   0.04%  │  │  0x00007f18d0639a3e:   pop    %rbp
   4.93%  │ ↗│  0x00007f18d0639a3f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f18d0639a46:   ja     0x00007f18d0639a4d
   1.29%  ││││  0x00007f18d0639a4c:   ret    
          │↘╰│  0x00007f18d0639a4d:   movabs $0x7f18d0639a3f,%r10         ;   {internal_word}
          │  │  0x00007f18d0639a57:   mov    %r10,0x468(%r15)
          │  │  0x00007f18d0639a5e:   jmp    0x00007f18d00cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f18d0639a63:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f18d0639a68:   jmp    0x00007f18d0639a3a
                0x00007f18d0639a6d:   hlt    
                0x00007f18d0639a6e:   hlt    
                0x00007f18d0639a6f:   hlt    
              [Exception Handler]
                0x00007f18d0639a70:   jmp    0x00007f18d0192100           ;   {no_reloc}
....................................................................................................
  19.82%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 608 
  19.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 607 
   9.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 669 
   3.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 608 
   0.45%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   2.04%  <...other 515 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural, version 2, compile id 608 
  19.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 607 
   9.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_inter_procedural_jmhTest::array_dse_inter_procedural_avgt_jmhStub, version 6, compile id 669 
   2.13%              kernel  [unknown] 
   0.12%                      <unknown> 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  TypeArrayKlass::allocate_common 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.69%  <...other 179 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.64%         c2, level 4
   2.13%              kernel
   0.84%           libjvm.so
   0.16%        libc-2.31.so
   0.12%                    
   0.04%  libpthread-2.31.so
   0.03%         interpreter
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-1932593.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate":
  2628.426 ±(99.9%) 22.667 MB/sec [Average]
  (min, avg, max) = (2621.181, 2628.426, 2633.747), stdev = 5.887
  CI (99.9%): [2605.759, 2651.093] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.count":
  54.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (10.000, 10.800, 11.000), stdev = 0.447
  CI (99.9%): [54.000, 54.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.time":
  98.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (19.000, 19.600, 20.000), stdev = 0.548
  CI (99.9%): [98.000, 98.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline
# Parameters: (size = 64)

# Run progress: 37.50% complete, ETA 00:09:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.875 ns/op
# Warmup Iteration   2: 8.055 ns/op
# Warmup Iteration   3: 8.776 ns/op
# Warmup Iteration   4: 8.045 ns/op
# Warmup Iteration   5: 8.035 ns/op
Iteration   1: 8.045 ns/op
                 gc.alloc.rate:      1896.650 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            12.000 ms

Iteration   2: 8.046 ns/op
                 gc.alloc.rate:      1896.499 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   3: 8.067 ns/op
                 gc.alloc.rate:      1891.432 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   4: 8.091 ns/op
                 gc.alloc.rate:      1885.880 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   5: 8.074 ns/op
                 gc.alloc.rate:      1889.878 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            11.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline":
  8.064 ±(99.9%) 0.075 ns/op [Average]
  (min, avg, max) = (8.045, 8.064, 8.091), stdev = 0.020
  CI (99.9%): [7.989, 8.140] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:asm":
PrintAssembly processed: 132665 total address lines.
Perf output processed (skipped 56.347 seconds):
 Column 1: cycles (50853 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 590 

              # {method} {0x00007f310347a860} &apos;obj_alloc_baseline&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f318463a620:   mov    0x8(%rsi),%r10d
              0x00007f318463a624:   movabs $0x7f3107000000,%r11
              0x00007f318463a62e:   add    %r11,%r10
              0x00007f318463a631:   cmp    %r10,%rax
              0x00007f318463a634:   jne    0x00007f31840c4080           ;   {runtime_call ic_miss_stub}
              0x00007f318463a63a:   xchg   %ax,%ax
              0x00007f318463a63c:   nopl   0x0(%rax)
            [Verified Entry Point]
   4.55%      0x00007f318463a640:   mov    %eax,-0x14000(%rsp)
   6.76%      0x00007f318463a647:   push   %rbp
   2.56%      0x00007f318463a648:   sub    $0x10,%rsp
   0.20%      0x00007f318463a64c:   cmpl   $0x1,0x20(%r15)
   2.00%      0x00007f318463a654:   jne    0x00007f318463a6e1
   2.65%      0x00007f318463a65a:   mov    0x1b8(%r15),%rax
   0.31%      0x00007f318463a661:   mov    %rax,%r10
              0x00007f318463a664:   add    $0x10,%r10
   1.95%      0x00007f318463a668:   cmp    0x1c8(%r15),%r10
          ╭   0x00007f318463a66f:   jae    0x00007f318463a6a5
   2.49%  │   0x00007f318463a671:   mov    %r10,0x1b8(%r15)
   0.25%  │   0x00007f318463a678:   prefetchw 0xc0(%r10)
   6.03%  │   0x00007f318463a680:   movq   $0x1,(%rax)
   1.90%  │   0x00007f318463a687:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
  14.02%  │   0x00007f318463a68e:   mov    %r12d,0xc(%rax)              ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@-1 (line 60)
   0.07%  │↗  0x00007f318463a692:   add    $0x10,%rsp
   0.06%  ││  0x00007f318463a696:   pop    %rbp
   0.18%  ││  0x00007f318463a697:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f318463a69e:   ja     0x00007f318463a6cb
   4.85%  ││  0x00007f318463a6a4:   ret    
   0.00%  ↘│  0x00007f318463a6a5:   movabs $0x7f3107000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
           │  0x00007f318463a6af:   call   0x00007f3184196a80           ; ImmutableOopMap {}
           │                                                            ;*new {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
           │                                                            ;   {runtime_call _new_instance_Java}
           │  0x00007f318463a6b4:   nopl   0x224(%rax,%rax,1)           ;   {other}
           ╰  0x00007f318463a6bc:   jmp    0x00007f318463a692           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline@0 (line 60)
              0x00007f318463a6be:   mov    %rax,%rsi
              0x00007f318463a6c1:   add    $0x10,%rsp
              0x00007f318463a6c5:   pop    %rbp
....................................................................................................
  50.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 644 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@20 (line 194)
              0x00007f318463eb35:   mov    0x38(%rsp),%r10
              0x00007f318463eb3a:   nopw   0x0(%rax,%rax,1)
              0x00007f318463eb40:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f318463ec18
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@30 (line 196)
              0x00007f318463eb48:   mov    $0x1,%ebp
              0x00007f318463eb4d:   test   %r11d,%r11d
          ╭   0x00007f318463eb50:   jne    0x00007f318463eb85           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@36 (line 197)
   0.12%  │↗  0x00007f318463eb52:   mov    0x40(%rsp),%rsi
   0.12%  ││  0x00007f318463eb57:   call   0x00007f31840c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual obj_alloc_baseline {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
  22.45%  ││  0x00007f318463eb5c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual obj_alloc_baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   0.00%  ││  0x00007f318463eb64:   mov    0x38(%rsp),%r10
   5.29%  ││  0x00007f318463eb69:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@30 (line 196)
  13.21%  ││  0x00007f318463eb71:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
          ││  0x00007f318463eb75:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@33 (line 196)
   0.15%  ││  0x00007f318463eb7c:   test   %eax,(%r10)                  ;   {poll}
   0.19%  ││  0x00007f318463eb7f:   nop
   4.70%  ││  0x00007f318463eb80:   test   %r11d,%r11d
          │╰  0x00007f318463eb83:   je     0x00007f318463eb52           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@36 (line 197)
          ↘   0x00007f318463eb85:   movabs $0x7f319a2a7b90,%r10
              0x00007f318463eb8f:   call   *%r10
              0x00007f318463eb92:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f318463eb9a:   mov    0x30(%rsp),%r10
              0x00007f318463eb9f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub@40 (line 197)
....................................................................................................
  46.25%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 590 
  46.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 644 
   0.49%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   1.71%  <...other 495 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline, version 2, compile id 590 
  46.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_alloc_baseline_jmhTest::obj_alloc_baseline_avgt_jmhStub, version 6, compile id 644 
   1.95%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  ObjAllocator::initialize 
   0.02%           libjvm.so  FreeListAllocator::reset 
   0.02%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.01%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.54%  <...other 154 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.07%         c2, level 4
   1.95%              kernel
   0.60%           libjvm.so
   0.19%        libc-2.31.so
   0.08%                    
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate":
  1892.068 ±(99.9%) 17.659 MB/sec [Average]
  (min, avg, max) = (1885.880, 1892.068, 1896.650), stdev = 4.586
  CI (99.9%): [1874.409, 1909.726] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.count":
  38.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (7.000, 7.600, 8.000), stdev = 0.548
  CI (99.9%): [38.000, 38.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.time":
  65.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (11.000, 13.000, 14.000), stdev = 1.414
  CI (99.9%): [65.000, 65.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse
# Parameters: (size = 64)

# Run progress: 50.00% complete, ETA 00:07:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.817 ns/op
# Warmup Iteration   2: 8.081 ns/op
# Warmup Iteration   3: 8.798 ns/op
# Warmup Iteration   4: 8.029 ns/op
# Warmup Iteration   5: 8.045 ns/op
Iteration   1: 8.031 ns/op
                 gc.alloc.rate:      1900.035 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            13.000 ms

Iteration   2: 8.100 ns/op
                 gc.alloc.rate:      1883.810 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

Iteration   3: 8.026 ns/op
                 gc.alloc.rate:      1901.018 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            15.000 ms

Iteration   4: 8.039 ns/op
                 gc.alloc.rate:      1896.736 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           8.000 counts
                 gc.time:            14.000 ms

Iteration   5: 8.022 ns/op
                 gc.alloc.rate:      1902.058 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           7.000 counts
                 gc.time:            12.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse":
  8.044 ±(99.9%) 0.123 ns/op [Average]
  (min, avg, max) = (8.022, 8.044, 8.100), stdev = 0.032
  CI (99.9%): [7.920, 8.167] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:asm":
PrintAssembly processed: 138037 total address lines.
Perf output processed (skipped 56.496 seconds):
 Column 1: cycles (51103 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 656 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@20 (line 194)
              0x00007f12fc63ddb5:   mov    0x38(%rsp),%r10
              0x00007f12fc63ddba:   nopw   0x0(%rax,%rax,1)
              0x00007f12fc63ddc0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f12fc63de98
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@30 (line 196)
              0x00007f12fc63ddc8:   mov    $0x1,%ebp
              0x00007f12fc63ddcd:   test   %r11d,%r11d
          ╭   0x00007f12fc63ddd0:   jne    0x00007f12fc63de05           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@36 (line 197)
   0.15%  │↗  0x00007f12fc63ddd2:   mov    0x40(%rsp),%rsi
   0.10%  ││  0x00007f12fc63ddd7:   call   0x00007f12fc0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual obj_dse {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
  31.00%  ││  0x00007f12fc63dddc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual obj_dse {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
          ││  0x00007f12fc63dde4:   mov    0x38(%rsp),%r10
   3.04%  ││  0x00007f12fc63dde9:   movzbl 0x94(%r10),%r11d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@30 (line 196)
   9.99%  ││  0x00007f12fc63ddf1:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
          ││  0x00007f12fc63ddf5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@33 (line 196)
   0.10%  ││  0x00007f12fc63ddfc:   test   %eax,(%r10)                  ;   {poll}
   0.20%  ││  0x00007f12fc63ddff:   nop
   4.58%  ││  0x00007f12fc63de00:   test   %r11d,%r11d
          │╰  0x00007f12fc63de03:   je     0x00007f12fc63ddd2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@36 (line 197)
          ↘   0x00007f12fc63de05:   movabs $0x7f1314dd0b90,%r10
              0x00007f12fc63de0f:   call   *%r10
              0x00007f12fc63de12:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007f12fc63de1a:   mov    0x30(%rsp),%r10
              0x00007f12fc63de1f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub@40 (line 197)
....................................................................................................
  49.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 595 

              # {method} {0x00007f127847a9c0} &apos;obj_dse&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f12fc6394a0:   mov    0x8(%rsi),%r10d
              0x00007f12fc6394a4:   movabs $0x7f1283000000,%r11
              0x00007f12fc6394ae:   add    %r11,%r10
              0x00007f12fc6394b1:   cmp    %r10,%rax
              0x00007f12fc6394b4:   jne    0x00007f12fc0c4080           ;   {runtime_call ic_miss_stub}
              0x00007f12fc6394ba:   xchg   %ax,%ax
              0x00007f12fc6394bc:   nopl   0x0(%rax)
            [Verified Entry Point]
   4.59%      0x00007f12fc6394c0:   mov    %eax,-0x14000(%rsp)
   8.39%      0x00007f12fc6394c7:   push   %rbp
   1.44%      0x00007f12fc6394c8:   sub    $0x10,%rsp
   0.27%      0x00007f12fc6394cc:   cmpl   $0x1,0x20(%r15)
   2.90%      0x00007f12fc6394d4:   jne    0x00007f12fc639561
   1.47%      0x00007f12fc6394da:   mov    0x1b8(%r15),%rax
   0.29%      0x00007f12fc6394e1:   mov    %rax,%r10
              0x00007f12fc6394e4:   add    $0x10,%r10
   3.01%      0x00007f12fc6394e8:   cmp    0x1c8(%r15),%r10
          ╭   0x00007f12fc6394ef:   jae    0x00007f12fc639525
   1.63%  │   0x00007f12fc6394f1:   mov    %r10,0x1b8(%r15)
   0.27%  │   0x00007f12fc6394f8:   prefetchw 0xc0(%r10)
   3.64%  │   0x00007f12fc639500:   movq   $0x1,(%rax)
   2.82%  │   0x00007f12fc639507:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
  11.85%  │   0x00007f12fc63950e:   mov    %r12d,0xc(%rax)              ;*synchronization entry
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@-1 (line 68)
   0.05%  │↗  0x00007f12fc639512:   add    $0x10,%rsp
   0.06%  ││  0x00007f12fc639516:   pop    %rbp
   0.15%  ││  0x00007f12fc639517:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f12fc63951e:   ja     0x00007f12fc63954b
   4.72%  ││  0x00007f12fc639524:   ret    
          ↘│  0x00007f12fc639525:   movabs $0x7f1283000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
           │  0x00007f12fc63952f:   call   0x00007f12fc197980           ; ImmutableOopMap {}
           │                                                            ;*new {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@120 (line 83)
           │                                                            ;   {runtime_call _new_instance_Java}
           │  0x00007f12fc639534:   nopl   0x224(%rax,%rax,1)           ;   {other}
           ╰  0x00007f12fc63953c:   jmp    0x00007f12fc639512           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse@0 (line 68)
              0x00007f12fc63953e:   mov    %rax,%rsi
              0x00007f12fc639541:   add    $0x10,%rsp
....................................................................................................
  47.56%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 656 
  47.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 595 
   0.73%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardTable::is_in_young 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.52%  <...other 406 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub, version 6, compile id 656 
  47.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse, version 2, compile id 595 
   2.26%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.05%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%           libjvm.so  G1CardTable::is_in_young 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  OptoRuntime::new_instance_C 
   0.02%           libjvm.so  stringStream::write 
   0.02%        libc-2.31.so  syscall 
   0.02%           libjvm.so  ObjAllocator::initialize 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.01%           libjvm.so  HeapRegionClaimer::claim_region 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%      hsdis-amd64.so  print_insn 
   0.54%  <...other 164 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.73%         c2, level 4
   2.26%              kernel
   0.59%           libjvm.so
   0.20%        libc-2.31.so
   0.09%                    
   0.04%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%         c1, level 1
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate":
  1896.731 ±(99.9%) 28.855 MB/sec [Average]
  (min, avg, max) = (1883.810, 1896.731, 1902.058), stdev = 7.494
  CI (99.9%): [1867.876, 1925.587] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.count":
  38.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (7.000, 7.600, 8.000), stdev = 0.548
  CI (99.9%): [38.000, 38.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:gc.time":
  69.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (12.000, 13.800, 15.000), stdev = 1.304
  CI (99.9%): [69.000, 69.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 62.50% complete, ETA 00:05:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 84.829 ns/op
# Warmup Iteration   2: 83.384 ns/op
# Warmup Iteration   3: 84.740 ns/op
# Warmup Iteration   4: 83.343 ns/op
# Warmup Iteration   5: 83.374 ns/op
Iteration   1: 83.374 ns/op
                 gc.alloc.rate:      183.013 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   2: 83.357 ns/op
                 gc.alloc.rate:      183.049 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   3: 83.328 ns/op
                 gc.alloc.rate:      183.020 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           ≈ 0 counts

Iteration   4: 83.372 ns/op
                 gc.alloc.rate:      183.014 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

Iteration   5: 83.366 ns/op
                 gc.alloc.rate:      183.027 MB/sec
                 gc.alloc.rate.norm: 16.000 B/op
                 gc.count:           1.000 counts
                 gc.time:            3.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural":
  83.360 ±(99.9%) 0.072 ns/op [Average]
  (min, avg, max) = (83.328, 83.360, 83.374), stdev = 0.019
  CI (99.9%): [83.287, 83.432] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:asm":
PrintAssembly processed: 136473 total address lines.
Perf output processed (skipped 56.628 seconds):
 Column 1: cycles (51007 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 596 

                # {method} {0x00007f4a17484580} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f4a9863ad00:   mov    0x8(%rsi),%r10d
                0x00007f4a9863ad04:   movabs $0x7f4a1b000000,%r11
                0x00007f4a9863ad0e:   add    %r11,%r10
                0x00007f4a9863ad11:   cmp    %r10,%rax
                0x00007f4a9863ad14:   jne    0x00007f4a980c4080           ;   {runtime_call ic_miss_stub}
                0x00007f4a9863ad1a:   xchg   %ax,%ax
                0x00007f4a9863ad1c:   nopl   0x0(%rax)
              [Verified Entry Point]
  28.96%        0x00007f4a9863ad20:   sub    $0x18,%rsp
   0.51%        0x00007f4a9863ad27:   mov    %rbp,0x10(%rsp)
  31.18%        0x00007f4a9863ad2c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007f4a9863ad34:   jne    0x00007f4a9863ad63           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink@-1 (line 185)
   0.07%  │  ↗  0x00007f4a9863ad3a:   add    $0x10,%rsp
          │  │  0x00007f4a9863ad3e:   pop    %rbp
   8.74%  │ ↗│  0x00007f4a9863ad3f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f4a9863ad46:   ja     0x00007f4a9863ad4d
   0.11%  ││││  0x00007f4a9863ad4c:   ret    
          │↘╰│  0x00007f4a9863ad4d:   movabs $0x7f4a9863ad3f,%r10         ;   {internal_word}
          │  │  0x00007f4a9863ad57:   mov    %r10,0x468(%r15)
          │  │  0x00007f4a9863ad5e:   jmp    0x00007f4a980cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f4a9863ad63:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f4a9863ad68:   jmp    0x00007f4a9863ad3a
                0x00007f4a9863ad6d:   hlt    
                0x00007f4a9863ad6e:   hlt    
                0x00007f4a9863ad6f:   hlt    
              [Exception Handler]
                0x00007f4a9863ad70:   jmp    0x00007f4a98196d80           ;   {no_reloc}
....................................................................................................
  69.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 598 

              # {method} {0x00007f4a17483f98} &apos;obj_dse_inter_procedural&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f4a9863b0a0:   mov    0x8(%rsi),%r10d
              0x00007f4a9863b0a4:   movabs $0x7f4a1b000000,%r11
              0x00007f4a9863b0ae:   add    %r11,%r10
              0x00007f4a9863b0b1:   cmp    %r10,%rax
              0x00007f4a9863b0b4:   jne    0x00007f4a980c4080           ;   {runtime_call ic_miss_stub}
              0x00007f4a9863b0ba:   xchg   %ax,%ax
              0x00007f4a9863b0bc:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.44%      0x00007f4a9863b0c0:   mov    %eax,-0x14000(%rsp)
   1.60%      0x00007f4a9863b0c7:   push   %rbp
   0.03%      0x00007f4a9863b0c8:   sub    $0x10,%rsp
   0.12%      0x00007f4a9863b0cc:   cmpl   $0x1,0x20(%r15)
   0.30%      0x00007f4a9863b0d4:   jne    0x00007f4a9863b2c2           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@-1 (line 92)
   0.02%      0x00007f4a9863b0da:   mov    %rsi,%rbp
   0.09%      0x00007f4a9863b0dd:   xchg   %ax,%ax
              0x00007f4a9863b0df:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@9 (line 93)
                                                                        ;   {optimized virtual_call}
   0.05%      0x00007f4a9863b0e4:   nopl   0x254(%rax,%rax,1)           ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@9 (line 93)
                                                                        ;   {other}
   0.44%      0x00007f4a9863b0ec:   mov    %rbp,%rsi
   0.00%      0x00007f4a9863b0ef:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 95)
                                                                        ;   {optimized virtual_call}
   0.35%      0x00007f4a9863b0f4:   nopl   0x1000264(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@21 (line 95)
                                                                        ;   {other}
   0.26%      0x00007f4a9863b0fc:   mov    %rbp,%rsi
              0x00007f4a9863b0ff:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 97)
                                                                        ;   {optimized virtual_call}
   0.84%      0x00007f4a9863b104:   nopl   0x2000274(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@33 (line 97)
                                                                        ;   {other}
              0x00007f4a9863b10c:   mov    %rbp,%rsi
              0x00007f4a9863b10f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 99)
                                                                        ;   {optimized virtual_call}
   0.87%      0x00007f4a9863b114:   nopl   0x3000284(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@45 (line 99)
                                                                        ;   {other}
              0x00007f4a9863b11c:   mov    %rbp,%rsi
              0x00007f4a9863b11f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 101)
                                                                        ;   {optimized virtual_call}
   0.90%      0x00007f4a9863b124:   nopl   0x4000294(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@57 (line 101)
                                                                        ;   {other}
              0x00007f4a9863b12c:   mov    %rbp,%rsi
              0x00007f4a9863b12f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 103)
                                                                        ;   {optimized virtual_call}
   0.89%      0x00007f4a9863b134:   nopl   0x50002a4(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@69 (line 103)
                                                                        ;   {other}
              0x00007f4a9863b13c:   mov    %rbp,%rsi
              0x00007f4a9863b13f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 105)
                                                                        ;   {optimized virtual_call}
   0.92%      0x00007f4a9863b144:   nopl   0x60002b4(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@81 (line 105)
                                                                        ;   {other}
              0x00007f4a9863b14c:   mov    %rbp,%rsi
              0x00007f4a9863b14f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 107)
                                                                        ;   {optimized virtual_call}
   0.85%      0x00007f4a9863b154:   nopl   0x70002c4(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@93 (line 107)
                                                                        ;   {other}
              0x00007f4a9863b15c:   mov    %rbp,%rsi
              0x00007f4a9863b15f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 109)
                                                                        ;   {optimized virtual_call}
   0.93%      0x00007f4a9863b164:   nopl   0x80002d4(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@105 (line 109)
                                                                        ;   {other}
              0x00007f4a9863b16c:   mov    %rbp,%rsi
              0x00007f4a9863b16f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 111)
                                                                        ;   {optimized virtual_call}
   0.86%      0x00007f4a9863b174:   nopl   0x90002e4(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@117 (line 111)
                                                                        ;   {other}
              0x00007f4a9863b17c:   mov    %rbp,%rsi
              0x00007f4a9863b17f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 113)
                                                                        ;   {optimized virtual_call}
   0.95%      0x00007f4a9863b184:   nopl   0xa0002f4(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@129 (line 113)
                                                                        ;   {other}
              0x00007f4a9863b18c:   mov    %rbp,%rsi
              0x00007f4a9863b18f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 115)
                                                                        ;   {optimized virtual_call}
   0.86%      0x00007f4a9863b194:   nopl   0xb000304(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@141 (line 115)
                                                                        ;   {other}
              0x00007f4a9863b19c:   mov    %rbp,%rsi
              0x00007f4a9863b19f:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 117)
                                                                        ;   {optimized virtual_call}
   0.95%      0x00007f4a9863b1a4:   nopl   0xc000314(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@153 (line 117)
                                                                        ;   {other}
              0x00007f4a9863b1ac:   mov    %rbp,%rsi
              0x00007f4a9863b1af:   call   0x00007f4a9863ad20           ; ImmutableOopMap {rbp=Oop }
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 119)
                                                                        ;   {optimized virtual_call}
   0.83%      0x00007f4a9863b1b4:   nopl   0xd000324(%rax,%rax,1)       ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@165 (line 119)
                                                                        ;   {other}
              0x00007f4a9863b1bc:   mov    %rbp,%rsi
              0x00007f4a9863b1bf:   call   0x00007f4a9863ad20           ; ImmutableOopMap {}
                                                                        ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 121)
                                                                        ;   {optimized virtual_call}
   0.92%      0x00007f4a9863b1c4:   nopl   0xe000334(%rax,%rax,1)       ;   {other}
              0x00007f4a9863b1cc:   mov    0x1b8(%r15),%rax
   1.79%      0x00007f4a9863b1d3:   mov    %rax,%r10
              0x00007f4a9863b1d6:   add    $0x10,%r10
   0.47%      0x00007f4a9863b1da:   nopw   0x0(%rax,%rax,1)
              0x00007f4a9863b1e0:   cmp    0x1c8(%r15),%r10
          ╭   0x00007f4a9863b1e7:   jae    0x00007f4a9863b21d
   0.38%  │   0x00007f4a9863b1e9:   mov    %r10,0x1b8(%r15)
   0.51%  │   0x00007f4a9863b1f0:   prefetchw 0xc0(%r10)
   1.87%  │   0x00007f4a9863b1f8:   movq   $0x1,(%rax)
   0.27%  │   0x00007f4a9863b1ff:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.69%  │   0x00007f4a9863b206:   mov    %r12d,0xc(%rax)              ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@177 (line 121)
   1.22%  │↗  0x00007f4a9863b20a:   add    $0x10,%rsp
   0.00%  ││  0x00007f4a9863b20e:   pop    %rbp
   0.01%  ││  0x00007f4a9863b20f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f4a9863b216:   ja     0x00007f4a9863b2ac
   0.51%  ││  0x00007f4a9863b21c:   ret    
          ↘│  0x00007f4a9863b21d:   movabs $0x7f4a1b000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
           │  0x00007f4a9863b227:   call   0x00007f4a98196a80           ; ImmutableOopMap {}
           │                                                            ;*new {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
           │                                                            ;   {runtime_call _new_instance_Java}
           │  0x00007f4a9863b22c:   nopl   0xf00039c(%rax,%rax,1)       ;   {other}
           ╰  0x00007f4a9863b234:   jmp    0x00007f4a9863b20a           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural@180 (line 122)
              0x00007f4a9863b236:   mov    %rax,%rsi
              0x00007f4a9863b239:   jmp    0x00007f4a9863b2a2           ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  23.00%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 596 
  23.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 598 
   4.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 648 
   0.97%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   0.89%  <...other 305 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::sink, version 2, compile id 596 
  23.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural, version 2, compile id 598 
   4.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_inter_procedural_jmhTest::obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 648 
   2.20%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __stpcpy_avx2 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.20%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.41%         c2, level 4
   2.20%              kernel
   0.18%           libjvm.so
   0.12%        libc-2.31.so
   0.04%                    
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate":
  183.025 ±(99.9%) 0.056 MB/sec [Average]
  (min, avg, max) = (183.013, 183.025, 183.049), stdev = 0.015
  CI (99.9%): [182.968, 183.081] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.count":
  4.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (≈ 0, 0.800, 1.000), stdev = 0.447
  CI (99.9%): [4.000, 4.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.time":
  12.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (≈ 0, 2.400, 3.000), stdev = 1.342
  CI (99.9%): [12.000, 12.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline
# Parameters: (size = 64)

# Run progress: 75.00% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.590 ns/op
# Warmup Iteration   2: 27.458 ns/op
# Warmup Iteration   3: 28.592 ns/op
# Warmup Iteration   4: 27.494 ns/op
# Warmup Iteration   5: 27.496 ns/op
Iteration   1: 27.483 ns/op
                 gc.alloc.rate:      6107.104 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            42.000 ms

Iteration   2: 27.496 ns/op
                 gc.alloc.rate:      6104.202 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            43.000 ms

Iteration   3: 27.492 ns/op
                 gc.alloc.rate:      6104.998 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            46.000 ms

Iteration   4: 27.496 ns/op
                 gc.alloc.rate:      6101.105 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           25.000 counts
                 gc.time:            44.000 ms

Iteration   5: 27.485 ns/op
                 gc.alloc.rate:      6106.768 MB/sec
                 gc.alloc.rate.norm: 176.000 B/op
                 gc.count:           24.000 counts
                 gc.time:            44.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline":
  27.490 ±(99.9%) 0.024 ns/op [Average]
  (min, avg, max) = (27.483, 27.490, 27.496), stdev = 0.006
  CI (99.9%): [27.467, 27.514] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:asm":
PrintAssembly processed: 136291 total address lines.
Perf output processed (skipped 56.466 seconds):
 Column 1: cycles (51162 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 605 

   0.37%              0x00007f0e9063905f:   xor    %r10,%r11
   0.51%              0x00007f0e90639062:   shr    $0x15,%r11
   0.09%              0x00007f0e90639066:   test   %r11,%r11
          ╭           0x00007f0e90639069:   je     0x00007f0e90639089
          │           0x00007f0e9063906b:   shr    $0x9,%r10
          │           0x00007f0e9063906f:   movabs $0x7f0e83546000,%rdi
          │           0x00007f0e90639079:   add    %r10,%rdi
          │           0x00007f0e9063907c:   nopl   0x0(%rax)
          │           0x00007f0e90639080:   cmpb   $0x2,(%rdi)
          │           0x00007f0e90639083:   jne    0x00007f0e90639705
   0.36%  ↘           0x00007f0e90639089:   mov    0x1b8(%r15),%rbx
   0.75%              0x00007f0e90639090:   mov    %rbx,%r10
   0.56%              0x00007f0e90639093:   add    $0x10,%r10
   0.11%              0x00007f0e90639097:   nopw   0x0(%rax,%rax,1)
   0.34%              0x00007f0e906390a0:   cmp    0x1c8(%r15),%r10
                      0x00007f0e906390a7:   jae    0x00007f0e90639905
   0.44%              0x00007f0e906390ad:   mov    %r10,0x1b8(%r15)
   0.59%              0x00007f0e906390b4:   prefetchw 0xc0(%r10)
   0.77%              0x00007f0e906390bc:   movq   $0x1,(%rbx)
   0.75%              0x00007f0e906390c3:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.69%              0x00007f0e906390ca:   mov    %r12d,0xc(%rbx)
   0.69%              0x00007f0e906390ce:   cmpb   $0x0,0x40(%r15)
   0.15%              0x00007f0e906390d3:   jne    0x00007f0e9063949c
   0.27%              0x00007f0e906390d9:   mov    %rbx,%r11
   0.40%              0x00007f0e906390dc:   shr    $0x3,%r11
   0.59%              0x00007f0e906390e0:   mov    %r11d,0x10(%rbp)
   0.13%              0x00007f0e906390e4:   mov    %rbp,%r10
   0.30%              0x00007f0e906390e7:   mov    %rbx,%r11
   0.39%              0x00007f0e906390ea:   xor    %r10,%r11
   0.61%              0x00007f0e906390ed:   shr    $0x15,%r11
   0.08%              0x00007f0e906390f1:   test   %r11,%r11
           ╭          0x00007f0e906390f4:   je     0x00007f0e90639110
           │          0x00007f0e906390f6:   shr    $0x9,%r10
           │          0x00007f0e906390fa:   movabs $0x7f0e83546000,%rdi
           │          0x00007f0e90639104:   add    %r10,%rdi
           │          0x00007f0e90639107:   cmpb   $0x2,(%rdi)
           │          0x00007f0e9063910a:   jne    0x00007f0e90639757
   0.26%   ↘          0x00007f0e90639110:   mov    0x1b8(%r15),%rbx
   0.80%              0x00007f0e90639117:   mov    %rbx,%r10
   0.59%              0x00007f0e9063911a:   add    $0x10,%r10
   0.11%              0x00007f0e9063911e:   xchg   %ax,%ax
   0.26%              0x00007f0e90639120:   cmp    0x1c8(%r15),%r10
                      0x00007f0e90639127:   jae    0x00007f0e90639925
   0.50%              0x00007f0e9063912d:   mov    %r10,0x1b8(%r15)
   0.62%              0x00007f0e90639134:   prefetchw 0xc0(%r10)
   0.96%              0x00007f0e9063913c:   movq   $0x1,(%rbx)
   1.14%              0x00007f0e90639143:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.04%              0x00007f0e9063914a:   mov    %r12d,0xc(%rbx)
   0.65%              0x00007f0e9063914e:   cmpb   $0x0,0x40(%r15)
   0.15%              0x00007f0e90639153:   jne    0x00007f0e906394d3
   0.22%              0x00007f0e90639159:   mov    %rbx,%r11
   0.39%              0x00007f0e9063915c:   shr    $0x3,%r11
   0.62%              0x00007f0e90639160:   mov    %r11d,0x14(%rbp)
   0.14%              0x00007f0e90639164:   mov    %rbp,%r10
   0.22%              0x00007f0e90639167:   mov    %rbx,%r11
   0.48%              0x00007f0e9063916a:   xor    %r10,%r11
   0.61%              0x00007f0e9063916d:   shr    $0x15,%r11
   0.12%              0x00007f0e90639171:   test   %r11,%r11
            ╭         0x00007f0e90639174:   je     0x00007f0e90639190
            │         0x00007f0e90639176:   shr    $0x9,%r10
            │         0x00007f0e9063917a:   movabs $0x7f0e83546000,%rdi
            │         0x00007f0e90639184:   add    %r10,%rdi
            │         0x00007f0e90639187:   cmpb   $0x2,(%rdi)
            │         0x00007f0e9063918a:   jne    0x00007f0e906397a5
   0.22%    ↘         0x00007f0e90639190:   mov    0x1b8(%r15),%rbx
   0.72%              0x00007f0e90639197:   mov    %rbx,%r10
   0.60%              0x00007f0e9063919a:   add    $0x10,%r10
   0.13%              0x00007f0e9063919e:   xchg   %ax,%ax
   0.23%              0x00007f0e906391a0:   cmp    0x1c8(%r15),%r10
                      0x00007f0e906391a7:   jae    0x00007f0e90639945
   0.48%              0x00007f0e906391ad:   mov    %r10,0x1b8(%r15)
   0.66%              0x00007f0e906391b4:   prefetchw 0xc0(%r10)
   1.25%              0x00007f0e906391bc:   movq   $0x1,(%rbx)
   1.45%              0x00007f0e906391c3:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.35%              0x00007f0e906391ca:   mov    %r12d,0xc(%rbx)
   0.65%              0x00007f0e906391ce:   cmpb   $0x0,0x40(%r15)
   0.18%              0x00007f0e906391d3:   jne    0x00007f0e90639510
   0.26%              0x00007f0e906391d9:   mov    %rbx,%r11
   0.41%              0x00007f0e906391dc:   shr    $0x3,%r11
   0.48%              0x00007f0e906391e0:   mov    %r11d,0x18(%rbp)
   0.14%              0x00007f0e906391e4:   mov    %rbp,%r10
   0.26%              0x00007f0e906391e7:   mov    %rbx,%r11
   0.49%              0x00007f0e906391ea:   xor    %r10,%r11
   0.53%              0x00007f0e906391ed:   shr    $0x15,%r11
   0.19%              0x00007f0e906391f1:   test   %r11,%r11
             ╭        0x00007f0e906391f4:   je     0x00007f0e90639210
             │        0x00007f0e906391f6:   shr    $0x9,%r10
             │        0x00007f0e906391fa:   movabs $0x7f0e83546000,%rdi
             │        0x00007f0e90639204:   add    %r10,%rdi
             │        0x00007f0e90639207:   cmpb   $0x2,(%rdi)
             │        0x00007f0e9063920a:   jne    0x00007f0e906397f7
   0.22%     ↘        0x00007f0e90639210:   mov    0x1b8(%r15),%rbx
   0.56%              0x00007f0e90639217:   mov    %rbx,%r10
   0.47%              0x00007f0e9063921a:   add    $0x10,%r10
   0.15%              0x00007f0e9063921e:   xchg   %ax,%ax
   0.23%              0x00007f0e90639220:   cmp    0x1c8(%r15),%r10
                      0x00007f0e90639227:   jae    0x00007f0e90639845
   0.53%              0x00007f0e9063922d:   mov    %r10,0x1b8(%r15)
   0.51%              0x00007f0e90639234:   prefetchw 0xc0(%r10)
   1.42%              0x00007f0e9063923c:   movq   $0x1,(%rbx)
   1.25%              0x00007f0e90639243:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.70%              0x00007f0e9063924a:   mov    %r12d,0xc(%rbx)
   0.64%              0x00007f0e9063924e:   cmpb   $0x0,0x40(%r15)
   0.22%              0x00007f0e90639253:   jne    0x00007f0e90639547
   0.18%              0x00007f0e90639259:   mov    %rbx,%r11
   0.53%              0x00007f0e9063925c:   shr    $0x3,%r11
   0.42%              0x00007f0e90639260:   mov    %r11d,0x1c(%rbp)
   0.21%              0x00007f0e90639264:   mov    %rbp,%r10
   0.16%              0x00007f0e90639267:   mov    %rbx,%r11
   0.54%              0x00007f0e9063926a:   xor    %r10,%r11
   0.49%              0x00007f0e9063926d:   shr    $0x15,%r11
   0.20%              0x00007f0e90639271:   test   %r11,%r11
              ╭       0x00007f0e90639274:   je     0x00007f0e90639290
              │       0x00007f0e90639276:   shr    $0x9,%r10
              │       0x00007f0e9063927a:   movabs $0x7f0e83546000,%rdi
              │       0x00007f0e90639284:   add    %r10,%rdi
              │       0x00007f0e90639287:   cmpb   $0x2,(%rdi)
              │       0x00007f0e9063928a:   jne    0x00007f0e906395bc
   0.20%      ↘       0x00007f0e90639290:   mov    0x1b8(%r15),%rbx
   0.68%              0x00007f0e90639297:   mov    %rbx,%r10
   0.46%              0x00007f0e9063929a:   add    $0x10,%r10
   0.18%              0x00007f0e9063929e:   xchg   %ax,%ax
   0.17%              0x00007f0e906392a0:   cmp    0x1c8(%r15),%r10
                      0x00007f0e906392a7:   jae    0x00007f0e90639865
   0.56%              0x00007f0e906392ad:   mov    %r10,0x1b8(%r15)
   0.39%              0x00007f0e906392b4:   prefetchw 0xc0(%r10)
   1.68%              0x00007f0e906392bc:   movq   $0x1,(%rbx)
   1.43%              0x00007f0e906392c3:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.69%              0x00007f0e906392ca:   mov    %r12d,0xc(%rbx)
   0.64%              0x00007f0e906392ce:   cmpb   $0x0,0x40(%r15)
   0.22%              0x00007f0e906392d3:   jne    0x00007f0e9063957f
   0.18%              0x00007f0e906392d9:   mov    %rbx,%r11
   0.55%              0x00007f0e906392dc:   shr    $0x3,%r11
   0.47%              0x00007f0e906392e0:   mov    %r11d,0x20(%rbp)
   0.23%              0x00007f0e906392e4:   mov    %rbp,%r10
   0.18%              0x00007f0e906392e7:   mov    %rbx,%r11
   0.53%              0x00007f0e906392ea:   xor    %r10,%r11
   0.49%              0x00007f0e906392ed:   shr    $0x15,%r11
   0.22%              0x00007f0e906392f1:   test   %r11,%r11
               ╭      0x00007f0e906392f4:   je     0x00007f0e90639310
               │      0x00007f0e906392f6:   shr    $0x9,%r10
               │      0x00007f0e906392fa:   movabs $0x7f0e83546000,%rdi
               │      0x00007f0e90639304:   add    %r10,%rdi
               │      0x00007f0e90639307:   cmpb   $0x2,(%rdi)
               │      0x00007f0e9063930a:   jne    0x00007f0e9063960a
   0.19%       ↘      0x00007f0e90639310:   mov    0x1b8(%r15),%rbx
   0.62%              0x00007f0e90639317:   mov    %rbx,%r10
   0.46%              0x00007f0e9063931a:   add    $0x10,%r10
   0.22%              0x00007f0e9063931e:   xchg   %ax,%ax
   0.19%              0x00007f0e90639320:   cmp    0x1c8(%r15),%r10
                      0x00007f0e90639327:   jae    0x00007f0e90639885
   0.54%              0x00007f0e9063932d:   mov    %r10,0x1b8(%r15)
   0.41%              0x00007f0e90639334:   prefetchw 0xc0(%r10)
   1.81%              0x00007f0e9063933c:   movq   $0x1,(%rbx)
   1.31%              0x00007f0e90639343:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.63%              0x00007f0e9063934a:   mov    %r12d,0xc(%rbx)
   0.56%              0x00007f0e9063934e:   cmpb   $0x0,0x40(%r15)
   0.23%        ╭     0x00007f0e90639353:   jne    0x00007f0e90639427
   0.18%        │  ↗  0x00007f0e90639359:   mov    %rbx,%r11
   0.56%        │  │  0x00007f0e9063935c:   shr    $0x3,%r11
   0.37%        │  │  0x00007f0e90639360:   mov    %r11d,0x24(%rbp)
   0.23%        │  │  0x00007f0e90639364:   mov    %rbp,%r10
   0.22%        │  │  0x00007f0e90639367:   mov    %rbx,%r11
   0.60%        │  │  0x00007f0e9063936a:   xor    %r10,%r11
   0.39%        │  │  0x00007f0e9063936d:   shr    $0x15,%r11
   0.24%        │  │  0x00007f0e90639371:   test   %r11,%r11
                │╭ │  0x00007f0e90639374:   je     0x00007f0e90639390
   0.00%        ││ │  0x00007f0e90639376:   shr    $0x9,%r10
   0.00%        ││ │  0x00007f0e9063937a:   movabs $0x7f0e83546000,%rdi
                ││ │  0x00007f0e90639384:   add    %r10,%rdi
                ││ │  0x00007f0e90639387:   cmpb   $0x2,(%rdi)
                ││ │  0x00007f0e9063938a:   jne    0x00007f0e9063965d
   0.21%        │↘ │  0x00007f0e90639390:   mov    0x1b8(%r15),%rbx
   0.82%        │  │  0x00007f0e90639397:   mov    %rbx,%r10
   0.36%        │  │  0x00007f0e9063939a:   add    $0x10,%r10
   0.28%        │  │  0x00007f0e9063939e:   xchg   %ax,%ax
   0.20%        │  │  0x00007f0e906393a0:   cmp    0x1c8(%r15),%r10
                │  │  0x00007f0e906393a7:   jae    0x00007f0e906398a5
   0.53%        │  │  0x00007f0e906393ad:   mov    %r10,0x1b8(%r15)
   0.40%        │  │  0x00007f0e906393b4:   prefetchw 0xc0(%r10)
   1.78%        │  │  0x00007f0e906393bc:   movq   $0x1,(%rbx)
   1.29%        │  │  0x00007f0e906393c3:   movl   $0xe80,0x8(%rbx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.56%        │  │  0x00007f0e906393ca:   mov    %r12d,0xc(%rbx)              ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 191)
                │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.49%        │  │  0x00007f0e906393ce:   cmpb   $0x0,0x40(%r15)
   0.32%        │  │  0x00007f0e906393d3:   jne    0x00007f0e9063945f
   0.22%        │  │  0x00007f0e906393d9:   mov    %rbx,%r11
   0.55%        │  │  0x00007f0e906393dc:   shr    $0x3,%r11
   0.31%        │  │  0x00007f0e906393e0:   mov    %r11d,0x28(%rbp)
   0.28%        │  │  0x00007f0e906393e4:   mov    %rbp,%r10
   0.25%        │  │  0x00007f0e906393e7:   mov    %rbx,%r11
   0.53%        │  │  0x00007f0e906393ea:   xor    %r10,%r11
   0.37%        │  │  0x00007f0e906393ed:   shr    $0x15,%r11
   0.26%        │  │  0x00007f0e906393f1:   test   %r11,%r11
                │ ╭│  0x00007f0e906393f4:   je     0x00007f0e90639411
                │ ││  0x00007f0e906393f6:   shr    $0x9,%r10
                │ ││  0x00007f0e906393fa:   movabs $0x7f0e83546000,%r8
                │ ││  0x00007f0e90639404:   add    %r10,%r8
                │ ││  0x00007f0e90639407:   cmpb   $0x2,(%r8)
                │ ││  0x00007f0e9063940b:   jne    0x00007f0e906396ab           ;*putfield obj8 {reexecute=0 rethrow=0 return_oop=0}
                │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@89 (line 198)
                │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.29%        │ ↘│  0x00007f0e90639411:   mov    %rbp,%rax
   0.53%        │  │  0x00007f0e90639414:   add    $0x20,%rsp
   0.37%        │  │  0x00007f0e90639418:   pop    %rbp
   0.33%        │  │  0x00007f0e90639419:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │  │  0x00007f0e90639420:   ja     0x00007f0e90639a83
   0.75%        │  │  0x00007f0e90639426:   ret    
                ↘  │  0x00007f0e90639427:   mov    0x24(%rbp),%r10d
                   │  0x00007f0e9063942b:   test   %r10d,%r10d
                   ╰  0x00007f0e9063942e:   je     0x00007f0e90639359
                      0x00007f0e90639434:   mov    0x28(%r15),%r11
                      0x00007f0e90639438:   mov    %r10,%rdi
                      0x00007f0e9063943b:   shl    $0x3,%rdi
                      0x00007f0e9063943f:   nop
                      0x00007f0e90639440:   test   %r11,%r11
                      0x00007f0e90639443:   je     0x00007f0e90639a05           ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 191)
....................................................................................................
  75.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 605 

             # {method} {0x00007f0e0b47ac80} &apos;wrapper_obj_baseline&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f0e90638f80:   mov    0x8(%rsi),%r10d
             0x00007f0e90638f84:   movabs $0x7f0e0f000000,%r11
             0x00007f0e90638f8e:   add    %r11,%r10
             0x00007f0e90638f91:   cmp    %r10,%rax
             0x00007f0e90638f94:   jne    0x00007f0e900c4080           ;   {runtime_call ic_miss_stub}
             0x00007f0e90638f9a:   xchg   %ax,%ax
             0x00007f0e90638f9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.16%     0x00007f0e90638fa0:   mov    %eax,-0x14000(%rsp)
   0.38%     0x00007f0e90638fa7:   push   %rbp
   0.51%     0x00007f0e90638fa8:   sub    $0x20,%rsp
   0.56%     0x00007f0e90638fac:   cmpl   $0x1,0x20(%r15)
   0.26%     0x00007f0e90638fb4:   jne    0x00007f0e90639a99
   0.50%     0x00007f0e90638fba:   mov    0x1b8(%r15),%rbp
   0.79%     0x00007f0e90638fc1:   mov    %rbp,%r10
             0x00007f0e90638fc4:   add    $0x30,%r10
   0.25%     0x00007f0e90638fc8:   cmp    0x1c8(%r15),%r10
             0x00007f0e90638fcf:   jae    0x00007f0e906398c5
   0.51%     0x00007f0e90638fd5:   mov    %r10,0x1b8(%r15)
   0.62%     0x00007f0e90638fdc:   prefetchw 0xc0(%r10)
   0.65%     0x00007f0e90638fe4:   movq   $0x1,0x0(%rbp)
   0.26%     0x00007f0e90638fec:   movl   $0x102b368,0x8(%rbp)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.48%     0x00007f0e90638ff3:   mov    %r12d,0xc(%rbp)
   0.68%     0x00007f0e90638ff7:   mov    %r12,0x10(%rbp)
   0.10%     0x00007f0e90638ffb:   mov    %r12,0x18(%rbp)
   0.29%     0x00007f0e90638fff:   mov    %r12,0x20(%rbp)
   0.57%     0x00007f0e90639003:   mov    %r12,0x28(%rbp)
   0.62%     0x00007f0e90639007:   mov    0x1b8(%r15),%rax
   0.41%     0x00007f0e9063900e:   mov    %rax,%r10
   0.24%     0x00007f0e90639011:   add    $0x10,%r10
   0.50%     0x00007f0e90639015:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.60%     0x00007f0e90639020:   cmp    0x1c8(%r15),%r10
             0x00007f0e90639027:   jae    0x00007f0e906398e5           ;*putfield obj1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@12 (line 191)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.09%     0x00007f0e9063902d:   mov    %r10,0x1b8(%r15)
   0.24%     0x00007f0e90639034:   prefetchw 0xc0(%r10)
   1.06%     0x00007f0e9063903c:   movq   $0x1,(%rax)
   1.05%     0x00007f0e90639043:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.27%     0x00007f0e9063904a:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@5 (line 191)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline@4 (line 130)
   0.42%     0x00007f0e9063904e:   mov    %rbp,%r10
   0.38%     0x00007f0e90639051:   mov    %rax,%r8
   0.56%     0x00007f0e90639054:   shr    $0x3,%r8
   0.11%     0x00007f0e90639058:   mov    %r8d,0xc(%rbp)
   0.30%     0x00007f0e9063905c:   mov    %rax,%r11
   0.37%     0x00007f0e9063905f:   xor    %r10,%r11
   0.51%     0x00007f0e90639062:   shr    $0x15,%r11
   0.09%     0x00007f0e90639066:   test   %r11,%r11
          ╭  0x00007f0e90639069:   je     0x00007f0e90639089
          │  0x00007f0e9063906b:   shr    $0x9,%r10
          │  0x00007f0e9063906f:   movabs $0x7f0e83546000,%rdi
          │  0x00007f0e90639079:   add    %r10,%rdi
          │  0x00007f0e9063907c:   nopl   0x0(%rax)
          │  0x00007f0e90639080:   cmpb   $0x2,(%rdi)
          │  0x00007f0e90639083:   jne    0x00007f0e90639705
   0.36%  ↘  0x00007f0e90639089:   mov    0x1b8(%r15),%rbx
   0.75%     0x00007f0e90639090:   mov    %rbx,%r10
   0.56%     0x00007f0e90639093:   add    $0x10,%r10
....................................................................................................
  16.39%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 605 
  16.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 605 
   3.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 661 
   0.33%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.15%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.14%              kernel  [unknown] 
   0.13%        libc-2.31.so  __memset_avx2_erms 
   0.08%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  G1CardTable::is_in_young 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ObjAllocator::initialize 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%        libc-2.31.so  __memset_avx2_unaligned_erms 
   2.58%  <...other 570 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline, version 2, compile id 605 
   3.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_baseline_jmhTest::wrapper_obj_baseline_avgt_jmhStub, version 6, compile id 661 
   1.90%              kernel  [unknown] 
   0.18%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.14%                      <unknown> 
   0.13%        libc-2.31.so  __memset_avx2_erms 
   0.08%           libjvm.so  G1CardSet::reset_table_scanner 
   0.07%           libjvm.so  G1CardTable::is_in_young 
   0.06%           libjvm.so  HeapRegionManager::par_iterate 
   0.06%           libjvm.so  CardTableBarrierSet::on_slowpath_allocation_exit 
   0.05%           libjvm.so  ObjAllocator::initialize 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%           libjvm.so  OptoRuntime::new_instance_C 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  G1CardSet::clear 
   0.03%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.03%           libjvm.so  FreeCSetClosure::do_heap_region 
   1.23%  <...other 216 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.76%         c2, level 4
   1.90%              kernel
   1.68%           libjvm.so
   0.33%        libc-2.31.so
   0.14%                    
   0.05%  libpthread-2.31.so
   0.04%         interpreter
   0.03%              [vdso]
   0.03%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.00%         c1, level 1
   0.00%          libjava.so
   0.00%        runtime stub
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate":
  6104.835 ±(99.9%) 9.279 MB/sec [Average]
  (min, avg, max) = (6101.105, 6104.835, 6107.104), stdev = 2.410
  CI (99.9%): [6095.557, 6114.114] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate.norm":
  176.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (176.000, 176.000, 176.000), stdev = 0.001
  CI (99.9%): [176.000, 176.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.count":
  124.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (24.000, 24.800, 25.000), stdev = 0.447
  CI (99.9%): [124.000, 124.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.time":
  219.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (42.000, 43.800, 46.000), stdev = 1.483
  CI (99.9%): [219.000, 219.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 87.50% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 61.943 ns/op
# Warmup Iteration   2: 60.248 ns/op
# Warmup Iteration   3: 61.361 ns/op
# Warmup Iteration   4: 60.334 ns/op
# Warmup Iteration   5: 60.254 ns/op
Iteration   1: 60.247 ns/op
                 gc.alloc.rate:      4812.030 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           19.000 counts
                 gc.time:            33.000 ms

Iteration   2: 60.291 ns/op
                 gc.alloc.rate:      4808.507 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           20.000 counts
                 gc.time:            37.000 ms

Iteration   3: 60.311 ns/op
                 gc.alloc.rate:      4806.887 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           19.000 counts
                 gc.time:            34.000 ms

Iteration   4: 60.381 ns/op
                 gc.alloc.rate:      4801.299 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           20.000 counts
                 gc.time:            35.000 ms

Iteration   5: 60.254 ns/op
                 gc.alloc.rate:      4811.405 MB/sec
                 gc.alloc.rate.norm: 304.000 B/op
                 gc.count:           20.000 counts
                 gc.time:            35.000 ms

# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural":
  60.297 ±(99.9%) 0.208 ns/op [Average]
  (min, avg, max) = (60.247, 60.297, 60.381), stdev = 0.054
  CI (99.9%): [60.089, 60.505] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:asm":
PrintAssembly processed: 136660 total address lines.
Perf output processed (skipped 56.392 seconds):
 Column 1: cycles (51035 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 581 

             # {method} {0x00007fc5e8484d78} &apos;wrapper_obj_dse_inter_procedural&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark&apos;
             #           [sp+0xa0]  (sp of caller)
             0x00007fc66c639e00:   mov    0x8(%rsi),%r10d
             0x00007fc66c639e04:   movabs $0x7fc5f3000000,%r11
             0x00007fc66c639e0e:   add    %r11,%r10
             0x00007fc66c639e11:   cmp    %r10,%rax
             0x00007fc66c639e14:   jne    0x00007fc66c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007fc66c639e1a:   xchg   %ax,%ax
             0x00007fc66c639e1c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.38%     0x00007fc66c639e20:   mov    %eax,-0x14000(%rsp)
   0.32%     0x00007fc66c639e27:   push   %rbp
   0.11%     0x00007fc66c639e28:   sub    $0x90,%rsp
   0.19%     0x00007fc66c639e2f:   nop
   0.24%     0x00007fc66c639e30:   cmpl   $0x1,0x20(%r15)
   0.08%     0x00007fc66c639e38:   jne    0x00007fc66c63a3a8           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@-1 (line 137)
   0.18%     0x00007fc66c639e3e:   mov    0x1b8(%r15),%r11
             0x00007fc66c639e45:   mov    %r11,%r10
   0.29%     0x00007fc66c639e48:   add    $0x10,%r10
   0.12%     0x00007fc66c639e4c:   cmp    0x1c8(%r15),%r10
          ╭  0x00007fc66c639e53:   jae    0x00007fc66c63a0d1
   0.24%  │  0x00007fc66c639e59:   mov    %r10,0x1b8(%r15)
   0.00%  │  0x00007fc66c639e60:   prefetchw 0xc0(%r10)
   0.33%  │  0x00007fc66c639e68:   movq   $0x1,(%r11)
   0.13%  │  0x00007fc66c639e6f:   movl   $0xe80,0x8(%r11)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.21%  │  0x00007fc66c639e77:   mov    %r12d,0xc(%r11)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
          │  0x00007fc66c639e7b:   mov    %r11,0x18(%rsp)
   0.32%  │  0x00007fc66c639e80:   mov    0x1b8(%r15),%rcx
   0.14%  │  0x00007fc66c639e87:   mov    %rcx,%r10
   0.24%  │  0x00007fc66c639e8a:   add    $0x10,%r10
   0.00%  │  0x00007fc66c639e8e:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c639e95:   jae    0x00007fc66c63a0f0
   0.25%  │  0x00007fc66c639e9b:   mov    %r10,0x1b8(%r15)
   0.15%  │  0x00007fc66c639ea2:   prefetchw 0xc0(%r10)
   0.33%  │  0x00007fc66c639eaa:   movq   $0x1,(%rcx)
   0.01%  │  0x00007fc66c639eb1:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.35%  │  0x00007fc66c639eb8:   mov    %r12d,0xc(%rcx)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@8 (line 138)
   0.11%  │  0x00007fc66c639ebc:   mov    0x1b8(%r15),%r8
   0.28%  │  0x00007fc66c639ec3:   mov    %r8,%r10
   0.00%  │  0x00007fc66c639ec6:   add    $0x10,%r10
   0.28%  │  0x00007fc66c639eca:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c639ed1:   jae    0x00007fc66c63a114
   0.14%  │  0x00007fc66c639ed7:   mov    %r10,0x1b8(%r15)
   0.25%  │  0x00007fc66c639ede:   prefetchw 0xc0(%r10)
   0.52%  │  0x00007fc66c639ee6:   movq   $0x1,(%r8)
   0.62%  │  0x00007fc66c639eed:   movl   $0xe80,0x8(%r8)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.30%  │  0x00007fc66c639ef5:   mov    %r12d,0xc(%r8)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@16 (line 139)
   0.22%  │  0x00007fc66c639ef9:   mov    0x1b8(%r15),%r9
   0.16%  │  0x00007fc66c639f00:   mov    %r9,%r10
   0.25%  │  0x00007fc66c639f03:   add    $0x10,%r10
   0.16%  │  0x00007fc66c639f07:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c639f0e:   jae    0x00007fc66c63a14a
   0.21%  │  0x00007fc66c639f14:   mov    %r10,0x1b8(%r15)
   0.08%  │  0x00007fc66c639f1b:   prefetchw 0xc0(%r10)
   0.93%  │  0x00007fc66c639f23:   movq   $0x1,(%r9)
   0.50%  │  0x00007fc66c639f2a:   movl   $0xe80,0x8(%r9)              ;   {metadata(&apos;java/lang/Object&apos;)}
   0.64%  │  0x00007fc66c639f32:   mov    %r12d,0xc(%r9)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@24 (line 140)
   0.25%  │  0x00007fc66c639f36:   mov    0x1b8(%r15),%rdi
   0.40%  │  0x00007fc66c639f3d:   mov    %rdi,%r10
   0.05%  │  0x00007fc66c639f40:   add    $0x10,%r10
   0.31%  │  0x00007fc66c639f44:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c639f4b:   jae    0x00007fc66c63a194
   0.26%  │  0x00007fc66c639f51:   mov    %r10,0x1b8(%r15)
   0.19%  │  0x00007fc66c639f58:   prefetchw 0xc0(%r10)
   1.48%  │  0x00007fc66c639f60:   movq   $0x1,(%rdi)
   1.36%  │  0x00007fc66c639f67:   movl   $0xe80,0x8(%rdi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.52%  │  0x00007fc66c639f6e:   mov    %r12d,0xc(%rdi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@33 (line 141)
   0.43%  │  0x00007fc66c639f72:   mov    0x1b8(%r15),%rax
   0.36%  │  0x00007fc66c639f79:   mov    %rax,%r10
   0.13%  │  0x00007fc66c639f7c:   add    $0x10,%r10
   0.13%  │  0x00007fc66c639f80:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c639f87:   jae    0x00007fc66c63a1e5
   0.34%  │  0x00007fc66c639f8d:   mov    %r10,0x1b8(%r15)
   0.14%  │  0x00007fc66c639f94:   prefetchw 0xc0(%r10)
   1.45%  │  0x00007fc66c639f9c:   movq   $0x1,(%rax)
   0.80%  │  0x00007fc66c639fa3:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.91%  │  0x00007fc66c639faa:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@42 (line 142)
   0.22%  │  0x00007fc66c639fae:   mov    %rax,0x38(%rsp)
   0.07%  │  0x00007fc66c639fb3:   mov    0x1b8(%r15),%rax
   0.29%  │  0x00007fc66c639fba:   mov    %rax,%r10
   0.30%  │  0x00007fc66c639fbd:   add    $0x10,%r10
   0.19%  │  0x00007fc66c639fc1:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c639fc8:   jae    0x00007fc66c63a23f
   0.10%  │  0x00007fc66c639fce:   mov    %r10,0x1b8(%r15)
   0.12%  │  0x00007fc66c639fd5:   prefetchw 0xc0(%r10)
   0.83%  │  0x00007fc66c639fdd:   movq   $0x1,(%rax)
   0.91%  │  0x00007fc66c639fe4:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.71%  │  0x00007fc66c639feb:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@51 (line 143)
   0.26%  │  0x00007fc66c639fef:   mov    %rax,0x40(%rsp)
   0.05%  │  0x00007fc66c639ff4:   mov    0x1b8(%r15),%rax
   0.75%  │  0x00007fc66c639ffb:   mov    %rax,%r10
   0.21%  │  0x00007fc66c639ffe:   add    $0x10,%r10
   0.27%  │  0x00007fc66c63a002:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c63a009:   jae    0x00007fc66c63a297
   0.08%  │  0x00007fc66c63a00f:   mov    %r10,0x1b8(%r15)
   0.14%  │  0x00007fc66c63a016:   prefetchw 0xc0(%r10)
   1.26%  │  0x00007fc66c63a01e:   movq   $0x1,(%rax)
   1.73%  │  0x00007fc66c63a025:   movl   $0xe80,0x8(%rax)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.65%  │  0x00007fc66c63a02c:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@60 (line 144)
   0.31%  │  0x00007fc66c63a030:   mov    %rax,0x48(%rsp)
   0.06%  │  0x00007fc66c63a035:   mov    0x1b8(%r15),%rax
   0.40%  │  0x00007fc66c63a03c:   mov    %rax,%r10
   0.16%  │  0x00007fc66c63a03f:   add    $0x30,%r10
   0.31%  │  0x00007fc66c63a043:   cmp    0x1c8(%r15),%r10
          │  0x00007fc66c63a04a:   jae    0x00007fc66c63a2ef
   0.10%  │  0x00007fc66c63a050:   mov    %r10,0x1b8(%r15)
   0.14%  │  0x00007fc66c63a057:   prefetchw 0xc0(%r10)
   1.16%  │  0x00007fc66c63a05f:   movq   $0x1,(%rax)
   2.17%  │  0x00007fc66c63a066:   movl   $0x102b368,0x8(%rax)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark$Wrapper&apos;)}
   0.75%  │  0x00007fc66c63a06d:   mov    %r12d,0xc(%rax)
   0.43%  │  0x00007fc66c63a071:   mov    %r12,0x10(%rax)
   0.53%  │  0x00007fc66c63a075:   mov    %r12,0x18(%rax)
   0.44%  │  0x00007fc66c63a079:   mov    %r12,0x20(%rax)
   0.63%  │  0x00007fc66c63a07d:   mov    %r12,0x28(%rax)
   0.57%  │  0x00007fc66c63a081:   mov    %rax,%rbp                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@69 (line 145)
   0.03%  │  0x00007fc66c63a084:   mov    %rbp,%rsi
   0.01%  │  0x00007fc66c63a087:   mov    0x18(%rsp),%rdx
   0.05%  │  0x00007fc66c63a08c:   mov    0x38(%rsp),%r10
   0.58%  │  0x00007fc66c63a091:   mov    %r10,(%rsp)
   0.01%  │  0x00007fc66c63a095:   mov    0x40(%rsp),%r10
   0.03%  │  0x00007fc66c63a09a:   mov    %r10,0x8(%rsp)
   0.05%  │  0x00007fc66c63a09f:   mov    0x48(%rsp),%r10
   0.52%  │  0x00007fc66c63a0a4:   mov    %r10,0x10(%rsp)
   0.02%  │  0x00007fc66c63a0a9:   xchg   %ax,%ax
   0.01%  │  0x00007fc66c63a0ab:   call   0x00007fc66c636d40           ; ImmutableOopMap {rbp=Oop }
          │                                                            ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 145)
          │                                                            ;   {optimized virtual_call}
   0.10%  │  0x00007fc66c63a0b0:   nopl   0x4a0(%rax,%rax,1)           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@86 (line 145)
          │                                                            ;   {other}
   0.13%  │  0x00007fc66c63a0b8:   mov    %rbp,%rax
   0.29%  │  0x00007fc66c63a0bb:   add    $0x90,%rsp
   0.20%  │  0x00007fc66c63a0c2:   pop    %rbp
   0.18%  │  0x00007fc66c63a0c3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fc66c63a0ca:   ja     0x00007fc66c63a392
   0.34%  │  0x00007fc66c63a0d0:   ret    
          ↘  0x00007fc66c63a0d1:   movabs $0x7fc5f3000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
             0x00007fc66c63a0db:   call   0x00007fc66c196a80           ; ImmutableOopMap {}
                                                                       ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
                                                                       ;   {runtime_call _new_instance_Java}
             0x00007fc66c63a0e0:   nopl   0x10004d0(%rax,%rax,1)       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural@0 (line 137)
                                                                       ;   {other}
             0x00007fc66c63a0e8:   mov    %rax,%r11
             0x00007fc66c63a0eb:   jmp    0x00007fc66c639e7b           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  39.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 

   0.45%              0x00007fc66c636e5a:   xor    %r10,%rcx
   0.01%              0x00007fc66c636e5d:   shr    $0x15,%rcx
   0.05%              0x00007fc66c636e61:   test   %rcx,%rcx
          ╭           0x00007fc66c636e64:   je     0x00007fc66c636e86
          │           0x00007fc66c636e66:   shr    $0x9,%r10
          │           0x00007fc66c636e6a:   movabs $0x7fc67cb63000,%rdi
          │           0x00007fc66c636e74:   add    %r10,%rdi
          │           0x00007fc66c636e77:   cmpb   $0x2,(%rdi)
          │           0x00007fc66c636e7a:   nopw   0x0(%rax,%rax,1)
          │           0x00007fc66c636e80:   jne    0x00007fc66c637b17
   0.03%  ↘           0x00007fc66c636e86:   mov    0x1b8(%r15),%rcx
   0.47%              0x00007fc66c636e8d:   mov    %rcx,%r10
   0.02%              0x00007fc66c636e90:   add    $0x10,%r10
   0.07%              0x00007fc66c636e94:   nopl   0x0(%rax,%rax,1)
   0.05%              0x00007fc66c636e9c:   data16 data16 xchg %ax,%ax
   0.49%              0x00007fc66c636ea0:   cmp    0x1c8(%r15),%r10             ;   {no_reloc}
                      0x00007fc66c636ea7:   jae    0x00007fc66c6383f8
   0.02%              0x00007fc66c636ead:   mov    %r10,0x1b8(%r15)
   0.06%              0x00007fc66c636eb4:   prefetchw 0xc0(%r10)
   0.13%              0x00007fc66c636ebc:   movq   $0x1,(%rcx)
   0.55%              0x00007fc66c636ec3:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.02%              0x00007fc66c636eca:   mov    %r12d,0xc(%rcx)
   0.06%              0x00007fc66c636ece:   cmpb   $0x0,0x40(%r15)
   0.05%              0x00007fc66c636ed3:   jne    0x00007fc66c6376f3
   0.47%              0x00007fc66c636ed9:   mov    %rcx,%r10
   0.02%              0x00007fc66c636edc:   shr    $0x3,%r10
   0.07%              0x00007fc66c636ee0:   mov    %r10d,0x10(%rbx)
   0.06%              0x00007fc66c636ee4:   mov    %rbx,%r10
   0.47%              0x00007fc66c636ee7:   xor    %r10,%rcx
   0.02%              0x00007fc66c636eea:   shr    $0x15,%rcx
   0.05%              0x00007fc66c636eee:   test   %rcx,%rcx
           ╭          0x00007fc66c636ef1:   je     0x00007fc66c636f0d
           │          0x00007fc66c636ef3:   shr    $0x9,%r10
           │          0x00007fc66c636ef7:   movabs $0x7fc67cb63000,%rdi
           │          0x00007fc66c636f01:   add    %r10,%rdi
           │          0x00007fc66c636f04:   cmpb   $0x2,(%rdi)
           │          0x00007fc66c636f07:   jne    0x00007fc66c637bc9
   0.04%   ↘          0x00007fc66c636f0d:   mov    0x1b8(%r15),%rcx
   0.52%              0x00007fc66c636f14:   mov    %rcx,%r10
   0.03%              0x00007fc66c636f17:   add    $0x10,%r10
   0.06%              0x00007fc66c636f1b:   nopl   0x0(%rax,%rax,1)
   0.06%              0x00007fc66c636f20:   cmp    0x1c8(%r15),%r10
                      0x00007fc66c636f27:   jae    0x00007fc66c63849f
   0.48%              0x00007fc66c636f2d:   mov    %r10,0x1b8(%r15)
   0.03%              0x00007fc66c636f34:   prefetchw 0xc0(%r10)
   0.33%              0x00007fc66c636f3c:   movq   $0x1,(%rcx)
   0.59%              0x00007fc66c636f43:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.52%              0x00007fc66c636f4a:   mov    %r12d,0xc(%rcx)
   0.14%              0x00007fc66c636f4e:   cmpb   $0x0,0x40(%r15)
   0.05%              0x00007fc66c636f53:   jne    0x00007fc66c637730
   0.08%              0x00007fc66c636f59:   mov    %rcx,%r10
   0.35%              0x00007fc66c636f5c:   shr    $0x3,%r10
   0.14%              0x00007fc66c636f60:   mov    %r10d,0x14(%rbx)
   0.06%              0x00007fc66c636f64:   mov    %rbx,%r10
   0.09%              0x00007fc66c636f67:   xor    %r10,%rcx
   0.37%              0x00007fc66c636f6a:   shr    $0x15,%rcx
   0.13%              0x00007fc66c636f6e:   test   %rcx,%rcx
            ╭         0x00007fc66c636f71:   je     0x00007fc66c636f8d
            │         0x00007fc66c636f73:   shr    $0x9,%r10
            │         0x00007fc66c636f77:   movabs $0x7fc67cb63000,%rdi
            │         0x00007fc66c636f81:   add    %r10,%rdi
            │         0x00007fc66c636f84:   cmpb   $0x2,(%rdi)
            │         0x00007fc66c636f87:   jne    0x00007fc66c637c8f
   0.05%    ↘         0x00007fc66c636f8d:   mov    0x1b8(%r15),%rcx
   0.12%              0x00007fc66c636f94:   mov    %rcx,%r10
   0.38%              0x00007fc66c636f97:   add    $0x10,%r10
   0.17%              0x00007fc66c636f9b:   nopl   0x0(%rax,%rax,1)
   0.04%              0x00007fc66c636fa0:   cmp    0x1c8(%r15),%r10
                      0x00007fc66c636fa7:   jae    0x00007fc66c638547
   0.09%              0x00007fc66c636fad:   mov    %r10,0x1b8(%r15)
   0.35%              0x00007fc66c636fb4:   prefetchw 0xc0(%r10)
   0.43%              0x00007fc66c636fbc:   movq   $0x1,(%rcx)
   0.59%              0x00007fc66c636fc3:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.50%              0x00007fc66c636fca:   mov    %r12d,0xc(%rcx)
   0.39%              0x00007fc66c636fce:   cmpb   $0x0,0x40(%r15)
   0.04%              0x00007fc66c636fd3:   jne    0x00007fc66c637767
   0.05%              0x00007fc66c636fd9:   mov    %rcx,%r10
   0.18%              0x00007fc66c636fdc:   shr    $0x3,%r10
   0.36%              0x00007fc66c636fe0:   mov    %r10d,0x18(%rbx)
   0.04%              0x00007fc66c636fe4:   mov    %rbx,%r10
   0.06%              0x00007fc66c636fe7:   xor    %r10,%rcx
   0.18%              0x00007fc66c636fea:   shr    $0x15,%rcx
   0.34%              0x00007fc66c636fee:   test   %rcx,%rcx
             ╭        0x00007fc66c636ff1:   je     0x00007fc66c63700d
             │        0x00007fc66c636ff3:   shr    $0x9,%r10
             │        0x00007fc66c636ff7:   movabs $0x7fc67cb63000,%rdi
             │        0x00007fc66c637001:   add    %r10,%rdi
             │        0x00007fc66c637004:   cmpb   $0x2,(%rdi)
             │        0x00007fc66c637007:   jne    0x00007fc66c637d57
   0.04%     ↘        0x00007fc66c63700d:   mov    0x1b8(%r15),%rcx
   0.08%              0x00007fc66c637014:   mov    %rcx,%r10
   0.16%              0x00007fc66c637017:   add    $0x10,%r10
   0.39%              0x00007fc66c63701b:   nopl   0x0(%rax,%rax,1)
   0.03%              0x00007fc66c637020:   cmp    0x1c8(%r15),%r10
                      0x00007fc66c637027:   jae    0x00007fc66c638137
   0.10%              0x00007fc66c63702d:   mov    %r10,0x1b8(%r15)
   0.20%              0x00007fc66c637034:   prefetchw 0xc0(%r10)
   0.84%              0x00007fc66c63703c:   movq   $0x1,(%rcx)
   1.01%              0x00007fc66c637043:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.43%              0x00007fc66c63704a:   mov    %r12d,0xc(%rcx)
   0.43%              0x00007fc66c63704e:   cmpb   $0x0,0x40(%r15)
   0.11%              0x00007fc66c637053:   jne    0x00007fc66c63779f
   0.17%              0x00007fc66c637059:   mov    %rcx,%r10
   0.13%              0x00007fc66c63705c:   shr    $0x3,%r10
   0.25%              0x00007fc66c637060:   mov    %r10d,0x1c(%rbx)
   0.11%              0x00007fc66c637064:   mov    %rbx,%r10
   0.17%              0x00007fc66c637067:   xor    %r10,%rcx
   0.13%              0x00007fc66c63706a:   shr    $0x15,%rcx
   0.27%              0x00007fc66c63706e:   test   %rcx,%rcx
              ╭       0x00007fc66c637071:   je     0x00007fc66c63708d
              │       0x00007fc66c637073:   shr    $0x9,%r10
              │       0x00007fc66c637077:   movabs $0x7fc67cb63000,%rdi
              │       0x00007fc66c637081:   add    %r10,%rdi
              │       0x00007fc66c637084:   cmpb   $0x2,(%rdi)
              │       0x00007fc66c637087:   jne    0x00007fc66c637813
   0.10%      ↘       0x00007fc66c63708d:   mov    0x1b8(%r15),%rcx
   0.20%              0x00007fc66c637094:   mov    %rcx,%r10
   0.11%              0x00007fc66c637097:   add    $0x10,%r10
   0.24%              0x00007fc66c63709b:   nopl   0x0(%rax,%rax,1)
   0.11%              0x00007fc66c6370a0:   cmp    0x1c8(%r15),%r10
                      0x00007fc66c6370a7:   jae    0x00007fc66c6381df
   0.15%              0x00007fc66c6370ad:   mov    %r10,0x1b8(%r15)
   0.16%              0x00007fc66c6370b4:   prefetchw 0xc0(%r10)
   0.94%              0x00007fc66c6370bc:   movq   $0x1,(%rcx)
   0.89%              0x00007fc66c6370c3:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.77%              0x00007fc66c6370ca:   mov    %r12d,0xc(%rcx)
   0.28%              0x00007fc66c6370ce:   cmpb   $0x0,0x40(%r15)
   0.08%              0x00007fc66c6370d3:   jne    0x00007fc66c6377dc
   0.13%              0x00007fc66c6370d9:   mov    %rcx,%r10
   0.20%              0x00007fc66c6370dc:   shr    $0x3,%r10
   0.21%              0x00007fc66c6370e0:   mov    %r10d,0x20(%rbx)
   0.07%              0x00007fc66c6370e4:   mov    %rbx,%r10
   0.12%              0x00007fc66c6370e7:   xor    %r10,%rcx
   0.19%              0x00007fc66c6370ea:   shr    $0x15,%rcx
   0.22%              0x00007fc66c6370ee:   test   %rcx,%rcx
               ╭      0x00007fc66c6370f1:   je     0x00007fc66c63710d
               │      0x00007fc66c6370f3:   shr    $0x9,%r10
               │      0x00007fc66c6370f7:   movabs $0x7fc67cb63000,%rdi
               │      0x00007fc66c637101:   add    %r10,%rdi
               │      0x00007fc66c637104:   cmpb   $0x2,(%rdi)
               │      0x00007fc66c637107:   jne    0x00007fc66c6378d7
   0.09%       ↘      0x00007fc66c63710d:   mov    0x1b8(%r15),%rcx
   0.13%              0x00007fc66c637114:   mov    %rcx,%r10
   0.17%              0x00007fc66c637117:   add    $0x10,%r10
   0.22%              0x00007fc66c63711b:   nopl   0x0(%rax,%rax,1)
   0.08%              0x00007fc66c637120:   cmp    0x1c8(%r15),%r10
                      0x00007fc66c637127:   jae    0x00007fc66c638287
   0.12%              0x00007fc66c63712d:   mov    %r10,0x1b8(%r15)
   0.26%              0x00007fc66c637134:   prefetchw 0xc0(%r10)
   0.87%              0x00007fc66c63713c:   movq   $0x1,(%rcx)
   1.08%              0x00007fc66c637143:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.45%              0x00007fc66c63714a:   mov    %r12d,0xc(%rcx)
   0.22%              0x00007fc66c63714e:   cmpb   $0x0,0x40(%r15)
   0.07%              0x00007fc66c637153:   jne    0x00007fc66c6374b0
   0.14%              0x00007fc66c637159:   mov    %rcx,%r10
   0.14%              0x00007fc66c63715c:   shr    $0x3,%r10
   0.22%              0x00007fc66c637160:   mov    %r10d,0x24(%rbx)
   0.07%              0x00007fc66c637164:   mov    %rbx,%r10
   0.14%              0x00007fc66c637167:   xor    %r10,%rcx
   0.14%              0x00007fc66c63716a:   shr    $0x15,%rcx
   0.23%              0x00007fc66c63716e:   test   %rcx,%rcx
                ╭     0x00007fc66c637171:   je     0x00007fc66c63718d
                │     0x00007fc66c637173:   shr    $0x9,%r10
                │     0x00007fc66c637177:   movabs $0x7fc67cb63000,%rdi
                │     0x00007fc66c637181:   add    %r10,%rdi
                │     0x00007fc66c637184:   cmpb   $0x2,(%rdi)
                │     0x00007fc66c637187:   jne    0x00007fc66c637997
   0.10%        ↘     0x00007fc66c63718d:   mov    0x1b8(%r15),%rcx
   0.19%              0x00007fc66c637194:   mov    %rcx,%r10
   0.17%              0x00007fc66c637197:   add    $0x10,%r10
   0.24%              0x00007fc66c63719b:   nopl   0x0(%rax,%rax,1)
   0.07%              0x00007fc66c6371a0:   cmp    0x1c8(%r15),%r10
                      0x00007fc66c6371a7:   jae    0x00007fc66c63832f
   0.19%              0x00007fc66c6371ad:   mov    %r10,0x1b8(%r15)
   0.14%              0x00007fc66c6371b4:   prefetchw 0xc0(%r10)
   0.84%              0x00007fc66c6371bc:   movq   $0x1,(%rcx)
   0.62%              0x00007fc66c6371c3:   movl   $0xe80,0x8(%rcx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.72%              0x00007fc66c6371ca:   mov    %r12d,0xc(%rcx)
   0.19%              0x00007fc66c6371ce:   cmpb   $0x0,0x40(%r15)
   0.08%              0x00007fc66c6371d3:   jne    0x00007fc66c6374e7
   0.17%              0x00007fc66c6371d9:   mov    %rcx,%r10
   0.28%              0x00007fc66c6371dc:   shr    $0x3,%r10
   0.13%              0x00007fc66c6371e0:   mov    %r10d,0x28(%rbx)
   0.09%              0x00007fc66c6371e4:   mov    %rbx,%r10
   0.12%              0x00007fc66c6371e7:   xor    %r10,%rcx
   0.26%              0x00007fc66c6371ea:   shr    $0x15,%rcx
   0.14%              0x00007fc66c6371ee:   test   %rcx,%rcx
                 ╭    0x00007fc66c6371f1:   je     0x00007fc66c63720d
                 │    0x00007fc66c6371f3:   shr    $0x9,%r10
                 │    0x00007fc66c6371f7:   movabs $0x7fc67cb63000,%rdi
                 │    0x00007fc66c637201:   add    %r10,%rdi
                 │    0x00007fc66c637204:   cmpb   $0x2,(%rdi)
                 │    0x00007fc66c637207:   jne    0x00007fc66c637a57
   0.11%         ↘    0x00007fc66c63720d:   cmpb   $0x0,0x40(%r15)
   0.17%              0x00007fc66c637212:   jne    0x00007fc66c63751f
   0.31%              0x00007fc66c637218:   mov    0x38(%rsp),%r10d
   0.16%              0x00007fc66c63721d:   mov    %r10d,0xc(%rbx)
   0.13%              0x00007fc66c637221:   mov    %rbp,%rcx
   0.14%              0x00007fc66c637224:   mov    %rbx,%r10
   0.31%              0x00007fc66c637227:   xor    %r10,%rcx
   0.14%              0x00007fc66c63722a:   shr    $0x15,%rcx
   0.06%              0x00007fc66c63722e:   test   %rcx,%rcx
                  ╭   0x00007fc66c637231:   je     0x00007fc66c637252
                  │   0x00007fc66c637233:   test   %rbp,%rbp
                  │╭  0x00007fc66c637236:   je     0x00007fc66c637252
                  ││  0x00007fc66c637238:   shr    $0x9,%r10
                  ││  0x00007fc66c63723c:   movabs $0x7fc67cb63000,%rdi
                  ││  0x00007fc66c637246:   add    %r10,%rdi
                  ││  0x00007fc66c637249:   cmpb   $0x2,(%rdi)
                  ││  0x00007fc66c63724c:   jne    0x00007fc66c637e17
   0.13%          ↘↘  0x00007fc66c637252:   cmpb   $0x0,0x40(%r15)
   0.26%              0x00007fc66c637257:   jne    0x00007fc66c63755c
....................................................................................................
  32.96%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 

             # parm6:    [sp+0x88]   = &apos;java/lang/Object&apos;
             # parm7:    [sp+0x90]   = &apos;java/lang/Object&apos;
             0x00007fc66c636d20:   mov    0x8(%rsi),%r10d
             0x00007fc66c636d24:   movabs $0x7fc5f3000000,%r11
             0x00007fc66c636d2e:   add    %r11,%r10
             0x00007fc66c636d31:   cmp    %r10,%rax
             0x00007fc66c636d34:   jne    0x00007fc66c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007fc66c636d3a:   xchg   %ax,%ax
             0x00007fc66c636d3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.59%     0x00007fc66c636d40:   mov    %eax,-0x14000(%rsp)
   0.04%     0x00007fc66c636d47:   push   %rbp
   0.05%     0x00007fc66c636d48:   sub    $0x70,%rsp
   0.54%     0x00007fc66c636d4c:   cmpl   $0x1,0x20(%r15)
   0.03%     0x00007fc66c636d54:   jne    0x00007fc66c638c65           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;@-1 (line 212)
   0.06%     0x00007fc66c636d5a:   mov    %rdi,0x20(%rsp)
   0.52%     0x00007fc66c636d5f:   mov    %r9,0x18(%rsp)
   0.05%     0x00007fc66c636d64:   mov    %r8,0x10(%rsp)
   0.02%     0x00007fc66c636d69:   mov    %rcx,0x8(%rsp)
   0.07%     0x00007fc66c636d6e:   mov    %rdx,(%rsp)
   0.54%     0x00007fc66c636d72:   mov    %rsi,%rbp
   0.03%     0x00007fc66c636d75:   mov    0x1b8(%r15),%r13
   0.04%     0x00007fc66c636d7c:   mov    %r13,%r10
   0.06%     0x00007fc66c636d7f:   add    $0x10,%r10
   0.59%     0x00007fc66c636d83:   cmp    0x1c8(%r15),%r10
             0x00007fc66c636d8a:   jae    0x00007fc66c6383d7
   0.06%     0x00007fc66c636d90:   mov    %r10,0x1b8(%r15)
   0.01%     0x00007fc66c636d97:   prefetchw 0xc0(%r10)
   0.13%     0x00007fc66c636d9f:   movq   $0x1,0x0(%r13)
   0.50%     0x00007fc66c636da7:   movl   $0xe80,0x8(%r13)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.05%     0x00007fc66c636daf:   mov    %r12d,0xc(%r13)
   0.07%     0x00007fc66c636db3:   cmpb   $0x0,0x40(%r15)
   0.06%     0x00007fc66c636db8:   jne    0x00007fc66c6376b3
   0.51%     0x00007fc66c636dbe:   mov    %rbp,%rbx
   0.03%     0x00007fc66c636dc1:   mov    %r13,%r11
   0.06%     0x00007fc66c636dc4:   shr    $0x3,%r11
   0.04%     0x00007fc66c636dc8:   mov    %r11d,0xc(%rbx)
   0.46%     0x00007fc66c636dcc:   mov    (%rsp),%rbp
   0.05%     0x00007fc66c636dd0:   mov    %rbp,%r10
   0.05%     0x00007fc66c636dd3:   shr    $0x3,%r10
   0.05%     0x00007fc66c636dd7:   mov    %r10d,0x38(%rsp)
   0.52%     0x00007fc66c636ddc:   mov    0x8(%rsp),%r11
   0.06%     0x00007fc66c636de1:   mov    %r11,%r8
   0.06%     0x00007fc66c636de4:   shr    $0x3,%r8
   0.04%     0x00007fc66c636de8:   mov    %r8d,0x3c(%rsp)
   0.50%     0x00007fc66c636ded:   mov    0x10(%rsp),%r8
   0.04%     0x00007fc66c636df2:   mov    %r8,%r10
   0.07%     0x00007fc66c636df5:   shr    $0x3,%r10
   0.04%     0x00007fc66c636df9:   mov    %r10d,0x40(%rsp)
   0.44%     0x00007fc66c636dfe:   mov    0x18(%rsp),%r9
   0.04%     0x00007fc66c636e03:   mov    %r9,%rcx
   0.06%     0x00007fc66c636e06:   shr    $0x3,%rcx
   0.05%     0x00007fc66c636e0a:   mov    %ecx,0x44(%rsp)
   0.48%     0x00007fc66c636e0e:   mov    0x20(%rsp),%rdx
   0.03%     0x00007fc66c636e13:   mov    %rdx,%rcx
   0.05%     0x00007fc66c636e16:   shr    $0x3,%rcx
   0.04%     0x00007fc66c636e1a:   mov    %ecx,0x48(%rsp)
   0.56%     0x00007fc66c636e1e:   mov    0x80(%rsp),%r14
   0.02%     0x00007fc66c636e26:   mov    %r14,%r10
   0.06%     0x00007fc66c636e29:   shr    $0x3,%r10
   0.04%     0x00007fc66c636e2d:   mov    %r10d,0x4c(%rsp)
   0.50%     0x00007fc66c636e32:   mov    0x88(%rsp),%r10
   0.05%     0x00007fc66c636e3a:   shr    $0x3,%r10
   0.06%     0x00007fc66c636e3e:   mov    %r10d,0x50(%rsp)
   0.05%     0x00007fc66c636e43:   mov    0x90(%rsp),%r10
   0.47%     0x00007fc66c636e4b:   shr    $0x3,%r10
   0.02%     0x00007fc66c636e4f:   mov    %r10d,0x54(%rsp)
   0.05%     0x00007fc66c636e54:   mov    %r13,%rcx
   0.06%     0x00007fc66c636e57:   mov    %rbx,%r10
   0.45%     0x00007fc66c636e5a:   xor    %r10,%rcx
   0.01%     0x00007fc66c636e5d:   shr    $0x15,%rcx
   0.05%     0x00007fc66c636e61:   test   %rcx,%rcx
          ╭  0x00007fc66c636e64:   je     0x00007fc66c636e86
          │  0x00007fc66c636e66:   shr    $0x9,%r10
          │  0x00007fc66c636e6a:   movabs $0x7fc67cb63000,%rdi
          │  0x00007fc66c636e74:   add    %r10,%rdi
          │  0x00007fc66c636e77:   cmpb   $0x2,(%rdi)
          │  0x00007fc66c636e7a:   nopw   0x0(%rax,%rax,1)
          │  0x00007fc66c636e80:   jne    0x00007fc66c637b17
   0.03%  ↘  0x00007fc66c636e86:   mov    0x1b8(%r15),%rcx
   0.47%     0x00007fc66c636e8d:   mov    %rcx,%r10
   0.02%     0x00007fc66c636e90:   add    $0x10,%r10
....................................................................................................
  10.37%  <total for region 3>

....[Hottest Regions]...............................................................................
  39.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 581 
  32.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
  10.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   1.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 639 
   1.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   1.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   1.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   1.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   1.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   1.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   1.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   0.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
   0.31%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.10%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%        libc-2.31.so  __memset_avx2_erms 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   2.72%  <...other 523 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark$Wrapper::&lt;init&gt;, version 2, compile id 580 
  39.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural, version 2, compile id 581 
   1.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub, version 6, compile id 639 
   1.77%              kernel  [unknown] 
   0.15%                      <unknown> 
   0.12%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%        libc-2.31.so  __memset_avx2_erms 
   0.06%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.05%           libjvm.so  ObjAllocator::initialize 
   0.05%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.04%           libjvm.so  OptoRuntime::new_instance_C 
   0.04%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%           libjvm.so  MemAllocator::allocate 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.03%           libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.03%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.03%           libjvm.so  G1CardTable::is_in_young 
   1.14%  <...other 203 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.20%         c2, level 4
   1.77%              kernel
   1.44%           libjvm.so
   0.25%        libc-2.31.so
   0.15%                    
   0.06%          ld-2.31.so
   0.06%  libpthread-2.31.so
   0.03%              [vdso]
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%    perf-1932917.map
....................................................................................................
 100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate":
  4808.026 ±(99.9%) 16.588 MB/sec [Average]
  (min, avg, max) = (4801.299, 4808.026, 4812.030), stdev = 4.308
  CI (99.9%): [4791.438, 4824.614] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate.norm":
  304.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (304.000, 304.000, 304.000), stdev = 0.001
  CI (99.9%): [304.000, 304.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.count":
  98.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (19.000, 19.600, 20.000), stdev = 0.548
  CI (99.9%): [98.000, 98.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.time":
  174.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (33.000, 34.800, 37.000), stdev = 1.483
  CI (99.9%): [174.000, 174.000] (assumes normal distribution)


# Run complete. Total time: 00:14:33

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
DeadLocalAllocationStoreBenchmark.array_baseline                                           64  avgt    5    12.752 ±   0.107   ns/op
DeadLocalAllocationStoreBenchmark.array_baseline:asm                                       64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate                             64  avgt    5  5982.645 ±  50.137  MB/sec
DeadLocalAllocationStoreBenchmark.array_baseline:gc.alloc.rate.norm                        64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_baseline:gc.count                                  64  avgt    5   122.000            counts
DeadLocalAllocationStoreBenchmark.array_baseline:gc.time                                   64  avgt    5   216.000                ms
DeadLocalAllocationStoreBenchmark.array_dse                                                64  avgt    5    13.857 ±   0.286   ns/op
DeadLocalAllocationStoreBenchmark.array_dse:asm                                            64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate                                  64  avgt    5  5505.104 ± 116.135  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse:gc.alloc.rate.norm                             64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse:gc.count                                       64  avgt    5   113.000            counts
DeadLocalAllocationStoreBenchmark.array_dse:gc.time                                        64  avgt    5   200.000                ms
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural                               64  avgt    5    29.023 ±   0.238   ns/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:asm                           64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate                 64  avgt    5  2628.426 ±  22.667  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.alloc.rate.norm            64  avgt    5    80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.count                      64  avgt    5    54.000            counts
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:gc.time                       64  avgt    5    98.000                ms
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline                                       64  avgt    5     8.064 ±   0.075   ns/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:asm                                   64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate                         64  avgt    5  1892.068 ±  17.659  MB/sec
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.alloc.rate.norm                    64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.count                              64  avgt    5    38.000            counts
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:gc.time                               64  avgt    5    65.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse                                                  64  avgt    5     8.044 ±   0.123   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse:asm                                              64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate                                    64  avgt    5  1896.731 ±  28.855  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse:gc.alloc.rate.norm                               64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse:gc.count                                         64  avgt    5    38.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse:gc.time                                          64  avgt    5    69.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural                                 64  avgt    5    83.360 ±   0.072   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:asm                             64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate                   64  avgt    5   183.025 ±   0.056  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.alloc.rate.norm              64  avgt    5    16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.count                        64  avgt    5     4.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:gc.time                         64  avgt    5    12.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline                                     64  avgt    5    27.490 ±   0.024   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:asm                                 64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate                       64  avgt    5  6104.835 ±   9.279  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.alloc.rate.norm                  64  avgt    5   176.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.count                            64  avgt    5   124.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:gc.time                             64  avgt    5   219.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural                         64  avgt    5    60.297 ±   0.208   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:asm                     64  avgt            NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate           64  avgt    5  4808.026 ±  16.588  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.alloc.rate.norm      64  avgt    5   304.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.count                64  avgt    5    98.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:gc.time                 64  avgt    5   174.000                ms
