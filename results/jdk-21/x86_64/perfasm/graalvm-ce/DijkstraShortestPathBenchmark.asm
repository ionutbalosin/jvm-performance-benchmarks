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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap
# Parameters: (nodes = 8192)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 505.360 ms/op
# Warmup Iteration   2: 480.175 ms/op
# Warmup Iteration   3: 480.279 ms/op
# Warmup Iteration   4: 480.515 ms/op
# Warmup Iteration   5: 480.527 ms/op
Iteration   1: 490.098 ms/op
Iteration   2: 482.758 ms/op
Iteration   3: 482.344 ms/op
Iteration   4: 483.540 ms/op
Iteration   5: 482.525 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap":
  484.253 ±(99.9%) 12.705 ms/op [Average]
  (min, avg, max) = (482.344, 484.253, 490.098), stdev = 3.299
  CI (99.9%): [471.548, 496.958] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap:asm":
PrintAssembly processed: 260472 total address lines.
Perf output processed (skipped 66.564 seconds):
 Column 1: cycles (59663 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1038 

                 0x00007f15c7271489:   mov    %r8d,0x14(%rsp)
                 0x00007f15c727148e:   mov    %ebx,0x4c(%rsp)
                 0x00007f15c7271492:   mov    %r8d,%ebp
                 0x00007f15c7271495:   shl    $0x3,%rbp                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@97 (line 81)
                 0x00007f15c7271499:   mov    %rbp,(%rsp)
                 0x00007f15c727149d:   data16 xchg %ax,%ax
                 0x00007f15c72714a0:   cmp    0x10(%rsi,%r9,4),%eax
                 0x00007f15c72714a5:   jl     0x00007f15c72719b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@147 (line 83)
   0.00%         0x00007f15c72714ab:   movl   $0x0,0x34(%rsp)
                 0x00007f15c72714b3:   mov    $0x1,%r11d
                 0x00007f15c72714b9:   nopl   0x0(%rax)                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   0.04%     ↗   0x00007f15c72714c0:   mov    0x10(,%r8,8),%esi            ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.ArrayList$Itr::hasNext@8 (line 1044)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@105 (line 81)
             │                                                             ;   {no_reloc}
   1.92%     │   0x00007f15c72714c8:   cmp    %r11d,%esi
             │   0x00007f15c72714cb:   je     0x00007f15c7271634           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@110 (line 81)
   0.04%     │   0x00007f15c72714d1:   cmp    0xc(,%r8,8),%ebx
             │   0x00007f15c72714d9:   jne    0x00007f15c7271d3e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1094)
             │                                                             ; - java.util.ArrayList$Itr::next@1 (line 1049)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   2.61%     │   0x00007f15c72714df:   nop
   1.93%     │   0x00007f15c72714e0:   cmp    %r11d,%esi
             │   0x00007f15c72714e3:   jle    0x00007f15c7271eff           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.ArrayList$Itr::next@17 (line 1051)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.06%     │   0x00007f15c72714e9:   mov    0x14(,%r8,8),%esi            ; ImmutableOopMap {rsi=NarrowOop r8=NarrowOop r14=Oop [0]=Oop [20]=NarrowOop [32]=Oop }
             │                                                             ;*aload {reexecute=1 rethrow=0 return_oop=0}
             │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   2.51%     │   0x00007f15c72714f1:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f15c7272179
   0.05%     │   0x00007f15c72714f8:   nopl   0x0(%rax,%rax,1)
   2.00%     │   0x00007f15c7271500:   cmp    %r11d,%edx
             │   0x00007f15c7271503:   jle    0x00007f15c7271cd8           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.ArrayList$Itr::next@39 (line 1054)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.06%     │   0x00007f15c7271509:   cmp    %r11d,%edx
             │   0x00007f15c727150c:   jbe    0x00007f15c7271db3           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.ArrayList$Itr::next@64 (line 1057)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   2.46%     │   0x00007f15c7271512:   shl    $0x3,%rsi                    ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.ArrayList$Itr::next@32 (line 1053)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.06%     │   0x00007f15c7271516:   mov    0x10(%rsi,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.ArrayList$Itr::next@64 (line 1057)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   2.98%     │   0x00007f15c727151b:   nopl   0x0(%rax,%rax,1)
   0.05%     │   0x00007f15c7271520:   test   %esi,%esi
          ╭  │   0x00007f15c7271522:   je     0x00007f15c72715a0
   2.55%  │  │   0x00007f15c7271528:   mov    0x8(,%rsi,8),%edx
  32.13%  │  │   0x00007f15c727152f:   movabs $0x7f154b000000,%rax
   1.70%  │  │   0x00007f15c7271539:   lea    (%rax,%rdx,1),%rdx
   0.40%  │  │↗  0x00007f15c727153d:   data16 xchg %ax,%ax
   2.34%  │  ││  0x00007f15c7271540:   test   %esi,%esi
          │╭ ││  0x00007f15c7271542:   je     0x00007f15c7271551           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@120 (line 81)
   0.03%  ││ ││  0x00007f15c7271548:   cmp    %rdx,%rdi
          ││ ││  0x00007f15c727154b:   jne    0x00007f15c7271c2e           ; ImmutableOopMap {rsi=NarrowOop r8=NarrowOop r14=Oop [0]=Oop [20]=NarrowOop [32]=Oop }
          ││ ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          ││ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   2.21%  │↘ ││  0x00007f15c7271551:   mov    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f15c727219c
   1.13%  │  ││  0x00007f15c7271558:   mov    %r10d,%eax
   2.12%  │  ││  0x00007f15c727155b:   add    0x10(,%rsi,8),%eax           ;*getfield distance {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@129 (line 82)
   0.42%  │  ││  0x00007f15c7271562:   mov    0x10(%r14),%esi              ; ImmutableOopMap {rsi=NarrowOop r8=NarrowOop r14=Oop [0]=Oop [20]=NarrowOop [32]=Oop }
          │  ││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   1.84%  │  ││  0x00007f15c7271566:   cmp    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f15c72721bf
          │  ││  0x00007f15c727156d:   jae    0x00007f15c7271e99           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@146 (line 83)
   2.49%  │  ││  0x00007f15c7271573:   shl    $0x3,%rsi                    ;*getfield distances {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@138 (line 83)
   0.23%  │  ││  0x00007f15c7271577:   mov    %r11d,%r13d
   1.76%  │  ││  0x00007f15c727157a:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.ArrayList$Itr::next@53 (line 1056)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.39%  │  ││  0x00007f15c727157d:   data16 xchg %ax,%ax
   2.14%  │  ││  0x00007f15c7271580:   cmp    0x10(%rsi,%rdx,4),%eax
          │ ╭││  0x00007f15c7271584:   jl     0x00007f15c72715a9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@147 (line 83)
   5.89%  │ │││  0x00007f15c727158a:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r8=NarrowOop r14=Oop [0]=Oop [20]=NarrowOop [32]=Oop }
          │ │││                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
          │ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
   0.05%  │ │││  0x00007f15c7271591:   test   %eax,(%rsi)                  ;   {poll}
   2.11%  │ │││  0x00007f15c7271593:   mov    %r11d,0x34(%rsp)
   0.06%  │ │││  0x00007f15c7271598:   mov    %r13d,%r11d
   2.46%  │ │╰│  0x00007f15c727159b:   jmp    0x00007f15c72714c0           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
          ↘ │ │  0x00007f15c72715a0:   mov    $0x0,%rdx
            │ ╰  0x00007f15c72715a7:   jmp    0x00007f15c727153d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@120 (line 81)
   0.01%    ↘    0x00007f15c72715a9:   mov    %r13d,0x30(%rsp)
   0.02%         0x00007f15c72715ae:   mov    %r11d,0x2c(%rsp)
   0.01%         0x00007f15c72715b3:   mov    0x18(%r14),%ecx              ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@103 (line 81)
                 0x00007f15c72715b7:   test   %eax,0x0(,%rcx,8)            ; implicit exception: deoptimizes
                                                                           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r14=Oop [0]=Oop [20]=NarrowOop [32]=Oop }
   0.01%         0x00007f15c72715be:   mov    %eax,0x10(%rsi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@161 (line 84)
                 0x00007f15c72715c2:   shl    $0x3,%rcx                    ;*getfield objectPool {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@163 (line 86)
                 0x00007f15c72715c6:   mov    %rcx,%rsi                    ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
   0.00%         0x00007f15c72715c9:   mov    %eax,%ecx
   0.00%         0x00007f15c72715cb:   call   0x00007f15c6c2f380           ; ImmutableOopMap {[0]=Oop [20]=NarrowOop [32]=Oop }
                                                                           ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
                                                                           ;   {optimized virtual_call}
                 0x00007f15c72715d0:   nopl   0x170009c0(%rax,%rax,1)      ;   {other}
                 0x00007f15c72715d8:   mov    0x20(%rsp),%rsi
                 0x00007f15c72715dd:   mov    0x14(%rsi),%edx              ;*astore {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@176 (line 86)
                 0x00007f15c72715e0:   test   %eax,0x0(,%rdx,8)            ; implicit exception: deoptimizes
                                                                           ; ImmutableOopMap {rax=Oop rdx=NarrowOop rsi=Oop [0]=Oop [20]=NarrowOop [32]=Oop }
                 0x00007f15c72715e7:   shl    $0x3,%rdx                    ;*getfield queue {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  81.24%  <total for region 1>

....[Hottest Regions]...............................................................................
  81.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1038 
   1.96%            libjvm.so  OopOopIterateBoundedDispatch<G1CMOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   1.87%            libjvm.so  OopOopIterateDispatch<G1CMOopClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.63%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.42%       jvmci, level 4  java.util.PriorityQueue::siftDownComparable, version 5, compile id 1037 
   1.18%            libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   1.15%            libjvm.so  G1CMTask::do_marking_step 
   0.97%            libjvm.so  G1CMTask::process_grey_task_entry<true> 
   0.71%            libjvm.so  G1CMTask::drain_global_stack 
   0.57%               kernel  [unknown] 
   0.56%            libjvm.so  G1CMTask::drain_local_queue 
   0.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1038 
   0.43%            libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   0.38%            libjvm.so  ClassLoaderData::oops_do 
   0.30%            libjvm.so  G1CMTask::process_grey_task_entry<true> 
   0.26%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<ObjArrayKlass, narrowOop> 
   0.24%            libjvm.so  BitMap::find_first_bit_impl<0ul, false> 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1038 
   0.15%            libjvm.so  OopOopIterateDispatch<G1RootRegionScanClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   0.12%            libjvm.so  oopDesc::size_given_klass 
   4.21%  <...other 471 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 10, compile id 1038 
   2.12%            libjvm.so  OopOopIterateBoundedDispatch<G1CMOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   1.98%            libjvm.so  OopOopIterateDispatch<G1CMOopClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.98%               kernel  [unknown] 
   1.72%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.68%            libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   1.67%       jvmci, level 4  java.util.PriorityQueue::siftDownComparable, version 5, compile id 1037 
   1.38%            libjvm.so  G1CMTask::process_grey_task_entry<true> 
   1.27%            libjvm.so  G1CMTask::do_marking_step 
   0.71%            libjvm.so  G1CMTask::drain_global_stack 
   0.56%            libjvm.so  G1CMTask::drain_local_queue 
   0.47%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.38%            libjvm.so  ClassLoaderData::oops_do 
   0.26%            libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<ObjArrayKlass, narrowOop> 
   0.24%            libjvm.so  BitMap::find_first_bit_impl<0ul, false> 
   0.22%       jvmci, level 4  java.util.PriorityQueue::siftUpComparable, version 4, compile id 1029 
   0.19%       jvmci, level 4  java.util.concurrent.ConcurrentLinkedQueue::poll, version 4, compile id 1028 
   0.15%            libjvm.so  OopOopIterateDispatch<G1RootRegionScanClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   0.12%            libjvm.so  oopDesc::size_given_klass 
   0.11%            libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.63%  <...other 116 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  84.35%       jvmci, level 4
  13.49%            libjvm.so
   1.98%               kernel
   0.08%         libc-2.31.so
   0.03%                     
   0.03%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix
# Parameters: (nodes = 8192)

# Run progress: 50.00% complete, ETA 00:02:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 249.652 ms/op
# Warmup Iteration   2: 248.124 ms/op
# Warmup Iteration   3: 247.936 ms/op
# Warmup Iteration   4: 248.033 ms/op
# Warmup Iteration   5: 247.774 ms/op
Iteration   1: 247.815 ms/op
Iteration   2: 248.023 ms/op
Iteration   3: 247.789 ms/op
Iteration   4: 248.153 ms/op
Iteration   5: 247.844 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix":
  247.925 ±(99.9%) 0.605 ms/op [Average]
  (min, avg, max) = (247.789, 247.925, 248.153), stdev = 0.157
  CI (99.9%): [247.320, 248.529] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix:asm":
PrintAssembly processed: 252459 total address lines.
Perf output processed (skipped 66.668 seconds):
 Column 1: cycles (51527 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1019 

   0.00%          0x00007f00a726469b:   nopl   0x0(%rax,%rax,1)
                  0x00007f00a72646a0:   cmp    %esi,%ecx
                  0x00007f00a72646a2:   jbe    0x00007f00a7264aba           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@105 (line 68)
                  0x00007f00a72646a8:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@82 (line 65)
                  0x00007f00a72646ac:   mov    $0x1,%edi
                  0x00007f00a72646b1:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
                  0x00007f00a72646bc:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@58 (line 64)
   7.69%     ↗↗↗  0x00007f00a72646c0:   cmp    %edi,%ebp
          ╭  │││  0x00007f00a72646c2:   jle    0x00007f00a726471c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@64 (line 64)
   1.54%  │  │││  0x00007f00a72646c8:   mov    %edi,%edx
   1.86%  │  │││  0x00007f00a72646ca:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@139 (line 64)
   1.39%  │  │││  0x00007f00a72646cc:   cmpb   $0x0,0x10(%rdi,%r10,8)
   8.79%  │╭ │││  0x00007f00a72646d2:   jne    0x00007f00a726470f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   5.28%  ││ │││  0x00007f00a72646d8:   mov    0x10(%rbx,%rdi,4),%r13d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@114 (line 68)
   9.67%  ││ │││  0x00007f00a72646dd:   data16 xchg %ax,%ax
   1.17%  ││ │││  0x00007f00a72646e0:   test   %r13d,%r13d
          ││ │││  0x00007f00a72646e3:   je     0x00007f00a7264add           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   1.98%  ││ │││  0x00007f00a72646e9:   mov    0x10(%rax,%rsi,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@105 (line 68)
   1.20%  ││ │││  0x00007f00a72646ee:   cmp    $0x7fffffff,%r11d
          ││ │││  0x00007f00a72646f5:   je     0x00007f00a7264add           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   1.25%  ││ │││  0x00007f00a72646fb:   add    %r11d,%r13d                  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
   1.16%  ││ │││  0x00007f00a72646fe:   xchg   %ax,%ax
   1.58%  ││ │││  0x00007f00a7264700:   cmp    0x10(%rax,%rdi,4),%r13d
          ││╭│││  0x00007f00a7264705:   jl     0x00007f00a7264713           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
   3.46%  ││││││  0x00007f00a726470b:   mov    %edx,%edi
   1.17%  │││╰││  0x00007f00a726470d:   jmp    0x00007f00a72646c0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@139 (line 64)
   2.77%  │↘│ ││  0x00007f00a726470f:   mov    %edx,%edi
   0.52%  │ │ ╰│  0x00007f00a7264711:   jmp    0x00007f00a72646c0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@58 (line 64)
   0.03%  │ ↘  │  0x00007f00a7264713:   mov    %r13d,0x10(%rax,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
   0.03%  │    │  0x00007f00a7264718:   mov    %edx,%edi
          │    ╰  0x00007f00a726471a:   jmp    0x00007f00a72646c0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@139 (line 64)
   0.00%  ↘       0x00007f00a726471c:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rax=Oop r8=Oop r9=NarrowOop r10=NarrowOop [8]=Oop }
                                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@145 (line 60)
   0.01%          0x00007f00a7264723:   test   %eax,(%r11)                  ;   {poll}
   0.01%          0x00007f00a7264726:   mov    0x14(%rsp),%edi
                  0x00007f00a726472a:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@145 (line 60)
                  0x00007f00a726472c:   mov    0x20(%rsp),%r13d
   0.00%          0x00007f00a7264731:   mov    0x24(%rsp),%r11d             ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@26 (line 60)
                  0x00007f00a7264736:   cmp    %edi,%r13d
                  0x00007f00a7264739:   jg     0x00007f00a72645c0
                  0x00007f00a726473f:   nop
                  0x00007f00a7264740:   jmp    0x00007f00a72647c5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@33 (line 60)
                  0x00007f00a7264745:   cmp    %esi,%r14d
                  0x00007f00a7264748:   jbe    0x00007f00a7264b30           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@82 (line 65)
                  0x00007f00a726474e:   mov    0x10(%r8,%rsi,4),%ebx        ; ImmutableOopMap {rax=Oop rbx=NarrowOop r8=Oop r9=NarrowOop r10=NarrowOop [8]=Oop }
....................................................................................................
  52.55%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1019 

                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                   0x00007f00a72645db:   nopl   0x0(%rax,%rax,1)
                   0x00007f00a72645e0:   cmp    $0x7fffffff,%edx
                   0x00007f00a72645e6:   jne    0x00007f00a72647bb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                   0x00007f00a72645ec:   mov    $0xffffffff,%esi
                   0x00007f00a72645f1:   mov    $0x7fffffff,%edx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.00%           0x00007f00a72645f6:   mov    $0x1,%r13d
                   0x00007f00a72645fc:   nopl   0x0(%rax)                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@8 (line 83)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   7.99%     ↗↗↗   0x00007f00a7264600:   cmp    %r13d,%ecx
          ╭  │││   0x00007f00a7264603:   jle    0x00007f00a726463c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@12 (line 83)
          │  │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.04%  │  │││   0x00007f00a7264609:   mov    %r13d,%edi
   2.41%  │  │││   0x00007f00a726460c:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │  │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.43%  │  │││   0x00007f00a726460e:   cmpb   $0x0,0x10(%r13,%r10,8)
   9.16%  │╭ │││   0x00007f00a7264614:   jne    0x00007f00a726462d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          ││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   6.39%  ││ │││   0x00007f00a726461a:   mov    0x10(%rax,%r13,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          ││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   7.34%  ││ │││   0x00007f00a726461f:   nop
   0.95%  ││ │││   0x00007f00a7264620:   cmp    %ebx,%edx
          ││╭│││   0x00007f00a7264622:   jg     0x00007f00a7264632           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
          ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.33%  ││││││   0x00007f00a7264628:   mov    %edi,%r13d
   1.18%  │││╰││   0x00007f00a726462b:   jmp    0x00007f00a7264600           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   4.50%  │↘│ ││   0x00007f00a726462d:   mov    %edi,%r13d
   0.41%  │ │ ╰│   0x00007f00a7264630:   jmp    0x00007f00a7264600           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@8 (line 83)
          │ │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.03%  │ ↘  │   0x00007f00a7264632:   mov    %r13d,%esi
   0.01%  │    │   0x00007f00a7264635:   mov    %ebx,%edx
          │    │   0x00007f00a7264637:   mov    %edi,%r13d
          │    ╰   0x00007f00a726463a:   jmp    0x00007f00a7264600           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%  ↘        0x00007f00a726463c:   nopl   0x0(%rax)
                   0x00007f00a7264640:   cmp    %esi,%r11d
                   0x00007f00a7264643:   jbe    0x00007f00a7264bbc
   0.01%           0x00007f00a7264649:   movb   $0x1,0x10(%rsi,%r10,8)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@54 (line 62)
   0.01%           0x00007f00a726464f:   cmpb   $0x0,0x10(,%r10,8)
   0.01%           0x00007f00a7264658:   je     0x00007f00a7264745           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
                   0x00007f00a726465e:   xchg   %ax,%ax
                   0x00007f00a7264660:   cmp    %esi,%r14d
                   0x00007f00a7264663:   jbe    0x00007f00a7264aba           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@82 (line 65)
                   0x00007f00a7264669:   mov    0x10(%r8,%rsi,4),%ebx        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@58 (line 64)
   0.01%           0x00007f00a726466e:   test   %eax,0x0(,%rbx,8)            ; implicit exception: deoptimizes
                                                                             ; ImmutableOopMap {rax=Oop rbx=NarrowOop r8=Oop r9=NarrowOop r10=NarrowOop [8]=Oop }
   0.28%           0x00007f00a7264675:   cmp    $0x2,%ebp
                ╭  0x00007f00a7264678:   jl     0x00007f00a726469b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@114 (line 68)
                │  0x00007f00a726467e:   mov    0xc(,%rbx,8),%edi            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   0.01%        │  0x00007f00a7264685:   mov    %edi,%edx
                │  0x00007f00a7264687:   cmp    0x18(%rsp),%rdx
                │  0x00007f00a726468c:   jbe    0x00007f00a7264aba
                │  0x00007f00a7264692:   cmp    $0x2,%edi
                │  0x00007f00a7264695:   jb     0x00007f00a7264aba           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@114 (line 68)
   0.00%        ↘  0x00007f00a726469b:   nopl   0x0(%rax,%rax,1)
                   0x00007f00a72646a0:   cmp    %esi,%ecx
                   0x00007f00a72646a2:   jbe    0x00007f00a7264aba           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@105 (line 68)
                   0x00007f00a72646a8:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@82 (line 65)
                   0x00007f00a72646ac:   mov    $0x1,%edi
                   0x00007f00a72646b1:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
                   0x00007f00a72646bc:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@58 (line 64)
....................................................................................................
  45.51%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1019 
  45.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1019 
   0.30%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.98%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 1019 
   1.51%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.15%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%      jvmci, level 4
   1.51%              kernel
   0.14%           libjvm.so
   0.11%                    
   0.10%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:02

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

Benchmark                                                     (nodes)  Mode  Cnt    Score    Error  Units
DijkstraShortestPathBenchmark.adjacency_list_binary_heap         8192  avgt    5  484.253 ± 12.705  ms/op
DijkstraShortestPathBenchmark.adjacency_list_binary_heap:asm     8192  avgt           NaN             ---
DijkstraShortestPathBenchmark.adjacency_matrix                   8192  avgt    5  247.925 ±  0.605  ms/op
DijkstraShortestPathBenchmark.adjacency_matrix:asm               8192  avgt           NaN             ---
