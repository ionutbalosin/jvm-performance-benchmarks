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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap
# Parameters: (nodes = 8192)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 514.197 ms/op
# Warmup Iteration   2: 500.110 ms/op
# Warmup Iteration   3: 499.811 ms/op
# Warmup Iteration   4: 505.732 ms/op
# Warmup Iteration   5: 505.385 ms/op
Iteration   1: 519.018 ms/op
Iteration   2: 515.205 ms/op
Iteration   3: 518.770 ms/op
Iteration   4: 518.697 ms/op
Iteration   5: 518.920 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap":
  518.122 ±(99.9%) 6.298 ms/op [Average]
  (min, avg, max) = (515.205, 518.122, 519.018), stdev = 1.636
  CI (99.9%): [511.824, 524.420] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_list_binary_heap:asm":
PrintAssembly processed: 168080 total address lines.
Perf output processed (skipped 63.105 seconds):
 Column 1: cycles (60549 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 7, compile id 674 

                                                                        ; - java.util.PriorityQueue::siftUp@29 (line 639)
                                                                        ; - java.util.PriorityQueue::offer@46 (line 330)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@184 (line 87)
              0x00007faf9065d59e:   mov    %ebx,%r8d
              0x00007faf9065d5a1:   jmp    0x00007faf9065d8c4
              0x00007faf9065d5a6:   mov    %ebx,%r8d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.PriorityQueue::siftUpComparable@33 (line 648)
                                                                        ; - java.util.PriorityQueue::siftUp@29 (line 639)
                                                                        ; - java.util.PriorityQueue::offer@46 (line 330)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@184 (line 87)
   0.00%      0x00007faf9065d5a9:   mov    0xc(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007faf9065eb84
   0.00%      0x00007faf9065d5ae:   cmp    %r10d,%r8d
              0x00007faf9065d5b1:   jae    0x00007faf9065df30
   0.00%      0x00007faf9065d5b7:   mov    0x8(%r12,%rbp,8),%r10d
   0.00%      0x00007faf9065d5bc:   nopl   0x0(%rax)
              0x00007faf9065d5c0:   cmp    $0x1258,%r10d                ;   {metadata(&apos;java/lang/Object&apos;[])}
              0x00007faf9065d5c7:   jne    0x00007faf9065df60           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.PriorityQueue::siftUpComparable@50 (line 652)
                                                                        ; - java.util.PriorityQueue::siftUp@29 (line 639)
                                                                        ; - java.util.PriorityQueue::offer@46 (line 330)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@184 (line 87)
              0x00007faf9065d5cd:   lea    (%r12,%rbp,8),%r10           ;*getfield queue {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.PriorityQueue::siftUp@26 (line 639)
                                                                        ; - java.util.PriorityQueue::offer@46 (line 330)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@184 (line 87)
              0x00007faf9065d5d1:   lea    0x10(%r10,%r8,4),%rbx        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::fill@17 (line 3182)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@6 (line 61)
   0.00%      0x00007faf9065d5d6:   data16 nopw 0x0(%rax,%rax,1)
   0.00%      0x00007faf9065d5e0:   cmpb   $0x0,0x40(%r15)
   0.01%      0x00007faf9065d5e5:   jne    0x00007faf9065d9df
              0x00007faf9065d5eb:   mov    0x28(%rsp),%r11
   0.00%      0x00007faf9065d5f0:   mov    %r11,%r10
   0.00%      0x00007faf9065d5f3:   mov    %r11,%r8
   0.00%      0x00007faf9065d5f6:   shr    $0x3,%r8
   0.00%      0x00007faf9065d5fa:   mov    %r8d,(%rbx)
              0x00007faf9065d5fd:   mov    %rbx,%r11
              0x00007faf9065d600:   xor    %r11,%r10
   0.00%      0x00007faf9065d603:   shr    $0x15,%r10
              0x00007faf9065d607:   test   %r10,%r10
          ╭   0x00007faf9065d60a:   je     0x00007faf9065d629
   0.00%  │   0x00007faf9065d60c:   shr    $0x9,%r11
          │   0x00007faf9065d610:   movabs $0x7faf838ed000,%rdi
          │   0x00007faf9065d61a:   add    %r11,%rdi
          │   0x00007faf9065d61d:   data16 xchg %ax,%ax
   0.00%  │   0x00007faf9065d620:   cmpb   $0x2,(%rdi)
          │   0x00007faf9065d623:   jne    0x00007faf9065da15           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.PriorityQueue::siftUpComparable@50 (line 652)
          │                                                             ; - java.util.PriorityQueue::siftUp@29 (line 639)
          │                                                             ; - java.util.PriorityQueue::offer@46 (line 330)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@184 (line 87)
   0.00%  ↘   0x00007faf9065d629:   mov    0xc(%rsp),%r11d
              0x00007faf9065d62e:   mov    0x8(%rsp),%r10d
              0x00007faf9065d633:   mov    %r10d,0xc(%r12,%r11,8)       ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.PriorityQueue::offer@53 (line 331)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@184 (line 87)
              0x00007faf9065d638:   mov    0x10(%rsp),%ebp
   0.00%      0x00007faf9065d63c:   mov    0x40(%rsp),%r11d
   0.00%      0x00007faf9065d641:   mov    0x3c(%rsp),%r8d
              0x00007faf9065d646:   mov    0x18(%rsp),%rdx
   0.00%      0x00007faf9065d64b:   mov    0x38(%rsp),%r9d
              0x00007faf9065d650:   mov    0x34(%rsp),%ecx              ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::fill@17 (line 3182)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@6 (line 61)
   2.36%   ↗  0x00007faf9065d654:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=NarrowOop rdx=Oop [0]=Oop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@188 (line 89)
   0.02%   │  0x00007faf9065d65b:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@188 (line 89)
           │                                                            ;   {poll}
   1.89%   │  0x00007faf9065d65e:   mov    0x10(%r12,%r11,8),%r10d
   0.01%   │  0x00007faf9065d663:   cmp    %r10d,%ecx
           │  0x00007faf9065d666:   je     0x00007faf9065d3c5
   2.39%   │  0x00007faf9065d66c:   mov    %r9d,%edi
   0.02%   │  0x00007faf9065d66f:   mov    %ecx,%r9d                    ;*getfield cursor {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@5 (line 1050)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.83%   │  0x00007faf9065d672:   mov    0xc(%r12,%r11,8),%r10d       ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1094)
           │                                                            ; - java.util.ArrayList$Itr::next@1 (line 1049)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.01%   │  0x00007faf9065d677:   cmp    %r8d,%r10d
   2.39%   │  0x00007faf9065d67a:   nopw   0x0(%rax,%rax,1)
   0.01%   │  0x00007faf9065d680:   jne    0x00007faf9065dd78           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1094)
           │                                                            ; - java.util.ArrayList$Itr::next@1 (line 1049)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.86%   │  0x00007faf9065d686:   mov    0x10(%r12,%r11,8),%r10d      ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@14 (line 1051)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.01%   │  0x00007faf9065d68b:   cmp    %r10d,%r9d
           │  0x00007faf9065d68e:   jge    0x00007faf9065dda8           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@17 (line 1051)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   2.35%   │  0x00007faf9065d694:   mov    0x14(%r12,%r11,8),%r10d      ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@32 (line 1053)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.01%   │  0x00007faf9065d699:   nopl   0x0(%rax)
   1.91%   │  0x00007faf9065d6a0:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007faf9065ea70
           │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@38 (line 1054)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.02%   │  0x00007faf9065d6a5:   cmp    %ebx,%r9d
           │  0x00007faf9065d6a8:   jge    0x00007faf9065dddc           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@39 (line 1054)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   2.40%   │  0x00007faf9065d6ae:   mov    %r9d,%ecx
   0.01%   │  0x00007faf9065d6b1:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@53 (line 1056)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   1.87%   │  0x00007faf9065d6b3:   cmp    %ebx,%r9d
           │  0x00007faf9065d6b6:   jae    0x00007faf9065dd0d
   0.01%   │  0x00007faf9065d6bc:   shl    $0x3,%r10
   2.48%   │  0x00007faf9065d6c0:   mov    0x10(%r10,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList$Itr::next@64 (line 1057)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@115 (line 81)
   0.95%   │  0x00007faf9065d6c5:   mov    0x8(%r12,%rbx,8),%edi        ; implicit exception: dispatches to 0x00007faf9065ea88
  41.42%   │  0x00007faf9065d6ca:   cmp    $0x102af40,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/dijkstrashortestpath/adjacencylistbinaryheap/Node&apos;)}
           │  0x00007faf9065d6d0:   jne    0x00007faf9065e98c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@120 (line 81)
   0.43%   │  0x00007faf9065d6d6:   mov    (%rsp),%r10
   2.20%   │  0x00007faf9065d6da:   mov    0x10(%r10),%r10d             ;*getfield distances {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@138 (line 83)
   0.02%   │  0x00007faf9065d6de:   lea    (%r12,%rbx,8),%rax           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@120 (line 81)
   1.65%   │  0x00007faf9065d6e2:   mov    0xc(%rax),%edi               ;*getfield id {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@143 (line 83)
   0.95%   │  0x00007faf9065d6e5:   mov    0xc(%r12,%r10,8),%r13d       ; implicit exception: dispatches to 0x00007faf9065eab0
           │                                                            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@146 (line 83)
   2.01%   │  0x00007faf9065d6ea:   mov    0x10(%rax),%ebx              ;*getfield distance {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@129 (line 82)
   0.47%   │  0x00007faf9065d6ed:   add    %ebp,%ebx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@132 (line 82)
   1.96%   │  0x00007faf9065d6ef:   cmp    %r13d,%edi
           │  0x00007faf9065d6f2:   jae    0x00007faf9065dd3c
   0.21%   │  0x00007faf9065d6f8:   shl    $0x3,%r10
   2.15%   │  0x00007faf9065d6fc:   mov    0x10(%r10,%rdi,4),%eax
   4.00%   │  0x00007faf9065d701:   cmp    %eax,%ebx
           ╰  0x00007faf9065d703:   jge    0x00007faf9065d654           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@147 (line 83)
   0.00%      0x00007faf9065d709:   mov    %ebx,0x10(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@161 (line 84)
   0.03%      0x00007faf9065d70e:   mov    (%rsp),%r10
              0x00007faf9065d712:   mov    0x18(%r10),%r10d             ;*getfield objectPool {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@163 (line 86)
   0.01%      0x00007faf9065d716:   data16 nopw 0x0(%rax,%rax,1)
              0x00007faf9065d720:   mov    0xc(%r12,%r10,8),%esi        ; implicit exception: dispatches to 0x00007faf9065eb38
                                                                        ;*getfield pool {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@1 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
   0.01%      0x00007faf9065d725:   test   %esi,%esi
              0x00007faf9065d727:   je     0x00007faf9065df18           ;*invokevirtual poll {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007faf9065d72d:   mov    %ebx,0x20(%rsp)
              0x00007faf9065d731:   mov    %edi,0x14(%rsp)
              0x00007faf9065d735:   mov    %ecx,0x34(%rsp)
              0x00007faf9065d739:   mov    %r9d,0x38(%rsp)
   0.00%      0x00007faf9065d73e:   mov    %rdx,0x18(%rsp)
              0x00007faf9065d743:   mov    %r8d,0x3c(%rsp)
              0x00007faf9065d748:   mov    %r11d,0x40(%rsp)
              0x00007faf9065d74d:   mov    %ebp,0x10(%rsp)
   0.00%      0x00007faf9065d751:   mov    (%rsp),%r11
              0x00007faf9065d755:   mov    %r11,0x8(%rsp)               ;*synchronization entry
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@-1 (line 385)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007faf9065d75a:   lea    (%r12,%r10,8),%r11           ;*getfield objectPool {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@163 (line 86)
              0x00007faf9065d75e:   mov    %r11,(%rsp)
   0.00%      0x00007faf9065d762:   mov    %r10d,0x24(%rsp)
              0x00007faf9065d767:   lea    (%r12,%rsi,8),%rbp           ;*getfield pool {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@1 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007faf9065d76b:   lea    0xc(%r12,%rsi,8),%rbx
              0x00007faf9065d770:   mov    %rbp,0x28(%rsp)
   0.00%      0x00007faf9065d775:   mov    (%rbx),%ebp                  ;*getfield head {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@1 (line 385)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
   0.01%      0x00007faf9065d777:   mov    %ebp,0x44(%rsp)              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@7 (line 387)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
   0.01%      0x00007faf9065d77b:   nopl   0x0(%rax,%rax,1)
   0.00%      0x00007faf9065d780:   mov    0xc(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007faf9065eb20
                                                                        ;*getfield item {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@8 (line 387)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
   0.02%      0x00007faf9065d785:   mov    0x44(%rsp),%r11d
              0x00007faf9065d78a:   shl    $0x3,%r11
              0x00007faf9065d78e:   mov    %r11,0x48(%rsp)
   0.00%      0x00007faf9065d793:   lea    (%r12,%rbp,8),%r11           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@7 (line 387)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007faf9065d797:   mov    %r11,0x50(%rsp)
   0.00%      0x00007faf9065d79c:   nopl   0x0(%rax)
   0.00%      0x00007faf9065d7a0:   test   %r10d,%r10d
              0x00007faf9065d7a3:   jne    0x00007faf9065da9a           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@14 (line 387)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007faf9065d7a9:   mov    0x10(%r12,%rbp,8),%r10d      ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@55 (line 394)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
   0.00%      0x00007faf9065d7ae:   test   %r10d,%r10d
              0x00007faf9065d7b1:   jne    0x00007faf9065db54           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ConcurrentLinkedQueue::poll@60 (line 394)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.NodeObjectPool::get@4 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra@173 (line 86)
              0x00007faf9065d7b7:   mov    0x44(%rsp),%r10d
              0x00007faf9065d7bc:   nopl   0x0(%rax)
              0x00007faf9065d7c0:   cmp    %ebp,%r10d
....................................................................................................
  82.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  82.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 7, compile id 674 
   1.78%           libjvm.so  OopOopIterateDispatch<G1CMOopClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.72%           libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.28%         c2, level 4  java.util.PriorityQueue::siftDownComparable, version 4, compile id 657 
   1.27%           libjvm.so  OopOopIterateBoundedDispatch<G1CMOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   1.12%           libjvm.so  G1CMTask::do_marking_step 
   0.97%           libjvm.so  G1CMTask::process_grey_task_entry<true> 
   0.92%           libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   0.70%           libjvm.so  G1CMTask::drain_global_stack 
   0.61%           libjvm.so  G1CMTask::drain_local_queue 
   0.60%           libjvm.so  OopOopIterateBoundedDispatch<G1CMOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   0.51%              kernel  [unknown] 
   0.48%           libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   0.40%           libjvm.so  ClassLoaderData::oops_do 
   0.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 7, compile id 674 
   0.30%           libjvm.so  G1CMTask::process_grey_task_entry<true> 
   0.28%           libjvm.so  BitMap::find_first_bit_impl<0ul, false> 
   0.26%           libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<ObjArrayKlass, narrowOop> 
   0.15%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.13%           libjvm.so  OopOopIterateDispatch<G1RootRegionScanClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   3.78%  <...other 429 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap::dijkstra, version 7, compile id 674 
   2.00%           libjvm.so  OopOopIterateBoundedDispatch<G1CMOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   1.94%              kernel  [unknown] 
   1.87%           libjvm.so  OopOopIterateDispatch<G1CMOopClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.78%           libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   1.47%           libjvm.so  G1RebuildRSAndScrubTask::G1RebuildRSAndScrubRegionClosure::do_heap_region 
   1.38%         c2, level 4  java.util.PriorityQueue::siftDownComparable, version 4, compile id 657 
   1.35%           libjvm.so  G1CMTask::process_grey_task_entry<true> 
   1.20%           libjvm.so  G1CMTask::do_marking_step 
   0.70%           libjvm.so  G1CMTask::drain_global_stack 
   0.61%           libjvm.so  G1CMTask::drain_local_queue 
   0.47%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.40%           libjvm.so  ClassLoaderData::oops_do 
   0.28%           libjvm.so  BitMap::find_first_bit_impl<0ul, false> 
   0.26%           libjvm.so  OopOopIterateDispatch<G1RebuildRemSetClosure>::Table::oop_oop_iterate<ObjArrayKlass, narrowOop> 
   0.21%         c2, level 4  java.util.concurrent.ConcurrentLinkedQueue::offer, version 2, compile id 658 
   0.15%           libjvm.so  OopOopIterateDispatch<G1RootRegionScanClosure>::Table::oop_oop_iterate<InstanceKlass, narrowOop> 
   0.12%           libjvm.so  oopDesc::size_given_klass 
   0.09%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.07%           libjvm.so  G1ConcurrentMark::mark_in_bitmap 
   0.59%  <...other 97 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  84.77%         c2, level 4
  13.12%           libjvm.so
   1.94%              kernel
   0.09%        libc-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-1933316.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix
# Parameters: (nodes = 8192)

# Run progress: 50.00% complete, ETA 00:01:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 137.889 ms/op
# Warmup Iteration   2: 136.167 ms/op
# Warmup Iteration   3: 135.919 ms/op
# Warmup Iteration   4: 136.031 ms/op
# Warmup Iteration   5: 136.054 ms/op
Iteration   1: 136.040 ms/op
Iteration   2: 135.935 ms/op
Iteration   3: 135.980 ms/op
Iteration   4: 136.055 ms/op
Iteration   5: 146.500 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix":
  138.102 ±(99.9%) 18.079 ms/op [Average]
  (min, avg, max) = (135.935, 138.102, 146.500), stdev = 4.695
  CI (99.9%): [120.023, 156.181] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.DijkstraShortestPathBenchmark.adjacency_matrix:asm":
PrintAssembly processed: 158393 total address lines.
Perf output processed (skipped 62.332 seconds):
 Column 1: cycles (51254 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 645 

                       0x00007f365865a550:   vmovd  %xmm0,%ebx                   ;   {no_reloc}
                       0x00007f365865a554:   mov    0x10(%r12,%rbx,8),%r8d
                       0x00007f365865a559:   cmp    %r8d,%r11d
                       0x00007f365865a55c:   nopl   0x0(%rax)
                       0x00007f365865a560:   jl     0x00007f365865a6bc           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@139 (line 64)
                       0x00007f365865a566:   lea    (%r12,%rdi,8),%rbx
                       0x00007f365865a56a:   mov    0x14(%rsp),%r11d
                       0x00007f365865a56f:   cmp    $0x1,%r11d
                       0x00007f365865a573:   jle    0x00007f365865a6d6
   0.01%               0x00007f365865a579:   mov    $0x1,%edi
                       0x00007f365865a57e:   xchg   %ax,%ax
          ╭            0x00007f365865a580:   jmp    0x00007f365865a596           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@142 (line 64)
   0.04%  │  ↗         0x00007f365865a582:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r9=Oop rbx=Oop rsi=Oop xmm0=NarrowOop xmm1=Oop xmm2=NarrowOop xmm4=Oop }
          │  │                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@142 (line 64)
   0.05%  │  │         0x00007f365865a589:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@142 (line 64)
          │  │                                                                   ;   {poll}
   0.01%  │  │         0x00007f365865a58c:   cmp    0x14(%rsp),%edi
          │  │         0x00007f365865a590:   jge    0x00007f365865a6db           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@67 (line 65)
   0.02%  ↘  │         0x00007f365865a596:   mov    0x14(%rsp),%ebp
   0.01%     │         0x00007f365865a59a:   sub    %edi,%ebp
             │         0x00007f365865a59c:   mov    0x14(%rsp),%r11d
   0.00%     │         0x00007f365865a5a1:   xor    %r8d,%r8d
             │         0x00007f365865a5a4:   cmp    %edi,%r11d
   0.00%     │         0x00007f365865a5a7:   cmovl  %r8d,%ebp
             │         0x00007f365865a5ab:   cmp    $0x7d0,%ebp
   0.01%     │         0x00007f365865a5b1:   mov    $0x7d0,%r11d
   0.00%     │         0x00007f365865a5b7:   cmova  %r11d,%ebp
   0.01%     │         0x00007f365865a5bb:   add    %edi,%ebp
   0.00%   ╭ │         0x00007f365865a5bd:   jmp    0x00007f365865a5e7
   0.05%   │ │  ↗      0x00007f365865a5bf:   mov    %r11d,0x10(%rsi,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │ │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
   0.04%   │ │  │      0x00007f365865a5c4:   mov    0x10(%rsi,%rcx,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │ │  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
           │╭│  │      0x00007f365865a5c9:   jmp    0x00007f365865a625
   0.03%   │││  │   ↗  0x00007f365865a5ce:   mov    %r8d,0x14(%rsi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │││  │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@138 (line 70)
   0.03%   │││  │   │  0x00007f365865a5d3:   nopw   0x0(%rax,%rax,1)
           │││  │   │  0x00007f365865a5dc:   data16 data16 xchg %ax,%ax
   6.72%   │││  │↗ ↗│  0x00007f365865a5e0:   add    $0x2,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││  ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@139 (line 64)
   2.24%   │││  ││ ││  0x00007f365865a5e3:   cmp    %ebp,%edi
           ││╰  ││ ││  0x00007f365865a5e5:   jge    0x00007f365865a582           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@67 (line 65)
   2.05%   ↘│   ││ ││  0x00007f365865a5e7:   mov    0x10(%rsi,%rcx,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   2.49%    │   ││ ││  0x00007f365865a5ec:   movslq %edi,%rdx                    ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@126 (line 69)
   4.24%    │   ││ ││  0x00007f365865a5ef:   movzbl 0x10(%r9,%rdx,1),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
            │   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@73 (line 65)
   2.30%    │   ││ ││  0x00007f365865a5f5:   test   %r11d,%r11d
            │ ╭ ││ ││  0x00007f365865a5f8:   jne    0x00007f365865a625           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   3.40%    │ │ ││ ││  0x00007f365865a5fa:   mov    0x10(%rbx,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   5.29%    │ │ ││ ││  0x00007f365865a5ff:   nop
   1.08%    │ │ ││ ││  0x00007f365865a600:   test   %r11d,%r11d
            │ │╭││ ││  0x00007f365865a603:   je     0x00007f365865a65c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   1.42%    │ ││││ ││  0x00007f365865a609:   cmp    $0x7fffffff,%r8d
            │ ││││ ││  0x00007f365865a610:   je     0x00007f365865a68e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   1.17%    │ ││││ ││  0x00007f365865a616:   mov    0x10(%rsi,%rdx,4),%eax
   1.46%    │ ││││ ││  0x00007f365865a61a:   add    %r8d,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │ ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
   1.03%    │ ││││ ││  0x00007f365865a61d:   data16 xchg %ax,%ax
   1.27%    │ ││││ ││  0x00007f365865a620:   cmp    %eax,%r11d
            │ ││╰│ ││  0x00007f365865a623:   jl     0x00007f365865a5bf           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   3.95%    ↘ ↘│ │ ││  0x00007f365865a625:   movzbl 0x11(%r9,%rdx,1),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
               │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@73 (line 65)
   3.07%       │ │ ││  0x00007f365865a62b:   test   %r11d,%r11d
               │ ╰ ││  0x00007f365865a62e:   jne    0x00007f365865a5e0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
   3.71%       │   ││  0x00007f365865a630:   mov    0x14(%rbx,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   8.33%       │   ││  0x00007f365865a635:   test   %r11d,%r11d
               │  ╭││  0x00007f365865a638:   je     0x00007f365865a65a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
   1.71%       │  │││  0x00007f365865a63a:   nopw   0x0(%rax,%rax,1)
   0.97%       │  │││  0x00007f365865a640:   cmp    $0x7fffffff,%r8d
               │  │││  0x00007f365865a647:   je     0x00007f365865a68c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
               │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@97 (line 65)
   1.15%       │  │││  0x00007f365865a649:   mov    0x14(%rsi,%rdx,4),%eax
   1.50%       │  │││  0x00007f365865a64d:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@115 (line 68)
   1.45%       │  │││  0x00007f365865a650:   cmp    %eax,%r8d
               │  │╰│  0x00007f365865a653:   jge    0x00007f365865a5e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@127 (line 69)
   0.04%       │  │ ╰  0x00007f365865a655:   jmp    0x00007f365865a5ce
               │  ↘    0x00007f365865a65a:   inc    %edi                         ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@86 (line 65)
               ↘       0x00007f365865a65c:   mov    $0xffffff45,%esi
                       0x00007f365865a661:   vmovq  %xmm1,%rbp
                       0x00007f365865a666:   vmovss %xmm5,(%rsp)
                       0x00007f365865a66b:   mov    %r10d,0x4(%rsp)
                       0x00007f365865a670:   mov    %edi,0x8(%rsp)
                       0x00007f365865a674:   mov    %r11d,0xc(%rsp)
                       0x00007f365865a679:   data16 xchg %ax,%ax
....................................................................................................
  62.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 645 

                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                                0x00007f365865a373:   cmp    $0x7fffffff,%ebx
                                0x00007f365865a379:   jl     0x00007f365865a776           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                                0x00007f365865a37f:   mov    $0x7fffffff,%ebx
                                0x00007f365865a384:   mov    $0xffffffff,%r10d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.00%                        0x00007f365865a38a:   cmp    $0x1,%r13d
          ╭                     0x00007f365865a38e:   jle    0x00007f365865a47e           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@41 (line 83)
          │                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
          │                     0x00007f365865a394:   mov    $0x1,%ecx
          │╭                    0x00007f365865a399:   jmp    0x00007f365865a45a
   0.01%  ││        ↗           0x00007f365865a39e:   lea    0x3(%rcx),%r10d
   0.00%  ││        │           0x00007f365865a3a2:   mov    %r11d,%ebx
          ││        │           0x00007f365865a3a5:   data16 data16 nopw 0x0(%rax,%rax,1)
   2.39%  ││       ↗│↗          0x00007f365865a3b0:   add    $0x4,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││       │││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          ││       │││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.01%  ││       │││          0x00007f365865a3b3:   cmp    %edi,%ecx
          ││╭      │││          0x00007f365865a3b5:   jge    0x00007f365865a44b           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││      │││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@15 (line 84)
          │││      │││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.82%  │││      │││    ↗     0x00007f365865a3bb:   movslq %ecx,%rdx
   1.38%  │││      │││    │     0x00007f365865a3be:   movzbl 0x10(%r9,%rdx,1),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││      │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@18 (line 84)
          │││      │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   3.69%  │││      │││    │     0x00007f365865a3c4:   test   %r11d,%r11d
          │││╭     │││    │     0x00007f365865a3c7:   jne    0x00007f365865a3d7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          ││││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.18%  ││││     │││    │     0x00007f365865a3c9:   mov    0x10(%rsi,%rdx,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          ││││     │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.00%  ││││     │││    │     0x00007f365865a3ce:   cmp    %ebx,%r8d
          ││││╭    │││    │     0x00007f365865a3d1:   jl     0x00007f365865a42b           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││    │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │││││    │││    │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.44%  │││↘│    │││↗   │     0x00007f365865a3d7:   movzbl 0x11(%r9,%rdx,1),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││ │    ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@18 (line 84)
          │││ │    ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.57%  │││ │    ││││   │     0x00007f365865a3dd:   data16 xchg %ax,%ax
   0.99%  │││ │    ││││   │     0x00007f365865a3e0:   test   %r11d,%r11d
          │││ │╭   ││││   │     0x00007f365865a3e3:   jne    0x00007f365865a3f3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││   ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          │││ ││   ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.26%  │││ ││   ││││   │     0x00007f365865a3e5:   mov    0x14(%rsi,%rdx,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││ ││   ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          │││ ││   ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.32%  │││ ││   ││││   │     0x00007f365865a3ea:   cmp    %ebx,%r8d
          │││ ││╭  ││││   │     0x00007f365865a3ed:   jl     0x00007f365865a433           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │││ │││  ││││   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.31%  │││ │↘│  ││││↗  │     0x00007f365865a3f3:   movzbl 0x12(%r9,%rdx,1),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │  │││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@18 (line 84)
          │││ │ │  │││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.20%  │││ │ │  │││││  │     0x00007f365865a3f9:   test   %r11d,%r11d
          │││ │ │╭ │││││  │     0x00007f365865a3fc:   jne    0x00007f365865a40c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          │││ │ ││ │││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
          │││ │ ││ │││││  │                                                               ;   {no_reloc}
   1.02%  │││ │ ││ │││││  │     0x00007f365865a3fe:   mov    0x18(%rsi,%rdx,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││ │││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          │││ │ ││ │││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.32%  │││ │ ││ │││││  │     0x00007f365865a403:   cmp    %ebx,%r8d
          │││ │ ││╭│││││  │     0x00007f365865a406:   jl     0x00007f365865a442           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││││││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │││ │ ││││││││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.61%  │││ │ │↘││││││↗ │     0x00007f365865a40c:   movzbl 0x13(%r9,%rdx,1),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │││││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@18 (line 84)
          │││ │ │ │││││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.62%  │││ │ │ │││││││ │     0x00007f365865a412:   test   %r11d,%r11d
          │││ │ │ │╰│││││ │     0x00007f365865a415:   jne    0x00007f365865a3b0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │ │││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
          │││ │ │ │ │││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.46%  │││ │ │ │ │││││ │     0x00007f365865a417:   mov    0x1c(%rsi,%rdx,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │ │││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
          │││ │ │ │ │││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   2.16%  │││ │ │ │ │││││ │     0x00007f365865a41c:   nopl   0x0(%rax)
   0.16%  │││ │ │ │ │││││ │     0x00007f365865a420:   cmp    %ebx,%r11d
          │││ │ │ │ ╰││││ │     0x00007f365865a423:   jl     0x00007f365865a39e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │ │  ││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@27 (line 84)
          │││ │ │ │  ││││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   1.06%  │││ │ │ │  ╰│││ │     0x00007f365865a429:   jmp    0x00007f365865a3b0
   0.01%  │││ ↘ │ │   │││ │     0x00007f365865a42b:   mov    %ecx,%r10d
          │││   │ │   │││ │     0x00007f365865a42e:   mov    %r8d,%ebx
          │││   │ │   ╰││ │     0x00007f365865a431:   jmp    0x00007f365865a3d7
   0.01%  │││   ↘ │    ││ │     0x00007f365865a433:   mov    %ecx,%r10d
          │││     │    ││ │     0x00007f365865a436:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││     │    ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
          │││     │    ││ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%  │││     │    ││ │     0x00007f365865a439:   mov    %r8d,%ebx
          │││     │    ││ │     0x00007f365865a43c:   nopl   0x0(%rax)
          │││     │    ╰│ │     0x00007f365865a440:   jmp    0x00007f365865a3f3
   0.01%  │││     ↘     │ │     0x00007f365865a442:   lea    0x2(%rcx),%r10d
          │││           │ │     0x00007f365865a446:   mov    %r8d,%ebx
          │││           ╰ │     0x00007f365865a449:   jmp    0x00007f365865a40c
   0.02%  ││↘             │     0x00007f365865a44b:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r9=Oop rsi=Oop xmm0=NarrowOop xmm1=Oop xmm2=NarrowOop xmm4=Oop }
          ││              │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││              │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@41 (line 83)
          ││              │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%  ││              │     0x00007f365865a452:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││              │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@41 (line 83)
          ││              │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
          ││              │                                                               ;   {poll}
   0.01%  ││              │     0x00007f365865a455:   cmp    %r13d,%ecx
          ││             ╭│     0x00007f365865a458:   jge    0x00007f365865a483
   0.00%  │↘             ││     0x00007f365865a45a:   mov    0x4(%rsp),%edi
          │              ││     0x00007f365865a45e:   sub    %ecx,%edi
          │              ││     0x00007f365865a460:   add    $0xfffffffd,%edi
          │              ││     0x00007f365865a463:   xor    %r8d,%r8d
   0.00%  │              ││     0x00007f365865a466:   cmp    %ecx,%r13d
   0.01%  │              ││     0x00007f365865a469:   cmovl  %r8d,%edi
          │              ││     0x00007f365865a46d:   cmp    $0xfa0,%edi
          │              ││     0x00007f365865a473:   cmova  %r14d,%edi
   0.01%  │              ││     0x00007f365865a477:   add    %ecx,%edi
          │              │╰     0x00007f365865a479:   jmp    0x00007f365865a3bb
          ↘              │      0x00007f365865a47e:   mov    $0x1,%ecx
   0.00%                 ↘      0x00007f365865a483:   cmp    0x4(%rsp),%ecx
                           ╭    0x00007f365865a487:   jge    0x00007f365865a4b1
   0.00%                   │    0x00007f365865a489:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@15 (line 84)
                           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                           │ ↗  0x00007f365865a48c:   movslq %ecx,%r8
   0.01%                   │ │  0x00007f365865a48f:   movzbl 0x10(%r9,%r8,1),%r11d        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@18 (line 84)
                           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
   0.01%                   │ │  0x00007f365865a495:   test   %r11d,%r11d
                           │╭│  0x00007f365865a498:   jne    0x00007f365865a4a9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@19 (line 84)
                           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                           │││  0x00007f365865a49a:   mov    0x10(%rsi,%r8,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@25 (line 84)
                           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                           │││  0x00007f365865a49f:   nop
                           │││  0x00007f365865a4a0:   cmp    %ebx,%r8d
                           │││  0x00007f365865a4a3:   jl     0x00007f365865a77e
   0.01%                   │↘│  0x00007f365865a4a9:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@38 (line 83)
                           │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                           │ │  0x00007f365865a4ab:   cmp    0x4(%rsp),%ecx
                           │ ╰  0x00007f365865a4af:   jl     0x00007f365865a48c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::findMinDistanceNode@12 (line 83)
                           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@44 (line 61)
                           ↘    0x00007f365865a4b1:   cmp    0xc(%rsp),%r10d
                                0x00007f365865a4b6:   jae    0x00007f365865a790
                                0x00007f365865a4bc:   movslq %r10d,%rcx                   ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@94 (line 65)
   0.00%                        0x00007f365865a4bf:   movb   $0x1,0x10(%r9,%rcx,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@54 (line 62)
                                0x00007f365865a4c5:   mov    0x8(%rsp),%r11d
                                0x00007f365865a4ca:   test   %r11d,%r11d
                                0x00007f365865a4cd:   jle    0x00007f365865a733           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@64 (line 64)
                                0x00007f365865a4d3:   cmp    0x10(%rsp),%r10d
                                0x00007f365865a4d8:   jae    0x00007f365865a7bc
   0.01%                        0x00007f365865a4de:   vmovq  %xmm4,%r11
                                0x00007f365865a4e3:   mov    0x10(%r11,%rcx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@82 (line 65)
   0.04%                        0x00007f365865a4e8:   mov    0xc(%r12,%rdi,8),%r8d        ; implicit exception: dispatches to 0x00007f365865a7bc
                                                                                          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
   0.58%                        0x00007f365865a4ed:   test   %r8d,%r8d
                                0x00007f365865a4f0:   jbe    0x00007f365865a7bc
                                0x00007f365865a4f6:   movslq %r8d,%r11
                                0x00007f365865a4f9:   vmovq  %xmm3,%r8
                                0x00007f365865a4fe:   xchg   %ax,%ax
                                0x00007f365865a500:   cmp    %r11,%r8
                                0x00007f365865a503:   jae    0x00007f365865a7bc
   0.00%                        0x00007f365865a509:   cmp    0x4(%rsp),%r10d
                                0x00007f365865a50e:   jae    0x00007f365865a7bc
                                0x00007f365865a514:   vmovd  %xmm2,%r11d
                                0x00007f365865a519:   movzbl 0x10(%r12,%r11,8),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@73 (line 65)
                                0x00007f365865a51f:   nop
                                0x00007f365865a520:   test   %r11d,%r11d
                                0x00007f365865a523:   jne    0x00007f365865a566           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@74 (line 65)
                                0x00007f365865a525:   mov    0x10(%r12,%rdi,8),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra@85 (line 65)
....................................................................................................
  34.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 645 
  34.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 645 
   1.08%              kernel  [unknown] 
   0.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 645 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 645 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.99%  <...other 301 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix::dijkstra, version 5, compile id 645 
   2.34%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.00%      hsdis-amd64.so  hsdis_read_memory_func 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_fflush 
   0.09%  <...other 47 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.41%         c2, level 4
   2.34%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-1933386.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:55

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
DijkstraShortestPathBenchmark.adjacency_list_binary_heap         8192  avgt    5  518.122 ±  6.298  ms/op
DijkstraShortestPathBenchmark.adjacency_list_binary_heap:asm     8192  avgt           NaN             ---
DijkstraShortestPathBenchmark.adjacency_matrix                   8192  avgt    5  138.102 ± 18.079  ms/op
DijkstraShortestPathBenchmark.adjacency_matrix:asm               8192  avgt           NaN             ---
