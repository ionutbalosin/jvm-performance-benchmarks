# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 861.308 ms/op
# Warmup Iteration   2: 866.334 ms/op
# Warmup Iteration   3: 866.354 ms/op
# Warmup Iteration   4: 857.314 ms/op
# Warmup Iteration   5: 857.780 ms/op
Iteration   1: 864.593 ms/op
Iteration   2: 859.156 ms/op
Iteration   3: 870.341 ms/op
Iteration   4: 864.347 ms/op
Iteration   5: 857.232 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic":
  863.134 ±(99.9%) 19.842 ms/op [Average]
  (min, avg, max) = (857.232, 863.134, 870.341), stdev = 5.153
  CI (99.9%): [843.292, 882.975] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.dynamic:asm":
PrintAssembly processed: 242854 total address lines.
Perf output processed (skipped 63.893 seconds):
 Column 1: cycles (57647 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 10, compile id 1042 

                                                                          ; - java.util.ArrayList::elementData@5 (line 411)
                                                                          ; - java.util.ArrayList::get@11 (line 428)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@32 (line 36)
                0x00007f28bb259307:   mov    %rsi,0x10(%rsp)
                0x00007f28bb25930c:   mov    %edx,%r14d
                0x00007f28bb25930f:   dec    %r14d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@31 (line 36)
                0x00007f28bb259312:   mov    $0x0,%esi
                0x00007f28bb259317:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@45 (line 37)
   2.15%    ↗↗  0x00007f28bb259320:   cmp    %ebx,%esi
          ╭ ││  0x00007f28bb259322:   jg     0x00007f28bb2593c5           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@48 (line 37)
   4.19%  │ ││  0x00007f28bb259328:   cmp    %edx,%r9d
          │ ││  0x00007f28bb25932b:   jbe    0x00007f28bb25986f           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@107 (line 41)
   1.65%  │ ││  0x00007f28bb259331:   cmp    %r14d,%r9d
          │ ││  0x00007f28bb259334:   jbe    0x00007f28bb25986f           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@115 (line 41)
   1.82%  │ ││  0x00007f28bb25933a:   mov    0xc(%rax,%rdx,4),%r8d        ; ImmutableOopMap {rax=Oop r8=NarrowOop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@45 (line 37)
   2.21%  │ ││  0x00007f28bb25933f:   mov    0xc(,%r8,8),%edi             ; implicit exception: dispatches to 0x00007f28bb259b79
   4.40%  │ ││  0x00007f28bb259347:   cmp    %esi,%edi
          │ ││  0x00007f28bb259349:   jbe    0x00007f28bb25986f           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   3.45%  │ ││  0x00007f28bb25934f:   mov    0x10(%rax,%rdx,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@107 (line 41)
   1.64%  │ ││  0x00007f28bb259354:   nopl   0x0(%rax,%rax,1)
   2.08%  │ ││  0x00007f28bb25935c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=Oop r8=NarrowOop r10=NarrowOop [16]=Oop [24]=Oop [32]=Oop [40]=Oop }
          │ ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@45 (line 37)
   2.92%  │ ││  0x00007f28bb259360:   cmp    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007f28bb259b9c
          │ ││  0x00007f28bb259368:   jae    0x00007f28bb25986f           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   5.18%  │ ││  0x00007f28bb25936e:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@115 (line 41)
   2.08%  │ ││  0x00007f28bb259372:   mov    0x10(%r8,%rsi,4),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@118 (line 41)
   5.55%  │ ││  0x00007f28bb259377:   shl    $0x3,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@107 (line 41)
   3.04%  │ ││  0x00007f28bb25937b:   mov    %esi,%ecx
   1.67%  │ ││  0x00007f28bb25937d:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
   2.00%  │ ││  0x00007f28bb25937f:   nop
   3.33%  │ ││  0x00007f28bb259380:   cmp    %esi,%ebp
          │╭││  0x00007f28bb259382:   jg     0x00007f28bb2593b7           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@58 (line 38)
   3.05%  ││││  0x00007f28bb259388:   mov    %esi,%r9d
   1.71%  ││││  0x00007f28bb25938b:   sub    %ebp,%r9d                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@89 (line 39)
   1.94%  ││││  0x00007f28bb25938e:   cmp    %r9d,%edi
          ││││  0x00007f28bb259391:   jbe    0x00007f28bb25986f           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@90 (line 39)
          ││││                                                            ;   {no_reloc}
   3.33%  ││││  0x00007f28bb259397:   mov    %r13d,%edi
   3.08%  ││││  0x00007f28bb25939a:   add    0x10(%r8,%r9,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@96 (line 39)
   2.17%  ││││  0x00007f28bb25939f:   cmp    %r11d,%edi
   2.13%  ││││  0x00007f28bb2593a2:   cmovg  %edi,%r11d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - java.lang.Math::max@2 (line 2020)
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@97 (line 39)
   3.30%  ││││  0x00007f28bb2593a6:   mov    %r11d,0x10(%r10,%rsi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@100 (line 39)
   6.75%  ││││  0x00007f28bb2593ab:   mov    %ecx,%esi
   1.74%  ││││  0x00007f28bb2593ad:   mov    0x3c(%rsp),%r9d
   1.96%  ││╰│  0x00007f28bb2593b2:   jmp    0x00007f28bb259320           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@45 (line 37)
   0.02%  │↘ │  0x00007f28bb2593b7:   mov    %r11d,0x10(%r10,%rsi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@119 (line 41)
   0.06%  │  │  0x00007f28bb2593bc:   mov    %ecx,%esi
          │  │  0x00007f28bb2593be:   xchg   %ax,%ax
   0.01%  │  ╰  0x00007f28bb2593c0:   jmp    0x00007f28bb259320           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@120 (line 37)
   0.00%  ↘     0x00007f28bb2593c5:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rax=Oop [24]=Oop [32]=Oop [40]=Oop }
                                                                          ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@126 (line 35)
   0.02%        0x00007f28bb2593cc:   test   %eax,(%rsi)                  ;   {poll}
   0.04%        0x00007f28bb2593ce:   inc    %edx
                0x00007f28bb2593d0:   movabs $0x7f284002aca8,%rcx         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
                0x00007f28bb2593da:   mov    0x18(%rsp),%r11
                0x00007f28bb2593df:   mov    0x44(%rsp),%r10d             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@21 (line 35)
                0x00007f28bb2593e4:   cmp    %r10d,%edx
                0x00007f28bb2593e7:   jle    0x00007f28bb2592c0
                0x00007f28bb2593ed:   jmp    0x00007f28bb2593fe           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack@24 (line 35)
                0x00007f28bb2593f2:   mov    $0x0,%rbp
                0x00007f28bb2593f9:   jmp    0x00007f28bb2592e3           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  80.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 10, compile id 1042 
   9.97%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   5.43%        libc-2.31.so  __memset_avx2_erms 
   0.39%           libjvm.so  MemAllocator::allocate 
   0.20%              kernel  [unknown] 
   0.19%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.12%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.12%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   0.12%           libjvm.so  TypeArrayKlass::multi_allocate 
   0.11%              kernel  [unknown] 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 10, compile id 1042 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 10, compile id 1042 
   0.09%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.08%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.08%           libjvm.so  ObjArrayAllocator::initialize 
   0.07%              kernel  [unknown] 
   0.07%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%          ld-2.31.so  __tls_get_addr 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.96%  <...other 523 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack::knapsack, version 10, compile id 1042 
  10.09%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   5.43%        libc-2.31.so  __memset_avx2_erms 
   1.26%              kernel  [unknown] 
   0.53%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.43%           libjvm.so  MemAllocator::allocate 
   0.13%                      <unknown> 
   0.12%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   0.12%           libjvm.so  TypeArrayKlass::multi_allocate 
   0.11%           libjvm.so  ObjArrayAllocator::initialize 
   0.07%          ld-2.31.so  __tls_get_addr 
   0.05%           libjvm.so  G1Allocator::survivor_attempt_allocation 
   0.03%           libjvm.so  MemAllocator::Allocation::check_out_of_memory 
   0.03%           libjvm.so  ObjArrayKlass::multi_allocate 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  G1CardSet::reset_table_scanner 
   0.02%           libjvm.so  MemAllocator::Allocation::notify_allocation_jvmti_sampler 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  Klass::check_array_allocation_length 
   0.02%           libjvm.so  fileStream::write 
   0.66%  <...other 189 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  80.83%      jvmci, level 4
  15.64%        libc-2.31.so
   2.00%           libjvm.so
   1.26%              kernel
   0.13%                    
   0.07%          ld-2.31.so
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.00%    perf-2110961.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional

# Run progress: 33.33% complete, ETA 00:03:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.621 ms/op
# Warmup Iteration   2: 0.579 ms/op
# Warmup Iteration   3: 0.579 ms/op
# Warmup Iteration   4: 0.579 ms/op
# Warmup Iteration   5: 0.579 ms/op
Iteration   1: 0.579 ms/op
Iteration   2: 0.581 ms/op
Iteration   3: 0.579 ms/op
Iteration   4: 0.579 ms/op
Iteration   5: 0.578 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional":
  0.579 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (0.578, 0.579, 0.581), stdev = 0.001
  CI (99.9%): [0.574, 0.584] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_fractional:asm":
PrintAssembly processed: 256146 total address lines.
Perf output processed (skipped 62.462 seconds):
 Column 1: cycles (50769 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.TimSort::countRunAndMakeAscending, version 2, compile id 1027 

                                                                          ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
                                                                          ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
                0x00007fa61b2556bb:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@16 (line 34)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007fa5a002b6c0::applyAsDouble@1
                                                                          ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
                                                                          ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.54%     ↗  0x00007fa61b2556bf:   vucomisd %xmm0,%xmm1
   2.92%     │  0x00007fa61b2556c3:   ja     0x00007fa61b255ae5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.lang.Double::compare@3 (line 1277)
             │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
             │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
             │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
             │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   4.43%     │  0x00007fa61b2556c9:   mov    %eax,%esi
   0.61%     │  0x00007fa61b2556cb:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.TimSort::countRunAndMakeAscending@117 (line 361)
             │  0x00007fa61b2556cd:   vucomisd %xmm1,%xmm0
          ╭  │  0x00007fa61b2556d1:   jbe    0x00007fa61b255751           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.lang.Double::compare@11 (line 1279)
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.90%  │  │  0x00007fa61b2556d7:   mov    %esi,%eax
   0.08%  │  │  0x00007fa61b2556d9:   jmp    0x00007fa61b2555d0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@114 (line 360)
   1.72%  │  │  0x00007fa61b2556de:   xchg   %ax,%ax
   0.92%  │  │  0x00007fa61b2556e0:   test   %esi,%esi
          │╭ │  0x00007fa61b2556e2:   je     0x00007fa61b2556f1           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          ││ │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          ││ │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          ││ │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          ││ │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          ││ │  0x00007fa61b2556e8:   cmp    %r11,%rbp
          ││ │  0x00007fa61b2556eb:   jne    0x00007fa61b256572           ; ImmutableOopMap {rsi=NarrowOop r10=Oop [8]=Oop [16]=Oop }
          ││ │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                            ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
   0.75%  │↘ │  0x00007fa61b2556f1:   vcvtsi2sdl 0x10(,%rsi,8),%xmm0,%xmm0; implicit exception: dispatches to 0x00007fa61b2569e8
   2.67%  │  │  0x00007fa61b2556fa:   vcvtsi2sdl 0xc(,%rsi,8),%xmm1,%xmm1 ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@7 (line 34)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.80%  │  │  0x00007fa61b255703:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@16 (line 34)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
  18.26%  │  │  0x00007fa61b255707:   jmp    0x00007fa61b255647           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@4 (line 34)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007fa5a002b6c0::applyAsDouble@1
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   3.10%  │  │  0x00007fa61b25570c:   test   %esi,%esi
          │ ╭│  0x00007fa61b25570e:   je     0x00007fa61b25571d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          │ ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │ ││  0x00007fa61b255714:   cmp    %r11,%rbp
          │ ││  0x00007fa61b255717:   jne    0x00007fa61b25643e           ; ImmutableOopMap {rsi=NarrowOop r8=Oop r10=Oop [8]=Oop [16]=Oop }
          │ ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@7 (line 536)
          │ ││                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │ ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │ ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.09%  │ ↘│  0x00007fa61b25571d:   vcvtsi2sdl 0x10(,%rsi,8),%xmm1,%xmm1; implicit exception: dispatches to 0x00007fa61b256a0d
   3.99%  │  │  0x00007fa61b255726:   vcvtsi2sdl 0xc(,%rsi,8),%xmm2,%xmm2 ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@7 (line 34)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.21%  │  │  0x00007fa61b25572f:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@16 (line 34)
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          │  │                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │  │                                                            ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │  │                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │  │                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
  14.65%  │  ╰  0x00007fa61b255733:   jmp    0x00007fa61b2556bf
          │     0x00007fa61b255735:   mov    $0x0,%r11
          │     0x00007fa61b25573c:   nopl   0x0(%rax)
          │     0x00007fa61b255740:   jmp    0x00007fa61b2555fe           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          │                                                               ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
          │                                                               ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │                                                               ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │                                                               ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
          │     0x00007fa61b255745:   mov    $0x0,%r11
          │     0x00007fa61b25574c:   jmp    0x00007fa61b25566a           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::lambda$knapsack$0@1 (line 34)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack$$Lambda/0x00007fa5a002b2a8::applyAsDouble@1
          │                                                               ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
          │                                                               ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
          │                                                               ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
          │                                                               ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   2.64%  ↘     0x00007fa61b255751:   movabs $0x7ff8000000000000,%r11
   0.55%        0x00007fa61b25575b:   vmovq  %xmm0,%r8
   0.00%        0x00007fa61b255760:   vucomisd %xmm0,%xmm0
                0x00007fa61b255764:   mov    %r11,%rbx
   2.70%        0x00007fa61b255767:   cmovnp %r8,%rbx                     ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Double::doubleToLongBits@-3
                                                                          ; - java.lang.Double::compare@17 (line 1283)
                                                                          ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
                                                                          ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.89%        0x00007fa61b25576b:   vmovq  %xmm1,%r8
                0x00007fa61b255770:   vucomisd %xmm1,%xmm1
                0x00007fa61b255774:   mov    %r11,%rdi
   3.03%        0x00007fa61b255777:   cmovnp %r8,%rdi                     ;* unwind (locked if synchronized)
                                                                          ; - java.lang.Double::doubleToLongBits@-3
                                                                          ; - java.lang.Double::compare@23 (line 1284)
                                                                          ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
                                                                          ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.05%        0x00007fa61b25577b:   nopl   0x0(%rax,%rax,1)             ;   {no_reloc}
                0x00007fa61b255780:   cmp    %rbx,%rdi
                0x00007fa61b255783:   jg     0x00007fa61b255ae5           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@114 (line 360)
   0.73%        0x00007fa61b255789:   mov    %esi,%eax
   1.57%        0x00007fa61b25578b:   jmp    0x00007fa61b2555d0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@92 (line 360)
   0.00%        0x00007fa61b255790:   vucomisd %xmm1,%xmm0
                0x00007fa61b255794:   mov    %rsi,0x8(%rsp)
                0x00007fa61b255799:   mov    %ebx,0x4(%rsp)
                0x00007fa61b25579d:   mov    %eax,0x20(%rsp)
                0x00007fa61b2557a1:   jbe    0x00007fa61b2560dd           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.Double::compare@11 (line 1279)
                                                                          ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fa5a003adb0::compare@6
                                                                          ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
                                                                          ; - java.util.TimSort::countRunAndMakeAscending@43 (line 355)
....................................................................................................
  70.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  70.80%      jvmci, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 1027 
   9.44%      jvmci, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 1027 
   8.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::knapsack, version 4, compile id 1040 
   8.10%      jvmci, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 1027 
   0.51%      jvmci, level 4  java.util.ArrayList::grow, version 3, compile id 1051 
   0.43%              kernel  [unknown] 
   0.38%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  java.util.ArrayList::grow, version 3, compile id 1051 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  java.util.ArrayList::grow, version 3, compile id 1051 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%              kernel  [unknown] 
   1.39%  <...other 390 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.35%      jvmci, level 4  java.util.TimSort::countRunAndMakeAscending, version 2, compile id 1027 
   8.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack::knapsack, version 4, compile id 1040 
   1.73%              kernel  [unknown] 
   0.61%      jvmci, level 4  java.util.ArrayList::grow, version 3, compile id 1051 
   0.42%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.11%                      <unknown> 
   0.08%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.04%      jvmci, level 4  java.util.TimSort::sort, version 2, compile id 1056 
   0.03%          ld-2.31.so  __tls_get_addr 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%      jvmci, level 4  java.util.ArrayList::grow, version 3, compile id 1052 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _itoa_word 
   0.26%  <...other 102 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.26%      jvmci, level 4
   1.73%              kernel
   0.42%        runtime stub
   0.26%           libjvm.so
   0.14%        libc-2.31.so
   0.11%                    
   0.03%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one

# Run progress: 66.67% complete, ETA 00:01:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.950 ms/op
# Warmup Iteration   2: 0.840 ms/op
# Warmup Iteration   3: 0.836 ms/op
# Warmup Iteration   4: 0.822 ms/op
# Warmup Iteration   5: 0.837 ms/op
Iteration   1: 0.834 ms/op
Iteration   2: 0.834 ms/op
Iteration   3: 0.834 ms/op
Iteration   4: 0.834 ms/op
Iteration   5: 0.835 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one":
  0.834 ±(99.9%) 0.002 ms/op [Average]
  (min, avg, max) = (0.834, 0.834, 0.835), stdev = 0.001
  CI (99.9%): [0.832, 0.836] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.KnapsackBenchmark.greedy_zero_one:asm":
PrintAssembly processed: 263302 total address lines.
Perf output processed (skipped 62.495 seconds):
 Column 1: cycles (50851 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.TimSort::countRunAndMakeAscending, version 3, compile id 1052 

                   0x00007f32a72632c7:   add    %rbx,%r8
                   0x00007f32a72632ca:   cmp    %edi,%ecx
                   0x00007f32a72632cc:   jg     0x00007f32a7263576           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
                   0x00007f32a72632d2:   cmp    %edi,%ecx
                   0x00007f32a72632d4:   jg     0x00007f32a7263597           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@108 (line 360)
                   0x00007f32a72632da:   mov    0x28(%rsp),%r8
                   0x00007f32a72632df:   nop                                 ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@92 (line 360)
   0.35%       ↗   0x00007f32a72632e0:   cmp    %edi,%ecx
               │   0x00007f32a72632e2:   jle    0x00007f32a7263b05           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.TimSort::countRunAndMakeAscending@95 (line 360)
   0.40%       │   0x00007f32a72632e8:   mov    0xc(%r8),%r10d               ; ImmutableOopMap {rsi=Oop r8=Oop r10=NarrowOop [40]=Oop [48]=Oop }
               │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
               │                                                             ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
   0.94%       │   0x00007f32a72632ec:   cmpl   $0x103adb0,0x8(,%r10,8)      ; implicit exception: dispatches to 0x00007f32a72642f6
               │                                                             ;   {metadata(&apos;java/util/Comparator$$Lambda+0x00007f322c03adb0&apos;)}
   1.43%       │   0x00007f32a72632f8:   jne    0x00007f32a7263d91           ;*invokeinterface compare {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
               │                                                             ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.46%       │   0x00007f32a72632fe:   mov    0xc(,%r10,8),%r10d           ; ImmutableOopMap {rsi=Oop r8=Oop r10=NarrowOop [40]=Oop [48]=Oop }
               │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
               │                                                             ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
   0.67%       │   0x00007f32a7263306:   mov    0x8(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f32a7264319
   1.35%       │   0x00007f32a726330e:   mov    0x10(%rsi,%rdi,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
               │   0x00007f32a7263313:   movslq %edi,%rbx
   0.37%       │   0x00007f32a7263316:   mov    0xc(%rsi,%rbx,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.TimSort::countRunAndMakeAscending@108 (line 360)
   0.67%       │   0x00007f32a726331a:   mov    %r9d,%edx
   1.29%       │   0x00007f32a726331d:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.TimSort::countRunAndMakeAscending@102 (line 360)
               │   0x00007f32a7263321:   movabs $0x7f322b000000,%rax
   0.40%       │   0x00007f32a726332b:   lea    (%rax,%r11,1),%r11
   0.62%       │   0x00007f32a726332f:   shl    $0x3,%r10
   1.13%       │   0x00007f32a7263333:   cmp    -0xc9a(%rip),%r11        # 0x00007f32a72626a0
               │                                                             ;   {section_word}
          ╭    │   0x00007f32a726333a:   je     0x00007f32a7263352
          │    │   0x00007f32a7263340:   cmp    -0xc9f(%rip),%r11        # 0x00007f32a72626a8
          │    │                                                             ;   {section_word}
          │    │   0x00007f32a7263347:   je     0x00007f32a726347e
          │    │   0x00007f32a726334d:   jmp    0x00007f32a7263f35
   0.39%  ↘    │   0x00007f32a7263352:   test   %ebx,%ebx
           ╭   │   0x00007f32a7263354:   je     0x00007f32a726342e
   0.70%   │   │   0x00007f32a726335a:   mov    0x8(,%rbx,8),%eax
   1.12%   │   │   0x00007f32a7263361:   movabs $0x7f322b000000,%rbp
           │   │   0x00007f32a726336b:   lea    0x0(%rbp,%rax,1),%rax
   0.54%   │   │↗  0x00007f32a7263370:   test   %ebx,%ebx
           │╭  ││  0x00007f32a7263372:   je     0x00007f32a7263389           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@1 (line 34)
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f322c02b6c0::applyAsDouble@1
           ││  ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
           ││  ││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           ││  ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           ││  ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.65%   ││  ││  0x00007f32a7263378:   nopl   0x0(%rax,%rax,1)
   1.14%   ││  ││  0x00007f32a7263380:   cmp    %rax,%r14
           ││  ││  0x00007f32a7263383:   jne    0x00007f32a7263d27           ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rsi=Oop r8=Oop r9=NarrowOop r10=Oop [40]=Oop [48]=Oop }
           ││  ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                            ; - (reexecute) java.util.TimSort::countRunAndMakeAscending@92 (line 360)
   0.00%   │↘  ││  0x00007f32a7263389:   vcvtsi2sdl 0x10(,%rbx,8),%xmm0,%xmm0; implicit exception: dispatches to 0x00007f32a726433c
   1.23%   │   ││  0x00007f32a7263392:   vcvtsi2sdl 0xc(,%rbx,8),%xmm1,%xmm1 ;*i2d {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@7 (line 34)
           │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f322c02b6c0::applyAsDouble@1
           │   ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
           │   ││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           │   ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │   ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   1.22%   │   ││  0x00007f32a726339b:   vdivsd %xmm0,%xmm1,%xmm0
   8.00%   │   ││  0x00007f32a726339f:   cmp    -0xd06(%rip),%r11        # 0x00007f32a72626a0
           │   ││                                                            ;   {section_word}
           │ ╭ ││  0x00007f32a72633a6:   je     0x00007f32a72633be
           │ │ ││  0x00007f32a72633ac:   cmp    -0xd0b(%rip),%r11        # 0x00007f32a72626a8
           │ │ ││                                                            ;   {section_word}
           │ │ ││  0x00007f32a72633b3:   je     0x00007f32a72634e5
           │ │ ││  0x00007f32a72633b9:   jmp    0x00007f32a7263fe5
   0.01%   │ ↘ ││  0x00007f32a72633be:   xchg   %ax,%ax
           │   ││  0x00007f32a72633c0:   test   %r9d,%r9d
           │   ││  0x00007f32a72633c3:   je     0x00007f32a726343a
   2.29%   │   ││  0x00007f32a72633c9:   mov    0x8(,%r9,8),%r11d
   1.06%   │   ││  0x00007f32a72633d1:   movabs $0x7f322b000000,%rbx
   0.00%   │   ││  0x00007f32a72633db:   lea    (%rbx,%r11,1),%r11
   0.09%   │   ││  0x00007f32a72633df:   nop
   2.15%   │   ││  0x00007f32a72633e0:   test   %r9d,%r9d
           │  ╭││  0x00007f32a72633e3:   je     0x00007f32a72633f2           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@1 (line 34)
           │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f322c02b6c0::applyAsDouble@1
           │  │││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
           │  │││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           │  │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │  │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
           │  │││  0x00007f32a72633e9:   cmp    %r11,%r14
           │  │││  0x00007f32a72633ec:   jne    0x00007f32a7263ec5           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop r10=Oop [40]=Oop [48]=Oop }
           │  │││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │  │││                                                            ; - (reexecute) java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@7 (line 536)
           │  │││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           │  │││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │  │││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.13%   │  ↘││  0x00007f32a72633f2:   vcvtsi2sdl 0x10(,%r9,8),%xmm1,%xmm1 ; implicit exception: dispatches to 0x00007f32a726435f
   2.95%   │   ││  0x00007f32a72633fc:   vcvtsi2sdl 0xc(,%r9,8),%xmm2,%xmm2  ;*i2d {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@7 (line 34)
           │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f322c02b6c0::applyAsDouble@1
           │   ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
           │   ││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           │   ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │   ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.27%   │   ││  0x00007f32a7263406:   vdivsd %xmm1,%xmm2,%xmm1            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@16 (line 34)
           │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f322c02b6c0::applyAsDouble@1
           │   ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@9 (line 536)
           │   ││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           │   ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │   ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
  10.92%   │   ││  0x00007f32a726340a:   vucomisd %xmm0,%xmm1
   4.46%   │   ││  0x00007f32a726340e:   ja     0x00007f32a7263533           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                            ; - java.lang.Double::compare@3 (line 1277)
           │   ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           │   ││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           │   ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │   ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   2.27%   │   ││  0x00007f32a7263414:   mov    %edi,%r10d
           │   ││  0x00007f32a7263417:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@117 (line 361)
           │   ││  0x00007f32a726341a:   vucomisd %xmm1,%xmm0
           │   ││  0x00007f32a726341e:   xchg   %ax,%ax
   2.40%   │   ││  0x00007f32a7263420:   jbe    0x00007f32a7263443           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                            ; - java.lang.Double::compare@11 (line 1279)
           │   ││                                                            ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@14 (line 536)
           │   ││                                                            ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
           │   ││                                                            ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
           │   ││                                                            ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
   0.60%   │   ││  0x00007f32a7263426:   mov    %r10d,%edi
   0.06%   │   ╰│  0x00007f32a7263429:   jmp    0x00007f32a72632e0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           │    │                                                            ; - java.util.TimSort::countRunAndMakeAscending@114 (line 360)
           ↘    │  0x00007f32a726342e:   mov    $0x0,%rax
                ╰  0x00007f32a7263435:   jmp    0x00007f32a7263370           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::lambda$knapsack$0@1 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack$$Lambda/0x00007f322c02b6c0::applyAsDouble@1
                                                                             ; - java.util.Comparator::lambda$comparingDouble$8dcf42ea$1@2 (line 536)
                                                                             ; - java.util.Comparator$$Lambda/0x00007f322c03adb0::compare@6
                                                                             ; - java.util.Collections$ReverseComparator2::compare@6 (line 5641)
                                                                             ; - java.util.TimSort::countRunAndMakeAscending@109 (line 360)
                   0x00007f32a726343a:   mov    $0x0,%r11
....................................................................................................
  54.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack, version 4, compile id 1058 

                    0x00007f32a7267b00:   movl   $0xe149961b,0x14(%r9)        ;   {oop(a &apos;java/lang/Object&apos;[0] {0x000000070a4cb0d8})}
                    0x00007f32a7267b08:   cmp    0x44(%rsp),%r11d
          ╭         0x00007f32a7267b0d:   jle    0x00007f32a7267c7d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@67 (line 41)
          │         0x00007f32a7267b13:   mov    $0x0,%r10d
          │         0x00007f32a7267b19:   mov    $0x0,%ebx
          │         0x00007f32a7267b1e:   mov    $0x1,%r11d
          │         0x00007f32a7267b24:   mov    0x44(%rsp),%ecx
          │         0x00007f32a7267b28:   nopl   0x0(%rax,%rax,1)             ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@37 (line 40)
   0.39%  │    ↗ ↗  0x00007f32a7267b30:   mov    0x10(%rdx),%edi              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │    │ │                                                            ; - java.util.ArrayList$Itr::hasNext@8 (line 1044)
          │    │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@39 (line 40)
   0.34%  │    │ │  0x00007f32a7267b33:   cmp    %r11d,%edi
          │╭   │ │  0x00007f32a7267b36:   je     0x00007f32a7267c53           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@44 (line 40)
   0.80%  ││   │ │  0x00007f32a7267b3c:   nopl   0x0(%rax)
   0.69%  ││   │ │  0x00007f32a7267b40:   cmp    0xc(%rdx),%esi
          ││   │ │  0x00007f32a7267b43:   jne    0x00007f32a7267e58           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1094)
          ││   │ │                                                            ; - java.util.ArrayList$Itr::next@1 (line 1049)
          ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.31%  ││   │ │  0x00007f32a7267b49:   cmp    %r11d,%edi
          ││   │ │  0x00007f32a7267b4c:   jle    0x00007f32a7267ede           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - java.util.ArrayList$Itr::next@17 (line 1051)
          ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.44%  ││   │ │  0x00007f32a7267b52:   mov    0x14(%rdx),%edi              ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r9=Oop [32]=Oop [40]=Oop }
          ││   │ │                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@37 (line 40)
   0.78%  ││   │ │  0x00007f32a7267b55:   mov    0xc(,%rdi,8),%eax            ; implicit exception: dispatches to 0x00007f32a7267fc6
   0.68%  ││   │ │  0x00007f32a7267b5c:   nopl   0x0(%rax)
   0.37%  ││   │ │  0x00007f32a7267b60:   cmp    %r11d,%eax
          ││   │ │  0x00007f32a7267b63:   jle    0x00007f32a7267e6a           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - java.util.ArrayList$Itr::next@39 (line 1054)
          ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.44%  ││   │ │  0x00007f32a7267b69:   cmp    %r11d,%eax
          ││   │ │  0x00007f32a7267b6c:   jbe    0x00007f32a7267ec9           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
          ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.76%  ││   │ │  0x00007f32a7267b72:   shl    $0x3,%rdi                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - java.util.ArrayList$Itr::next@32 (line 1053)
          ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.64%  ││   │ │  0x00007f32a7267b76:   mov    0x10(%rdi,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   │ │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
          ││   │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.57%  ││   │ │  0x00007f32a7267b7b:   nopl   0x0(%rax,%rax,1)
   0.44%  ││   │ │  0x00007f32a7267b80:   test   %edi,%edi
          ││╭  │ │  0x00007f32a7267b82:   je     0x00007f32a7267bdc
   0.84%  │││  │ │  0x00007f32a7267b88:   mov    0x8(,%rdi,8),%eax
  10.01%  │││  │ │  0x00007f32a7267b8f:   movabs $0x7f322b000000,%rbp
   0.19%  │││  │ │  0x00007f32a7267b99:   lea    0x0(%rbp,%rax,1),%rax
   3.65%  │││  │↗│  0x00007f32a7267b9e:   xchg   %ax,%ax
   0.40%  │││  │││  0x00007f32a7267ba0:   test   %edi,%edi
          │││╭ │││  0x00007f32a7267ba2:   je     0x00007f32a7267bb1
   0.41%  ││││ │││  0x00007f32a7267ba8:   cmp    %rax,%r8
          ││││ │││  0x00007f32a7267bab:   jne    0x00007f32a7267e05           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@54 (line 40)
   0.94%  │││↘ │││  0x00007f32a7267bb1:   mov    %r10d,%eax                   ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r9=Oop [32]=Oop [40]=Oop }
          │││  │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@37 (line 40)
   0.61%  │││  │││  0x00007f32a7267bb4:   add    0x10(,%rdi,8),%eax           ; implicit exception: dispatches to 0x00007f32a7267fed
   1.60%  │││  │││  0x00007f32a7267bbb:   mov    %r11d,%ebp
   0.34%  │││  │││  0x00007f32a7267bbe:   inc    %ebp                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││  │││                                                            ; - java.util.ArrayList$Itr::next@53 (line 1056)
          │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.76%  │││  │││  0x00007f32a7267bc0:   cmp    %ecx,%eax
          │││ ╭│││  0x00007f32a7267bc2:   jle    0x00007f32a7267be5           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@67 (line 41)
   0.66%  │││ ││││  0x00007f32a7267bc8:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rdx=Oop r9=Oop [32]=Oop [40]=Oop }
          │││ ││││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@37 (line 40)
   0.28%  │││ ││││  0x00007f32a7267bcf:   test   %eax,(%rdi)                  ;   {poll}
   0.40%  │││ ││││  0x00007f32a7267bd1:   mov    %r11d,%ebx
   0.66%  │││ ││││  0x00007f32a7267bd4:   mov    %ebp,%r11d
   0.65%  │││ │╰││  0x00007f32a7267bd7:   jmp    0x00007f32a7267b30           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@37 (line 40)
          ││↘ │ ││  0x00007f32a7267bdc:   mov    $0x0,%rax
          ││  │ ╰│  0x00007f32a7267be3:   jmp    0x00007f32a7267b9e           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@54 (line 40)
   0.16%  ││  ↘  │  0x00007f32a7267be5:   mov    %ebp,0x38(%rsp)
   0.03%  ││     │  0x00007f32a7267be9:   mov    %r11d,0x34(%rsp)
   0.00%  ││     │  0x00007f32a7267bee:   mov    %r10d,0x30(%rsp)
   0.02%  ││     │  0x00007f32a7267bf3:   mov    %edi,%ebx
   0.15%  ││     │  0x00007f32a7267bf5:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@49 (line 40)
   0.04%  ││     │  0x00007f32a7267bf9:   mov    %r9,%rsi
   0.00%  ││     │  0x00007f32a7267bfc:   mov    %rbx,%rdx                    ;*invokeinterface add {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
   0.01%  ││     │  0x00007f32a7267bff:   mov    %rbx,0x18(%rsp)
   0.14%  ││     │  0x00007f32a7267c04:   mov    %edi,0x14(%rsp)
   0.03%  ││     │  0x00007f32a7267c08:   data16 xchg %ax,%ax
   0.01%  ││     │  0x00007f32a7267c0b:   call   0x00007f32a72566c0           ; ImmutableOopMap {[20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop }
          ││     │                                                            ;*invokeinterface add {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@73 (line 42)
          ││     │                                                            ;   {optimized virtual_call}
   0.04%  ││     │  0x00007f32a7267c10:   nopl   0x9000580(%rax,%rax,1)       ;   {other}
   0.01%  ││     │  0x00007f32a7267c18:   mov    0x30(%rsp),%r10d
   0.16%  ││     │  0x00007f32a7267c1d:   mov    0x14(%rsp),%edi
   0.04%  ││     │  0x00007f32a7267c21:   add    0x10(,%rdi,8),%r10d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@85 (line 43)
   0.01%  ││     │  0x00007f32a7267c29:   mov    0x34(%rsp),%ebx
   0.03%  ││     │  0x00007f32a7267c2d:   mov    0x38(%rsp),%r11d
   0.11%  ││     │  0x00007f32a7267c32:   mov    0x20(%rsp),%r9
   0.02%  ││     │  0x00007f32a7267c37:   movabs $0x7f322c02aca8,%r8          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/Item&apos;)}
   0.01%  ││     │  0x00007f32a7267c41:   mov    0x3c(%rsp),%esi
   0.02%  ││     │  0x00007f32a7267c45:   mov    0x28(%rsp),%rdx
   0.17%  ││     │  0x00007f32a7267c4a:   mov    0x44(%rsp),%ecx
   0.05%  ││     ╰  0x00007f32a7267c4e:   jmp    0x00007f32a7267b30           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@87 (line 45)
          │↘        0x00007f32a7267c53:   mov    %r9,%rax                     ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@91 (line 47)
          │         0x00007f32a7267c56:   mov    0x50(%rsp),%rbp
   0.00%  │         0x00007f32a7267c5b:   add    $0x58,%rsp
          │         0x00007f32a7267c5f:   nop
          │         0x00007f32a7267c60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │         0x00007f32a7267c67:   ja     0x00007f32a7267f26
          │         0x00007f32a7267c6d:   vzeroupper 
          │         0x00007f32a7267c70:   ret    
          │         0x00007f32a7267c71:   mov    $0x0,%r11
          │         0x00007f32a7267c78:   jmp    0x00007f32a7267a84           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack@54 (line 40)
          ↘         0x00007f32a7267c7d:   mov    %r10d,%r11d
                    0x00007f32a7267c80:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  31.32%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.74%       jvmci, level 4  java.util.TimSort::countRunAndMakeAscending, version 3, compile id 1052 
  31.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack, version 4, compile id 1058 
   7.78%       jvmci, level 4  java.util.TimSort::countRunAndMakeAscending, version 3, compile id 1052 
   3.02%       jvmci, level 4  java.util.ArrayList::add, version 5, compile id 1050 
   0.34%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1066 
   0.29%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.20%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%           ld-2.31.so  __tls_get_addr 
   1.45%  <...other 412 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.53%       jvmci, level 4  java.util.TimSort::countRunAndMakeAscending, version 3, compile id 1052 
  31.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack::knapsack, version 4, compile id 1058 
   3.03%       jvmci, level 4  java.util.ArrayList::add, version 5, compile id 1050 
   1.72%               kernel  [unknown] 
   0.41%       jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1066 
   0.33%         runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.05%                       <unknown> 
   0.04%            libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%           ld-2.31.so  __tls_get_addr 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       jvmci, level 4  java.util.TimSort::sort, version 3, compile id 1077 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%  libjvmcicompiler.so  java.lang.AbstractStringBuilder::append 
   0.35%  <...other 147 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.33%       jvmci, level 4
   1.72%               kernel
   0.33%         runtime stub
   0.24%            libjvm.so
   0.13%         libc-2.31.so
   0.11%  libjvmcicompiler.so
   0.05%                     
   0.03%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.01%   libpthread-2.31.so
   0.01%          c1, level 3
   0.01%               [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:50

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

Benchmark                                Mode  Cnt    Score    Error  Units
KnapsackBenchmark.dynamic                avgt    5  863.134 ± 19.842  ms/op
KnapsackBenchmark.dynamic:asm            avgt           NaN             ---
KnapsackBenchmark.greedy_fractional      avgt    5    0.579 ±  0.005  ms/op
KnapsackBenchmark.greedy_fractional:asm  avgt           NaN             ---
KnapsackBenchmark.greedy_zero_one        avgt    5    0.834 ±  0.002  ms/op
KnapsackBenchmark.greedy_zero_one:asm    avgt           NaN             ---
